Return-Path: <devicetree+bounces-241262-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id D16F2C7BB9C
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 22:10:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 17E0236000B
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 21:09:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 901FE2F069E;
	Fri, 21 Nov 2025 21:09:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="i2KFO6Gb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA80C270557
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 21:09:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763759380; cv=none; b=sCpNbhE7MRMcJZkEhrLs6zTiyZQQOB5PF4Rz5h7sBIYG9J+Jkqg3ODf4p9SeWm6pCpiPKlGqOloq8DIvzrW/qmN2KRlDNdV6dlWbp8RpX4TJp4XkRv09uuO5ely6rI/3IeuUocqXPG9K0HF4wo1PZ5p39y+EIy13wFMywxJRGmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763759380; c=relaxed/simple;
	bh=pjRy1SEsLZJxI4LOty61Ye27Ei0/ipx3J1nq0iJzaHw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ql+uzFuyE0br5Zy1sTpcdnxtyXEOR3XUwai4T3+AJ5HbnQs57lAzeReGDzKr9IHFO3cfzrahiPzEc+Z7G7jFXS/ZFKCwi2cIA4Btw6lHrwTMTQq/ljUUTqOHFDq5X4/4EIvwM7DxJrFXhLyPcgJT8GImICKr8Vhp0vVP0D/N/xU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=i2KFO6Gb; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4779ebfa91aso2603135e9.3
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 13:09:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763759377; x=1764364177; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=m+St0oOO00YFrE/oeCGGrHEKEP9gDUq45OgfSWgKSac=;
        b=i2KFO6Gb7yw1w1MvIijYtVd5OFiZbgeKuoUZnNWteVRpTuAMixE4xzdzFaCNZt8EjX
         fl7rRtY+BddEdTq0ZC+LRkshZVJ0Ra85+1pSERORqV4qIitGHn6bfynbH5UMIDmQxXJh
         SASYMadhMjpAu7edxU2W5QvETYLiwxrrqLfjdhcfU370HHMtX0eOsS9G/uKT0MkMlkpd
         ishgKndlYCne7B9vR/113ViRmQzBgn75gy37vlGANJAm7axxzbLTSeocEtsC47Lqhtbd
         YYgdswem4TFp1k5W1VUBYn9SjUYI0WBALMjPQjXBsdE6Iv/EfbezX2+LlBIeljms8jke
         iaGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763759377; x=1764364177;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=m+St0oOO00YFrE/oeCGGrHEKEP9gDUq45OgfSWgKSac=;
        b=H1tH5MxnoSLZhaQY+K+HON4t2wDrxPy3scDlb3xj9Hbj+BtNRrjP9VzIBhJ5Uosi8Z
         uSRLPlDFJMtC8caFcx6GWmtdzdUt7UieqXMqkts4oji0n7UAFRcwh5l0V1SrydTSNeAl
         7o8c5o7g6QhwBm//cgibGqFgexVAHmLpJRZU8breh7psUXGXPhjQpcFcj2yIi6z2G0lw
         lr0OSBKcLeXC7TYC1tg6uPkamcPSNJDme5z6q/8FuYnGRJYjpLTIS/nx0k1nch0X1d5D
         0M+ukpJVC5hZL0xG09ldLMTBUNwERbGGkm6ha1lNEA0Ua30HGZa5yCKLDCU/kYy3RL8p
         U86Q==
X-Forwarded-Encrypted: i=1; AJvYcCVnoDhQQBPtGPBP2wt5L9z7ftYD9t6pMGSuR2En70ZHEJ8HpEoS56f25AU+1LS3b8MroWuO6eOiSKBt@vger.kernel.org
X-Gm-Message-State: AOJu0YxxQk5/1Mz2FAl3f3wY5gx+X1w5Q/8J9/J5N74Nr3XAclz297zT
	uc9BJ09jkilGejYkCFQvUrHbhhCu3GJoTBFKocX/8LGrePA5CjqOKXj3
X-Gm-Gg: ASbGncvmHfqvJkjUiUfqOIDk8mdDq+CfIiCu6OCfMDgVFkig9I88r5c8gMFbwik3dZV
	jPLR0NtaFAt1wwaBeX0nh/OZE2OvEk4hpA4q+7w/7gYnPKkSXe6SjPXI7bsFmo3h+uzChI2r7Dz
	Ihh8RwtijLCdwYxC7vW04jZzIBOhi7oE6pX5K8OyorJHWJqEpTVshdq6WRmMlmblGWUgpJTgnT3
	+ge3gjepZnopvNyc9LWVi94sBhsMXUV90P/oF5W1qZfBdZdLTndcRRg/AFN5dum38xQEGZsKi31
	Wq+T5f1chSwv5rTVdx3+1pfvZcjiz1Ur1cRBavk+YCc9wumMAlpsiAbIyU/yVp7MW7xlzxgORIv
	XDeBZ7v5qZ2AIcn1nu2RnfyVC4OaR6mFDwCy9rFp5sytFCEgywUvbd1WZmjaXNR9f0SceEzaMLS
	W46h8=
X-Google-Smtp-Source: AGHT+IFiaD4mpHrFN+tAaNq2FgvMpg4adybRd4aJ7oo2sEmIOOuFXgl3U576DxtLAMuPvA+rfainNg==
X-Received: by 2002:a05:600c:1c23:b0:477:5c70:e14e with SMTP id 5b1f17b1804b1-477c01d92cdmr25458805e9.5.1763759377158;
        Fri, 21 Nov 2025 13:09:37 -0800 (PST)
Received: from skbuf ([2a02:2f04:d106:d600:b19f:2efa:e88a:a382])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477a96aed1esm95730045e9.0.2025.11.21.13.09.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Nov 2025 13:09:36 -0800 (PST)
Date: Fri, 21 Nov 2025 23:09:32 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: =?utf-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <clement.leger@bootlin.com>,
	Andrew Lunn <andrew@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Simon Horman <horms@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Russell King <linux@armlinux.org.uk>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	linux-renesas-soc@vger.kernel.org, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [PATCH net-next 11/11] net: dsa: Kconfig: Enable support for
 RZ/T2H and RZ/N2H SoCs
Message-ID: <20251121210932.hcte74sz6efa4vym@skbuf>
References: <20251121113553.2955854-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20251121113553.2955854-12-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251121113553.2955854-12-prabhakar.mahadev-lad.rj@bp.renesas.com>

On Fri, Nov 21, 2025 at 11:35:37AM +0000, Prabhakar wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> 
> Update the Kconfig entry for the Renesas RZ/N1 A5PSW Ethernet switch
> driver to depend on ARCH_RENESAS instead of ARCH_RZN1. This allows
> the driver to be built for other Renesas SoCs that integrate a similar
> Ethernet switch IP, such as RZ/T2H and RZ/N2H.
> 
> Also update the help text and prompt to reflect support for the ETHSW
> variant used on these SoCs.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---

Reviewed-by: Vladimir Oltean <olteanv@gmail.com>

