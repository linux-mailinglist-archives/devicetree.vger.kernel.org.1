Return-Path: <devicetree+bounces-127716-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E10B9E604B
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 23:01:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0B1AE188559F
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 22:01:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40C8F1B4156;
	Thu,  5 Dec 2024 22:01:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amazon.com header.i=@amazon.com header.b="ZaUDhs9H"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-fw-80007.amazon.com (smtp-fw-80007.amazon.com [99.78.197.218])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6905282FB;
	Thu,  5 Dec 2024 22:01:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=99.78.197.218
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733436094; cv=none; b=hAt7tXB5WHoXHxNX98uCb0EXsnbjIP/27cDO/A6aiOV/5IYsPr0bWxwafFaZ557Bu+kQS2tTrMI9zBkQfAzS37yP1izK09ZBatgJssnOM/aaXl7es0JNltSa6l4FqlNgnRCIEDXI660IF80Hs4jbJcuAhTnKQB/XIKR5jSoPdLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733436094; c=relaxed/simple;
	bh=WBRYGqFsKhLsWzBwDgwyb14a6KLVl2Ln8e4DJZjIZ5Q=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=aE8DWL3eDzEoqGBdXDVdJslTqHCvL20iGqNuCTJjBw/dWpfiXw1TsLZwd9NWWyOmz0sw4un22Ahm7pPng6IuzWVmt6zVQcIz+pZL5IjkOhcUH+QT6rEK3xnXjGvEkGxZQeTFQgBeErDKVZ4le3s0BzGgRwMdOQTSYqIJGBXSLgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=amazon.com; spf=pass smtp.mailfrom=amazon.com; dkim=pass (1024-bit key) header.d=amazon.com header.i=@amazon.com header.b=ZaUDhs9H; arc=none smtp.client-ip=99.78.197.218
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=amazon.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amazon.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
  t=1733436093; x=1764972093;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=WBRYGqFsKhLsWzBwDgwyb14a6KLVl2Ln8e4DJZjIZ5Q=;
  b=ZaUDhs9HXptLl/jiL6DsEL/WQNSgVGJMkxzviFWwg6Fpj8rTT3D7bRkP
   IhNex6IA+ySUcGhbxwD51beF7/VD9CYO7LSgqnZZYMoEhS4Oo9OgpTe4G
   /6zH4xSDz09aazQJ1rZqt+fOp2Dqcda1JlkGnZDjYr2xY6dIvFBPjU4dK
   k=;
X-IronPort-AV: E=Sophos;i="6.12,211,1728950400"; 
   d="scan'208";a="358487152"
Received: from pdx4-co-svc-p1-lb2-vlan2.amazon.com (HELO smtpout.prod.us-west-2.prod.farcaster.email.amazon.dev) ([10.25.36.210])
  by smtp-border-fw-80007.pdx80.corp.amazon.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Dec 2024 22:01:31 +0000
Received: from EX19MTAUWB002.ant.amazon.com [10.0.38.20:23930]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.27.181:2525] with esmtp (Farcaster)
 id 4718b645-8202-4053-9c23-2ce41d312435; Thu, 5 Dec 2024 22:01:30 +0000 (UTC)
X-Farcaster-Flow-ID: 4718b645-8202-4053-9c23-2ce41d312435
Received: from EX19D021UWA001.ant.amazon.com (10.13.139.24) by
 EX19MTAUWB002.ant.amazon.com (10.250.64.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1258.34;
 Thu, 5 Dec 2024 22:01:30 +0000
Received: from EX19D021UWA002.ant.amazon.com (10.13.139.48) by
 EX19D021UWA001.ant.amazon.com (10.13.139.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1258.34;
 Thu, 5 Dec 2024 22:01:30 +0000
Received: from EX19D021UWA002.ant.amazon.com ([fe80::1695:13a9:9f52:f30a]) by
 EX19D021UWA002.ant.amazon.com ([fe80::1695:13a9:9f52:f30a%5]) with mapi id
 15.02.1258.034; Thu, 5 Dec 2024 22:01:30 +0000
From: "Herrenschmidt, Benjamin" <benh@amazon.com>
To: "robh@kernel.org" <robh@kernel.org>, "segher@kernel.crashing.org"
	<segher@kernel.crashing.org>
CC: "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
	"mpe@ellerman.id.au" <mpe@ellerman.id.au>, "saravanak@google.com"
	<saravanak@google.com>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "conor@kernel.org" <conor@kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2] of: WARN on deprecated #address-cells/#size-cells
 handling
Thread-Topic: [PATCH v2] of: WARN on deprecated #address-cells/#size-cells
 handling
Thread-Index: AQHbR2E8vFBrvXcqyUSquwoaq++LVw==
Date: Thu, 5 Dec 2024 22:01:29 +0000
Message-ID: <54b34ac1296dd6711bda5239069d5e3b436bbc8f.camel@amazon.com>
References: <20241106171028.3830266-1-robh@kernel.org>
	 <87jzdfcm3l.fsf@mpe.ellerman.id.au> <87plmi7jjz.fsf@mpe.ellerman.id.au>
	 <20241127214232.GQ29862@gate.crashing.org>
	 <CAL_JsqKhp8bW66koP8JPSkXmrCjA+oQh6NZte_uphiLTC_=7Rw@mail.gmail.com>
	 <20241202220434.GU29862@gate.crashing.org>
	 <CAL_JsqL5FHPNQWGdBEz9UpD7cq3We-czPV8OmwD=0w5Eu10=kA@mail.gmail.com>
In-Reply-To: <CAL_JsqL5FHPNQWGdBEz9UpD7cq3We-czPV8OmwD=0w5Eu10=kA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
Content-Type: text/plain; charset="utf-8"
Content-ID: <640BBA7AD62B3A4D81EFA0FB69EC2557@amazon.com>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

T24gTW9uLCAyMDI0LTEyLTAyIGF0IDE2OjU1IC0wNjAwLCBSb2IgSGVycmluZyB3cm90ZToNCj4g
wqDCoMKgwqDCoMKgwqAgLyogTG9vayBmb3IgdGhpcyAjYWRkcmVzcy1jZWxscy4gV2UgaGF2ZSB0
byBpbXBsZW1lbnQgdGhlIG9sZCBsaW51eA0KPiDCoMKgwqDCoMKgwqDCoMKgICogdHJpY2sgb2Yg
bG9va2luZyBmb3IgdGhlIHBhcmVudCBoZXJlIGFzIHNvbWUgZGV2aWNlLXRyZWVzIHJlbHkgb24g
aXQNCj4gwqDCoMKgwqDCoMKgwqDCoCAqLw0KPiANCj4gTWF5YmUgdGhhdCdzIGZyb20gc29tZSBz
eXN0ZW0gbG9uZyBkcm9wcGVkIGFuZCB3ZSBkb24ndCBuZWVkIGl0DQo+IGFueW1vcmUuIEkgaGF2
ZSBubyBpZGVhLiBUaGF0J3Mgd2hhdCBJJ20gdHJ5aW5nIHRvIGZpbmQgb3V0IHdpdGggdGhpcw0K
PiBwYXRjaC4NCj4gDQo+IFdlIGFsc28gZG9uJ3QgcmVhbGx5IGhhdmUgYSB3YXkgdG8gZGlzdGlu
Z3Vpc2ggT0YgZnJvbSBGRFQgKHdoZXJlIHdlJ2QNCj4gbmVlZCB0bykuIEl0IGlzIHNvbWV3aGF0
IGp1c3QgYnkgYXJjaCwgYnV0IFBQQyBhbHdheXMgcGFzc2VzIGFuIEZEVCB0bw0KPiB0aGUga2Vy
bmVsIGZvciBib3RoIEZEVCBhbmQgT0Ygc3lzdGVtcy4NCg0KSSBwcm9iYWJseSB3cm90ZSB0aGF0
IDotKQ0KDQpUaGUgbGl0dGxlIEkgY2FuIHJlbWVtYmVyLCBJIHRoaW5rIGlzIHRoZXJlIGFyZSBt
YW55IGNhc2VzIG9mIG9sZCBEVHMNCihlc3AuIG9sZCBBcHBsZSBvbmVzKSBtaXNzaW5nIHRoZSAi
ZW1wdHkiIHJhbmdlcyBwcm9wZXJ0eSBpbiBzb21lIG5vZGVzDQp0byBpbmRpY2F0ZSB0aGF0IHRo
ZSBwYXJlbnQgYW5kIGNoaWxkIGFkZHJlc3Mgc3BhY2VzIGFyZSBpZGVudGljYWwuDQoNCkkgaG9u
ZXN0bHkgZG9uJ3QgcmVtZW1iZXIgdGhlIHNwZWNpZmljcywgYnV0IHRoaXMgaXMgc29tZXRoaW5n
IEkgZGlkDQpoaXQgYSBmZXcgdGltZXMgaW4gdGhlIHBhc3QuDQoNCkNoZWVycywNCkJlbi4gDQo=

