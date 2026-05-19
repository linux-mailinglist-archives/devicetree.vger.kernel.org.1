Return-Path: <devicetree+bounces-299984-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id H4+bAPg2DGq2aAUAu9opvQ
	(envelope-from <devicetree+bounces-299984-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 12:10:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FB4957BEA8
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 12:09:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CA04E31F4E30
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 09:59:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DF623D8103;
	Tue, 19 May 2026 09:58:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from zg8tmtyylji0my4xnjeumjiw.icoremail.net (zg8tmtyylji0my4xnjeumjiw.icoremail.net [162.243.161.220])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F37D36308D
	for <devicetree@vger.kernel.org>; Tue, 19 May 2026 09:58:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=162.243.161.220
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779184714; cv=none; b=XcoAiO03lHuwkMTGTpg67lrjYMgITcegKM3Yn5SKGeA9Q6phe/Yb0V6tMNz0ulQKbJlLmCH/8wgS4bKJ7VAD/A7U0yLcyC0QcolKjwkOKG0T78DPBKXKzKLdWLMKCsndJZOoiXhoGgDosxEnhvLvtyv8Bjkyv1Ap+4E4hiuXzKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779184714; c=relaxed/simple;
	bh=s4crRc70t9E81GiHJUKzRaYciZkXC0AybIIx2ZsjaZA=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:Content-Type:
	 MIME-Version:Message-ID; b=mA0iUIPiRm0fOJPOy9ZFD0O5MuWeZzKOzVyv4DzTFCh+ap2jQ6dpmvonCN0kEppf+xKln777j7YR+9Weal/IOSOy79H4DhbiNDRIx+qMKjZ84glTiVmfux6L0ePuxjdNC4YzCkuMbCuxoR1ZkX91SNZtF9H2o8jul09CgbBJqno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=eswincomputing.com; spf=pass smtp.mailfrom=eswincomputing.com; arc=none smtp.client-ip=162.243.161.220
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=eswincomputing.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=eswincomputing.com
Received: from lizhi2$eswincomputing.com ( [10.11.96.26] ) by
 ajax-webmail-app1 (Coremail) ; Tue, 19 May 2026 17:58:19 +0800 (GMT+08:00)
Date: Tue, 19 May 2026 17:58:19 +0800 (GMT+08:00)
X-CM-HeaderCharset: UTF-8
From: =?UTF-8?B?5p2O5b+X?= <lizhi2@eswincomputing.com>
To: sashiko-reviews@lists.linux.dev
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
Subject: Re: Re: [PATCH net v2 2/5] net: stmmac: eswin: fix HSP CSR init
 ordering after clock enable
X-Priority: 3
X-Mailer: Coremail Webmail Server Version 2024.2-cmXT6 build
 20241203(6b039d88) Copyright (c) 2002-2026 www.mailtech.cn
 mispb-72143050-eaf5-4703-89e0-86624513b4ce-eswincomputing.com
In-Reply-To: <20260519022335.931D6C2BCB7@smtp.kernel.org>
References: <20260518022055.444-1-lizhi2@eswincomputing.com>
 <20260519022335.931D6C2BCB7@smtp.kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset=UTF-8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <1b6c329a.8507.19e3fac06f0.Coremail.lizhi2@eswincomputing.com>
X-Coremail-Locale: en_US
X-CM-TRANSID:TAJkCgDHW3A7NAxqtbYaAA--.5521W
X-CM-SenderInfo: xol2xx2s6h245lqf0zpsxwx03jof0z/1tbiAgEMDGoLP5IfyAACsa
X-Coremail-Antispam: 1Ur529EdanIXcx71UUUUU7IcSsGvfJ3iIAIbVAYjsxI4VW3Jw
	CS07vEb4IE77IF4wCS07vE1I0E4x80FVAKz4kxMIAIbVAFxVCaYxvI4VCIwcAKzIAtYxBI
	daVFxhVjvjDU=
X-Spamd-Result: default: False [1.14 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-299984-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[eswincomputing.com];
	HAS_X_PRIO_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lizhi2@eswincomputing.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,eswincomputing.com:mid,eswincomputing.com:email]
X-Rspamd-Queue-Id: 7FB4957BEA8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

CgoKPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2VzLS0tLS0KPiBGcm9tOiBzYXNoaWtvLWJvdEBrZXJu
ZWwub3JnCj4gU2VuZCB0aW1lOlR1ZXNkYXksIDE5LzA1LzIwMjYgMTA6MjM6MzUKPiBUbzogbGl6
aGkyQGVzd2luY29tcHV0aW5nLmNvbQo+IENjOiBjb25vcitkdEBrZXJuZWwub3JnLCBkZXZpY2V0
cmVlQHZnZXIua2VybmVsLm9yZywgcm9iaEBrZXJuZWwub3JnCj4gU3ViamVjdDogUmU6IFtQQVRD
SCBuZXQgdjIgMi81XSBuZXQ6IHN0bW1hYzogZXN3aW46IGZpeCBIU1AgQ1NSIGluaXQgb3JkZXJp
bmcgYWZ0ZXIgY2xvY2sgZW5hYmxlCj4gCj4gVGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlv
biEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQgMSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lk
ZXI6Cj4gLSBbSGlnaF0gSGFyZHdhcmUgU3RhdGUgTG9zcyBvbiBSZXN1bWU6IFRoZSBIU1AgQ1NS
IHJlZ2lzdGVycyBhcmUgbm90IHJlc3RvcmVkIGR1cmluZyBzeXN0ZW0gcmVzdW1lLCBjb250cmFk
aWN0aW5nIHRoZSBjb21taXQgbWVzc2FnZS4KPiAtLQo+IAo+IGNvbW1pdCA2MjdmNTEwZWU1NTZm
ZjQzMjJlMGY0ZWQwYjYwZmRkMjczMzcwODBmCj4gQXV0aG9yOiBaaGkgTGkgPGxpemhpMkBlc3dp
bmNvbXB1dGluZy5jb20+Cj4gCj4gbmV0OiBzdG1tYWM6IGVzd2luOiBmaXggSFNQIENTUiBpbml0
IG9yZGVyaW5nIGFmdGVyIGNsb2NrIGVuYWJsZQo+IAo+IFRoaXMgY29tbWl0IG1vdmVzIHRoZSBI
U1AgQ1NSIGNvbmZpZ3VyYXRpb24gaW4gdGhlIEVJQzc3MDAgRFdNQUMgZ2x1ZSBkcml2ZXIKPiBp
bnRvIHRoZSBwb3N0LWNsb2NrLWVuYWJsZSBpbml0aWFsaXphdGlvbiBwYXRoIHRvIGVuc3VyZSBw
cm9wZXIgb3JkZXJpbmcuCj4gVGhlIGludGVudCBpcyB0byBwcmV2ZW50IHJlZ2lzdGVyIGFjY2Vz
cyBiZWZvcmUgY2xvY2sgZW5hYmxlbWVudCBhbmQgZW5zdXJlCj4gZGV0ZXJtaW5pc3RpYyBpbml0
aWFsaXphdGlvbiBkdXJpbmcgcHJvYmUgb3IgcmVzdW1lLgo+IAo+ID4gICAgIFRoaXMgY2hhbmdl
IGVuc3VyZXMgZGV0ZXJtaW5pc3RpYyBpbml0aWFsaXphdGlvbiBhbmQgcHJldmVudHMKPiA+ICAg
ICBjbG9jay1kZXBlbmRlbnQgcmVnaXN0ZXIgYWNjZXNzIGZhaWx1cmVzIGR1cmluZyBwcm9iZSBv
ciByZXN1bWUuCj4gCj4gQXJlIHRoZSBIU1AgQ1NSIHJlZ2lzdGVycyBhY3R1YWxseSByZXN0b3Jl
ZCBkdXJpbmcgc3lzdGVtIHJlc3VtZT8KPiAKPiBUaGUgZHJpdmVyIG92ZXJyaWRlcyB0aGUgY29y
ZSByZXN1bWUgY2FsbGJhY2sgYnkgc2V0dGluZwo+IHBsYXRfZGF0LT5yZXN1bWUgPSBlaWM3NzAw
X2R3bWFjX3Jlc3VtZS4gQmVjYXVzZSBhIGN1c3RvbSByZXN1bWUgY2FsbGJhY2sgaXMKPiBwcm92
aWRlZCwgdGhlIFNUTU1BQyBjb3JlIGludm9rZXMgdGhpcyBpbnN0ZWFkIG9mIHRoZSBkZWZhdWx0
Cj4gc3RtbWFjX3BsYXRfcmVzdW1lKCkgKHdoaWNoIHdvdWxkIGhhdmUgY2FsbGVkIHBsYXQtPmlu
aXQoKSkuCj4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvc3RtaWNyby9z
dG1tYWMvZHdtYWMtZWljNzcwMC5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvc3RtaWNyby9zdG1t
YWMvZHdtYWMtZWljNzcwMC5jCj4gPiBpbmRleCBiY2I4ZTAwMGU3MjBiLi42MzAwMWM0YWNkYjdh
IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvc3RtaWNyby9zdG1tYWMvZHdt
YWMtZWljNzcwMC5jCj4gPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9zdG1pY3JvL3N0bW1h
Yy9kd21hYy1laWM3NzAwLmMKPiAKPiBbIC4uLiBdCj4gCj4gPiBAQCAtNjEsOCArNjYsMjggQEAg
c3RhdGljIGludCBlaWM3NzAwX2Nsa3NfY29uZmlnKHZvaWQgKnByaXYsIGJvb2wgZW5hYmxlZCkK
PiA+ICBzdGF0aWMgaW50IGVpYzc3MDBfZHdtYWNfaW5pdChzdHJ1Y3QgZGV2aWNlICpkZXYsIHZv
aWQgKnByaXYpCj4gPiAgewo+ID4gIAlzdHJ1Y3QgZWljNzcwMF9xb3NfcHJpdiAqZHdjID0gcHJp
djsKPiA+ICsJaW50IHJldDsKPiA+ICsKPiA+ICsJcmV0ID0gZWljNzcwMF9jbGtzX2NvbmZpZyhk
d2MsIHRydWUpOwo+ID4gKwlpZiAocmV0KQo+ID4gKwkJcmV0dXJuIHJldDsKPiA+ICsKPiA+ICsJ
cmV0ID0gcmVnbWFwX3NldF9iaXRzKGR3Yy0+ZWljNzcwMF9oc3BfcmVnbWFwLAo+ID4gKwkJCSAg
ICAgIGR3Yy0+ZXRoX3BoeV9jdHJsX29mZnNldCwKPiA+ICsJCQkgICAgICBFSUM3NzAwX0VUSF9U
WF9DTEtfU0VMIHwKPiA+ICsJCQkgICAgICBFSUM3NzAwX0VUSF9QSFlfSU5URl9TRUxJKTsKPiA+
ICsJaWYgKHJldCkgewo+ID4gKwkJZWljNzcwMF9jbGtzX2NvbmZpZyhkd2MsIGZhbHNlKTsKPiA+
ICsJCXJldHVybiByZXQ7Cj4gPiArCX0KPiA+ICsKPiA+ICsJcmVnbWFwX3dyaXRlKGR3Yy0+ZWlj
NzcwMF9oc3BfcmVnbWFwLCBkd2MtPmV0aF9heGlfbHBfY3RybF9vZmZzZXQsCj4gPiArCQkgICAg
IEVJQzc3MDBfRVRIX0NTWVNSRVFfVkFMKTsKPiA+ICAKPiA+IC0JcmV0dXJuIGVpYzc3MDBfY2xr
c19jb25maWcoZHdjLCB0cnVlKTsKPiA+ICsJcmVnbWFwX3dyaXRlKGR3Yy0+ZWljNzcwMF9oc3Bf
cmVnbWFwLCBkd2MtPmV0aF9jbGtfb2Zmc2V0LAo+ID4gKwkJICAgICBkd2MtPmV0aF9jbGtfZGx5
X3BhcmFtKTsKPiA+ICsKPiA+ICsJcmV0dXJuIDA7Cj4gPiAgfQo+IAo+IFNpbmNlIGVpYzc3MDBf
ZHdtYWNfcmVzdW1lKCkgb25seSBjYWxscyBwbV9ydW50aW1lX2ZvcmNlX3Jlc3VtZShkZXYpIGFu
ZAo+IGRvZXNuJ3QgaW52b2tlIGVpYzc3MDBfZHdtYWNfaW5pdCgpLCB0aGUgSFNQIENTUiBjb25m
aWd1cmF0aW9uIHdvbid0IGJlCj4gcmUtYXBwbGllZCB1cG9uIHN5c3RlbSByZXN1bWUuIElmIHRo
ZSBoYXJkd2FyZSBsb3NlcyBzdGF0ZSBkdXJpbmcgc3VzcGVuZCwKPiB3aWxsIHRoZSBSR01JSSBk
ZWxheXMgYmUgcGVybWFuZW50bHkgbG9zdCwgbGVhZGluZyB0byBhIE1BQyBoYW5nIG9yIHNpbGVu
dAo+IG5ldHdvcmsgZmFpbHVyZT8KPiAKPiBBbHNvLCBpZiB3ZSB0cnkgdG8gZml4IHRoaXMgYnkg
bmFpdmVseSBjYWxsaW5nIGluaXQoKSBmcm9tIHJlc3VtZSgpLCB3b3VsZAo+IGl0IGNhdXNlIGEg
Y2xvY2sgcmVmZXJlbmNlIGxlYWs/IHBtX3J1bnRpbWVfZm9yY2VfcmVzdW1lKCkgYWxyZWFkeQo+
IHJlLWVuYWJsZXMgdGhlIGNsb2NrcyB2aWEgdGhlIHJ1bnRpbWUgUE0gY2FsbGJhY2tzLCBzbyB0
aGUgQ1NSIGNvbmZpZ3VyYXRpb24KPiBtaWdodCBuZWVkIHRvIGJlIGZhY3RvcmVkIG91dCBpbnRv
IGEgc2VwYXJhdGUgaGVscGVyIGZ1bmN0aW9uLgo+IAoKWW91J3JlIHJpZ2h0LCB0aGlzIHdhcyBz
aW1wbHkgYSBtaXN0YWtlIGluIHRoZSBjb21taXQgbWVzc2FnZS4KClRoZXJlIGlzIG5vIHJlc3Vt
ZSBwYXRoIGludm9sdmVkIOKAlCBvbmx5IHByb2JlIGNhbGxzCmVpYzc3MDBfZHdtYWNfaW5pdCgp
LCB3aGVyZSB0aGUgSFNQIENTUiBjb25maWd1cmF0aW9uIGlzIGFwcGxpZWQKYWZ0ZXIgY2xvY2sg
ZW5hYmxlbWVudC4KCkknbGwgZml4IHRoZSBjb21taXQgbWVzc2FnZSBpbiB2MyBhY2NvcmRpbmds
eS4KClRoYW5rcyBmb3IgdGhlIHJldmlldy4K

