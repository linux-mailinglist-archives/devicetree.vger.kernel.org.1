Return-Path: <devicetree+bounces-2801-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E0F267ACAA3
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 17:57:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id F23631C203B5
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 15:57:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5D39D314;
	Sun, 24 Sep 2023 15:57:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E79FD279
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 15:57:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3FE28C433C7;
	Sun, 24 Sep 2023 15:57:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695571065;
	bh=WYqVxemDZYWWMUhX6pLrE93sdL/cHzvq6Yb5UFx+BcU=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=t5X8suyAA5+p9gMXBjV+gMizQVI8h+Ehy6MAF25NZhcncho2O6cRx3mBU/RgRQ5eo
	 sc9S87YttCBazUEkcrMlIdLYRv0swaAc7rvFzenaiYwh62EBOc+JB7FVLfLmyqFQtt
	 vsYLADDrPR6xr6k0UEPM5a1RW91Ug8ncewQ4LY0TqXm93BL0pXlByW6mUMP/uAhNol
	 /8WPg6V6lsJdVGi8g8x2TbfcmxKANbpkzs4D/i6ag++7oVp+hCHdc8Vjc/3VTZxq5x
	 VGwQInuUyhgHoKk0ZfGWa6WV7Yw/0kiRPvtiHLhjGyWfv6/Vx6q4TswZua2jDULD7Y
	 ma5M37Ei4Kylw==
Date: Sun, 24 Sep 2023 16:57:37 +0100
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
Subject: Re: [PATCH v3 1/6] tools: iio: iio_generic_buffer ensure alignment
Message-ID: <20230924165737.54631dd3@jic23-huawei>
In-Reply-To: <029b4e3e18c76b330b606f5b14699e5ee4e5ed35.1695380366.git.mazziesaccount@gmail.com>
References: <cover.1695380366.git.mazziesaccount@gmail.com>
	<029b4e3e18c76b330b606f5b14699e5ee4e5ed35.1695380366.git.mazziesaccount@gmail.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Fri, 22 Sep 2023 14:16:08 +0300
Matti Vaittinen <mazziesaccount@gmail.com> wrote:

> The iio_generic_buffer can return garbage values when the total size of
> scan data is not a multiple of largest element in the scan. This can be
> demonstrated by reading a scan consisting for example of one 4 byte and
> one 2 byte element, where the 4 byte elemnt is first in the buffer.
> 
> The IIO generic buffert code does not take into accunt the last two
> padding bytes that are needed to ensure that the 4byte data for next
> scan is correctly aligned.
> 
> Add padding bytes required to align the next sample into the scan size.
> 
> Signed-off-by: Matti Vaittinen <mazziesaccount@gmail.com>
> ---
> Please note, This one could have RFC in subject.:
> I attempted to write the fix so that the alignment is done based on the
> biggest channel data. This may be wrong. Maybe a fixed 8 byte alignment
> should be used instead? This patch can be dropped from the series if the
> fix is not correct / agreed.
> 
>  tools/iio/iio_generic_buffer.c | 15 ++++++++++++++-
>  1 file changed, 14 insertions(+), 1 deletion(-)
> 
> diff --git a/tools/iio/iio_generic_buffer.c b/tools/iio/iio_generic_buffer.c
> index 44bbf80f0cfd..fc562799a109 100644
> --- a/tools/iio/iio_generic_buffer.c
> +++ b/tools/iio/iio_generic_buffer.c
> @@ -54,9 +54,12 @@ enum autochan {
>  static unsigned int size_from_channelarray(struct iio_channel_info *channels, int num_channels)
>  {
>  	unsigned int bytes = 0;
> -	int i = 0;
> +	int i = 0, max = 0;
> +	unsigned int misalignment;
>  
>  	while (i < num_channels) {
> +		if (channels[i].bytes > max)
> +			max = channels[i].bytes;
>  		if (bytes % channels[i].bytes == 0)
>  			channels[i].location = bytes;
>  		else
> @@ -66,6 +69,16 @@ static unsigned int size_from_channelarray(struct iio_channel_info *channels, in
>  		bytes = channels[i].location + channels[i].bytes;
>  		i++;
>  	}
> +	/*
> +	 * We wan't the data in next sample to also be properly aligned so
> +	 * we'll add padding at the end if needed. TODO: should we use fixed
> +	 * 8 byte alignment instead of the size of the biggest samnple?
> +	 */

Should be aligned to max size seen in the scan. 

> +	misalignment = bytes % max;
> +	if (misalignment) {
> +		printf("Misalignment %u. Adding Padding %u\n", misalignment,  max - misalignment);

No print statement as this is correct behaviour (well the tool is buggy but the kernel generates it
correctly I believe).  Fine to add a comment though!

> +		bytes += max - misalignment;
> +	}
>  
>  	return bytes;
>  }


