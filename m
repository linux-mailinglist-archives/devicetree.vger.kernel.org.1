Return-Path: <devicetree+bounces-2802-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E12467ACAA6
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 17:59:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 83ACEB208CD
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 15:59:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7AC4FD506;
	Sun, 24 Sep 2023 15:59:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B296D279
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 15:59:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D5034C433C8;
	Sun, 24 Sep 2023 15:59:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695571158;
	bh=/TvIon6IIEqDu55EvhMWhbvnWmcrry+Uc5Q3b4doPX8=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=Drdsq0x3nk9ybh85qCOLbd/WDjA8rzbpnQBbsAW5J8Gw+0i4EfH6XqVNWvH5ZuNLM
	 M79J8QYDs3ZWZIwD5HYFsxrsD0qC5cowJ9ftYqroItCxfErNQrr+Nci0td0O+KsqxC
	 X8Jlu5Db5PYNOOqLbynJr7bdWNPizjyud7bnJmPN0gBvkQHA1UF3mnSb12139h0C8m
	 3uwInGB0G8dsahDdigTr0Pu0Scjk9131IYEajBO5TIvAyXkPila6ro+BZlR3WaO+Iu
	 yzPFdlJgs5hd4Q6qjw5MkMqxoZaZqcecPRTH76QtfL1gyVCzn+PIu80e1/EI//0cqi
	 uo6awVxCuVN8A==
Date: Sun, 24 Sep 2023 16:59:08 +0100
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
Subject: Re: [PATCH v3 2/6] iio: improve doc for available_scan_mask
Message-ID: <20230924165908.5a332fac@jic23-huawei>
In-Reply-To: <74b66a5b9eee2fb7046f254928391e3da61aa3b2.1695380366.git.mazziesaccount@gmail.com>
References: <cover.1695380366.git.mazziesaccount@gmail.com>
	<74b66a5b9eee2fb7046f254928391e3da61aa3b2.1695380366.git.mazziesaccount@gmail.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Fri, 22 Sep 2023 14:16:57 +0300
Matti Vaittinen <mazziesaccount@gmail.com> wrote:

> The available_scan_mask is an array of bitmaps representing the channels
> which can be simultaneously enabled by the driver. In many cases the
> hardware can offer more channels than what the user is interested in
> obtaining. In such cases it may be preferred that only subset of
> channels are enabled, and driver reads only a subset of the channels from
> the hardware.
> 
> Some devices can't support all channel combinations. For example the
> BM1390 pressure sensor must always read the pressure data in order to
> acknowledge the watermark IRQ, while reading temperature can be omitted.
> So, the available scan mask would be 'pressure and temperature' and
> 'pressure only'.
> 
> When IIO seatchs for the scan mask it asks the driver to use, it will

Spell check description.  searches

> pick the first suitable one from the 'available_scan_mask' array. Hence,
> ordering the masks in the array makes difference. We should 'prefer'
> reading just the pressure from the hardware (as it is cheaper operation
> than reading both pressure and temperature) over reading both pressure
> and temperature. Hence, we should set the 'only pressure' as first scan
> mask in available_scan_mask array. If we set the 'pressure and
> temperature' as first in array, then the 'only temperature' will never
> get used as 'pressure and temperature' can always serve the user's
> needs.
> 
> Add (minimal) kerneldoc to the 'available_scan_mask' to hint the user
> that ordering of masks matters.
> 
> Signed-off-by: Matti Vaittinen <mazziesaccount@gmail.com>
> ---
>  include/linux/iio/iio.h | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/include/linux/iio/iio.h b/include/linux/iio/iio.h
> index 202e55b0a28b..7bfa1b9bc8a2 100644
> --- a/include/linux/iio/iio.h
> +++ b/include/linux/iio/iio.h
> @@ -556,7 +556,9 @@ struct iio_buffer_setup_ops {
>   *			and owner
>   * @buffer:		[DRIVER] any buffer present
>   * @scan_bytes:		[INTERN] num bytes captured to be fed to buffer demux
> - * @available_scan_masks: [DRIVER] optional array of allowed bitmasks
> + * @available_scan_masks: [DRIVER] optional array of allowed bitmasks. Sort the
> + *			   array in order of preference, the most preferred
> + *			   masks first.

LGTM
>   * @masklength:		[INTERN] the length of the mask established from
>   *			channels
>   * @active_scan_mask:	[INTERN] union of all scan masks requested by buffers


