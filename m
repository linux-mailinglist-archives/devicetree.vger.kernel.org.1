Return-Path: <devicetree+bounces-306609-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id OpM4GFMYIWqE/AAAu9opvQ
	(envelope-from <devicetree+bounces-306609-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 08:16:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B69F563D345
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 08:16:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=novatek.com.tw header.s=dk header.b=AmlSaAs7;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306609-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306609-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=novatek.com.tw;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 57DDE300E702
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 06:09:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88C503D522C;
	Thu,  4 Jun 2026 06:09:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from ms2.novatek.com.tw (ms2.novatek.com.tw [210.202.87.108])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9118C385D77;
	Thu,  4 Jun 2026 06:09:47 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780553389; cv=none; b=tn+ACCJ5Z2Zo9B/1ueKGmE9D75A25yq+IP5UxTOg5QUvDtV8kHVYZ2U+V+hRPz1FjRuEZm6gtwPBnIeG8q6/0y3uP8ODWiuX2gXzs2Uc7Kol4Dg4AW17bDXOOw83PKa70xUqJ7YwIjCi+CvugOlHw/ucfTBP/Rxm++Q+c9o2LuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780553389; c=relaxed/simple;
	bh=NGPTomif3FTYkoOVzQ+HSaFxYKyET4DbjbxXd5YWgl8=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=XQH+Au46nVIRgAhPcOOAi5/Hr0t+Hb5UCtZcmxTNdtBwWeEHydEQnZpa8AfxvartmgQBPyDkNa448BFq4avjiU/Pi0zKtyb/LkwKYN5PLZ1okPdnkoCWNzeo2sHGfYfImTtzHya2xkS0Z9N+WKSYKvriiHn0leDkVG3OLBl7NSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=novatek.com.tw; spf=pass smtp.mailfrom=novatek.com.tw; dkim=pass (1024-bit key) header.d=novatek.com.tw header.i=@novatek.com.tw header.b=AmlSaAs7; arc=none smtp.client-ip=210.202.87.108
X-UUID: 3588a9885fdb11f1ae774f059c8739df-20260604
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=novatek.com.tw; s=dk;
	h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From; bh=9A9DDAYfvci8sclt9bYZlTK4GhB9lh6b/odeLxlGLXw=;
	b=AmlSaAs7iX0ga5edairkhQbq9OGM165Kthj6+nVS3NoMB9tHEHDQNYPdUAHKa2LE50Zyy/t38095WWy4e3B8fK3EBMpza8Pxu2MJwkzR6e+OMC60yz2qWXLfB/UL5cSuUNCgM6I5Wb+xRt6NW9k+iSB5AqyBreNgK8MBVGPq75U=;
X-Spam-Fingerprint: 0
X-GW-Reason: 11101
X-Policy-Incident: 576k57WE5L+h566x5a+E6YCB6Z2e5a6i5oi26IiH5L6b5oeJ5ZWG6YO15Lu255m95ZCN5Zau
X-Content-Feature: 
	ica/max.line-size 101
	xyz/abc 14
	audit/email.address 5
	dict/prolog 1
	meta/cnt.alert 1
X-UUID: 3588a9885fdb11f1ae774f059c8739df-20260604
Received: from spmgt1 [(172.20.13.10)] by ms2.novatek.com.tw
	(envelope-from <sp_isw1_at@novatek.com.tw>)
	(Generic MTA)
	with ESMTP id 275877755; Thu, 04 Jun 2026 14:04:12 +0800
Received: from oabuild50.novatek.com.tw (oabuild50.novatek.com.tw [172.20.13.160])
	by spmgt1 (Postfix) with ESMTP id 840141B315E;
	Thu,  4 Jun 2026 14:04:12 +0800 (CST)
Received: by oabuild50.novatek.com.tw (Postfix, from userid 1005)
	id EC303C60082; Thu,  4 Jun 2026 14:04:11 +0800 (CST)
From: SP_ISW1_AT@novatek.com.tw
To: andi.shyti@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: SP_ISW1_AT@novatek.com.tw,
	ben_huang@novatek.com.tw,
	toby_chui@novatek.com.tw,
	shihpei_hsu@novatek.com.tw
Subject: [PATCH 1/3] MAINTAINERS: Add entry for Novatek NT726xx SoC i2c driver.
Date: Thu,  4 Jun 2026 14:04:11 +0800
Message-Id: <20260604060411.355675-1-SP_ISW1_AT@novatek.com.tw>
X-Mailer: git-send-email 2.26.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: multipart/mixed;
	boundary="__=_Part_Boundary_008_1748873648.1670885090"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.14 / 15.00];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	CTYPE_MIXED_BOGUS(1.00)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[novatek.com.tw,quarantine];
	R_DKIM_ALLOW(-0.20)[novatek.com.tw:s=dk];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MIME_HTML_ONLY(0.20)[];
	MAILLIST(-0.15)[generic];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-306609-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[SP_ISW1_AT@novatek.com.tw,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:andi.shyti@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-i2c@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:SP_ISW1_AT@novatek.com.tw,m:ben_huang@novatek.com.tw,m:toby_chui@novatek.com.tw,m:shihpei_hsu@novatek.com.tw,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[SP_ISW1_AT@novatek.com.tw,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[novatek.com.tw:+];
	FROM_NO_DN(0.00)[];
	MIME_TRACE(0.00)[0:+,1:~,2:+];
	RCVD_COUNT_FIVE(0.00)[6];
	TO_DN_NONE(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[novatek.com.tw:mid,novatek.com.tw:dkim,novatek.com.tw:from_mime,novatek.com.tw:email,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B69F563D345

--__=_Part_Boundary_008_1748873648.1670885090
Content-Type: text/html;
	charset="utf-8"
Content-Transfer-Encoding: base64

PCEtLXR5cGU6aHRtbC0tPjwhLS17LS0+PHNwYW4gbGFuZz1FTi1VUw0Kc3R5bGU9J2ZvbnQtc2l6
ZToxMC4wcHQ7Zm9udC1mYW1pbHk6IkNhbGlicmkiLHNhbnMtc2VyaWYnPkNPTkZJREVOVElBTElU
WQ0KIE5PVElDRTogVGhpcyBtZXNzYWdlLCBpbmNsdWRpbmcgYXR0YWNobWVudHMsIGNvbnRhaW5z
IGluZm9ybWF0aW9uIHdoaWNoIG1heQ0KIGJlIGNvbmZpZGVudGlhbCBhbmQgcHJpdmlsZWdlZCwg
YW5kIGlzIGludGVuZGVkIG9ubHkgZm9yIHVzZSBieSB0aGUNCiBhZGRyZXNzZWVzIGRlc2lnbmF0
ZWQgYWJvdmUuIFVubGVzcyB5b3UgYXJlIHRoZSBpbnRlbmRlZCByZWNpcGllbnQsIGFueQ0KIHVz
ZSwgY29weWluZywgZGlzY2xvc3VyZSwgb3IgZGlzdHJpYnV0aW9uIGlzIHByb2hpYml0ZWQuIElm
IHlvdSBoYXZlDQogcmVjZWl2ZWQgdGhlIG1lc3NhZ2UgaW4gZXJyb3IsIHBsZWFzZSBpbW1lZGlh
dGVseSBkZWxldGUgdGhlIG1lc3NhZ2UgYW5kDQogZGVzdHJveSBhbGwgY29waWVzIHRoZXJlb2Yg
YW5kIG5vdGlmeSB0aGUgc2VuZGVyIGJ5IHJlcGx5DQogZW1haWwuPC9zcGFuPjxzcGFuDQpsYW5n
PUVOLVVTIHN0eWxlPSdmb250LXNpemU6MTAuMHB0Jz4gPC9zcGFuPjxzcGFuDQogc3R5bGU9J2Zv
bnQtc2l6ZToxMC4wcHQnPiYjMjY0MTI7JiMzNzEwOTsmIzIwMjE0OyYjMjE0NTA7JiMyMDIxOTsm
IzIwMzA5OzxzcGFuDQpjbGFzcz1HcmFtRT4mIzM4NDY4OyYjMjAyMTQ7JiMyMjM0MzsmIzIzNjYw
OyYjMjcyMzE7JiMyMzQ5NDs8L3NwYW4+JiM2NTI5MjsmIzIwNjc3OyYjMjAzNzk7JiMyMDg1NDsm
IzE5OTc4OyYjMjUzNTE7JiMyMzQ1MDsmIzIyMzIwOyYjMjIzMzY7JiMyMDA0MzsmIzI1OTEwOyYj
MjAyMTQ7JiMyMDE1NDsmIzIwMzUxOyYjMjk5OTI7JiMxMjI5MDsmIzM4NTAwOyYjMzg3NTA7JiMy
NDc0NDsmIzI2MTU5OyYjMjUzNTE7JiMyMzQ1MDsmIzIwMDQzOyYjMjU5MTA7JiMyMDIxNDsmIzIw
MTU0OyYjNjUyOTI7JiMyMTU0MjsmIzIxMDYzOyYjMzU1MzE7JiMyMTI0NzsmIzIwMzUxOyYjMjk5
OTI7JiMxMjI4OTsmIzM1MDc5OyYjMzUwNjk7JiMxMjI4OTsmIzI1NTgxOyYjMzg3MDY7JiMyNTEx
MDs8c3Bhbg0KY2xhc3M9R3JhbUU+JiMyNTk1NTsmIzI0MDY3OyYjMjY0MTI7JiMzNzEwOTsmIzIw
MjE0Ozwvc3Bhbj4mIzIwMDQzOyYjMjAyMTk7JiMyMDMwOTsmIzM3MDk2OyYjMjAyMjE7JiMxMjI5
MDsmIzMzNTA5OyYjMjQ3NDQ7JiMzNzY3OTsmIzM1NDkyOyYjMjIzMjA7JiMyNTkxMDsmIzIxMDQw
OyYjMjc0OTI7JiMzNzEwOTsmIzIwMjE0OyYjNjUyOTI7JiMzNTUzMTsmIzMxNDM1OyYjMjEzNjM7
JiMyMjIzODsmIzM1MjA2OyYjMzg2NTE7JiMyMzM3NjsmIzM3MTA5OyYjMjAyMTQ7JiMzNjg5MDsm
IzMwNjkzOyYjMjM0OTI7JiMyMDIxNDsmIzIwMTU0OyYjNjUyOTI7JiMyMDAwNjsmIzM1NTMxOyYj
MjM0MzY7JiMyMDg0MDsmIzIxMDM0OyYjMzg1MDA7JiMxOTk4ODsmIzM3NTU5OyYjMjc1ODQ7JiMy
NjQxMjsmIzM3MTA5OyYjMjAyMTQ7JiMyMTQ1MDsmIzIwODU0OyYjMzUwNzk7JiMyNjQxMjsmIzEy
MjkwOzxzcGFuDQpsYW5nPUVOLVVTPjxvOnA+PC9vOnA+PC9zcGFuPjwvc3Bhbj4NCjwhLS19LS0+

--__=_Part_Boundary_008_1748873648.1670885090
Content-Type: 
Content-Transfer-Encoding: base64

RnJvbTogQmVuIEh1YW5nIDxCZW5fSHVhbmdAbm92YXRlay5jb20udHc+DQoNCkFkZCBlbnRyeSBm
b3IgbWFpbnRlbmFuY2Ugb2YgTm92YXRlayBOVDcyNnh4IFNvQyBpMmMgZHJpdmVyLg0KDQpTaWdu
ZWQtb2ZmLWJ5OiBCZW4gSHVhbmcgPEJlbl9IdWFuZ0Bub3ZhdGVrLmNvbS50dz4NCi0tLQ0KIE1B
SU5UQUlORVJTIHwgNyArKysrKysrDQogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKQ0K
DQpkaWZmIC0tZ2l0IGEvTUFJTlRBSU5FUlMgYi9NQUlOVEFJTkVSUw0KaW5kZXggOWVjMjkwZTM4
YjQ0Li43YTc3YTE2OTBmMTUgMTAwNjQ0DQotLS0gYS9NQUlOVEFJTkVSUw0KKysrIGIvTUFJTlRB
SU5FUlMNCkBAIC0xOTAxNCw2ICsxOTAxNCwxMyBAQCBUOglnaXQgZ2l0Oi8vZ2l0Lmtlcm5lbC5v
cmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L25vbGliYy9saW51eC1ub2xpYmMuZ2l0DQogRjoJ
dG9vbHMvaW5jbHVkZS9ub2xpYmMvDQogRjoJdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvbm9saWJj
Lw0KIA0KK05PVkFURUsgTlQ3MjZYWCBJMkMgQ09OVFJPTExFUiBEUklWRVINCitNOglCZW4gSHVh
bmcgPGJlbl9odWFuZ0Bub3ZhdGVrLmNvbS50dz4NCitMOglsaW51eC1pMmNAdmdlci5rZXJuZWwu
b3JnDQorUzoJTWFpbnRhaW5lZA0KK0Y6CURvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9pMmMvbm92YXRlayxudDcyNnh4LWkyYy55YW1sDQorRjoJZHJpdmVycy9pMmMvYnVzc2VzL2ky
Yy1udDcyNnh4LmMNCisNCiBOT1ZBVEVLIE5WVC1UUyBJMkMgVE9VQ0hTQ1JFRU4gRFJJVkVSDQog
TToJSGFucyBkZSBHb2VkZSA8aGFuc2dAa2VybmVsLm9yZz4NCiBMOglsaW51eC1pbnB1dEB2Z2Vy
Lmtlcm5lbC5vcmcNCi0tIA0KMi40MC4xDQo=

--__=_Part_Boundary_008_1748873648.1670885090--


