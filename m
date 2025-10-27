Return-Path: <devicetree+bounces-231873-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 80D9FC1212D
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 00:38:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 6FB3B4E41F7
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 23:36:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 899D1328610;
	Mon, 27 Oct 2025 23:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="anAEdHVg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C35F82D877C
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 23:36:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761608193; cv=none; b=fcduqgX+1IRZDWmneNEVQM32wr9Nh7Ug75cvIzOMMP2lLhS4n3YaCz0ODC23taILFjhwyf5kfVtbzuDJ4rOLwV1Q6Lvg5u+2WWwN2d7RNf9gifw7xVptCGqOK9KDOsCD1UpLIKfFGoAKwOTnMF0NEU2PJdULbCMmmcRBVdE5OGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761608193; c=relaxed/simple;
	bh=qvWAYMr9N/DUBOKfCCTkn13ib5iwybEXtVQwmQA/Lb0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SM9cPi3wK+ZvbM4B8x3mMpLyLzP133esOEe5ZfWwVcQzoPhUOzhdzj1H5enN+DpcFccR6laoE9DgHRSWOyaLSMGXPh7mSLzV/QdOFmznI6I4/dQe+oFW+jd2FeC2HhZWvz6xXSTGuybwTOG5+HByVUEHUnXGNBXIx6j/wq7X2vs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=anAEdHVg; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-b404a8be3f1so117714566b.1
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 16:36:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761608190; x=1762212990; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=tsJ+yBdg7GO/yeuRN4xr8Rgswci3SrqwbYTUaP0sSpI=;
        b=anAEdHVgVkwjMttgKJ/nMkINi7cnTnjt+yV9m8gXdqgvE4lC918prkyfh77SKJ9RMv
         2wQg3tMhTgh6EPLWpsKTvb7qrB+qPB17tnp622VCQUgYXC5uqzasM601oY9zaXl11ioi
         RVoqXMaqzcfw6UR0oS23vDRhlTSDs0QgSQDwmOw54KlFD7CMLJf0x/l02ow/O8OhEoNo
         ZeM5pcNU77xPLPq09ttqjzBEdgzigrbT2Y+IadN5i3Oxj65QwmOfqeGNHZG7GDCPi47p
         Hn4abvJnYYW13UWoN4qu0jJ9wxJUNXZ6Bosw7IfRS210IyjV26Hn44AZFUnHA6f1GT1Q
         YN7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761608190; x=1762212990;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tsJ+yBdg7GO/yeuRN4xr8Rgswci3SrqwbYTUaP0sSpI=;
        b=m5Pt/iRzSSrUsXOgZ0rvDdUcV5oc3Ba4Jakoa+u6W+f6zCnIgRkZJDRa4KSQLCFEtA
         gGUNRBtyeZ7ct24ObJs8bCafnCFAiO/dkNTxWVLBcY25zh5Tp+KzFkdD9A9Rv1rVrt6d
         2oPGuQ7G/7Lw0uO5tR1Q2v6yh9PWJDSDToG1yaXC7tBRUuznOa2wRHkEb6mswXfbBapc
         +TS8hhh9hJUO9TEjVsjQlRpTamPeG5NIXHZEnRH9TA4HMp3kxMD9iBNsdoP3C7tYIubR
         +eQiKPRuafNMU6HspeZW49NURaXtej1ASlN1qiJZ7ZWaIuBBC3xcSYwirMcgL6KBHO0m
         vbQw==
X-Forwarded-Encrypted: i=1; AJvYcCXSUgEmVfi009m69cxjA2Qhv7h0JM9YmSQfSJ0JyHxyZLwmfVe+03+1fCtibgTVkUoAdE2BiLiVrcWp@vger.kernel.org
X-Gm-Message-State: AOJu0YwwzYc6AUgG+VCktUwTD3HutbtUmjfqYS7QWiMQV6ymdcSUtVZd
	dpRajf4SuxAEHH6kVX58EEPfHDIIerLv7npZ4fIxngKwDEH6oGjXZ0rT
X-Gm-Gg: ASbGncuVGRpjZTdhXrRkTIjjGeF60vy/hRi0WAGDAo2V0WkIjivoSafd4ffLdGWLq5M
	Jxy51vgalAkZUWPInmndJWpxwT6CjP6I74xKMjBusrkI/b3JHuovZwfl2z3DWYYAh0AZbnB66Yc
	p84yZUCqNb5QdpP38wsTX09Vx1ksPuGauCq+hlinpbF2EhhwqmixHhPJ980kMc64s5jgp+NChRk
	EY8IGozVgN45GjWNP/Q0JjcBbs8prWLCpNweKLq0R8TYXPQGWFpuOUTtJ//GUtn/3gxVA42QkjM
	XAoypfwdPp73UObhTZr1cwbrQoD2ikRCj7HSMZksY8dv6Ol+0mXf7QjuxwcuBgI3r/hRUna68b+
	TlSF4P22sfBvnxzfsL/5bMqCxsJCoqTxn7zfRMkvDFB04kgMs985nYxBChiPEGugCQEdUXihUj1
	squMo=
X-Google-Smtp-Source: AGHT+IFg/lCVtyz/HzS52kOUjJMQdUG7JrftCeugpNASZSGw37VW8nbfhJkVrtxD6rfrgOJBaoHF/w==
X-Received: by 2002:a17:907:980b:b0:b6a:382a:1516 with SMTP id a640c23a62f3a-b6dba55aee5mr92721866b.5.1761608189883;
        Mon, 27 Oct 2025 16:36:29 -0700 (PDT)
Received: from skbuf ([2a02:2f04:d406:ee00:3eb9:f316:6516:8b90])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d85398439sm902573366b.36.2025.10.27.16.36.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Oct 2025 16:36:29 -0700 (PDT)
Date: Tue, 28 Oct 2025 01:36:26 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Daniel Golle <daniel@makrotopia.org>
Cc: Hauke Mehrtens <hauke@hauke-m.de>, Andrew Lunn <andrew@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Simon Horman <horms@kernel.org>,
	Russell King <linux@armlinux.org.uk>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Andreas Schirm <andreas.schirm@siemens.com>,
	Lukas Stockmann <lukas.stockmann@siemens.com>,
	Alexander Sverdlin <alexander.sverdlin@siemens.com>,
	Peter Christen <peter.christen@siemens.com>,
	Avinash Jayaraman <ajayaraman@maxlinear.com>,
	Bing tao Xu <bxu@maxlinear.com>, Liang Xu <lxu@maxlinear.com>,
	Juraj Povazanec <jpovazanec@maxlinear.com>,
	"Fanni (Fang-Yi) Chan" <fchan@maxlinear.com>,
	"Benny (Ying-Tsan) Weng" <yweng@maxlinear.com>,
	"Livia M. Rosu" <lrosu@maxlinear.com>,
	John Crispin <john@phrozen.org>
Subject: Re: [PATCH net-next v3 09/12] net: dsa: lantiq_gswip: add vendor
 property to setup MII refclk output
Message-ID: <20251027233626.d6vzb45gwcfvvorh@skbuf>
References: <cover.1761521845.git.daniel@makrotopia.org>
 <869f4ea37de1c54b35eb92f1b8c55a022d125bd3.1761521845.git.daniel@makrotopia.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <869f4ea37de1c54b35eb92f1b8c55a022d125bd3.1761521845.git.daniel@makrotopia.org>

On Sun, Oct 26, 2025 at 11:47:21PM +0000, Daniel Golle wrote:
> Read boolean Device Tree property "maxlinear,rmii-refclk-out" and switch
> the RMII reference clock to be a clock output rather than an input if it
> is set.
> 
> Signed-off-by: Daniel Golle <daniel@makrotopia.org>
> ---
>  drivers/net/dsa/lantiq/lantiq_gswip_common.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/net/dsa/lantiq/lantiq_gswip_common.c b/drivers/net/dsa/lantiq/lantiq_gswip_common.c
> index 60a83093cd10..bf38ecc13f76 100644
> --- a/drivers/net/dsa/lantiq/lantiq_gswip_common.c
> +++ b/drivers/net/dsa/lantiq/lantiq_gswip_common.c
> @@ -1442,6 +1442,10 @@ static void gswip_phylink_mac_config(struct phylink_config *config,
>  		return;
>  	}
>  
> +	if (of_property_read_bool(dp->dn, "maxlinear,rmii-refclk-out") &&
> +	    !(miicfg & GSWIP_MII_CFG_MODE_RGMII))
> +		miicfg |= GSWIP_MII_CFG_RMII_CLK;
> +

What did you mean with the !(miicfg & GSWIP_MII_CFG_MODE_RGMII) test?
If the schema says "Only applicable for RMII mode.", what's the purpose
of this extra condition? For example, GSWIP_MII_CFG_MODE_GMII also has
the "GSWIP_MII_CFG_MODE_RGMII" bit (0x4) unset. Does this have any significance?

>  	gswip_mii_mask_cfg(priv,
>  			   GSWIP_MII_CFG_MODE_MASK | GSWIP_MII_CFG_RMII_CLK |
>  			   GSWIP_MII_CFG_RGMII_IBS | GSWIP_MII_CFG_LDCLKDIS,
> -- 
> 2.51.1

