Return-Path: <devicetree+bounces-8693-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0331A7C9B48
	for <lists+devicetree@lfdr.de>; Sun, 15 Oct 2023 22:13:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BA1E3281717
	for <lists+devicetree@lfdr.de>; Sun, 15 Oct 2023 20:13:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0C2A11731;
	Sun, 15 Oct 2023 20:12:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b="HvOJvv6P"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49F63F9CD
	for <devicetree@vger.kernel.org>; Sun, 15 Oct 2023 20:12:54 +0000 (UTC)
Received: from gate2.alliedtelesis.co.nz (gate2.alliedtelesis.co.nz [IPv6:2001:df5:b000:5::4])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 74D86C1
	for <devicetree@vger.kernel.org>; Sun, 15 Oct 2023 13:12:53 -0700 (PDT)
Received: from svr-chch-seg1.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 105192C052B;
	Mon, 16 Oct 2023 09:12:49 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
	s=mail181024; t=1697400769;
	bh=Bk5zP1/9KjG05h4JX4NfmMeg7ql0TuIdPrCYoVfK50I=;
	h=From:To:Subject:Date:References:In-Reply-To:From;
	b=HvOJvv6PuccY8R0a4xaw8VM/fhbjMkxF8jWbVsIN0JO+nrqcxQvsKrEFxXu4i0wqS
	 a0h5udelji6xi0ZNtlGBXUV3VVbha97jOScxOSrSSMl3YN0jgX3J0RAEfiM9JY9l0k
	 GV4HFXyOut2LdIrVt5pdGAYaLlxg8fjnSqu6zuGyUSVVcpl1QnXjVa/pfqlhcFl8wU
	 j8h03CMl0fHyfT+p1XPLWhQOuGq2heLXlyXccvCeDYNKMc2gBuNmkyCsX6prNGMcJV
	 F4uP3TThUzUtqpF7ELAf90c6dlndjjGwZMvbFMzphaE4fDHEMwbmTNyQaJDA9yilRj
	 MjEdJI+zW0E6Q==
Received: from svr-chch-ex2.atlnz.lc (Not Verified[2001:df5:b000:bc8::76]) by svr-chch-seg1.atlnz.lc with Trustwave SEG (v8,2,6,11305)
	id <B652c47c00001>; Mon, 16 Oct 2023 09:12:49 +1300
Received: from svr-chch-ex2.atlnz.lc (2001:df5:b000:bc8::76) by
 svr-chch-ex2.atlnz.lc (2001:df5:b000:bc8::76) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.37; Mon, 16 Oct 2023 09:12:48 +1300
Received: from svr-chch-ex2.atlnz.lc ([fe80::a9eb:c9b7:8b52:9567]) by
 svr-chch-ex2.atlnz.lc ([fe80::a9eb:c9b7:8b52:9567%15]) with mapi id
 15.02.1118.037; Mon, 16 Oct 2023 09:12:48 +1300
From: Chris Packham <Chris.Packham@alliedtelesis.co.nz>
To: Wolfram Sang <wsa@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
	"gregory.clement@bootlin.com" <gregory.clement@bootlin.com>,
	"robh+dt@kernel.org" <robh+dt@kernel.org>,
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>, "pierre.gondois@arm.com"
	<pierre.gondois@arm.com>, "linux-i2c@vger.kernel.org"
	<linux-i2c@vger.kernel.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 3/3] i2c: mv64xxx: add support for FSM based recovery
Thread-Topic: [PATCH v2 3/3] i2c: mv64xxx: add support for FSM based recovery
Thread-Index: AQHZ9+y6MiGlK+7sFkG4dtUSaik2ObBFx/eAgAC3P4CAA/7xAA==
Date: Sun, 15 Oct 2023 20:12:48 +0000
Message-ID: <8cc8e9e1-6abc-4dd2-b402-dff66fa1429b@alliedtelesis.co.nz>
References: <20231006003321.2100016-1-chris.packham@alliedtelesis.co.nz>
 <20231006003321.2100016-4-chris.packham@alliedtelesis.co.nz>
 <20231012201541.nzlxyjngm3d5asir@zenone.zhora.eu> <ZSjtpWukWHeZp///@ninjato>
In-Reply-To: <ZSjtpWukWHeZp///@ninjato>
Accept-Language: en-NZ, en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [10.33.22.30]
Content-Type: text/plain; charset="utf-8"
Content-ID: <A21A155C0D06764D99251C23661637D8@atlnz.lc>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-SEG-SpamProfiler-Analysis: v=2.3 cv=L6ZjvNb8 c=1 sm=1 tr=0 a=Xf/6aR1Nyvzi7BryhOrcLQ==:117 a=xqWC_Br6kY4A:10 a=75chYTbOgJ0A:10 a=IkcTkHD0fZMA:10 a=bhdUkHdE2iEA:10 a=izUcij0ulxVUibrnupIA:9 a=QEXdDO2ut3YA:10
X-SEG-SpamProfiler-Score: 0
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_PASS,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

DQpPbiAxMy8xMC8yMyAyMDoxMSwgV29sZnJhbSBTYW5nIHdyb3RlOg0KPj4gbW1taGhoLi4uIHN0
aWxsIGEgYml0IHNrZXB0aWNhbCBhYm91dCB3YWl0aW5nIDEwMCB0aW1lcyAxMHVzIGluDQo+PiBh
dG9taWMuDQo+IEhhcyBpdCBiZWVuIGRpc2N1c3NlZCBhbHJlYWR5IHdoeSB0aGUgbm9uLWF0b21p
YyB2ZXJzaW9uIG9mDQo+IHJlYWRfcG9sbF90aW1lb3V0IGlzIG5vdCBlbm91Z2g/DQo+DQpGb3Ig
bXY2NHh4eCBpMmNfcmVjb3ZlcnkoKSBpcyBjYWxsZWQgZnJvbSB0d28gcGxhY2VzLiBPbmUgd291
bGQgYmUgZmluZSANCndpdGggcmVhZF9wb2xsX3RpbWVvdXQoKSBidXQgdGhlIG90aGVyIGlzIGlu
IGFuIGludGVycnVwdCBoYW5kbGVyIHNvIA0KbmVlZHMgdGhlIGF0b21pYyB2ZXJzaW9uIChvciBz
b21ldGhpbmcgZWxzZSB0aGF0IGRvZXNuJ3Qgc2NoZWR1bGUpLg==

