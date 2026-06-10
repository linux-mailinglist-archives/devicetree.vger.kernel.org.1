Return-Path: <devicetree+bounces-309663-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xS/dN9NAKWozTAMAu9opvQ
	(envelope-from <devicetree+bounces-309663-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 12:47:47 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id A70696686CD
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 12:47:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309663-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-309663-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 6FA9930060A1
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 10:06:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F8003E0224;
	Wed, 10 Jun 2026 10:06:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from r3-47.sinamail.sina.com.cn (r3-47.sinamail.sina.com.cn [202.108.3.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1D8537DADD
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 10:06:50 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781086014; cv=none; b=MW5tqJxXpRJADAWhs5A2dqWjdg3YX6i6I8xKNSHB7iWGCGzX/e52Q/Qww9QhJWPHLcVSPOsrFNK0D+eK7n1mnKOA67pdB+tLdGEVbZ73RglvhYLRotFYsWL4NxxClQ7EJz8BJNmTJZO/1hILtJ5GymmehJvOjQKBnf76fn8PprM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781086014; c=relaxed/simple;
	bh=CE1nX27oBcL6Tl6vMv7Z3wZ/+naPHmaEsSzFKbyRHkY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=W5UZ75QGy3sFyJrBgfdTw4Gb4fB7bYAXsMenhiTxKQ0PsIdJdG9yWc9QLtcM+x3S3dToORBkGL/F7iW6Fzut9v/Z/UELjgREmC1paaqurfhYV3DclMrRUW7qnukqtf8WoM9FB6rG3sKF73uvT6GAieTscbKo8644TMEXiebkQnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com; spf=pass smtp.mailfrom=everest-semi.com; arc=none smtp.client-ip=202.108.3.47
Received: from unknown (HELO zy-virtual-machine.localdomain)([58.38.107.94])
	by sina.net (10.54.253.39) with ESMTP
	id 6A29372F00006380; Wed, 10 Jun 2026 18:06:40 +0800 (CST)
X-Sender: zhangyi@everest-semi.com
X-Auth-ID: zhangyi@everest-semi.com
X-SMAIL-MID: EE711B62DD7844089AB2C86FCA8A4203
X-SMAIL-UIID: EE711B62DD7844089AB2C86FCA8A4203-20260610-180640
From: Zhang Yi <zhangyi@everest-semi.com>
To: krzk@kernel.org
Cc: alsa-devel@alsa-project.org,
	broonie@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	tiwai@suse.com,
	zhangyi@everest-semi.com
Subject: RE: [PATCH 2/7] ASoC: codecs: ES8389: Fix the issue about mclk_src
Date: Wed, 10 Jun 2026 18:06:37 +0800
Message-Id: <20260610100637.25568-1-zhangyi@everest-semi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20260609-visionary-truthful-viper-ceff75@quoll>
References: <20260609-visionary-truthful-viper-ceff75@quoll>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [5.04 / 15.00];
	R_BAD_CTE_7BIT(3.50)[unknown];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-309663-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	GREYLIST(0.00)[pass,body];
	DMARC_NA(0.00)[everest-semi.com];
	FORGED_SENDER(0.00)[zhangyi@everest-semi.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:krzk@kernel.org,m:alsa-devel@alsa-project.org,m:broonie@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:krzk+dt@kernel.org,m:robh@kernel.org,m:tiwai@suse.com,m:zhangyi@everest-semi.com,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zhangyi@everest-semi.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	R_DKIM_NA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A70696686CD

> > Fix the issue with incorrect modifications to mclk_src
> 
> What issue? Your commit msgs are really poor - explain nothing. You just
> duplicated subject... and anything can be a fix.

I'm sorry I didn't explain that clearly.
When the system needs to be configured to use the MCLK from the SCLK pin,
the old code still sets the relevant registers to use the MCLK from the MCLK pin.
I will include a more detailed description in future versions.

> >  	struct es8389_private *es8389 = snd_soc_component_get_drvdata(component);
> >  
> > -	ret = device_property_read_u8(component->dev, "everest,mclk-src", &es8389->mclk_src);
> 
> Why are you changing implemented ABI?

In the old ABI, `mclk_src` was defined as `u8`, which meant that users could set `mclk_src` to any value in the DTS¡ªsuch as `0x02`,
but the code wouldn't recognize what that value represented.
The actual purpose of `mclk_src` is to indicate whether `sclk` should be used as `mclk`.
So I've changed it to bool.


