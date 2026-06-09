Return-Path: <devicetree+bounces-308962-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id M6lQBeHzJ2rx6AIAu9opvQ
	(envelope-from <devicetree+bounces-308962-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 13:07:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 52F9865F4B6
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 13:07:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308962-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-308962-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6C1D93056344
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 11:00:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A7C33FF1CB;
	Tue,  9 Jun 2026 10:59:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from r3-212.sinamail.sina.com.cn (r3-212.sinamail.sina.com.cn [202.108.3.212])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0633F2BEC3F
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 10:59:29 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781002777; cv=none; b=M0f4yfDFfpKRTPLFxS7iF9EChMe9QNffR+Xp6Xmztwp4VEgqzyuOpnmY6nrQLLSYgQ+B8MnbnzGMjl+YLR+uNZWYjbEUWFeTNVT6bzHgAeZP/HWSsgtH7vo5KICJE2onucbh9mNXaGgOlGRYw8KDM+99qUD+2Lm2e+zxwdfv7NU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781002777; c=relaxed/simple;
	bh=E7GuqGuPKSkJwz9PuOKlo4VEGBMMgMV/w5i/5hyfmV0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=LhsE1MSObJfzEHMbClP35YJd1hXgxhd4ePpgp6PQCHBkd/2rXsQLoxsKqWwR0ViAzERGMbAMBOXdOykkNc6QYvGvkt1BtHd07y7Vqr0tlUH5iD+rNGDAgj0gQwMe0mCE2X6UhYaoxqaQsCqqhdV+4oqJFzwjlsGuSjVH3FpmvN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com; spf=pass smtp.mailfrom=everest-semi.com; arc=none smtp.client-ip=202.108.3.212
Received: from unknown (HELO zy-virtual-machine.localdomain)([58.38.107.94])
	by sina.net (10.54.253.38) with ESMTP
	id 6A27F20700005C2E; Tue, 9 Jun 2026 18:59:20 +0800 (CST)
X-Sender: zhangyi@everest-semi.com
X-Auth-ID: zhangyi@everest-semi.com
X-SMAIL-MID: 3C0E9EDEB1C3474EBF0C36257744AC6B
X-SMAIL-UIID: 3C0E9EDEB1C3474EBF0C36257744AC6B-20260609-185920
From: Zhang Yi <zhangyi@everest-semi.com>
To: sashiko-bot@kernel.org
Cc: devicetree@vger.kernel.org,
	robh@kernel.org,
	conor+dt@kernel.org
Subject: RE: [PATCH 5/7] ASoC: codecs: ES8389: Add private members related to HPF
Date: Tue,  9 Jun 2026 18:59:18 +0800
Message-Id: <20260609105918.21663-1-zhangyi@everest-semi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20260609073009.CFEB81F00893@smtp.kernel.org>
References: <20260609073009.CFEB81F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.54 / 15.00];
	R_BAD_CTE_7BIT(3.50)[unknown];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-308962-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sashiko-bot@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[everest-semi.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[zhangyi@everest-semi.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zhangyi@everest-semi.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 52F9865F4B6

> [Severity: Medium]
> Devicetree is typically reserved for describing hardware topology, while
> software-configurable tuning parameters like an ADC High Pass Filter are
> usually exposed as ALSA kcontrols. Should these HPF values be registered as
> mixer controls instead of devicetree properties so userspace can dynamically
> adjust them at runtime?

Due to the chip design,
I don't want users to adjust the HPF while the device is in use.
Therefore, I don¡¯t want to make the HPF a kcontrol setting.

> [Severity: Medium]
> Could using device_property_read_u8() here lead to a silent misconfiguration
> if standard 32-bit devicetree cells are used?

I don't think this is a good approach. 
If it's set to u32, I still won't be able to detect if a user has configured it incorrectly in the DTS.
I still believe it should be set to u8,
and that instructions on how to configure this parameter should be included in Documentation/devicetree/bindings.

