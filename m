Return-Path: <devicetree+bounces-265673-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mJ11CVbdkmlvzQEAu9opvQ
	(envelope-from <devicetree+bounces-265673-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 10:03:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 93B2A141CE3
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 10:03:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 393833032CDF
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 09:01:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABE531F3B87;
	Mon, 16 Feb 2026 09:01:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WmQaaKp9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6609D22B5AD
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 09:01:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771232478; cv=none; b=SrQRKB1AV+5g/X6A2GuPAVMjiL7J0BgxNX99hRaRyPFj4eD6d8/YklNXUkyHu+urlmOoWWRqtQ/8Q4LNQOxP8PDDRhJQch6zhH2z6O9jRcLsr7cOd1m1pOq9cLdLd7QDMTWw2sqYV0TYe+EF5vWTY53iP5Hg7uKItz7vJ8mDzJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771232478; c=relaxed/simple;
	bh=2MLUkdf1st2wI8Mhpz3EHSzrYYrzKyvFdnclNChQ0Po=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uScQbdaHm/RAcc2s2vieebWS0hTVUGAEaMmEpQ7cjIim/65RdxtbodHxQp+Akl1BVWCnwzA2mCdfkq0P0GKbQRzIW8rSFXl6ya97Qo+PQz1o4lxLr+lhKKzP8SrKICiYXS2eWregI17sBSO193ZQ2iKaPayniTfTvCacBcQVqe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WmQaaKp9; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-483708b697cso2837155e9.3
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 01:01:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771232476; x=1771837276; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=qHnHPcuynIqTUxCpCO7mrbWmUqF4Rxqiy/wTilKTles=;
        b=WmQaaKp9Q3jJ/sf6KjjXgX5qSHAyxuIcukKFq5+OnhxY2YzB6+XgUjPjfG0wIpHXXm
         txXA+guyXjVjltaIPhRT8f7kxJ8/CBSnUuFS9dHvlqztpE4agEPuAWyiAHqzY6uS2gKs
         A6Z249mKc0XjtW7Uangtt28PG/6poFZp+PTJi4H1NrTrlOBS7BiYeBICyHycPNowxBBM
         E8pCq7jLUt3hgssCzGl0eIg7NwHUa1pf9sQQ18pp2UzC57NRHhnetjNHUB1kcBMlDUrw
         h7HHu8CvkZxse/rJviqN1ACWSutngZf6cBKg/SEbhJEVvT8jrjjiVL9AEjZ0omG3Mbcq
         bgTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771232476; x=1771837276;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qHnHPcuynIqTUxCpCO7mrbWmUqF4Rxqiy/wTilKTles=;
        b=ERxuRD9OCzUecOLheEP4eylkgTDtFHZ915fDj/7PNJSymj/AuMzxg/8KT2ax0fcXgW
         vfu3O1q6HbjaR7LMM4REJWiiTdT5jJkCOTg6EezVlUS/t/7QC0UpSm4UaGIeB6IqHV4g
         AjK8LdIuxm3QSiBjd1cwa5j2aX2h/FjxKpdGqPa/ITn8t3pLVQdFAvX/2x4IXtfFmwZ/
         Ul8ygRqOrCeJL/3ZI/kObYfrFstJOpZfnVYNJaFpSto20PIXqi7m78LakMPizUzjrPcZ
         Q3jglmVhLhaYPG/lxgozLutHB1hRPDvAVsH+hlLAKf25R/2C3f9R8rqBCmHGJVwqKZPE
         aGZg==
X-Forwarded-Encrypted: i=1; AJvYcCVMw/1jwVXuionKP5aPQ/21Ej4iuUe5R8KousX4GRzWZ9eyHrSGyYcmm98ou9o6FQuQFEelosRjTTlm@vger.kernel.org
X-Gm-Message-State: AOJu0YxEwh8K+COwQb3hAMWFsoWxWxWbIOIfibDpuOJCpXAUM/ouV+WR
	PJG0AApzZEEu+d8nde9LDL0YA53xD+dCc9p4ZgsoavXiOc4dYNlTcXXc
X-Gm-Gg: AZuq6aIbWGyfDEEo8KePCj4FDWs6kVNUicxtz0ujFPFJosVk3L1DkH2cP6+DUv+njWa
	TUlmGOVnFD+HtINh8FJEgb9pji5/dbTY7wQ3ZgTwKaYzzOPpc108jbWBCQINgKj/VUP37u7/Qtd
	lm4Bf+qpREpui/CyOq6c6T6cSKkODbM+NWAM3xFHbLG2j1lWzYtpddnuc40ULF5zl9qh5EpZKCh
	52RkZHZY+NL3Kqjgk0bHGl11X7bdlUsytbB+X4RWszR3PoCKmmPPsKrdCV0Ofpt9q16EONANsci
	n3ctihq0hgn7rck/TZSujVrjLZ6W+o88pvMluOVkXBWJFNRDSlqnwbAnwa0LpVAQDwM//3iLMRb
	AAQe/PZDm6DRrvXcoprSDtREF7i2G+ye/4/7n2UeX/5o9DVtrBuYasgk/6MJAU+8V3rwuQSlTN5
	UTWksQrSCfCqXQAw==
X-Received: by 2002:a05:600c:4448:b0:47b:d992:601e with SMTP id 5b1f17b1804b1-48370e2b6bemr118797125e9.2.1771232475530;
        Mon, 16 Feb 2026 01:01:15 -0800 (PST)
Received: from skbuf ([2a02:2f04:d501:d900:68e2:cc27:74c:c083])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48370a78c89sm249517325e9.5.2026.02.16.01.01.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Feb 2026 01:01:14 -0800 (PST)
Date: Mon, 16 Feb 2026 11:01:12 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Yixun Lan <dlan@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Ze Huang <huang.ze@linux.dev>,
	Junzhong Pan <panjunzhong@linux.spacemit.com>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/3] phy: k1-usb: add disconnect function support
Message-ID: <20260216090112.n5jjpui3luqsybb5@skbuf>
References: <20260214-11-k3-usb2-phy-v2-0-6ed31e031ab4@kernel.org>
 <20260214-11-k3-usb2-phy-v2-2-6ed31e031ab4@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260214-11-k3-usb2-phy-v2-2-6ed31e031ab4@kernel.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265673-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[olteanv@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 93B2A141CE3
X-Rspamd-Action: no action

Hello Yixun,

On Sat, Feb 14, 2026 at 08:29:15PM +0800, Yixun Lan wrote:
> A disconnect status BIT of USB2 PHY need to be cleared, otherwise
> it will fail to work properly during next connection when devices
> connect to roothub directly.
> 
> Fixes: fe4bc1a08638 ("phy: spacemit: support K1 USB2.0 PHY controller")
> Signed-off-by: Yixun Lan <dlan@kernel.org>
> ---
>  drivers/phy/spacemit/phy-k1-usb2.c | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/drivers/phy/spacemit/phy-k1-usb2.c b/drivers/phy/spacemit/phy-k1-usb2.c
> index 342061380012..959bf79c7a72 100644
> --- a/drivers/phy/spacemit/phy-k1-usb2.c
> +++ b/drivers/phy/spacemit/phy-k1-usb2.c
> @@ -48,6 +48,9 @@
>  #define  PHY_CLK_HSTXP_EN		BIT(3)		/* clock hstxp enable */
>  #define  PHY_HSTXP_MODE			BIT(4)		/* 0: force en_txp to be 1; 1: no force */
>  
> +#define PHY_K1_HS_HOST_DISC		0x40
> +#define  PHY_K1_HS_HOST_DISC_CLR		BIT(0)
> +
>  #define PHY_PLL_DIV_CFG			0x98
>  #define  PHY_FDIV_FRACT_8_15		GENMASK(7, 0)
>  #define  PHY_FDIV_FRACT_16_19		GENMASK(11, 8)
> @@ -142,9 +145,20 @@ static int spacemit_usb2phy_exit(struct phy *phy)
>  	return 0;
>  }
>  
> +static int spacemit_usb2phy_disconnect(struct phy *phy, int port)
> +{
> +	struct spacemit_usb2phy *sphy = phy_get_drvdata(phy);
> +
> +	regmap_update_bits(sphy->regmap_base, PHY_K1_HS_HOST_DISC,
> +					   PHY_K1_HS_HOST_DISC_CLR, PHY_K1_HS_HOST_DISC_CLR);

Please align function arguments to the open parenthesis.

Since we are in the merge window, it is likely that new features will
not be picked up at this stage.

But this seems to be a fix for existing SpacemiT K1 support, currently
in the linux-phy/next branch. The linux-phy pull request hasn't been
sent yet, so if you can resend just this patch and we can get an ACK for
it in time, perhaps it can be included for v7.0.

The K3 support should be resent after the merge window.

> +
> +	return 0;
> +}
> +
>  static const struct phy_ops spacemit_usb2phy_ops = {
>  	.init = spacemit_usb2phy_init,
>  	.exit = spacemit_usb2phy_exit,
> +	.disconnect = spacemit_usb2phy_disconnect,
>  	.owner = THIS_MODULE,
>  };
>  
> 
> -- 
> 2.52.0
> 
> 

