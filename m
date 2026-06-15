Return-Path: <devicetree+bounces-311660-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LgumFNubL2rFDAUAu9opvQ
	(envelope-from <devicetree+bounces-311660-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 08:29:47 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 68ED1683D17
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 08:29:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311660-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311660-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EB2D130038EC
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 06:16:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E86B53AFD02;
	Mon, 15 Jun 2026 06:16:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from r3-81.sinamail.sina.com.cn (r3-81.sinamail.sina.com.cn [202.108.3.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECD6A38552C
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 06:16:35 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781504199; cv=none; b=NZcVWvbaYTtWl5LuEE4CSDfCCmmnkxDa+eDU3lEUbbfTEpkpppdyIj4wO5lSXca3gcKSdzb88WY+tjK8iOxa4/D6RG2Vli//BYYH1Rq8okkLUsx73g7HAwj+9a42eANA5dYEZabPtCKa0QyFKayFxFpqxxEnyFHcKaNN1aGgPGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781504199; c=relaxed/simple;
	bh=HERKJPd7DsXyrtjjCIZpAt1ChZ+dWhH9Ft7EJglhrSU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=GFDNDxu8YRn2R2lNRhouMOfKIl0FUXvmejPmdbQAscXEzX9nk59Os+gVYVwtnoyklt9lVcFgC273KmpP1s1vEYgRu2cgdI6wUB9fiOBGhF/EYlMra/x745ueZudzh5TAqVwSo0dsLf8BEG38/BKKUZd4s2FIonUq0Ka5myb1bic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com; spf=pass smtp.mailfrom=everest-semi.com; arc=none smtp.client-ip=202.108.3.81
Received: from unknown (HELO zy-virtual-machine.localdomain)([58.38.107.94])
	by sina.net (10.54.253.37) with ESMTP
	id 6A2F9680000042A3; Mon, 15 Jun 2026 14:06:57 +0800 (CST)
X-Sender: zhangyi@everest-semi.com
X-Auth-ID: zhangyi@everest-semi.com
X-SMAIL-MID: 1BDCC139A8EC4E049F608E5CD7088C86
X-SMAIL-UIID: 1BDCC139A8EC4E049F608E5CD7088C86-20260615-140657
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
Date: Mon, 15 Jun 2026 14:06:54 +0800
Message-Id: <20260615060654.18725-1-zhangyi@everest-semi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <fbaf1829-723b-4a87-882b-b164bb544912@kernel.org>
References: <fbaf1829-723b-4a87-882b-b164bb544912@kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-311660-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	GREYLIST(0.00)[pass,body];
	DMARC_NA(0.00)[everest-semi.com];
	FORGED_SENDER(0.00)[zhangyi@everest-semi.com,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:krzk@kernel.org,m:alsa-devel@alsa-project.org,m:broonie@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:krzk+dt@kernel.org,m:robh@kernel.org,m:tiwai@suse.com,m:zhangyi@everest-semi.com,m:conor@kernel.org,s:lists@lfdr.de];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,everest-semi.com:mid,everest-semi.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 68ED1683D17

> > 
> >>>  	struct es8389_private *es8389 = snd_soc_component_get_drvdata(component);
> >>>  
> >>> -	ret = device_property_read_u8(component->dev, "everest,mclk-src", &es8389->mclk_src);
> >>
> >> Why are you changing implemented ABI?
> > 
> > In the old ABI, `mclk_src` was defined as `u8`, which meant that users could set `mclk_src` to any value in the DTS¡ªsuch as `0x02`,
> > but the code wouldn't recognize what that value represented.
> > The actual purpose of `mclk_src` is to indicate whether `sclk` should be used as `mclk`.
> > So I've changed it to bool.
> 
> You break ABI implemented by this driver, so you must clearly document
> it with reasons, why breaking is necessary. Honestly, without proper
> reason I would just answer that you must keep it backwards compatible.

OK

