Return-Path: <devicetree+bounces-132905-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 32FB49F88F3
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 01:22:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 04AE31898155
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 00:22:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A17FA50;
	Fri, 20 Dec 2024 00:22:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="M+8pRMxi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CB145661
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 00:22:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734654160; cv=none; b=jyi1134gGuuQbs2GRnG4BxsUkKOJt00n8Pdro+74bLl6nue4YBM3XhlqK9CKEkBVBQDq39hkQRiXbMuav8CgQa8tpIYsLcyf+f3wRJtxOvqOsf0dFlJr4ZCG6TS73pHgbgQsGjWZiheBqrv04IbP8Id63pkXagSfSkt4MX4CzRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734654160; c=relaxed/simple;
	bh=dN+JC89eYlKm1oNJ6u5S36jNWxSOdHKmN2tVoJ3xb7k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZVqMAoiZC947clQCYz8jbTNlzrzsbne3wx+f+PFUWFS2MvWV9xTIQJVPZiGqn1pSBqtDdixN5yheTq1b+JclaiQmPihFexAVnko1hxODMnpCq1v4vBdc8InYQIHLCdnlqUvrzXRo0+AbgML6YENwQ3zJmbv/jryZJpOq99GKrKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=M+8pRMxi; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-3003c0c43c0so15477111fa.1
        for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 16:22:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734654157; x=1735258957; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=AAbh6kvzri8ctYwKqJBe83JxMpEXpUs+Ep0IfsaKnoM=;
        b=M+8pRMxiECS0LAGLRV8Y2WzVZbovNfLSr8lCeODI+zljiaNWojW48RdAcGPhNCWXyj
         klQWypZ6nwpyvexNQVFKqLQmEno3sQFQwRqMjhfmYmRd5mStEy5iFafRVd1xLnvM7EwO
         Fh74wnLTyz24tl7IprbxUmou4qTujJ6M+6MJ23O3h4ZweOUcHi7iSFq5KI+eKbAVu3ef
         F+u+rFkCQzrXUllswb6msWrPmWTZzpEHzgZ3iax8gumBce0Ctl83u39l+0OxMBv6Of9k
         oT/ElV8DoDOnq+ploCd6uaU33ANsJQIEct+Sx4nndZcdvCj3f9Txu+ySFBMjpHwHjX05
         ZMjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734654157; x=1735258957;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AAbh6kvzri8ctYwKqJBe83JxMpEXpUs+Ep0IfsaKnoM=;
        b=KDTXdcoUYU/RpCdoVhMXFh9z8mosDOeXMEtUApKXq2PYaDDtXPEtNdh/RrX99OZLHm
         D49kOrddpyB72r7Lk290KehCoii8id4GwgujuBNLwFciMZfeyJgQf+tnMosR1hW9wKsQ
         EO7hNNqxDDXRfuQTJcpTi+Wa7/r1Hhdvld9+GG8F5osD2Q6KBx8q2rd87iNb8tn84uj+
         6DTSHlHePaUsmKfe5+wNwtI4uwwEJFCEP21vduPbG/9JaAlscu5c6vgF+7rJbxt+oYok
         JNQYAk1E4HgLdZR/9FjnQdFuJierLogLWLmhWaoxR85GUEpZtE90k8hCghNmSExuxpJv
         Gs2Q==
X-Forwarded-Encrypted: i=1; AJvYcCU5Nt03Z7h2kEtpiFWbiZ3FRCa0X+TEvw1MMb6aiqOIjZFwTuA46Qto2MFjv5VZyM95hM+CquCKzAUE@vger.kernel.org
X-Gm-Message-State: AOJu0YyAthbIaB+bqg87oM70ZeMMe48egOc9apnJivjpbHTw9nW2PvgU
	RYdotdEq+8Mf8XRINDT9A5YJjSFoU2idRSRdMeUkTu18yh8qC9LAydgYt39V5Oo=
X-Gm-Gg: ASbGncu64nHXaNSkSuajMagG1nPm3w8gCm6oqr+/ibqd5X0zqK3OFhQVhsd42c3ZZeC
	SuE8SHBPYuGZ0POnEurBI7YM0fnadsfWtPgmX5yALAuSZr2w155ZM9vZA7XaecXVYh73Q8AAPfh
	IoSYqM59DWHjSU7lahXSWOq+liUK4g0ha1TCqlibAtrM31W3ouUGs/uYrb/8lNPG8ewiYIt95Su
	bLDl0uR6g5yciq9Fhzfjm1W2tpqdoq7FFenr/yz9oBdQeesWA7Yu3gcJ7hjnprI0fNldxQfBXR4
	J9An9PvAY1I0sQufes/BA5QLd7kFlMqAZfYy
X-Google-Smtp-Source: AGHT+IHBDB0DL2HFPmb1YTVLVej9ZBG0paM1gMbp8tkms3Vb7rT70j9ksKteZoAkcn4DVOlUEs7IFg==
X-Received: by 2002:a05:6512:3f25:b0:540:353a:5b1f with SMTP id 2adb3069b0e04-542294a1623mr189444e87.0.1734654156655;
        Thu, 19 Dec 2024 16:22:36 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54223832b6csm318735e87.273.2024.12.19.16.22.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Dec 2024 16:22:35 -0800 (PST)
Date: Fri, 20 Dec 2024 02:22:33 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com, 
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v3 04/15] phy: phy-rockchip-samsung-hdptx: Rename some
 register names related to DP
Message-ID: <rkdp44csph6stq2e7emhgjziiwypcas7uqsvcdo7i6ypvg64uz@gnqikl5fzxqd>
References: <20241219080604.1423600-1-damon.ding@rock-chips.com>
 <20241219080604.1423600-5-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241219080604.1423600-5-damon.ding@rock-chips.com>

On Thu, Dec 19, 2024 at 04:05:53PM +0800, Damon Ding wrote:
> The modifications of DP register names are as follows:
> - Add the '_MASK' suffix to some registers to ensure consistency.
> - Complete the names of some register to their full names.
> - Swap the definitions of LCPLL_REF and ROPLL_REF.

Three unrelated changes, ideally means three commits (I won't insist on
that though). Also please mention that LCPLL_REF and ROPLL_REF were not
used by the existing driver, so it's not a bug and there is no need to
backport it.

> 
> Fixes: 553be2830c5f ("phy: rockchip: Add Samsung HDMI/eDP Combo PHY driver")
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> ---
>  .../phy/rockchip/phy-rockchip-samsung-hdptx.c | 64 +++++++++----------
>  1 file changed, 32 insertions(+), 32 deletions(-)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
> index ceab9c71d3b5..c1b9c73f5f9f 100644
> --- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
> +++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
> @@ -69,41 +69,41 @@
>  #define ROPLL_PMS_IQDIV_RSTN		BIT(5)
>  /* CMN_REG(005e) */
>  #define ROPLL_SDM_EN_MASK		BIT(6)
> -#define ROPLL_SDM_FRAC_EN_RBR		BIT(3)
> -#define ROPLL_SDM_FRAC_EN_HBR		BIT(2)
> -#define ROPLL_SDM_FRAC_EN_HBR2		BIT(1)
> -#define ROPLL_SDM_FRAC_EN_HBR3		BIT(0)
> +#define ROPLL_SDC_FRAC_EN_RBR_MASK	BIT(3)
> +#define ROPLL_SDC_FRAC_EN_HBR_MASK	BIT(2)
> +#define ROPLL_SDC_FRAC_EN_HBR2_MASK	BIT(1)
> +#define ROPLL_SDM_FRAC_EN_HBR3_MASK	BIT(0)
>  /* CMN_REG(0064) */
>  #define ROPLL_SDM_NUM_SIGN_RBR_MASK	BIT(3)
>  /* CMN_REG(0069) */
>  #define ROPLL_SDC_N_RBR_MASK		GENMASK(2, 0)
>  /* CMN_REG(0074) */
> -#define ROPLL_SDC_NDIV_RSTN		BIT(2)
> -#define ROPLL_SSC_EN			BIT(0)
> +#define ROPLL_SDC_NDIV_RSTN_MASK	BIT(2)
> +#define ROPLL_SSC_EN_MASK		BIT(0)
>  /* CMN_REG(0081) */
> -#define OVRD_PLL_CD_CLK_EN		BIT(8)
> -#define PLL_CD_HSCLK_EAST_EN		BIT(0)
> +#define OVRD_PLL_CD_CLK_EN_MASK		BIT(8)
> +#define ANA_PLL_CD_HSCLK_EAST_EN_MASK	BIT(0)
>  /* CMN_REG(0086) */
>  #define PLL_PCG_POSTDIV_SEL_MASK	GENMASK(7, 4)
>  #define PLL_PCG_CLK_SEL_MASK		GENMASK(3, 1)
 >  #define PLL_PCG_CLK_EN			BIT(0)
>  /* CMN_REG(0087) */
> -#define PLL_FRL_MODE_EN			BIT(3)
> -#define PLL_TX_HS_CLK_EN		BIT(2)
> +#define ANA_PLL_FRL_MODE_EN_MASK	BIT(3)
> +#define ANA_PLL_TX_HS_CLK_EN_MASK	BIT(2)
>  /* CMN_REG(0089) */
>  #define LCPLL_ALONE_MODE		BIT(1)
>  /* CMN_REG(0097) */
> -#define DIG_CLK_SEL			BIT(1)
> -#define ROPLL_REF			BIT(1)
> -#define LCPLL_REF			0
> +#define DIG_CLK_SEL_MASK		BIT(1)
> +#define LCPLL_REF			BIT(1)
> +#define ROPLL_REF			0
>  /* CMN_REG(0099) */
>  #define CMN_ROPLL_ALONE_MODE		BIT(2)
>  #define ROPLL_ALONE_MODE		BIT(2)
>  /* CMN_REG(009a) */
> -#define HS_SPEED_SEL			BIT(0)
> +#define HS_SPEED_SEL_MASK		BIT(0)
>  #define DIV_10_CLOCK			BIT(0)
>  /* CMN_REG(009b) */
> -#define IS_SPEED_SEL			BIT(4)
> +#define LS_SPEED_SEL_MASK		BIT(4)
>  #define LINK_SYMBOL_CLOCK		BIT(4)
>  #define LINK_SYMBOL_CLOCK1_2		0
>  
> @@ -165,32 +165,32 @@
>  #define HDMI_MODE			BIT(2)
>  #define HDMI_TMDS_FRL_SEL		BIT(1)
>  /* LNTOP_REG(0206) */
> -#define DATA_BUS_SEL			BIT(0)
> +#define DATA_BUS_WIDTH_SEL_MASK		BIT(0)
>  #define DATA_BUS_36_40			BIT(0)
>  /* LNTOP_REG(0207) */
>  #define LANE_EN				0xf
>  #define ALL_LANE_EN			0xf
>  
>  /* LANE_REG(0312) */
> -#define LN0_TX_SER_RATE_SEL_RBR		BIT(5)
> -#define LN0_TX_SER_RATE_SEL_HBR		BIT(4)
> -#define LN0_TX_SER_RATE_SEL_HBR2	BIT(3)
> -#define LN0_TX_SER_RATE_SEL_HBR3	BIT(2)
> +#define LN0_TX_SER_RATE_SEL_RBR_MASK	BIT(5)
> +#define LN0_TX_SER_RATE_SEL_HBR_MASK	BIT(4)
> +#define LN0_TX_SER_RATE_SEL_HBR2_MASK	BIT(3)
> +#define LN0_TX_SER_RATE_SEL_HBR3_MASK	BIT(2)
>  /* LANE_REG(0412) */
> -#define LN1_TX_SER_RATE_SEL_RBR		BIT(5)
> -#define LN1_TX_SER_RATE_SEL_HBR		BIT(4)
> -#define LN1_TX_SER_RATE_SEL_HBR2	BIT(3)
> -#define LN1_TX_SER_RATE_SEL_HBR3	BIT(2)
> +#define LN1_TX_SER_RATE_SEL_RBR_MASK	BIT(5)
> +#define LN1_TX_SER_RATE_SEL_HBR_MASK	BIT(4)
> +#define LN1_TX_SER_RATE_SEL_HBR2_MASK	BIT(3)
> +#define LN1_TX_SER_RATE_SEL_HBR3_MASK	BIT(2)
>  /* LANE_REG(0512) */
> -#define LN2_TX_SER_RATE_SEL_RBR		BIT(5)
> -#define LN2_TX_SER_RATE_SEL_HBR		BIT(4)
> -#define LN2_TX_SER_RATE_SEL_HBR2	BIT(3)
> -#define LN2_TX_SER_RATE_SEL_HBR3	BIT(2)
> +#define LN2_TX_SER_RATE_SEL_RBR_MASK	BIT(5)
> +#define LN2_TX_SER_RATE_SEL_HBR_MASK	BIT(4)
> +#define LN2_TX_SER_RATE_SEL_HBR2_MASK	BIT(3)
> +#define LN2_TX_SER_RATE_SEL_HBR3_MASK	BIT(2)
>  /* LANE_REG(0612) */
> -#define LN3_TX_SER_RATE_SEL_RBR		BIT(5)
> -#define LN3_TX_SER_RATE_SEL_HBR		BIT(4)
> -#define LN3_TX_SER_RATE_SEL_HBR2	BIT(3)
> -#define LN3_TX_SER_RATE_SEL_HBR3	BIT(2)
> +#define LN3_TX_SER_RATE_SEL_RBR_MASK	BIT(5)
> +#define LN3_TX_SER_RATE_SEL_HBR_MASK	BIT(4)
> +#define LN3_TX_SER_RATE_SEL_HBR2_MASK	BIT(3)
> +#define LN3_TX_SER_RATE_SEL_HBR3_MASK	BIT(2)
>  
>  #define HDMI20_MAX_RATE			600000000
>  
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

