Return-Path: <devicetree+bounces-2800-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 32AE27ACA9E
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 17:53:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 499B21C20753
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 15:53:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24AC8D311;
	Sun, 24 Sep 2023 15:53:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13CEFD279
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 15:53:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5DA6DC433C7;
	Sun, 24 Sep 2023 15:53:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695570820;
	bh=z2mLUjSD6r8QvpYxhh+J/4OwMXJOhp54cH8bz3Cqgp4=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=IpuPqvTgZE2QK+XpMwxCJVLLieH86iqupYiKAQOje3dM5/G5jfa8RJc8l01EN7eO9
	 quWZHbvmV+G1O+j0eLPN6EIAHc2lZGvZ9Dcz7QbKPzApu1/SxhnRDcOv9w7/6zKk/R
	 ljzMsJHdtxZnGUOJpQSVlV+QqyPZKCoR75S41ZEbQFPnJFnuOmrGXDPHj5LtCo+OJ/
	 9Vu6taWQXcMwDOFHV2zxJamAnrEtKXp4B+dYmtRYukBlARNXgqk70EHAtSNU3X3+Rh
	 b6kTAmIOy/gc46NzUEnQcagv3mXOoPj21PVT9wQqNTk3tOBZy9JTsz7lDaQvkhOWLB
	 xfHzGZjMGxkpw==
Date: Sun, 24 Sep 2023 16:53:31 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Matti Vaittinen <mazziesaccount@gmail.com>
Cc: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>, Lars-Peter Clausen
 <lars@metafoo.de>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Angel Iglesias
 <ang.iglesiasg@gmail.com>, Andreas Klinger <ak@it-klinger.de>, Christophe
 JAILLET <christophe.jaillet@wanadoo.fr>, Benjamin Bara <bbara93@gmail.com>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 0/6] Support ROHM BM1390 pressure sensor
Message-ID: <20230924165331.6df2e9c1@jic23-huawei>
In-Reply-To: <cover.1695380366.git.mazziesaccount@gmail.com>
References: <cover.1695380366.git.mazziesaccount@gmail.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Fri, 22 Sep 2023 14:14:52 +0300
Matti Vaittinen <mazziesaccount@gmail.com> wrote:

> ROHM BM1390 Pressure sensor (BM1390GLV-Z) can measure pressures ranging
> from 300 hPa to 1300 hPa with configurable measurement averaging and an
> internal FIFO. The sensor does also provide temperature measurements
> although, according to the data sheet, sensor performs internal
> temperature compensation for the MEMS.
> 
> Sensor does also contain IIR filter implemented in HW. The data-sheet
> says the IIR filter can be configured to be "weak", "middle" or
> "strong". Some RMS noise figures are provided in data sheet but no
> accurate maths for the filter configurations is provided.
> 
> I actually asked if we can define 3db frequencies corresponding to these
> IIR filter settings - and I received values 0.452Hz, 0.167Hz, and 0.047Hz
> but I am not at all sure we understood each others with the HW
> colleagues... Hence, the IIR filter configuration is not supported by this
> driver and the filter is just configured to the "middle" setting.
> (at least for now)
> 
> It would also be possible to not use IIR filter but just do some simple
> averaging. I wonder if it would make sense to implement the OVERSAMPLING
> value setting so that if this value is written, IIR filter is disabled and
> number of samples to be averaged is set to value requested by
> OVERSAMPLING. The data-sheet has a mention that if IIR is used, the
> number of averaged samples must be set to a fixed value.
> 
> The FIFO measurement mode (in sensor hardware) is only measuring the
> pressure and not the temperature. The driver measures temperature when
> FIFO is flushed and simply uses the same measured temperature value to
> all reported temperatures. This should not be a problem when temperature
> is not changing very rapidly (several degrees C / second) but allows users
> to get the temperature measurements from sensor without any additional
> logic.
> 
> This driver has received limited amount of testing this far. It's in a
> state 'works on my machine, for my use cases' - and all feedback is
> appreciated!

At somepoint we'll just have to decide it's enough. To be honest most
drivers in IIO get testing along those lines and we find bugs years
later when someone tries something a little different!

> 
> Revision history:
> Major changes here, please see the head room of individual patches for
> more detailed list.
> v2 => v3:
> 	rebased on v6.6-rc2

Stick to rc1 though I doubt it makes much difference. The IIO tree
will remain based on v6.6-rc1 until it is rebased after Greg takes
a pull request.

Jonathan

> 	added three IIO fixup patches so numbering of patches changed
> 	dt-bindings/MAINTAINERS: No changes
> 	bm1390 driver:
> 	 - various cleanups and fixes
> 	 - do not disable IRQ
> 	 - fix temperature reading when FIFO is used
> 	 - separate buffer and trigger initialization
> 
> v1 => v2:
> 	rebased on v6.6-rc1
> 	dt-bindings:
> 	  - fix compatible in the example
> 	sensor driver:
> 	  - drop unnecessary write_raw callback
> 	  - plenty of small improvements and fixes
> 	MAINTAINERS:
> 	  - No changes
> 
> Matti Vaittinen (6):
>   tools: iio: iio_generic_buffer ensure alignment
>   iio: improve doc for available_scan_mask
>   iio: try searching for exact scan_mask
>   dt-bindings: Add ROHM BM1390 pressure sensor
>   iio: pressure: Support ROHM BU1390
>   MAINTAINERS: Add ROHM BM1390
> 
>  .../bindings/iio/pressure/rohm,bm1390.yaml    |  52 +
>  MAINTAINERS                                   |   6 +
>  drivers/iio/industrialio-buffer.c             |  25 +-
>  drivers/iio/pressure/Kconfig                  |   9 +
>  drivers/iio/pressure/Makefile                 |   1 +
>  drivers/iio/pressure/rohm-bm1390.c            | 930 ++++++++++++++++++
>  include/linux/iio/iio.h                       |   4 +-
>  tools/iio/iio_generic_buffer.c                |  15 +-
>  8 files changed, 1034 insertions(+), 8 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/iio/pressure/rohm,bm1390.yaml
>  create mode 100644 drivers/iio/pressure/rohm-bm1390.c
> 
> 
> base-commit: ce9ecca0238b140b88f43859b211c9fdfd8e5b70


