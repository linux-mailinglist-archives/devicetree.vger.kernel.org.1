Return-Path: <devicetree+bounces-310387-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id P8v0BHOcKmpVtgMAu9opvQ
	(envelope-from <devicetree+bounces-310387-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 13:30:59 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B836F671563
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 13:30:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310387-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-310387-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1A0C030062FC
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 11:30:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6F693E6DC8;
	Thu, 11 Jun 2026 11:30:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from r3-71.sinamail.sina.com.cn (r3-71.sinamail.sina.com.cn [202.108.3.71])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 860673E63A4
	for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 11:30:32 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781177435; cv=none; b=sEi3/kY5W/lKy0d79j/Cg5DUvlWIZ6FEEtADgB8whgs7RMuXtUUKSwUQztm6BB3u8fMN4OXwbkIFRorjLsGOOhTRa1HCYwxV8Nd+/+fMtrc2LQxESQUGUuVN/Xd31FeN+mzlbygZ0fF5AA0TYmU67PrInl4NWTLaTsDAyntuBio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781177435; c=relaxed/simple;
	bh=n3otl8cPAQpDds00mT2pqekhJ7HJJW10lPDqxW3XgTA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=F1dB2M4Lhc46lNuCBnx/imThMXvN0XroTgLMBWdJphYE1s/GZjOiye/ZF3xMR8hkxvbLkW5x4mF015jc7Sq3ReR9gTw+KSXAhk0GtELQd+j8x4m60PHPVuiChEj3Xm9ZELNJlq6RhxS6ulY+RHu61BFu9KHsWe4qjdeahJls7qU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com; spf=pass smtp.mailfrom=everest-semi.com; arc=none smtp.client-ip=202.108.3.71
Received: from unknown (HELO zy-virtual-machine.localdomain)([58.38.107.94])
	by sina.net (10.54.253.39) with ESMTP
	id 6A2A9C4D000030FF; Thu, 11 Jun 2026 19:30:22 +0800 (CST)
X-Sender: zhangyi@everest-semi.com
X-Auth-ID: zhangyi@everest-semi.com
X-SMAIL-MID: 054A55A60D70428E8B9CEF385AC080E5
X-SMAIL-UIID: 054A55A60D70428E8B9CEF385AC080E5-20260611-193022
From: Zhang Yi <zhangyi@everest-semi.com>
To: krzk@kernel.org
Cc: broonie@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	krzk+dt@kernel.org,
	linux-sound@vger.kernel.org,
	robh@kernel.org,
	tiwai@suse.com,
	zhangyi@everest-semi.com
Subject: RE: [PATCH v1 1/7] ASoC: dt-bindings: ES8389: Add members about HPF and clock
Date: Thu, 11 Jun 2026 19:30:19 +0800
Message-Id: <20260611113019.5772-1-zhangyi@everest-semi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20260611-mamba-of-legendary-anger-af76a9@quoll>
References: <20260611-mamba-of-legendary-anger-af76a9@quoll>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-310387-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[everest-semi.com];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:krzk@kernel.org,m:broonie@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:krzk+dt@kernel.org,m:linux-sound@vger.kernel.org,m:robh@kernel.org,m:tiwai@suse.com,m:zhangyi@everest-semi.com,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[zhangyi@everest-semi.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zhangyi@everest-semi.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	R_DKIM_NA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B836F671563

> So this is like third time you send the same.
> 
> You never responded to feedback, I don't see improvements and you keep
> sending the same v1.
> 
> Version your patches correctly - read help of git format-patch or just
> use b4.
> 
> NAK again because you just ignore us.

Sorry, I was wondering if you received the following two emails
https://lore.kernel.org/all/20260610100637.25568-1-zhangyi@everest-semi.com/
https://lore.kernel.org/all/20260610095820.25386-1-zhangyi@everest-semi.com/

