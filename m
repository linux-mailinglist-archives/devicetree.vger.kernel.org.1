Return-Path: <devicetree+bounces-2811-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C04177ACAF1
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 19:17:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 083A82815B1
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 17:17:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3000D537;
	Sun, 24 Sep 2023 17:17:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D5DFD280;
	Sun, 24 Sep 2023 17:17:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ADFA2C433C8;
	Sun, 24 Sep 2023 17:17:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695575861;
	bh=LRF7xx7trzXyTKCMz0ajmUwa6MrQlFOu+VvmlwRvNo4=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=M++IDmmC1VPN9uLjxOh+lNJivKUqjCzH2esjtifFBl5XkmuaxMhwMXV6i10hp2A11
	 +fPGs+zjW+CWHIpKRfqcSr6+dTWmKL9HbOMFVub3hYofvRWdwECW7ZQml/QQ7S77NE
	 uWUz7U+f5h1HNmucjEmZxMJ6Mrc8jmRYTit2kXT1ucYB2ID9m3PZZbLdpleCG8sTzd
	 Rx15SAnuUVgbh44KphbNckA9Z3FdgMDyjUnZMpnf1XemJ/aKUgX/vh912iZFdBq459
	 uTkxQGPQTY7+JPzl89xOxuIwqATZgiBYeRKSqefgEz38q7fB+jk7d2Cf53rILUnaZs
	 qdL4goLek523A==
Date: Sun, 24 Sep 2023 18:17:33 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: David Lechner <dlechner@baylibre.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Michael Hennerich <Michael.Hennerich@analog.com>, Nuno =?UTF-8?B?U8Oh?=
 <nuno.sa@analog.com>, Axel Haslam <ahaslam@baylibre.com>, Philip Molloy
 <pmolloy@baylibre.com>
Subject: Re: [PATCH v2 03/19] staging: iio: resolver: ad2s1210: fix
 ad2s1210_show_fault
Message-ID: <20230924181733.081917bd@jic23-huawei>
In-Reply-To: <20230921144400.62380-4-dlechner@baylibre.com>
References: <20230921144400.62380-1-dlechner@baylibre.com>
	<20230921144400.62380-4-dlechner@baylibre.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Thu, 21 Sep 2023 09:43:44 -0500
David Lechner <dlechner@baylibre.com> wrote:

> When reading the fault attribute, an empty string was printed if the
> fault register value was non-zero.
> 
> This is fixed by checking that the return value is less than zero
> instead of not zero.
> 
> Also always print two hex digits while we are touching this line.
> 
> Signed-off-by: David Lechner <dlechner@baylibre.com>
To trim this set down as quickly as possible I'll pick up anything
I can as I read through them.

Applied this one to the togreg branch of iio.git and pushed out as
testing for 0-day etc to poke it.

I doubt it's worth backporting but I don't think we mind if the bots
find it and people want to carry it in stable.

Thanks,

Jonathan

> ---
>  drivers/staging/iio/resolver/ad2s1210.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/iio/resolver/ad2s1210.c b/drivers/staging/iio/resolver/ad2s1210.c
> index 06de5823eb8e..84743e31261a 100644
> --- a/drivers/staging/iio/resolver/ad2s1210.c
> +++ b/drivers/staging/iio/resolver/ad2s1210.c
> @@ -393,7 +393,7 @@ static ssize_t ad2s1210_show_fault(struct device *dev,
>  	ret = ad2s1210_config_read(st, AD2S1210_REG_FAULT);
>  	mutex_unlock(&st->lock);
>  
> -	return ret ? ret : sprintf(buf, "0x%x\n", ret);
> +	return (ret < 0) ? ret : sprintf(buf, "0x%02x\n", ret);
>  }
>  
>  static ssize_t ad2s1210_clear_fault(struct device *dev,


