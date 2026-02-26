Return-Path: <devicetree+bounces-268724-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EMbCOW8WoGlifgQAu9opvQ
	(envelope-from <devicetree+bounces-268724-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 10:46:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 23E171A3B1F
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 10:46:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5EC2F301185F
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 09:38:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B831F38BF70;
	Thu, 26 Feb 2026 09:38:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from zg8tmja2lje4os4yms4ymjma.icoremail.net (zg8tmja2lje4os4yms4ymjma.icoremail.net [206.189.21.223])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECC902ECD3A;
	Thu, 26 Feb 2026 09:38:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=206.189.21.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772098694; cv=none; b=ul5rLZ5kxLznjwd5yMgojgpyVGKoA0zSdng9MRPE/mZODieLg18roqHlC4/Y46hOzi4BuWDZiSNRTfog8qcfEf/YWb8SKE8PPxJ5kSB0fz8l+swGy/KXjb7TtX6dA5XEuDsICPkDlDyWKitfpVrXTHJWAcz3HqRWqI5ktzY2e1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772098694; c=relaxed/simple;
	bh=isrpMzEA14m/syaR25UBqnX/zjpSuemus7JHmpXdTK0=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:Content-Type:
	 MIME-Version:Message-ID; b=tAqB28btMk9uhoIcORoT/NV2w+YdpOqxXKF0kUZ38aoPl/JTBs47a79FMSj909gVvKSn85n8oAWIymUomRnEvJ42IU7yRObbIlJM0D1D2elEIREXimOzadyWl5BtJ5YoNur18ANxzQzGBfq/4urEt9GN0SCYvDqA+pD6c7ih9j8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=eswincomputing.com; spf=pass smtp.mailfrom=eswincomputing.com; arc=none smtp.client-ip=206.189.21.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=eswincomputing.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=eswincomputing.com
Received: from zhangsenchuan$eswincomputing.com ( [10.12.96.83] ) by
 ajax-webmail-app2 (Coremail) ; Thu, 26 Feb 2026 17:37:48 +0800 (GMT+08:00)
Date: Thu, 26 Feb 2026 17:37:48 +0800 (GMT+08:00)
X-CM-HeaderCharset: UTF-8
From: zhangsenchuan <zhangsenchuan@eswincomputing.com>
To: "Manivannan Sadhasivam" <mani@kernel.org>
Cc: bhelgaas@google.com, krzk+dt@kernel.org, conor+dt@kernel.org,
	lpieralisi@kernel.org, kwilczynski@kernel.org, robh@kernel.org,
	p.zabel@pengutronix.de, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	christian.bruel@foss.st.com, shradha.t@samsung.com,
	krishna.chundru@oss.qualcomm.com, thippeswamy.havalige@amd.com,
	inochiama@gmail.com, Frank.li@nxp.com, ningyu@eswincomputing.com,
	linmin@eswincomputing.com, pinkesh.vaghela@einfochips.com,
	ouyanghui@eswincomputing.com
Subject: Re: Re: [PATCH v10 2/2] PCI: eic7700: Add Eswin PCIe host
 controller driver
X-Priority: 3
X-Mailer: Coremail Webmail Server Version 2024.2-cmXT6 build
 20241203(6b039d88) Copyright (c) 2002-2026 www.mailtech.cn
 mispb-72143050-eaf5-4703-89e0-86624513b4ce-eswincomputing.com
In-Reply-To: <rbmoxlc45bf4ij2o2mf3ofgni6vxqmsp52vdiqtc4wxxufmxkt@w2u5rkpq5mhs>
References: <20260129092629.1866-1-zhangsenchuan@eswincomputing.com>
 <20260129092900.1900-1-zhangsenchuan@eswincomputing.com>
 <a3yu54e6feo5immtdju4fgvne7fh3p4ytlawfdhawmpzvagi64@o7wuhhdiitft>
 <78296255.3869.19c8eb694d6.Coremail.zhangsenchuan@eswincomputing.com>
 <cxfbgzwsybfvixu3qqi66fvspmhe5knuevwcj6zwsakkzqwd3z@czmitvgl7nwt>
 <694aeb1a.398e.19c98ff2727.Coremail.zhangsenchuan@eswincomputing.com>
 <rbmoxlc45bf4ij2o2mf3ofgni6vxqmsp52vdiqtc4wxxufmxkt@w2u5rkpq5mhs>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset=UTF-8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <470bb42a.39bb.19c994fc998.Coremail.zhangsenchuan@eswincomputing.com>
X-Coremail-Locale: en_US
X-CM-TRANSID:TQJkCgDH3aBsFKBphb4DAA--.833W
X-CM-SenderInfo: x2kd0wpvhquxxxdqqvxvzl0uprps33xlqjhudrp/1tbiAgEKBmmfJ
	IYiowAAsa
X-Coremail-Antispam: 1Ur529EdanIXcx71UUUUU7IcSsGvfJ3iIAIbVAYjsxI4VWxJw
	CS07vEb4IE77IF4wCS07vE1I0E4x80FVAKz4kxMIAIbVAFxVCaYxvI4VCIwcAKzIAtYxBI
	daVFxhVjvjDU=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.14 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268724-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[eswincomputing.com];
	RCPT_COUNT_TWELVE(0.00)[21];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	HAS_X_PRIO_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.558];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zhangsenchuan@eswincomputing.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[google.com,kernel.org,pengutronix.de,vger.kernel.org,foss.st.com,samsung.com,oss.qualcomm.com,amd.com,gmail.com,nxp.com,eswincomputing.com,einfochips.com];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,eswincomputing.com:mid,eswincomputing.com:email]
X-Rspamd-Queue-Id: 23E171A3B1F
X-Rspamd-Action: no action

PiA+ID4gPiA+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggdjEwIDIvMl0gUENJOiBlaWM3NzAwOiBBZGQg
RXN3aW4gUENJZSBob3N0IGNvbnRyb2xsZXIgZHJpdmVyCj4gPiA+ID4gPiAKPiA+ID4gPiA+IE9u
IFRodSwgSmFuIDI5LCAyMDI2IGF0IDA1OjI5OjAwUE0gKzA4MDAsIHpoYW5nc2VuY2h1YW5AZXN3
aW5jb21wdXRpbmcuY29tIHdyb3RlOgo+ID4gPiA+ID4gPiBGcm9tOiBTZW5jaHVhbiBaaGFuZyA8
emhhbmdzZW5jaHVhbkBlc3dpbmNvbXB1dGluZy5jb20+Cj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+
ICtzdGF0aWMgaW50IGVpYzc3MDBfcGNpZV9zdXNwZW5kX25vaXJxKHN0cnVjdCBkZXZpY2UgKmRl
dikKPiA+ID4gPiA+ID4gK3sKPiA+ID4gPiA+ID4gKwlzdHJ1Y3QgZWljNzcwMF9wY2llICpwY2ll
ID0gZGV2X2dldF9kcnZkYXRhKGRldik7Cj4gPiA+ID4gPiA+ICsKPiA+ID4gPiA+ID4gKwkvKgo+
ID4gPiA+ID4gPiArCSAqIFRoZSBFU1dJTiBFSUM3NzAwIFNvQyBsYWNrcyBoYXJkd2FyZSBzdXBw
b3J0IGZvciB0aGUgTDIvTDMgbG93LXBvd2VyCj4gPiA+ID4gPiA+ICsJICogbGluayBzdGF0ZXMu
IEl0IGNhbm5vdCBlbnRlciB0aGUgTDIvTDMgUmVhZHkgc3RhdGUgdGhyb3VnaCB0aGUKPiA+ID4g
PiA+ID4gKwkgKiBQTUVfVHVybl9PZmYvUE1FX1RvX0FjayBoYW5kc2hha2UgcHJvdG9jb2wuIFRv
IGF2b2lkIHRoaXMgcHJvYmxlbSwKPiA+ID4gPiA+ID4gKwkgKiB0aGUgZHdfcGNpZV9zdXNwZW5k
X25vaXJxIEFQSSBpcyBub3QgdXNlZC4KPiA+ID4gPiA+ID4gKwkgKi8KPiA+ID4gPiA+IAo+ID4g
PiA+ID4gV2l0aCA3LjAsIHlvdSBjYW4gcHJvdmlkZSBhIGR1bW15IHBtZV90dXJuX29mZigpIEFQ
SSBhbmQgc2V0Cj4gPiA+ID4gPiAncGNpLT5wcC5za2lwX2wyM19yZWFkeScgdG8gcmV1c2UgdGhl
IGR3X3BjaWVfe3N1c3BlbmQvcmVzdW1lfV9ub2lycSBBUElzLgo+ID4gPiA+ID4gCj4gPiA+ID4g
Cj4gPiA+ID4gSGkgTWFuaSwKPiA+ID4gPiAKPiA+ID4gPiBTZXR0aW5nIHBjaS0+cHAuc2tpcF9s
MjNfcmVhZHkgZG9lcyBpbmRlZWQgYWxsb3cgdXMgdG8gcmV1c2UgdGhlCj4gPiA+ID4gZHdfcGNp
ZV9zdXNwZW5kX25vaXJxIGZ1bmN0aW9uLiBIb3dldmVyLCBmb3IgdGhlIGR3X3BjaWVfcmVzdW1l
X25vaXJxCj4gPiA+ID4gZnVuY3Rpb24sIGlmIHRoZSBkd19wY2llX3N0YXJ0X2xpbmsgYW5kIGR3
X3BjaWVfd2FpdF9mb3JfbGluayBBUElzIGZhaWwgdG8KPiA+ID4gPiBleGVjdXRlLCB0aGUgY2xr
L3Jlc2V0IHJlc291cmNlcyBpbiB0aGUgcGNpLT5wcC5vcHMtPmluaXQgZnVuY3Rpb24gY2Fubm90
Cj4gPiA+ID4gYmUgcmVsZWFzZWQuIFBlcmhhcHMgdGhlIGR3X3BjaWVfcmVzdW1lX25vaXJxIGZ1
bmN0aW9uIG5lZWRzIHRvIGJlIG9wdGltaXplZC4KPiA+ID4gCj4gPiA+IFdpbGwgdGhpcyBoZWxw
Pwo+ID4gPiAKPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3Bj
aWUtZGVzaWdud2FyZS1ob3N0LmMgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWRl
c2lnbndhcmUtaG9zdC5jCj4gPiA+IGluZGV4IDZhZTYxODllOWI4YS4uMzhhZDc5YmJlYWIxIDEw
MDY0NAo+ID4gPiAtLS0gYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWRlc2lnbndh
cmUtaG9zdC5jCj4gPiA+ICsrKyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZGVz
aWdud2FyZS1ob3N0LmMKPiA+ID4gQEAgLTEzMDAsMTUgKzEzMDAsMjQgQEAgaW50IGR3X3BjaWVf
cmVzdW1lX25vaXJxKHN0cnVjdCBkd19wY2llICpwY2kpCj4gPiA+ICAKPiA+ID4gICAgICAgICBy
ZXQgPSBkd19wY2llX3N0YXJ0X2xpbmsocGNpKTsKPiA+ID4gICAgICAgICBpZiAocmV0KQo+ID4g
PiAtICAgICAgICAgICAgICAgcmV0dXJuIHJldDsKPiA+ID4gKyAgICAgICAgICAgICAgIGdvdG8g
ZXJyX2RlaW5pdDsKPiA+ID4gIAo+ID4gPiAgICAgICAgIHJldCA9IGR3X3BjaWVfd2FpdF9mb3Jf
bGluayhwY2kpOwo+ID4gPiAgICAgICAgIGlmIChyZXQpCj4gPiA+IC0gICAgICAgICAgICAgICBy
ZXR1cm4gcmV0Owo+ID4gPiArICAgICAgICAgICAgICAgZ290byBlcnJfc3RvcF9saW5rOwo+ID4g
PiAgCj4gPiA+ICAgICAgICAgaWYgKHBjaS0+cHAub3BzLT5wb3N0X2luaXQpCj4gPiA+ICAgICAg
ICAgICAgICAgICBwY2ktPnBwLm9wcy0+cG9zdF9pbml0KCZwY2ktPnBwKTsKPiA+ID4gIAo+ID4g
PiArICAgICAgIHJldHVybiAwOwo+ID4gPiArCj4gPiA+ICtlcnJfc3RvcF9saW5rOgo+ID4gPiAr
ICAgICAgIGR3X3BjaWVfc3RvcF9saW5rKHBjaSk7Cj4gPiA+ICsKPiA+ID4gK2Vycl9kZWluaXQ6
Cj4gPiA+ICsgICAgICAgaWYgKHBjaS0+cHAub3BzLT5kZWluaXQpCj4gPiA+ICsgICAgICAgICAg
ICAgICBwY2ktPnBwLm9wcy0+ZGVpbml0KCZwY2ktPnBwKTsKPiA+ID4gKwo+ID4gPiAgICAgICAg
IHJldHVybiByZXQ7Cj4gPiA+ICB9Cj4gPiA+ICBFWFBPUlRfU1lNQk9MX0dQTChkd19wY2llX3Jl
c3VtZV9ub2lycSk7Cj4gPiA+IAo+ID4gCj4gPiBZZXMsIHRoaXMgY2FuIHJlbGVhc2UgdGhlIHJl
c291cmNlcyBhZnRlciBpbml0LCBhZnRlciBvcHRpbWl6aW5nIHRoZSAKPiA+IHJlc3VtZSBmdW5j
dGlvbiwgaSBjYW4gcmV1c2UgdGhlIGR3X3BjaWVfe3N1c3BlbmQvcmVzdW1lfV9ub2lycSBBUElz
Lgo+ID4gCj4gPiBJIG5vdGljZWQgdGhhdCB0aGUgZHdfcGNpZV93YWl0X2Zvcl9saW5rIGZ1bmN0
aW9uIGhhcyBiZWVuIG9wdGltaXplZC4gSXMgCj4gPiBpdCBuZWNlc3NhcnkgdG8gcmVsZWFzZSB0
aGUgcmVzb3VyY2VzIG9ubHkgd2hlbiBpdCByZXR1cm4gLUVUSU1FT1VUPwo+ID4gUGVyaGFwcyBp
dCBuZWVkcyB0byBiZSBzbGlnaHRseSBpbXByb3ZlZO+8mgo+ID4gCj4gPiAgcmV0ID0gZHdfcGNp
ZV93YWl0X2Zvcl9saW5rKHBjaSk7Cj4gPiAgaWYgKHJldCA9PSAtRVRJTUVPVVQpCj4gPiAgICAg
ICAgICBnb3RvIGVycl9zdG9wX2xpbms7Cj4gPiAKPiA+IFdoYXQgYWJvdXQgeW91ciBzdWdnZXN0
aW9uPwo+ID4gCj4gCj4gQWJzb2x1dGVseSEgSSBmb3Jnb3QgbXkgb3duIHJld29yayA7KSBJJ2xs
IGNvb2sgYSBwYXRjaCBmb3IgdGhlIGFib3ZlLiBUaGVuIGlmCj4geW91IGJhc2UgeW91ciBjb250
cm9sbGVyIGRyaXZlciBwYXRjaCBvbiB0b3Agb2YgaXQsIHdlIGNhbiBtZXJnZSBib3RoIGluIGEK
PiBzaW5nbGUgdHJlZSAoaWYgQmpvcm4gYWdyZWVzKS4KPiAKCk9rZXksdGhhbmtzIQoKSSdtIGEg
bGl0dGxlIHVuc3VyZS4gRG8gSSBuZWVkIHRvIHNlbmQgdGhlIHYxMSBwYXRjaCBoZXJlIGZpcnN0
PyBPciBzaG91bGQgSSB3YWl0CnVudGlsIHlvdSByZWxlYXNlIHRoZSBuZXcgZml4IHBhdGNoLCBh
bmQgdGhlbiBzZW5kIHRoZSB2MTEgcGF0Y2g/CgpLaW5kIHJlZ2FyZHMsClNlbmNodWFuCgo=

