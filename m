Return-Path: <devicetree+bounces-311647-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qiDpE8uWL2qvCwUAu9opvQ
	(envelope-from <devicetree+bounces-311647-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 08:08:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 24F81683A68
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 08:08:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311647-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311647-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id F1E133001857
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 06:08:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3D9F3264E5;
	Mon, 15 Jun 2026 06:08:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from r3-55.sinamail.sina.com.cn (r3-55.sinamail.sina.com.cn [202.108.3.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 727BC2857EE
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 06:07:58 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781503684; cv=none; b=OgXhlhCsosiJFi8DZO8iT7eeJC2EGkmId7QS8I6GYQkQPOXbnpTryWxKvsFUeYwMAmVOcjRifzUGt3Daxro36Mf6toEAM8zxNX42Cr7goE5L+xaw/XtW+COfqiRocFt126TyXNYBXBcqPlZRlZptSbgVcdYPGB3BKo88s1iyGpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781503684; c=relaxed/simple;
	bh=AUdimFTexxZwClYm/z6jwEfeqBrojqxOhlxN5l/yYBo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=NB8wmfe1DGxbfBlFZtNi8heKDkm1koHCUdHqgs2ngI/qbZtktzHTJxrZ9ZoRpSEAIvDWgPlQ1xQK/s+vqXro7TMjJu4Ibm/J7rUvuS1PuIDAL6v1QQMIqTEOJmoOnvmmmEBcKGugT5Qo0Nwaedtaw2KIFJFyX0E81iWvoDJj49U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com; spf=pass smtp.mailfrom=everest-semi.com; arc=none smtp.client-ip=202.108.3.55
Received: from unknown (HELO zy-virtual-machine.localdomain)([58.38.107.94])
	by sina.net (10.54.253.38) with ESMTP
	id 6A2F96B200002371; Mon, 15 Jun 2026 14:07:47 +0800 (CST)
X-Sender: zhangyi@everest-semi.com
X-Auth-ID: zhangyi@everest-semi.com
X-SMAIL-MID: 060A3B3A33EE4A8FBA7316C5896DBAAD
X-SMAIL-UIID: 060A3B3A33EE4A8FBA7316C5896DBAAD-20260615-140747
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
Date: Mon, 15 Jun 2026 14:07:44 +0800
Message-Id: <20260615060744.18775-1-zhangyi@everest-semi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <fa710884-e66e-4ef8-bbbd-034eeef8ee62@kernel.org>
References: <fa710884-e66e-4ef8-bbbd-034eeef8ee62@kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-311647-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 24F81683A68

> >>> +    $ref: /schemas/types.yaml#/definitions/flag
> >>> +    description:
> >>> +      Indicates that SCLK is used as the internal clock.
> >>
> >> And what happens with mclk in such case? Is it still wired?
> > 
> > Yes, setting mclk-from-sclk does not affect the MCLK connection.
> 
> I am asking about wiring of the device. If MCLK is used from SCLK, but
> SCLK is used as the internal clock, then how can you still have MCLK
> connected?

If MCLK is derived from SCLK, whether the 'MCLK' pin on the device is
connected or not has no effect on operation.

> >>> +
> >>> +  everest,hpfl:
> >>> +    $ref: /schemas/types.yaml#/definitions/uint8
> >>> +    description:
> >>> +      the HPF value of ADCL.
> >>
> >> Is HPF value in dB? If so, use proper unit suffix and proper units.
> > 
> > No, the values here correspond to the values in the registers.
> > The value is not in dB
> 
> What are the meanings of the register values?

The value of everest,hpfl is equal to the value of the corresponding register,
not the cutoff frequency of the HPF.
The code does not specify which register corresponds to which HPF cutoff frequency.
And we did not set the HPF to kcontrol because we do not want users to be able to control it
while the codec is running.

> >>> +        everest,hpfl = [0a];
> >>
> >> <0xa>? What did you want to say here?
> > 
> > I just wanted to give an example to show how to set the values of everest,hpfl to 0x0a.
> 
> So use syntax I asked.

OK

If you receive this email, please reply to me.
(I'm worried that the issue with not receiving emails might happen again.)

