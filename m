Return-Path: <devicetree+bounces-265151-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ICaNNpAFjmnO+gAAu9opvQ
	(envelope-from <devicetree+bounces-265151-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 17:53:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A4C112FADE
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 17:53:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1301130221EB
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 16:48:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E101935EDAD;
	Thu, 12 Feb 2026 16:48:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hqBezDup"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69E3635DD16
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 16:48:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770914911; cv=none; b=tj0gSKlirON1nwqZ/JiC4uOAKtn+75emZBLnV+CnQz29YtX0nNZU5X389eREdwUiwCdpzN8LniMLq2wCq0olVwrxigq2JdL/CbcxmZxBEG2ktem0z7LiBFBEFW43Brcjs4cIWETf+NP0hkK/Q5lqKfX2IOcZVD5jwuGUMv/w/vk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770914911; c=relaxed/simple;
	bh=O/Wytqqrp4G6zJJ9cQaL2D4ioEYn15abIkQ/N8tlBb8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=okATwLEOdq5HoFsKlC1U4GJcNf+NpGZahsE7OwaydwLCB1vTbvkHmc0hw8BSKBK1yvapsMjx5KdIaMSCBEIdN1Urb+UPggTWXfAXicEgzk15i4XcM4iAdI1uBNBFYSp2lg4X7q12g1z25cL/PLKJ3QA4+AxQTLb6WlRK38yVIpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hqBezDup; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4806fd9033bso40295e9.3
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 08:48:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770914908; x=1771519708; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=s35shHfPlRPLdZc28zpITEbCE57T/ice0Q0E5ta0TZU=;
        b=hqBezDupKhrZPI/AABm89hNDHYZZLsL5XgWsgyCtTPas5FxgwZXmAzy9rpunPKl+oH
         bU0kTm7CcZxvbA1tgxkbcDlhKphKzmPPz6pBizP8DFE3iDnEtAX9FnxoIzK+oa2CRVOs
         oBft4q7jofVA18UMnX1ffvueKCmagwCtt7MfWoqFs9c3oxK1FMcwJqFLaB3729HU057J
         6mK5/sZ6SiVgjdQG+7hvZ5Gh/EzyOXI4Y67RR6nviua49XJwR+4UYmNlkf4tB4DgSRQz
         KkXHAB56/7PeUqqaEH91GsvWi2hjPQdPMyrB1LtGJ5tBEhb8Lv2YNOObtqgVbDMEPZ/A
         O8ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770914908; x=1771519708;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=s35shHfPlRPLdZc28zpITEbCE57T/ice0Q0E5ta0TZU=;
        b=Fm5RZfnlIjHqoDOtLoblxv1cTfq4gQXtbzS+h/Ll+xJSaUCp+zvk42MjFv2KPNRZnY
         9pAu3vZClgZSNjs6HL8JL/2Unr1C3NI9GwcXGepP6z7BaiQeS3iv/M8/rUMYDj7pUZLl
         r/+PJu2269WfGdsbpRbp+LL7mZS8XUwcXds6Wu70owkU4SyDSjvJDg5SlaxpPmdq6CvK
         xM8BHePcL83BaHLrw16Sxi+vRJ2biX5XliXG3uUAlFSsNY8waE5wzLBN/SQmLbPgQYag
         nbCt1WmB1J6+2Cbe9ryV7V9+mHuorcpnIyJSa7udTt5pL68KBRk6slhJh/10hbdPZzKO
         A39g==
X-Forwarded-Encrypted: i=1; AJvYcCXHQuJhHIznM1sGCx7GCDrIAg2D9LP0AgpIGBMJLJa3dpORIIAIHJ+X169jNpyZk2ru1Fn3k4ygtksV@vger.kernel.org
X-Gm-Message-State: AOJu0Ywb4nkYQLGo1V1J4gr6/B2suvD5me2EaYUx/hi4uY2WMrQH3FBg
	6bon4ftmPQx7+6jtbPpSgIOoxqQ+HZWdLrbycKakzq9Clilt7eZq8bmv
X-Gm-Gg: AZuq6aI4ugd/8ptSMpT88Dz6Qcc/PmBzKtKeHddzofIcbeBBVprhy+n0CzQxnrNUX8E
	8WnMcs9AY7wlPpCWHCzeIaW+Av8bjmExVzosRsO3iwE/2mHa7zMcaxmAhBrTHsVNgN5r4338G/B
	KHxP62ZRx+VMO+SYZBwj3RWmBiGXgg4Xcq8pMACZOtmWm1qusVOcvBqqQc+crthVHCk7Gv/y/fF
	ANXHsKmrkX+xd7xYCzAK97NeZ7Qwjg8b8c2EvEZ1932JoIrgF8kE3ITuyYaQzugp1zLwXoDe4lI
	Iug6I6r3AEOn+5tqauhUMOUcjUPl3qo1d0+yH4JnZVkd6P3o05n0Nf1iIJb8xchX+jRIDEfZlTp
	rGWkufVfT7YetU/Nd/k9eLUr8w/otzq5kDXx3eWIVm2bYEFgAueclddSZ+9NPA3oDs+C15Oho6Y
	hmp/c71S7ypmHjLHw=
X-Received: by 2002:a05:600c:1d9a:b0:477:5ca6:4d51 with SMTP id 5b1f17b1804b1-4836570e3c5mr29720595e9.3.1770914907561;
        Thu, 12 Feb 2026 08:48:27 -0800 (PST)
Received: from skbuf ([2a02:2f04:d501:d900:2f75:bf70:f0b9:4586])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4834d5e0ed5sm192002555e9.5.2026.02.12.08.48.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Feb 2026 08:48:26 -0800 (PST)
Date: Thu, 12 Feb 2026 18:48:23 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Josua Mayer <josua@solid-run.com>
Cc: Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Peter Rosin <peda@axentia.se>, Aaro Koskinen <aaro.koskinen@iki.fi>,
	Andreas Kemnade <andreas@kemnade.info>,
	Kevin Hilman <khilman@baylibre.com>,
	Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>,
	Janusz Krzysztofik <jmkrzyszt@gmail.com>,
	Vignesh R <vigneshr@ti.com>, Andi Shyti <andi.shyti@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Yazan Shhady <yazan.shhady@solid-run.com>,
	Jon Nettleton <jon@solid-run.com>,
	Mikhail Anikin <mikhail.anikin@solid-run.com>,
	linux-can@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org,
	linux-i2c@vger.kernel.org, linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH v9 1/7] phy: can-transceiver: rename temporary helper
 function to avoid conflict
Message-ID: <20260212164823.mbeycqwzsy2dfq6e@skbuf>
References: <20260208-rz-sdio-mux-v9-0-9a3be13c1280@solid-run.com>
 <20260208-rz-sdio-mux-v9-1-9a3be13c1280@solid-run.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260208-rz-sdio-mux-v9-1-9a3be13c1280@solid-run.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265151-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[32];
	FREEMAIL_CC(0.00)[pengutronix.de,kernel.org,linaro.org,axentia.se,iki.fi,kemnade.info,baylibre.com,atomide.com,gmail.com,ti.com,glider.be,sang-engineering.com,solid-run.com,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[olteanv@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sang-engineering.com:email,glider.be:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,solid-run.com:email]
X-Rspamd-Queue-Id: 4A4C112FADE
X-Rspamd-Action: no action

Hi Josua,

On Sun, Feb 08, 2026 at 05:38:56PM +0200, Josua Mayer wrote:
> Rename the temporary devm_mux_state_get_optional function to avoid
> conflict with upcoming implementation in multiplexer subsystem.
> 
> Acked-by: Vinod Koul <vkoul@kernel.org>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> Reviewed-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> Signed-off-by: Josua Mayer <josua@solid-run.com>
> ---

In the future, when you have a series with cross-tree dependencies,
please try to think of it as individual mini-series for each tree's
'next' branch, and specify clearly that you need stable tags (to be
pulled into other trees). Telling maintainers what is your expected
merge strategy helps avoid making mistakes.

For example, if you did that in this set, you wouldn't have missed the
fact that in linux-phy/next, phy-can-transceiver is _not_ the only
occurrence of devm_mux_state_get_optional(). There's another one in
drivers/phy/renesas/phy-rcar-gen3-usb2.c, and that should be also
handled in order for trees to not enter inconsistent states.

