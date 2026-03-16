Return-Path: <devicetree+bounces-275921-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id DhAPHE9/t2kmRwEAu9opvQ
	(envelope-from <devicetree+bounces-275921-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 04:55:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 96B872947D2
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 04:55:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3EFA3300423A
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 03:55:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF29331D72E;
	Mon, 16 Mar 2026 03:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ite.com.tw header.i=@ite.com.tw header.b="Hg2HgKZI"
X-Original-To: devicetree@vger.kernel.org
Received: from ironport.ite.com.tw (219-87-157-213.static.tfn.net.tw [219.87.157.213])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 619432248A0;
	Mon, 16 Mar 2026 03:55:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=219.87.157.213
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773633354; cv=none; b=a1hkVcuJPGzDdjAzkhCTCBajxiHq/hyKqMRcZCyr5wq2Nz+P/AYbL5a9pZOKydsUCRyr0ysw61QYaMm+he+PdAle4/j1ZNmepLhPdd69EsjBxXP2FbTd6F0UYyRNCfS5VR+rsRBcUh19YPYMgEfbODsJg+g9+gWtGyAGHyJsLow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773633354; c=relaxed/simple;
	bh=vOuZ5YEbCZZDLW9CYiHZv/UOnprW0pRVMy0ioFpd5+w=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=DdcdiEWw6chCSziJPFRlJ0PUJ2vm5e+y8vutr6LuXzYVrAj4ztYjFkBiGuYIPHWXAsBkce86AClSXMXAiU3ONjEYcMWDe4ARXLMRV4DzH0TOUsDpJDAUJOXM8ByaYSdSKtS6wPzKdyAcmtR5CbCWz7iveSwhmPSdnOjTgBnUp5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ite.com.tw; spf=pass smtp.mailfrom=ite.com.tw; dkim=pass (2048-bit key) header.d=ite.com.tw header.i=@ite.com.tw header.b=Hg2HgKZI; arc=none smtp.client-ip=219.87.157.213
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ite.com.tw
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ite.com.tw
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=ite.com.tw; s=dkim;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=vOuZ5YEbCZZDLW9CYiHZv/UOnprW0pRVMy0ioFpd5+w=;
  b=Hg2HgKZIsnhzYD4rxNnbSz/pn5uNCc+EbRpkfEgESz+CW5AFmvhQfkI1
   Irc9DudOCWCEFOdChZpHBWp31ZA9c4dcwaNzxPa/ExzQGqUoz8uU+nVSs
   0rIeBvBHmhO1arCJ/tQYcQ8m50LreGDcj5gNk4Gt1wyTYO+BZuKoMnXbM
   Crf2Mfjnym8Q4OlCYEN3z/Obeh2+TSfC6Q0aaYH1FqYROt3iklKklQgI0
   KFTaNv6qz0+24u7DzJwRA8s7LkPM+ODGwwBS3+RbEUN6lwncIXt7yo+Rn
   v+thamELQ86Qc4DdyZe/OzZXLQNIGP5KJ2HvbDU2pQu2EyOWDAIUZECwN
   g==;
X-CSE-ConnectionGUID: glXo0tQQSM+koOMHCLHpgQ==
X-CSE-MsgGUID: WySOr+I6Ste0QNNQnjw3AA==
Received: from unknown (HELO mse.ite.com.tw) ([192.168.35.30])
  by ironport.ite.com.tw with ESMTP; 16 Mar 2026 11:50:24 +0800
Received: from CSBMAIL1.internal.ite.com.tw (CSBMAIL1.internal.ite.com.tw [192.168.65.58])
	by mse.ite.com.tw with ESMTP id 62G3thf6054905;
	Mon, 16 Mar 2026 11:55:43 +0800 (+08)
	(envelope-from Pet.Weng@ite.com.tw)
Received: from CSBMAIL2.internal.ite.com.tw (192.168.65.41) by
 CSBMAIL1.internal.ite.com.tw (192.168.65.58) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 16 Mar 2026 11:55:41 +0800
Received: from CSBMAIL2.internal.ite.com.tw ([fe80::9446:9aa0:fea6:7e92]) by
 CSBMAIL2.internal.ite.com.tw ([fe80::9446:9aa0:fea6:7e92%15]) with mapi id
 15.02.2562.035; Mon, 16 Mar 2026 11:55:41 +0800
From: <Pet.Weng@ite.com.tw>
To: <krzk@kernel.org>, <andrzej.hajda@intel.com>, <neil.armstrong@linaro.org>,
        <rfoss@kernel.org>, <Laurent.pinchart@ideasonboard.com>,
        <jonas@kwiboo.se>, <jernej.skrabec@gmail.com>,
        <maarten.lankhorst@linux.intel.com>, <mripard@kernel.org>,
        <tzimmermann@suse.de>, <airlied@gmail.com>, <simona@ffwll.ch>,
        <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>
CC: <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <Hermes.Wu@ite.com.tw>,
        <Kenneth.Hung@ite.com.tw>, <Jau-Chih.Tseng@ite.com.tw>,
        <treapking@google.com>, <krzysztof.kozlowski@oss.qualcomm.com>
Subject: RE: [PATCH v7 1/2] dt-binding: display: Add ITE IT61620 MIPI DSI to
 HDMI bridge
Thread-Topic: [PATCH v7 1/2] dt-binding: display: Add ITE IT61620 MIPI DSI to
 HDMI bridge
Thread-Index: AQHcs5VEhw2PGpehd0Ola7L0HsAAuLWwiB/g
Date: Mon, 16 Mar 2026 03:55:41 +0000
Message-ID: <15aa9069d5f341eb82815f4b9da54fa0@ite.com.tw>
References: <20260313-it61620-0714-v7-0-36a16dc036d6@ite.com.tw>
 <20260313-it61620-0714-v7-1-36a16dc036d6@ite.com.tw>
 <21cc3b90-0cd7-421c-914d-30e718558224@kernel.org>
In-Reply-To: <21cc3b90-0cd7-421c-914d-30e718558224@kernel.org>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-tm-snts-smtp: 1306098BDF4E2B5173E91D3163A79F321913FC930EAFDE001D8EF815AC2FECB42002:8
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MAIL:mse.ite.com.tw 62G3thf6054905
X-Spamd-Result: default: False [0.44 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[ite.com.tw,quarantine];
	R_DKIM_ALLOW(-0.20)[ite.com.tw:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275921-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,intel.com,linaro.org,ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,suse.de,ffwll.ch];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[ite.com.tw:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[Pet.Weng@ite.com.tw,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 96B872947D2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

SGkgS3J6eXN6dG9mLA0KPiANCj4gT24gMTMvMDMvMjAyNiAwNzo0OCwgUGV0IFdlbmcgd3JvdGU6
DQo+ID4gVGhpcyBjaGlwIHJlY2VpdmVzIE1JUEkgRFNJIGlucHV0IGFuZCBvdXRwdXRzIEhETUks
IGFuZCBpcyBjb21tb25seQ0KPiA+IGNvbm5lY3RlZCB0byBTb0NzIHZpYSBJMkMgYW5kIERTSS4N
Cj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IFBldCBXZW5nIDxwZXQud2VuZ0BpdGUuY29tLnR3Pg0K
PiA+IFJldmlld2VkLWJ5OiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tp
QG9zcy5xdWFsY29tbS5jb20+DQo+ID4gLS0tDQo+ID4gIC4uLi9iaW5kaW5ncy9kaXNwbGF5L2Jy
aWRnZS9pdGUsaXQ2MTYyMC55YW1sICAgICAgIHwgMTQyICsrKysrKysrKysrKysrKysrKysrKw0K
PiA+ICAxIGZpbGUgY2hhbmdlZCwgMTQyIGluc2VydGlvbnMoKykNCj4gDQo+IA0KPiBUaGlzIGlz
IGFsbW9zdCB0aGUgc2FtZSBhcyBpdGUsaXQ2MTYyLiBBbG1vc3QgdGhlIHNhbWUgYmluZGluZywg
c2FtZQ0KPiBkZXNjcmlwdGlvbi4gQWxzbyBnb29nbGUgZmluZHMgbm90aGluZyBmb3IgaXRlLGl0
NjE2MjAuDQo+IA0KPiBMb29rcyBsaWtlIHNvbWUgZHVwbGljYXRlIGFuZCB5b3VyIGNvdmVyIGxl
dHRlciBkb2VzIG5vdCBleHBsYWluIGhlcmUNCj4gYW55dGhpbmcuDQo+IA0KDQpJVDYxNjIwIGlz
IGEgdmFyaWFudCBvZiBJVDYxNjIuDQpUaGUgbWFpbiBkaWZmZXJlbmNlcyBhcmU6DQotIElUNjE2
MjAgc3VwcG9ydHMgb25seSBhIHNpbmdsZSBNSVBJIERTSSBpbnB1dCBwb3J0LCB3aGlsZSBJVDYx
NjINCiAgc3VwcG9ydHMgZHVhbCBNSVBJIERTSSBwb3J0cy4NCi0gSVQ2MTYyMCBkb2VzIG5vdCBp
bmNsdWRlIHRoZSBpbnRlcm5hbCBNQ1UgcHJlc2VudCBpbiBJVDYxNjIuDQoNCkJlY2F1c2Ugb2Yg
dGhlc2UgYXJjaGl0ZWN0dXJhbCBkaWZmZXJlbmNlcywgSVQ2MTYyMCB1c2VzIGEgc2VwYXJhdGUN
CmNvbXBhdGlibGUgc3RyaW5nIGV2ZW4gdGhvdWdoIHRoZSBleHRlcm5hbCBpbnRlcmZhY2VzIGFu
ZCBiaW5kaW5ncw0KYXJlIGxhcmdlbHkgc2ltaWxhci4NCg0KSSB3aWxsIHVwZGF0ZSB0aGUgYmlu
ZGluZyBkZXNjcmlwdGlvbiBhbmQgY292ZXIgbGV0dGVyIHRvIGNsYXJpZnkNCnRoZXNlIGRpZmZl
cmVuY2VzDQoNCj4gQmVzdCByZWdhcmRzLA0KPiBLcnp5c3p0b2YNCg0KQmVzdCByZWdhcmRzLA0K
UGV0IFdlbmcNCg==

