Return-Path: <devicetree+bounces-8962-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 77CB97CAD01
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 17:10:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9248F1C208F2
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 15:10:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06F3328E22;
	Mon, 16 Oct 2023 15:10:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dh-electronics.com header.i=@dh-electronics.com header.b="JIE75WCD"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88CCB286BC
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 15:10:42 +0000 (UTC)
X-Greylist: delayed 272 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Mon, 16 Oct 2023 08:10:39 PDT
Received: from mx4.securetransport.de (mx4.securetransport.de [178.254.6.145])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 76817D9;
	Mon, 16 Oct 2023 08:10:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dh-electronics.com;
	s=dhelectronicscom; t=1697469012;
	bh=DAQirIXwyWrtNlbltDzsEZ3J+XWe3BGCkP5IHlP6G2Y=;
	h=From:To:CC:Subject:Date:References:In-Reply-To:From;
	b=JIE75WCD+rh4HLPtmRCBFGk706/suYxmLcaZWIsqCP2jm69oY3uie5ernwltPkOh2
	 hctsh32Z+PYyjr373LrLXZ/MiZq8hq0lke9itOB5cfFx/dFVwjM/xz5qNV+J2TsXE2
	 MXry1df8jv8/OI5BU/ujIfGs1V4PuXuHkompr07WSyHBryfOjm/5H//G9jmLVEbl2W
	 7/BaK+3EqnQebHOnTbJyR9E9VviAxvr8NAmmkjUF9nL3QJczGIJBTp52FMBQ379kcF
	 FKMfoJPUohSf2xcr+IYoX4073vSzg737KcigMmw7Cti8SZ1h0zUMecw5s2uFybXoKB
	 XxFpPWcFYx4PA==
X-secureTransport-forwarded: yes
From: Christoph Niedermaier <cniedermaier@dh-electronics.com>
Complaints-To: abuse@cubewerk.de
To: Christoph Niedermaier <cniedermaier@dh-electronics.com>,
	"inux-arm-kernel@lists.infradead.org" <inux-arm-kernel@lists.infradead.org>
CC: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Marek Vasut <marex@denx.de>, "Fabio
 Estevam" <festevam@denx.de>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Subject: RE: [PATCH V5] dt-bindings: Add Marantec vendor prefix
Thread-Topic: [PATCH V5] dt-bindings: Add Marantec vendor prefix
Thread-Index: AQHaAEDB3LVVlD1lPUODmJvrPXaOlbBMhDfw
Date: Mon, 16 Oct 2023 15:10:08 +0000
Message-ID: <3c6612a715814b00b5140a38e599b2c5@dh-electronics.com>
References: <20231016145258.2877-1-cniedermaier@dh-electronics.com>
In-Reply-To: <20231016145258.2877-1-cniedermaier@dh-electronics.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,TO_EQ_FM_DIRECT_MX autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

RnJvbTogQ2hyaXN0b3BoIE5pZWRlcm1haWVyIFttYWlsdG86Y25pZWRlcm1haWVyQGRoLWVsZWN0
cm9uaWNzLmNvbV0NClNlbnQ6IE1vbmRheSwgT2N0b2JlciAxNiwgMjAyMyA0OjUzIFBNDQo+IA0K
PiBBZGQgdmVuZG9yIHByZWZpeCBmb3IgTWFyYW50ZWMgZWxlY3Ryb25pY3MgR21iSC4NCj4gDQo+
IFNpZ25lZC1vZmYtYnk6IENocmlzdG9waCBOaWVkZXJtYWllciA8Y25pZWRlcm1haWVyQGRoLWVs
ZWN0cm9uaWNzLmNvbT4NCj4gQWNrZWQtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGtyenlzenRv
Zi5rb3psb3dza2lAbGluYXJvLm9yZz4NCj4gLS0tDQo+IENjOiBSb2IgSGVycmluZyA8cm9iaCtk
dEBrZXJuZWwub3JnPg0KPiBDYzogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6eXN6dG9mLmtvemxv
d3NraStkdEBsaW5hcm8ub3JnPg0KPiBDYzogTWFyZWsgVmFzdXQgPG1hcmV4QGRlbnguZGU+DQo+
IENjOiBGYWJpbyBFc3RldmFtIDxmZXN0ZXZhbUBkZW54LmRlPg0KPiBDYzogZGV2aWNldHJlZUB2
Z2VyLmtlcm5lbC5vcmcNCj4gQ2M6IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmcNCj4gVG86
IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZw0KPiAtLS0NCj4gVjI6IC0gQWRk
IHRoaXMgcGF0Y2ggdG8gdGhlIHNlcmllcw0KPiBWMzogLSBBZGQgQWNrZWQtYnkgdGFnDQo+IFY0
OiAtIE5vIGNoYW5nZXMNCj4gVjU6IC0gUmViYXNlIG9uIGN1cnJlbnQgbmV4dCAyMDIzMTAxNg0K
PiAtLS0NCj4gIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy92ZW5kb3ItcHJlZml4
ZXMueWFtbCB8IDIgKysNCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykNCj4gDQo+
IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdmVuZG9yLXBy
ZWZpeGVzLnlhbWwNCj4gYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdmVuZG9y
LXByZWZpeGVzLnlhbWwNCj4gaW5kZXggN2ZmMzNjZjEwZmNjLi5lOTE3ODdkZWQzZmIgMTAwNjQ0
DQo+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy92ZW5kb3ItcHJlZml4
ZXMueWFtbA0KPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdmVuZG9y
LXByZWZpeGVzLnlhbWwNCj4gQEAgLTgxOSw2ICs4MTksOCBAQCBwYXR0ZXJuUHJvcGVydGllczoN
Cj4gICAgICBkZXNjcmlwdGlvbjogTWFudGl4IERpc3BsYXkgVGVjaG5vbG9neSBDby4sTHRkLg0K
PiAgICAiXm1hcGxlYm9hcmQsLioiOg0KPiAgICAgIGRlc2NyaXB0aW9uOiBNYXBsZWJvYXJkLm9y
Zw0KPiArICAiXm1hcmFudGVjLC4qIjoNCj4gKyAgICBkZXNjcmlwdGlvbjogTWFyYW50ZWMgZWxl
Y3Ryb25pY3MgR21iSA0KPiAgICAiXm1hcnZlbGwsLioiOg0KPiAgICAgIGRlc2NyaXB0aW9uOiBN
YXJ2ZWxsIFRlY2hub2xvZ3kgR3JvdXAgTHRkLg0KPiAgICAiXm1heGJvdGl4LC4qIjoNCg0KSWdu
b3JlIHRoaXMgZW1haWwgYmVjYXVzZSBpdCBjb250YWlucyBhIHR5cG8gaW4gdGhlIG1haWxpbmds
aXN0IGVtYWlsIGFkZHJlc3MuDQoNClJlZ2FyZHMNCkNocmlzdG9waA0K

