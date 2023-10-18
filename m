Return-Path: <devicetree+bounces-9782-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BB367CE6A1
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 20:32:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5D7061C20D75
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 18:32:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A096A37170;
	Wed, 18 Oct 2023 18:32:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hEsrVwG2"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8138442BF3
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 18:32:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A1B8C433C7;
	Wed, 18 Oct 2023 18:32:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697653931;
	bh=tOqSoJfV6UaA+IPipuWQfTMZpKrjsZ4IKE5zi0uW75Y=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=hEsrVwG26XgWeooyYzpdHRZizqpNkD/qWqR4Pm4qMBYXfVYDYvY3AjObVH9iTtBoP
	 NdwFAX5OA1bWSK90CZ1tmYQ1jaN4XGZu2L3OKX+d36MpWX/qBRCUZ2NGYKm2Uu4mN5
	 zhXSPExIU/oB2I3iEKXFuQNfkAlqVuBrUd+lvlEUD7g2+rknHH1ZKKtkHEHYglGEwu
	 ct1+4lmRuyhyj+RvXLEC4nmcRCTwLDwxJ4ruin67DLYjfIl33o+9lbwXe2YWnHiqeb
	 MSehl76slfRpmBpSBNxNznHjg1cu02Ze2BlE2WzZO41GnAzD+yvH+S3IpIOGDBaofP
	 vJCbmMVelOgLw==
Date: Wed, 18 Oct 2023 19:32:30 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Ivan Mikhaylov <fr0st61te@gmail.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v6 0/2] Add maxim max34408/34409 ADC driver and yaml
Message-ID: <20231018193230.60736165@jic23-huawei>
In-Reply-To: <20231014211254.16719-1-fr0st61te@gmail.com>
References: <20231014211254.16719-1-fr0st61te@gmail.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sun, 15 Oct 2023 00:12:52 +0300
Ivan Mikhaylov <fr0st61te@gmail.com> wrote:

> Add Maxim max34408/34409 ADC driver and yaml for it. Until now it
> supports only current monitioring function without overcurrent
> threshold/delay, shutdown delay configuration, alert interrupt.
> 
> Changes from v1:
>    - minor changes from Rob's comments for yaml
>    - add ena, shtdn and make 4 inputs for R sense from Jonathan's comments for yaml
>    - add _REG suffix and make prefix for bitmasks and statuses
>    - add SCALE/OFFSET instead of AVG/PROCESSED from Jonathan and
>      Lars-Peter comments
>    - add chip data from Jonathan and Lars-Peter comments
>    - minor changes from Lars-Peter and Jonathan comments for driver
> 
> Changes from v2:
>    - add channels into hardware description into yaml
>    - add rsense property per channel
>    - rename pins for shtdn and ena pins
>    - make one array for input_rsense values
> 
> Changes from v3:
>    - change *_34408_OCT3 and 4 to *_34409_OCT3 and 4
>    - change of_property_read_u32 to fwnode family calls
>    - add i2c dev table
>    - change of_match_device to i2c_of_match_device
>    - change match->data to i2c_get_match_data 
> 
> Changes from v4:
>    - minor changes in yaml
> 
> Changes from v5:
>    - name and minor changes to properties in yaml from Rob's comments
>    - shtdn-enable-gpios -> powerdown-status-gpios from Krzysztof and
>      Jonathan comments in yaml
>    - minor changes to driver
> 
> Ivan Mikhaylov (2):
>   dt-bindings: adc: provide max34408/9 device tree binding document
>   iio: adc: Add driver support for MAX34408/9
> 
>  .../bindings/iio/adc/maxim,max34408.yaml      | 139 +++++++++
>  drivers/iio/adc/Kconfig                       |  11 +
>  drivers/iio/adc/Makefile                      |   1 +
>  drivers/iio/adc/max34408.c                    | 276 ++++++++++++++++++
>  4 files changed, 427 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/iio/adc/maxim,max34408.yaml
>  create mode 100644 drivers/iio/adc/max34408.c
> 

Series applied to the togreg branch of iio.git and pushed out as testing.
We are very late in the cycle, so this is probably destined for 6.8

Jonathan

