Return-Path: <devicetree+bounces-311836-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ubbJD+TQL2pHHQUAu9opvQ
	(envelope-from <devicetree+bounces-311836-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 12:16:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E2946854DA
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 12:16:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311836-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-311836-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 99DFA30237C7
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 10:14:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 399363DA5BD;
	Mon, 15 Jun 2026 10:14:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from r3-71.sinamail.sina.com.cn (r3-71.sinamail.sina.com.cn [202.108.3.71])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EAFD3DA7F5
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 10:14:36 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781518481; cv=none; b=gWzqiMPs46I4kVfx+y9NR35o2iPuSkaN29jD6rux+Y112S6Jor/OdlhCkNsX2KhOv+Zp0p9M77NTJtN+InlmnX5HF+G0whTDykf6wRkZ6h1nKSNA1jJAEhWDdd74XBEGNOtgnvhtIkp1rXZfKn5nOppPQ7qnHR4LThSJ8BUOEE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781518481; c=relaxed/simple;
	bh=9NGg8hDxj2vdLvxEygzDIHhkUl++kdXXyURUQkJD64k=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=WxIewtdsl4U43/bzZLUCL3Mw4vFupKOGkA9gcCaJEX6/Vy9SsDMi2mUMqhTNpnMmTxiY9Z8v2IYBJajWW2roQP9JNDw7dXBn7AUqNRL/oxENJnNxNVDrby65KbCCCiHPa4w8XDO+TnNQIEdvmJwztth30v1LyVvzJ7p6DvLKbc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com; spf=pass smtp.mailfrom=everest-semi.com; arc=none smtp.client-ip=202.108.3.71
Received: from unknown (HELO zy-virtual-machine.localdomain)([58.38.107.94])
	by sina.net (10.54.253.39) with ESMTP
	id 6A2FD08000007C99; Mon, 15 Jun 2026 18:14:25 +0800 (CST)
X-Sender: zhangyi@everest-semi.com
X-Auth-ID: zhangyi@everest-semi.com
X-SMAIL-MID: 889CB02C459244E5BEE42764EBC27718
X-SMAIL-UIID: 889CB02C459244E5BEE42764EBC27718-20260615-181425
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
Subject: RE: [PATCH 7/7] ASoC: dt-bindings: ES8389: Add members about HPF and clock
Date: Mon, 15 Jun 2026 18:14:23 +0800
Message-Id: <20260615101423.19781-1-zhangyi@everest-semi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <241d0fab-26ea-4c06-9928-e256f2cc5d1c@kernel.org>
References: <241d0fab-26ea-4c06-9928-e256f2cc5d1c@kernel.org>
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
	TAGGED_FROM(0.00)[bounces-311836-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[everest-semi.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:krzk@kernel.org,m:alsa-devel@alsa-project.org,m:broonie@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:krzk+dt@kernel.org,m:robh@kernel.org,m:tiwai@suse.com,m:zhangyi@everest-semi.com,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[zhangyi@everest-semi.com,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[zhangyi@everest-semi.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	R_DKIM_NA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TO_DN_NONE(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,everest-semi.com:mid,everest-semi.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7E2946854DA

> >>> Yes, setting mclk-from-sclk does not affect the MCLK connection.
> >>
> >> I am asking about wiring of the device. If MCLK is used from SCLK, but
> >> SCLK is used as the internal clock, then how can you still have MCLK
> >> connected?
> > 
> > If MCLK is derived from SCLK, whether the 'MCLK' pin on the device is
> > connected or not has no effect on operation.
> 
> If MCLK is connected, why would you derive it from SCLK? That's the
> point - your clocks property already might be telling everything needed
> here.

This is because sometimes the codec does not work properly
when using the MCLK provided by the CPU.

> >>>>> +
> >>>>> +  everest,hpfl:
> >>>>> +    $ref: /schemas/types.yaml#/definitions/uint8
> >>>>> +    description:
> >>>>> +      the HPF value of ADCL.
> >>>>
> >>>> Is HPF value in dB? If so, use proper unit suffix and proper units.
> >>>
> >>> No, the values here correspond to the values in the registers.
> >>> The value is not in dB
> >>
> >> What are the meanings of the register values?
> > 
> > The value of everest,hpfl is equal to the value of the corresponding register,
> > not the cutoff frequency of the HPF.
> 
> You keep avoiding answers.
> 
> I don't want you to encode standard units as register values.

I think I understand what you mean.
Do you want me to enter the physical values in DTS and then convert them to register values in the code?

