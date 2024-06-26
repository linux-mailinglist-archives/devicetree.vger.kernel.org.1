Return-Path: <devicetree+bounces-80285-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5948291850B
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 16:58:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 898D41C22C6A
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 14:58:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 182351862B7;
	Wed, 26 Jun 2024 14:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="hqVCury/"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F09D1186294
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 14:58:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719413913; cv=none; b=kz5O/jaoj4MWP9IXkv+OWja0u2jZkFiKT7ufezpTxXJaKvUtdSnels7D4WXNQBI4JpRoILpY3yut1VTXIOCMa1d7EKiTN+7jIZZc2Z63tcPCXpznxLHLE/5dJljWSwZxyZJZdQlC8LzuF713nhI8toLsS9IW3qsjnE/tYXH2FLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719413913; c=relaxed/simple;
	bh=I0D6e6Fg9mEuPCvMsSlvOuOX5/XCzgzm4K0nMEj8N7s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MCJ58LiCkgkbp0EdD3ut8Mov4/jL5poGfFopNfcRVsHaiSovtWeM1VIEkDpQcDIw+pzEWNayWOxAM/Bw3b0pwRtUjbpFB1Exz9EBv/QZZVpYpVnZ0Txr5whSXg0S6V7M+dR9o6PXZMfa37IRT9tk6l9hwnrlhC/kQ7VNU64KXgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=hqVCury/; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1719413910;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Aya9QIUU1dceOpRSHwLiYWRs5fBhpIvpFHsqd9ObPGw=;
	b=hqVCury/LQW1aL/8KmtaUXBsFDVQnQ8vlQQhQzgF8hcEE2clW4InEuFa5NsEvwaZc+FcNq
	FPpJ1VXIc+0IMqMBeXX1tfgyFMnT6E3RAJZRjv1Kr5RNCQZD1R0ydvnENKypYMWgb7HE+n
	w75JcN7Okr4H9IIXB4U0ndLI4OBZ8DU=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-279-Y2cH6pljOMis_m5LB1WGKQ-1; Wed, 26 Jun 2024 10:58:28 -0400
X-MC-Unique: Y2cH6pljOMis_m5LB1WGKQ-1
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6b50a228363so97263866d6.0
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 07:58:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719413908; x=1720018708;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Aya9QIUU1dceOpRSHwLiYWRs5fBhpIvpFHsqd9ObPGw=;
        b=AR6YHUYDn/zto6FelL9GSqZj7S+vWMUf/9Vn2RxgDJ7VbUNuibuIy4PpDoMepDLyWl
         LjWo+7pge194JwaAIOBwEhJ1hd5WaqY0KtGTIWP66BJ6V+W0jve7J7KjGODN07L+3Y9g
         YYxTFFFWLQVOnuhP5aqofgs80SJYbQwyH8tyrJd/dtbznjC98O8bPrTxxwOup8ffuH4f
         19fdtIRi0bwT456dgEjSiYtB+eGkiyvfKGYJmPR94ct6FJeES0g88vVhaV11DmAuZKOx
         x1qs7bZI+jZwe8Rq0ju0LKX4nIX6mFNuvVYL4t4efh2U2L4+CsFwYleVIF3UJmh3xffg
         Wf5Q==
X-Forwarded-Encrypted: i=1; AJvYcCWOddEMkOSzg/rXhqTRnRRcqb47exlKYIu+YoTdbH5B2CP6Sv62aUTXxPXsUCcqgh5JbYegNecjJ/iwQYkeo9Q8kpK5Vp0G+IoRfw==
X-Gm-Message-State: AOJu0Yxuvdw5Pf2iO75dKsVjVnnRonyJMBKWk0f+rV2dFARaiO9P9reN
	1i6JHl6yUfqyZqWeP1Ecsdtar2lyK8Tjzcy3hc9lws8C9W8nCYqgkpa+VniDCf58cx8jRZ84X+9
	AuUyt+x/1aKyR3h1WTxVViY1lwN86WUxgbtr7Rg5p1ZydnPkzH19rArVgGZc=
X-Received: by 2002:ad4:424e:0:b0:6b4:fe0c:1a92 with SMTP id 6a1803df08f44-6b53bff41abmr121545766d6.43.1719413908143;
        Wed, 26 Jun 2024 07:58:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG6nPLCGa2C50EKUtysGXYh0LMEa5egqmh4lDlG99IlgJl3jje0UqDxnnZntsdaxpPxTw2dxA==
X-Received: by 2002:ad4:424e:0:b0:6b4:fe0c:1a92 with SMTP id 6a1803df08f44-6b53bff41abmr121545616d6.43.1719413907762;
        Wed, 26 Jun 2024 07:58:27 -0700 (PDT)
Received: from x1gen2nano ([2600:1700:1ff0:d0e0::f])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6b531673e6esm42461056d6.85.2024.06.26.07.58.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jun 2024 07:58:27 -0700 (PDT)
Date: Wed, 26 Jun 2024 09:58:24 -0500
From: Andrew Halaney <ahalaney@redhat.com>
To: Sagar Cheluvegowda <quic_scheluve@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Jose Abreu <joabreu@synopsys.com>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Russell King <linux@armlinux.org.uk>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Bhupesh Sharma <bhupesh.sharma@linaro.org>, kernel@quicinc.com, 
	Andrew Lunn <andrew@lunn.ch>, linux-arm-msm@vger.kernel.org, netdev@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 3/3] net: stmmac: Bring down the clocks to lower
 frequencies when mac link goes down
Message-ID: <qf4zl7qupkzbrb6ik4v4nkjct7tsh34cmoufy23zozcht5gch6@kvymsd2ue6cd>
References: <20240625-icc_bw_voting_from_ethqos-v2-0-eaa7cf9060f0@quicinc.com>
 <20240625-icc_bw_voting_from_ethqos-v2-3-eaa7cf9060f0@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240625-icc_bw_voting_from_ethqos-v2-3-eaa7cf9060f0@quicinc.com>

On Tue, Jun 25, 2024 at 04:49:30PM GMT, Sagar Cheluvegowda wrote:
> When mac link goes down we don't need to mainitain the clocks to operate
> at higher frequencies, as an optimized solution to save power when
> the link goes down we are trying to bring down the clocks to the
> frequencies corresponding to the lowest speed possible.
> 
> Signed-off-by: Sagar Cheluvegowda <quic_scheluve@quicinc.com>
> ---
>  drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> index ec7c61ee44d4..f0166f0bc25f 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> @@ -996,6 +996,9 @@ static void stmmac_mac_link_down(struct phylink_config *config,
>  {
>  	struct stmmac_priv *priv = netdev_priv(to_net_dev(config->dev));
>  
> +	if (priv->plat->fix_mac_speed)
> +		priv->plat->fix_mac_speed(priv->plat->bsp_priv, SPEED_10, mode);
> +
>  	stmmac_mac_set(priv, priv->ioaddr, false);
>  	priv->eee_active = false;
>  	priv->tx_lpi_enabled = false;
> @@ -1004,6 +1007,11 @@ static void stmmac_mac_link_down(struct phylink_config *config,
>  
>  	if (priv->dma_cap.fpesel)
>  		stmmac_fpe_link_state_handle(priv, false);
> +
> +	stmmac_set_icc_bw(priv, SPEED_10);
> +
> +	if (priv->plat->fix_mac_speed)
> +		priv->plat->fix_mac_speed(priv->plat->bsp_priv, SPEED_10, mode);


I think you're doing this at the beginning and end of
stmmac_mac_link_down(), is that intentional?

I'm still curious if any of the netdev folks have any opinion on scaling
things down like this on link down.


