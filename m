Return-Path: <devicetree+bounces-257881-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sKSaBp+3cGlwZQAAu9opvQ
	(envelope-from <devicetree+bounces-257881-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 12:25:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 94E7455F5F
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 12:25:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id AB6D384A81D
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 10:53:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0B7840F8E8;
	Wed, 21 Jan 2026 10:53:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=realtek.com header.i=@realtek.com header.b="CtlDS4Z6"
X-Original-To: devicetree@vger.kernel.org
Received: from rtits2.realtek.com.tw (rtits2.realtek.com [211.75.126.72])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8BB03D3CF5;
	Wed, 21 Jan 2026 10:53:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=211.75.126.72
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768992823; cv=none; b=dEOc9dUHamzrCvBGBpxz2hkfdvBtvK6un//PDVndL3SLgSWCRco1rCrYz2dJZwW4DaNbFkvljl3OEL2E46YShNkQde2V+ikounYfKda8o1tKzHkvXsJ6WymqAFEIfXjUvxAZSZgoqVP7smiGsbvRpCPUNiY5Yf2hEY1qOmNInd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768992823; c=relaxed/simple;
	bh=u3Uvvc89ZyhC/2l0kWHUOv8Kh0Rk4Djzn4cHdBmAl+0=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=sVOhy9SNmK0DJ+gd8Ijd53sRLM7at4skdJOgllY1jMSMJtqLV9bN2QwSknHWla14H8aXlkWJog0Zn1Q6yG9JSROobdWqFE8PUYzgoGMIA0jCjH6KgTawaJ1ekoBOKd66McDSXxhdntgApqNg3fCK4rcucBfgSGVGL3EYiQglWVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=realtek.com; spf=pass smtp.mailfrom=realtek.com; dkim=pass (2048-bit key) header.d=realtek.com header.i=@realtek.com header.b=CtlDS4Z6; arc=none smtp.client-ip=211.75.126.72
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=realtek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=realtek.com
X-SpamFilter-By: ArmorX SpamTrap 5.80 with qID 60LAopAkB2904314, This message is accepted by code: ctloc85258
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=realtek.com; s=dkim;
	t=1768992651; bh=u3Uvvc89ZyhC/2l0kWHUOv8Kh0Rk4Djzn4cHdBmAl+0=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:Content-Transfer-Encoding:MIME-Version;
	b=CtlDS4Z6gHC5VrGSu890zUQSnhQsMQ/FwWOyur8QIMr1/715Q7rKN9So1Rd7yydCO
	 bSHyCBeSNdNBgMsQ4+3rVk9syV/3uWcxp9G3TG0dkUmV7GU2l6wMvnkh6K+P85lilF
	 sjz+YMk0Ck9ex6uFyWgmnvlvKrmTVstsGkoFFHTVRixpvoarpntZuBUIKfo5ZMJAGw
	 QvplglYk5J4Nqq1oaIYmDCuEqJCR70VkLOZNqTTB3HUEWo5GfywaGrUYNMhBSpopm7
	 xweEcgIc6tRUxNtIB0xnuhR5a77w1hKy6YtkkazdNWpaoFLXUZq2uzzSM7rH8aYY4x
	 Sc/s41YhlBFPA==
Received: from mail.realtek.com (rtkexhmbs03.realtek.com.tw[10.21.1.53])
	by rtits2.realtek.com.tw (8.15.2/3.21/5.94) with ESMTPS id 60LAopAkB2904314
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 21 Jan 2026 18:50:51 +0800
Received: from RTKEXHMBS05.realtek.com.tw (10.21.1.55) by
 RTKEXHMBS03.realtek.com.tw (10.21.1.53) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.10; Wed, 21 Jan 2026 18:50:51 +0800
Received: from RTKEXHMBS06.realtek.com.tw (10.21.1.56) by
 RTKEXHMBS05.realtek.com.tw (10.21.1.55) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.10; Wed, 21 Jan 2026 18:50:51 +0800
Received: from RTKEXHMBS06.realtek.com.tw ([fe80::4cbd:6c6c:b92b:3913]) by
 RTKEXHMBS06.realtek.com.tw ([fe80::4cbd:6c6c:b92b:3913%10]) with mapi id
 15.02.1748.010; Wed, 21 Jan 2026 18:50:51 +0800
From: =?utf-8?B?WXUtQ2h1biBMaW4gW+ael+elkOWQm10=?= <eleanor.lin@realtek.com>
To: =?utf-8?B?WXUtQ2h1biBMaW4gW+ael+elkOWQm10=?= <eleanor.lin@realtek.com>,
        "afaerber@suse.de" <afaerber@suse.de>,
        "robh@kernel.org" <robh@kernel.org>,
        "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
        "conor+dt@kernel.org"
	<conor+dt@kernel.org>,
        =?utf-8?B?SmFtZXMgVGFpIFvmiLTlv5fls7Bd?=
	<james.tai@realtek.com>
CC: "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>,
        "linux-realtek-soc@lists.infradead.org"
	<linux-realtek-soc@lists.infradead.org>,
        "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>,
        =?utf-8?B?Q1lfSHVhbmdb6buD6Ymm5pmPXQ==?=
	<cy.huang@realtek.com>,
        =?utf-8?B?U3RhbmxleSBDaGFuZ1vmmIzogrLlvrdd?=
	<stanley_chang@realtek.com>
Subject: RE: [PATCH v3 0/2 RESEND] arm64: dts: Add support for Kent SoC family
Thread-Topic: [PATCH v3 0/2 RESEND] arm64: dts: Add support for Kent SoC
 family
Thread-Index: AQHcba4KFMPhbTEwDkm0WvNwlSh3kbVcrAYw
Date: Wed, 21 Jan 2026 10:50:51 +0000
Message-ID: <d8af877bd3fb4291b0d09a80a981e6e1@realtek.com>
References: <20251215103157.27039-1-eleanor.lin@realtek.com>
In-Reply-To: <20251215103157.27039-1-eleanor.lin@realtek.com>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Spamd-Result: default: False [-1.86 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[realtek.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_POLICY_ALLOW(0.00)[realtek.com,none];
	DKIM_TRACE(0.00)[realtek.com:+];
	TAGGED_FROM(0.00)[bounces-257881-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,realtek.com:mid,realtek.com:dkim];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[eleanor.lin@realtek.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 94E7455F5F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

SGkgS3J6eXN6dG9mLA0KDQpJIHdvdWxkIGxpa2UgdG8gYXNrIGZvciBndWlkYW5jZSBvbiBob3cg
dG8gcHJvY2VlZCB3aXRoIHRoaXMgcGF0Y2guDQoNClRoZSBsaXN0ZWQgbWFpbnRhaW5lciBmb3Ig
UmVhbHRlayBTb0NzLCBBbmRyZWFzIEbDpHJiZXIsIHNlZW1zIHRvIGJlIGluYWN0aXZlDQoobm8g
YWN0aXZpdHkgc2luY2UgTWF5IDIwMjMpLCBhbmQgbXkgcmVjZW50IGVtYWlscyB0byBoaW0gYm91
bmNlZCB3aXRoDQoiVW5kZWxpdmVyZWQgTWFpbCBSZXR1cm5lZCB0byBTZW5kZXIiLg0KDQpTaG91
bGQgSSByZXNlbmQgdGhpcyBwYXRjaCBhbmQgZXhwbGljaXRseSBDYyBzb2NAa2VybmVsLm9yZyBh
bmQgdGhlIEFSTSBTb0MNCm1haW50YWluZXJzIChlLmcuLCBBcm5kIEJlcmdtYW5uKSBzbyBpdCBj
YW4gYmUgcGlja2VkIHVwIGRpcmVjdGx5IGJ5IHRoZSBTb0MgdGVhbT8NCg0KQmVzdCByZWdhcmRz
LA0KWXUtQ2h1bg0K

