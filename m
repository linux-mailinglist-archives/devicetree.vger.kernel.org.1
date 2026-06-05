Return-Path: <devicetree+bounces-307312-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id bAl1JceoImqfbgEAu9opvQ
	(envelope-from <devicetree+bounces-307312-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 12:45:27 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 82A32647768
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 12:45:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=realtek.com header.s=dkim header.b=oJY5wjN7;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307312-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-307312-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=realtek.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2D9A13043AEA
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 10:34:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58518413638;
	Fri,  5 Jun 2026 10:34:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from rtits2.realtek.com.tw (rtits2.realtek.com [211.75.126.72])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E19D740B38B;
	Fri,  5 Jun 2026 10:34:20 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780655662; cv=none; b=fXa5zNJ6zSZgUbvtdysDc8fdAvPF9gxnY/NKSoGDi7euurB8UN92INamXGFOU9FwbM09wQC+x5coXqk4HTickuB8IkIL4VMimgxH3NqkR+uiUG08JgBkKO+4hwwhNyuntMA+jRGPo5uTBksP0qhxlu14aOiLs2azNjECXStCt44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780655662; c=relaxed/simple;
	bh=gsLx4bLcrGyoqVnXullJcUuE24/W5Ky1bmDAk8PXmPE=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=p63oRD4qkKgrhz/ZcG6nmwWhpmKzY8d4oXIg1KGTjfZeuiftpE+iZrn0FZVdiL78R2FPrGFzWZ5kG8jBQQDNp7meEn33DhttDVki8dGVkKruy9EnaMz4HS8NPq0RWCSwPy3sBR62AOrMLoMLsAkVeNrPnfxubN3qcojyfp6+61A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=realtek.com; spf=pass smtp.mailfrom=realtek.com; dkim=pass (2048-bit key) header.d=realtek.com header.i=@realtek.com header.b=oJY5wjN7; arc=none smtp.client-ip=211.75.126.72
X-SpamFilter-By: ArmorX SpamTrap 5.80 with qID 655AXs2qA1322837, This message is accepted by code: ctloc85258
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=realtek.com; s=dkim;
	t=1780655634; bh=gsLx4bLcrGyoqVnXullJcUuE24/W5Ky1bmDAk8PXmPE=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Transfer-Encoding:Content-Type;
	b=oJY5wjN7bM9oUfqJle0ebjh3l1YlWczzYm8LrAyhAkd363CzYgkbGCx4ZJhp6m+dB
	 p3UQWSqNijs5R0QuPRUc70zNJav7L6t4gUXlVKksaJpxSBaHBDhk8SUdXTwaB6x9uV
	 r+fBkUZaJb+i70gmzPvSVA0TNHlWEG+pjCJZvbwEkhdpIbivlXuHc7CgYLH8JyJZWY
	 E++KAtERDTMIW7lzFXeDKE/MZ0j2jaI8aYm6t9T32kvngfVTkuvTatDskcBsXrt8Ug
	 keO0tQyjI5Y1B3FPLxDYaccZ3o6ZKaRFLSq+gKsua/jLu/gz1h9IHkR/80B+e6I5dv
	 JOT0UtRHOXzWw==
Received: from mail.realtek.com (rtkexhmbs03.realtek.com.tw[10.21.1.53])
	by rtits2.realtek.com.tw (8.15.2/3.28/5.94) with ESMTPS id 655AXs2qA1322837
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 5 Jun 2026 18:33:54 +0800
Received: from RTKEXHMBS06.realtek.com.tw (10.21.1.56) by
 RTKEXHMBS03.realtek.com.tw (10.21.1.53) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 5 Jun 2026 18:33:55 +0800
Received: from cn1dhc-k02 (172.21.252.101) by RTKEXHMBS06.realtek.com.tw
 (10.21.1.56) with Microsoft SMTP Server id 15.2.2562.17 via Frontend
 Transport; Fri, 5 Jun 2026 18:33:54 +0800
From: Yu-Chun Lin <eleanor.lin@realtek.com>
To: <eleanor.lin@realtek.com>
CC: <afaerber@suse.com>, <bmasney@redhat.com>, <conor+dt@kernel.org>,
	<cy.huang@realtek.com>, <cylee12@realtek.com>, <devicetree@vger.kernel.org>,
	<james.tai@realtek.com>, <jyanchou@realtek.com>, <krzk+dt@kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-clk@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-realtek-soc@lists.infradead.org>,
	<mturquette@baylibre.com>, <p.zabel@pengutronix.de>, <robh@kernel.org>,
	<sboyd@kernel.org>, <stanley_chang@realtek.com>
Subject: Re: [PATCH v7 00/10] clk: realtek: Add RTD1625 clock support
Date: Fri, 5 Jun 2026 18:33:54 +0800
Message-ID: <20260605103354.1743637-1-eleanor.lin@realtek.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260508111641.3192177-1-eleanor.lin@realtek.com>
References: <20260508111641.3192177-1-eleanor.lin@realtek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[realtek.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[realtek.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-307312-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[eleanor.lin@realtek.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:eleanor.lin@realtek.com,m:afaerber@suse.com,m:bmasney@redhat.com,m:conor+dt@kernel.org,m:cy.huang@realtek.com,m:cylee12@realtek.com,m:devicetree@vger.kernel.org,m:james.tai@realtek.com,m:jyanchou@realtek.com,m:krzk+dt@kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-clk@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-realtek-soc@lists.infradead.org,m:mturquette@baylibre.com,m:p.zabel@pengutronix.de,m:robh@kernel.org,m:sboyd@kernel.org,m:stanley_chang@realtek.com,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	DKIM_TRACE(0.00)[realtek.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCPT_COUNT_TWELVE(0.00)[19];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[eleanor.lin@realtek.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	ALIAS_RESOLVED(0.00)[];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,vger.kernel.org:from_smtp,realtek.com:mid,realtek.com:from_mime,realtek.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 82A32647768

Hi everyone,

Just a gentle ping on this thread.

Although I haven't received any feedback from reviewers over the past
month, I noticed that the AI robot has provided several helpful comments
[1].

I will address these issues and plan to send out v8 patchset next week.

[1] https://sashiko.dev/#/patchset/20260508111641.3192177-1-eleanor.lin%40realtek.com

Thanks,
Yu-Chun

