Return-Path: <devicetree+bounces-326058-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id QiGRObQEVmpgyAAAu9opvQ
	(envelope-from <devicetree+bounces-326058-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 11:43:16 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id E7C63752FF3
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 11:43:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=novatek.com.tw header.s=dk header.b=YDK+dE81;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326058-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-326058-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=novatek.com.tw;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id AFBC43020EF7
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 09:41:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 383A943FD03;
	Tue, 14 Jul 2026 09:41:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from ms1.novatek.com.tw (ms2.novatek.com.tw [210.202.87.108])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1492343FD11;
	Tue, 14 Jul 2026 09:41:50 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784022113; cv=none; b=GIlryM5ZP+Z7Y46VauTBVcxDyCjJvyc7/0ExABjf8c4zw3nA7kVi87xoXh4Zm89FuZKeWg3AYubSYWsoKsA48U+n5AumR3ZkNKZHjz0JK5NiLyOAamjXD/vhwGzAEyHOpTXPe8fUqRTftEnHbuAIguYrpTBV551ZRhzvEaQwiKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784022113; c=relaxed/simple;
	bh=lKr2kzuSeiAjC16p+wndtFIdffFzMSq8xCj4zQAyyyM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=LuOG/b29VKeDK55EWdfBdrLfaNFch0KH9+qX2lcIfXUVjvg2MJJaE69owTr/PAMsafdKBTQTLhvoorW7iUBPyaiN+j5MuSgQpOAorrjbTMeqeG65dSz3QYPNdtel2cOiHZ8ateptsG1DpLYOEB6TA+sV0tfNm2ytf4Nyq7SJDr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=novatek.com.tw; spf=pass smtp.mailfrom=novatek.com.tw; dkim=pass (1024-bit key) header.d=novatek.com.tw header.i=@novatek.com.tw header.b=YDK+dE81; arc=none smtp.client-ip=210.202.87.108
X-UUID: 3bc0d8e67f6811f181a149c3f3c08161-20260714
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=novatek.com.tw; s=dk;
	h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From; bh=psN0kqo8uQkSysWusSvrifCMa9oTwBGcSyqXdNVrwLs=;
	b=YDK+dE811h30HRDMsfWwU4oGBjQHlLeuCx9F6t1nbSMWisuIB0yfJqVIeXLNFoBn77hwzY5CX5MjV2mRTgIdda+P6IL/s9XmuUnRhbvfgGgWoTE7t+hsjkv1gYjPxWAZY6Op3GLZpUCvQkdvz3O3n6PwS7bqn7PVINRwP/dJD/4=;
X-UUID: 3bc0d8e67f6811f181a149c3f3c08161-20260714
Received: from spmgt1 [(172.20.13.10)] by ms1.novatek.com.tw
	(envelope-from <sp_isw1_at@novatek.com.tw>)
	(Generic MTA)
	with ESMTP id 707847343; Tue, 14 Jul 2026 17:41:48 +0800
Received: from oabuild50.novatek.com.tw (oabuild50.novatek.com.tw [172.20.13.160])
	by spmgt1 (Postfix) with ESMTP id 1EF1B1A1E1C;
	Tue, 14 Jul 2026 17:41:48 +0800 (CST)
Received: by oabuild50.novatek.com.tw (Postfix, from userid 1005)
	id 883BDC600CC; Tue, 14 Jul 2026 17:41:45 +0800 (CST)
From: Nina_Kuo@novatek.com.tw
To: andi.shyti@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: ben_huang@novatek.com.tw,
	toby_chui@novatek.com.tw,
	shihpei_hsu@novatek.com.tw
Subject: Re: [PATCH v2 0/3] i2c: Add Novatek NT726xx SoC I2C controller
Date: Tue, 14 Jul 2026 17:41:45 +0800
Message-Id: <20260714094145.84387-1-Nina_Kuo@novatek.com.tw>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20260714092504.82538-1-Nina_Kuo@novatek.com.tw>
References: <20260714092504.82538-1-Nina_Kuo@novatek.com.tw>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: multipart/mixed;
	boundary="__=_Part_Boundary_001_1727655448.1529552306"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.14 / 15.00];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	CTYPE_MIXED_BOGUS(1.00)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[novatek.com.tw,quarantine];
	R_DKIM_ALLOW(-0.20)[novatek.com.tw:s=dk];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MIME_HTML_ONLY(0.20)[];
	MAILLIST(-0.15)[generic];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-326058-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[Nina_Kuo@novatek.com.tw,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:andi.shyti@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-i2c@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:ben_huang@novatek.com.tw,m:toby_chui@novatek.com.tw,m:shihpei_hsu@novatek.com.tw,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[Nina_Kuo@novatek.com.tw,devicetree@vger.kernel.org];
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
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,novatek.com.tw:from_mime,novatek.com.tw:mid,novatek.com.tw:email,novatek.com.tw:dkim,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E7C63752FF3

--__=_Part_Boundary_001_1727655448.1529552306
Content-Type: text/html;
	charset="utf-8"
Content-Transfer-Encoding: base64

PCEtLXR5cGU6aHRtbC0tPjwhLS17LS0+PHNwYW4gbGFuZz1FTi1VUw0Kc3R5bGU9J2ZvbnQtc2l6
ZToxMC4wcHQ7Zm9udC1mYW1pbHk6IkNhbGlicmkiLHNhbnMtc2VyaWYnPkNPTkZJREVOVElBTElU
WSBOT1RJQ0U6IFRoaXMgbWVzc2FnZSwgaW5jbHVkaW5nIGF0dGFjaG1lbnRzLCBjb250YWlucyBp
bmZvcm1hdGlvbiB3aGljaCBtYXkgYmUgY29uZmlkZW50aWFsIGFuZCBwcml2aWxlZ2VkLCBhbmQg
aXMgaW50ZW5kZWQgb25seSBmb3IgdXNlIGJ5IHRoZSBhZGRyZXNzZWVzIGRlc2lnbmF0ZWQgYWJv
dmUuIFVubGVzcyB5b3UgYXJlIHRoZSBpbnRlbmRlZCByZWNpcGllbnQsIGFueSB1c2UsIGNvcHlp
bmcsIGRpc2Nsb3N1cmUsIG9yIGRpc3RyaWJ1dGlvbiBpcyBwcm9oaWJpdGVkLiBJZiB5b3UgaGF2
ZSByZWNlaXZlZCB0aGUgbWVzc2FnZSBpbiBlcnJvciwgcGxlYXNlIGltbWVkaWF0ZWx5IGRlbGV0
ZSB0aGUgbWVzc2FnZSBhbmQgZGVzdHJveSBhbGwgY29waWVzIHRoZXJlb2YgYW5kIG5vdGlmeSB0
aGUgc2VuZGVyIGJ5IHJlcGx5IGVtYWlsLjwvc3Bhbj48c3Bhbg0KbGFuZz1FTi1VUyBzdHlsZT0n
Zm9udC1zaXplOjEwLjBwdCc+IDwvc3Bhbj48c3BhbiBzdHlsZT0nZm9udC1zaXplOjEwLjBwdCc+
JiMyNjQxMjsmIzM3MTA5OyYjMjAyMTQ7JiMyMTQ1MDsmIzIwMjE5OyYjMjAzMDk7PHNwYW4NCmNs
YXNzPUdyYW1FPiYjMzg0Njg7JiMyMDIxNDsmIzIyMzQzOyYjMjM2NjA7JiMyNzIzMTsmIzIzNDk0
Ozwvc3Bhbj4mIzY1MjkyOyYjMjA2Nzc7JiMyMDM3OTsmIzIwODU0OyYjMTk5Nzg7JiMyNTM1MTsm
IzIzNDUwOyYjMjIzMjA7JiMyMjMzNjsmIzIwMDQzOyYjMjU5MTA7JiMyMDIxNDsmIzIwMTU0OyYj
MjAzNTE7JiMyOTk5MjsmIzEyMjkwOyYjMzg1MDA7JiMzODc1MDsmIzI0NzQ0OyYjMjYxNTk7JiMy
NTM1MTsmIzIzNDUwOyYjMjAwNDM7JiMyNTkxMDsmIzIwMjE0OyYjMjAxNTQ7JiM2NTI5MjsmIzIx
NTQyOyYjMjEwNjM7JiMzNTUzMTsmIzIxMjQ3OyYjMjAzNTE7JiMyOTk5MjsmIzEyMjg5OyYjMzUw
Nzk7JiMzNTA2OTsmIzEyMjg5OyYjMjU1ODE7JiMzODcwNjsmIzI1MTEwOzxzcGFuDQpjbGFzcz1H
cmFtRT4mIzI1OTU1OyYjMjQwNjc7JiMyNjQxMjsmIzM3MTA5OyYjMjAyMTQ7PC9zcGFuPiYjMjAw
NDM7JiMyMDIxOTsmIzIwMzA5OyYjMzcwOTY7JiMyMDIyMTsmIzEyMjkwOyYjMzM1MDk7JiMyNDc0
NDsmIzM3Njc5OyYjMzU0OTI7JiMyMjMyMDsmIzI1OTEwOyYjMjEwNDA7JiMyNzQ5MjsmIzM3MTA5
OyYjMjAyMTQ7JiM2NTI5MjsmIzM1NTMxOyYjMzE0MzU7JiMyMTM2MzsmIzIyMjM4OyYjMzUyMDY7
JiMzODY1MTsmIzIzMzc2OyYjMzcxMDk7JiMyMDIxNDsmIzM2ODkwOyYjMzA2OTM7JiMyMzQ5Mjsm
IzIwMjE0OyYjMjAxNTQ7JiM2NTI5MjsmIzIwMDA2OyYjMzU1MzE7JiMyMzQzNjsmIzIwODQwOyYj
MjEwMzQ7JiMzODUwMDsmIzE5OTg4OyYjMzc1NTk7JiMyNzU4NDsmIzI2NDEyOyYjMzcxMDk7JiMy
MDIxNDsmIzIxNDUwOyYjMjA4NTQ7JiMzNTA3OTsmIzI2NDEyOyYjMTIyOTA7PHNwYW4NCmxhbmc9
RU4tVVM+PG86cD48L286cD48L3NwYW4+PC9zcGFuPg0KPCEtLX0tLT4=

--__=_Part_Boundary_001_1727655448.1529552306
Content-Type: 
Content-Transfer-Encoding: base64

RnJvbTogQmVuIEh1YW5nIDxCZW5fSHVhbmdAbm92YXRlay5jb20udHc+DQoNClNvcnJ5IGFib3V0
IHNob3dpbmcgdGhlIGNvbmZpZGVudGlhbCBtZXNzYWdlcy4NCkkgc3RpbGwgZmluZCBpbnRlcm5h
bCBzdXBwb3J0IHRvIHJlbW92ZSB0aGVzZSBtZXNzYWdlcy4NCg0KU2luY2VyZWx5LA0KQmVuIEh1
YW5n

--__=_Part_Boundary_001_1727655448.1529552306--


