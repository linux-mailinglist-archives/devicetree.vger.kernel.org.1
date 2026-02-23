Return-Path: <devicetree+bounces-267216-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QARCFVjem2mK8gMAu9opvQ
	(envelope-from <devicetree+bounces-267216-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 05:58:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B4DB7171D33
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 05:57:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4A41930221D4
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 04:57:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 689A6344056;
	Mon, 23 Feb 2026 04:57:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SKCKqHKN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f41.google.com (mail-dl1-f41.google.com [74.125.82.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21E2C21ABC9
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 04:57:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771822677; cv=none; b=bd+WxJNpGUDl+E1yqJkV+0XVvjFEyPqhki2/TyMxt4CeC/Upj850aaQttTxryxz3tPKnkd1RZWDlJm0k19qHpP4CosCysATVVBXxsfN15cKtf+s0DaxvY8cdyzxQsiEIwMIDZtExjTl8pzb9sOJZM1r1yOpRZjkPjMSBCnYXkZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771822677; c=relaxed/simple;
	bh=1+fj/osOFOTUhi6//cNsWxgUvEAAcYmf9baAm1ts5cY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=g+bimBoSU4rsZgNdN9YhriFkK47ST+1RjHbHacixNHcBqZkfuROyJTnZgm1OSjA8wHodaUBqpPEOPnBF/H5+1Uz30OMdIBBBos8nNlERgfBP8CqooJnMLCkwvne1rblQzC2CtEo+GJiuX/61pkLK4hCB9DBLyo8ln+BkksTC7TM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SKCKqHKN; arc=none smtp.client-ip=74.125.82.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f41.google.com with SMTP id a92af1059eb24-12713e56abdso2583534c88.1
        for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 20:57:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771822675; x=1772427475; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ZoD6tE+yirYO2wDnJyh3VhePC5QLfqyFQbq0eMsMM6o=;
        b=SKCKqHKNcvrisaNOx+xrUeJZW3r4vvf+FJEl/sWKdeIWhyGxvzHy8BJW8UL1qeeF0P
         XrQK2POy3PeNqnEXJTCBduCWG8nKuSauqBu4uCKFUVjvn3zOhwkLCiG4EnNpmGH6EhE9
         5fOh8uGhU/iGiedONOPvgEN3pmgX5mLRP2WXe22W2Qjot65JGLRGWshf6okRQhyPFsCo
         TLrDTloQXH3Pk7wWEJs/4IhDy9+4iyv0JrONaTwMgxguIL6JgbQGJO4tnam4B90qbCns
         deoC5Zud2h4Z/MhIIjkDKdEoz0Djbda36SOcNbPCJi6W/N7qQ7sTds3tdkq0FvcdikrL
         rZmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771822675; x=1772427475;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZoD6tE+yirYO2wDnJyh3VhePC5QLfqyFQbq0eMsMM6o=;
        b=voRhttQNcED+mVrFySloG3VpXeQSnNkqSIXUDmCaiZvKC1EqkJr/L9sE7jBFRdLYe6
         9bSNgwhIyq2O7VsNmGOUWjoOIO1b7TWm1fBSqymnWZkej9terKpnHFOlFSlVNz/q4s9a
         MV4J4x/Py1pJkS9cd6NziKAYcdSY7ebtIZjxfIS2Tpxeh86UV3mZw7acDEkPx5L9VLmV
         TmPtJN4+TpK1OtyDC7shPoi0/+4zT/FeY5pcBQtY9EOk4oZBjml1JNuey6Xlb2vUbXOE
         CUtTahaESsK9n1B+++kQMO80naxL6FRgCi7pFqI6xufI5adsikh+g+BXnw/qi2bmePB/
         TSGw==
X-Forwarded-Encrypted: i=1; AJvYcCUMHTo/fjdM+WUZC24vtqXb4T59i00XyuQOaTVFCB5rCTYryBdKdo3aWZttj/15mb2Dd6qZoN/ZrtM7@vger.kernel.org
X-Gm-Message-State: AOJu0YxFOtnBSn2Ad+l2KkujcNTzLaXAnm22I2w9KTehA4OH8aws3nLy
	3AG4Zd9jIHS1297q2htqB2qB08FYB2ViUeetitfs4PUaYyl7f46SyflQ
X-Gm-Gg: AZuq6aKJ2LGV4QS7pl6OQFHZB8VG268XWCmxvQm+qO5W7Qi5GuTSpreyyoS2hqDGsbT
	KOKnyvhohBjNVkYA/+gQMEoskQp8cJIjTlh5LDZWiToMyVl0NHUw8E9SemadzdP7o4a+eYHl32U
	Ku+lBLos7f8tq4GDLgoToAc4sUFLO7Ho17P7A+yVolMg8x9bScbrr5qQIKSmLYt1eiFtZR1o0J8
	Ze6vSVHeE8IkCLOL6jNoEOq3UFKTaRp4jSwONp0Oqyyc3RcTH3sTjE9/fVl8jG+n4+uAcXoJiNR
	SjNxCSa8Fw7l24Cm3EQ+3MgB/e8GRrEWFBkIPikTFLMusl7k1KvgKXLrfN3bSU+VQyh+Ok0N+kP
	aa29QUtN8/J+ywx3oORRlwr9y4Dcm6lAbahBlWPfbDJBHVIW0VdkQIikwnvE6nG9k11voIcq8UY
	QsmSizYO1Z04Bnr1r7pQJmzPjSbo00jtUel/SjpKIgugD+miyf+32QQfTHZdD1VKg=
X-Received: by 2002:a05:7022:48c:b0:11b:f271:835a with SMTP id a92af1059eb24-1275fa41703mr6770004c88.3.1771822675098;
        Sun, 22 Feb 2026 20:57:55 -0800 (PST)
Received: from google.com ([2a00:79e0:2ebe:8:c6c:6cca:170e:c77b])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1276af2ea06sm8045507c88.7.2026.02.22.20.57.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 20:57:54 -0800 (PST)
Date: Sun, 22 Feb 2026 20:57:51 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Marc Dietrich <marvin24@gmx.de>
Cc: Thierry Reding <thierry.reding@gmail.com>, 
	Arnd Bergmann <arnd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jonathan Hunter <jonathanh@nvidia.com>, devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] ARM: tegra: paz00: configure WiFi rfkill switch through
 device tree
Message-ID: <aZvdDIYlCjg8sVGT@google.com>
References: <aY_BpRQmLdqOOW2K@google.com>
 <82f24afb-1fd2-bfc9-2215-4526aff372ba@gmx.de>
 <07c024a6-d2f9-5805-4ae7-cbc89cda53bf@gmx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <07c024a6-d2f9-5805-4ae7-cbc89cda53bf@gmx.de>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,nvidia.com,vger.kernel.org,lists.infradead.org];
	TAGGED_FROM(0.00)[bounces-267216-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmx.de];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitrytorokhov@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: B4DB7171D33
X-Rspamd-Action: no action

Hi Marc,

On Sat, Feb 21, 2026 at 03:24:35PM +0100, Marc Dietrich wrote:
> Hi Dmitry,
> 
> On Sat, 14 Feb 2026, Marc Dietrich wrote:
> 
> > Hi Dmitry,
> > 
> > On Fri, 13 Feb 2026, Dmitry Torokhov wrote:
> > 
> > > As of d64c732dfc9e ("net: rfkill: gpio: add DT support") rfkill-gpio
> > > device can be instantiated via device tree.
> > > 
> > > Add the declaration there and drop board-paz00.c file and relevant
> > > Makefile fragments.
> > > 
> > > Signed-off-by: Dmitry Torokhov <dmitry.torokhov@gmail.com>
> > > ---
> > > 
> > > This is not tested on real hardware, compile tested only...
> > > 
> > > arch/arm/boot/dts/nvidia/tegra20-paz00.dts |  8 ++++
> > > arch/arm/mach-tegra/Makefile               |  2 -
> > > arch/arm/mach-tegra/board-paz00.c          | 56 ----------------------
> > > arch/arm/mach-tegra/board.h                |  2 -
> > > arch/arm/mach-tegra/tegra.c                |  4 --
> > > 5 files changed, 8 insertions(+), 64 deletions(-)
> > > 
> > > diff --git a/arch/arm/boot/dts/nvidia/tegra20-paz00.dts
> > > b/arch/arm/boot/dts/nvidia/tegra20-paz00.dts
> > > index 1408e1e00759..d1093ad569e6 100644
> > > --- a/arch/arm/boot/dts/nvidia/tegra20-paz00.dts
> > > +++ b/arch/arm/boot/dts/nvidia/tegra20-paz00.dts
> > > @@ -706,6 +706,14 @@ vdd_pnl_reg: regulator-3v0 {
> > > 		enable-active-high;
> > > 	};
> > > 
> > > +	rfkill {
> > > +		compatible = "rfkill-gpio";
> > > +		label = "wifi_rfkill";
> > > +		radio-type = "wlan";
> > > +		reset-gpios = <&gpio TEGRA_GPIO(D, 1) GPIO_ACTIVE_HIGH>;
> > 
> > I guess this can be removed, as it should trigger the LED, which is
> > already included elsewhere ....
> > 
> > > +		shutdown-gpios = <&gpio TEGRA_GPIO(K, 5) GPIO_ACTIVE_HIGH>;
> > > +	};
> > > +
> > > 	sound {
> > > 		compatible = "nvidia,tegra-audio-alc5632-paz00",
> > > 			"nvidia,tegra-audio-alc5632";
> > 
> > I'll give it a try and report back.
> 
> rfkill (and LED) works as expected. With the reset-gpio line mentioned above
> removed, you can add my Tested-By.

Thank you Marc.

I am still a bit confused about the reset gpio. As far as I understand
looking through old commits reset gpio (PD1) is distinct from the LED
gpio (PD0) that is currently being controlled by "gpio-leds".

I guess the rfkill driver needs at least one of "reset" or "shutdown"
gpios, and that is why it continues to work with only shutdown, but I am
trying to understand if PD1 was never connected to the WiFi chip reset
line and instead is used for something else, or if it is indeed a reset
line...

Was the patch not working with reset-gpios present? I am trying to
gather data to craft a proper commit message.

Thanks.

-- 
Dmitry

