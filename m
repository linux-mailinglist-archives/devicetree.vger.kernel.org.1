Return-Path: <devicetree+bounces-179196-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DA9DABF2C6
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 13:27:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 97D72167968
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 11:27:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CD91262FE6;
	Wed, 21 May 2025 11:27:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="l9PZQdT5"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout1.samsung.com (mailout1.samsung.com [203.254.224.24])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C59E3262FCA
	for <devicetree@vger.kernel.org>; Wed, 21 May 2025 11:27:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.254.224.24
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747826851; cv=none; b=TKC3yuOp57y/7NCbHEcshDmv7JjReugjrTkVa+xyBtALVQcy7BS6q8OUbIxxHDohS9wscAxEhssXlExksX1qQvUImxIFibr5pauvvosn3YgbOQ4cB9LthzPSNQgXxuJOlqZRc9hIWE3V71jI3DNBeFcAaL17E30s+zDxTrO8LUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747826851; c=relaxed/simple;
	bh=+dz8MEJzeWy8hPhlya/3ZUY2mAMkUHkjyJF33DfG/34=;
	h=From:To:Cc:In-Reply-To:Subject:Date:Message-ID:MIME-Version:
	 Content-Type:References; b=noImWEnfhBX5xbgf4cPYIe3nj+4dz9+HpWc3AFuhFCkofit7OogXnfk2DRg7HIe9nHYSpiBImA3Gg3Xkr+aJE0XcSWkVo+FKTSKt3XTrnNIg1eRGqLlAX9iz1iiL6pIEGFfptM6MSBXftAxMLrFlbngvZq/V9vfVYmSNL0PEshg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=l9PZQdT5; arc=none smtp.client-ip=203.254.224.24
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from epcas5p3.samsung.com (unknown [182.195.41.41])
	by mailout1.samsung.com (KnoxPortal) with ESMTP id 20250521112726epoutp0105161010724e7d4342656ace4043ae2c~Bh0Gz89Ju0436404364epoutp01e
	for <devicetree@vger.kernel.org>; Wed, 21 May 2025 11:27:26 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com 20250521112726epoutp0105161010724e7d4342656ace4043ae2c~Bh0Gz89Ju0436404364epoutp01e
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1747826846;
	bh=vl3yajlFYJh19ijyGDpwJVcyHBKNanD49IYs8BuF3mE=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=l9PZQdT5FM400JC8c1gUdoezGUib72npsaCt+GnoAgm4Sopw/ZL0rAWeQp5culZ5S
	 2iniP4tVUOrpd8bQvWKmdckShWro4dOJoQ18DfIRQUklh1YHiXU24gN6B1w7R3/efv
	 mh6wdfXLkZ0hnLaRYkfkNn2KDReFGgeCaHllW01o=
Received: from epsnrtp04.localdomain (unknown [182.195.42.156]) by
	epcas5p4.samsung.com (KnoxPortal) with ESMTPS id
	20250521112725epcas5p4aa1fbca701d58e50cf676d50e8611e7d~Bh0FwC1IV0397603976epcas5p4L;
	Wed, 21 May 2025 11:27:25 +0000 (GMT)
Received: from epcas5p3.samsung.com (unknown [182.195.38.174]) by
	epsnrtp04.localdomain (Postfix) with ESMTP id 4b2Tfg5BcKz6B9m7; Wed, 21 May
	2025 11:27:23 +0000 (GMT)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPA id
	20250521110904epcas5p2ff2e2297e977703bf1ab672cedcb862c~BhkEH5SSR2735727357epcas5p2S;
	Wed, 21 May 2025 11:09:04 +0000 (GMT)
Received: from epsmgmc1p1new.samsung.com (unknown [182.195.42.40]) by
	epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
	20250521110904epsmtrp2f1fd152e9f172e0305985651e5538eae~BhkEG8BO11051310513epsmtrp29;
	Wed, 21 May 2025 11:09:04 +0000 (GMT)
X-AuditID: b6c32a28-46cef70000001e8a-2f-682db44f77f5
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
	epsmgmc1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
	28.19.07818.F44BD286; Wed, 21 May 2025 20:09:04 +0900 (KST)
Received: from INBRO001840 (unknown [107.122.3.105]) by epsmtip2.samsung.com
	(KnoxPortal) with ESMTPA id
	20250521110901epsmtip2898271c09d575a746038f8201ac54627~BhkBKexXM2298622986epsmtip2N;
	Wed, 21 May 2025 11:09:00 +0000 (GMT)
From: "Pritam Manohar Sutar" <pritam.sutar@samsung.com>
To: "'Krzysztof Kozlowski'" <krzk@kernel.org>, <vkoul@kernel.org>,
	<kishon@kernel.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, <alim.akhtar@samsung.com>,
	<andre.draszik@linaro.org>, <peter.griffin@linaro.org>,
	<kauschluss@disroot.org>, <m.szyprowski@samsung.com>,
	<s.nawrocki@samsung.com>
Cc: <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-samsung-soc@vger.kernel.org>, <rosa.pila@samsung.com>,
	<dev.tailor@samsung.com>, <faraz.ata@samsung.com>,
	<muhammed.ali@samsung.com>, <selvarasu.g@samsung.com>
In-Reply-To: <a584146d-df86-4e40-8a0f-c3b7558fd066@kernel.org>
Subject: RE: [PATCH v2 1/2] dt-bindings: phy: samsung,usb3-drd-phy: add
 dt-schema for ExynosAutov920
Date: Wed, 21 May 2025 16:38:59 +0530
Message-ID: <000101dbca40$c32aee90$4980cbb0$@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQIiRnTfgkV106HBI/lpdza94uXQvgBQmjeRAP0KzpUC9NC6EwLLG322Am4GW9KzBBFtYA==
Content-Language: en-in
X-Brightmail-Tracker: H4sIAAAAAAAAA02Re0hTcRTH+917d3ddjG6b6E8trdFLs9kg8FeY2YMYUVCQUdHKpdcpOV2b
	W09Qe2tRVlruVpo9pi6zmsPWG7ZZWuYobZboEHNYqzTTjPXQmKPwv+853/P9nAOHwgWviVAq
	PTObUWfKM0Qkj6iziSLmrTXPS5t/0IOjrtI6Epk9tQSqftSMIZfFwEVl9mYOcr4t56LfIw4S
	1R8exdFH1kUih+M2F5neOzmo5f5FEhUahwlU4niMoZv2Ti5yfCjgoNslIwQafWjhoiFvF45s
	n49ykL1iAEP3OhrwhCBpY00tJjUZ80lph/MhKa29liM9aTYC6aApfC25mReXwmSk6xh1THwS
	L+1pnlZlFe7+/icPzwXPJxWAAArSC2CvwQsKAI8S0A8AfH+vkOs3psDuc3c4fi2EVSO9XP9Q
	L4D9+T+IAkBRJB0LL9XM9vUDaQcGu0u6cV+B0zYMfitiCX+iDYN6kwvzoQLoeNjAesdWCOkU
	2PKtAvORCHomtHpW+dp8eiHML/tK+vVk2KjvIXwap+dC9zv3f20o/4T7r5sGvW7D2KWB9AZY
	d8jL8c8Ew3rvCbwQCNlxKHYcih2HYsdFLgPCCEIYlUapUCZLVJJMZpdYI1dqtJkKcXKW0gTG
	3h41xwL6hg/EWAFGASuAFC4K5Msqo9ME/BT5nr2MOmubWpvBaKwgjCJEwfwqyUaFgFbIs5kd
	DKNi1P9cjAoIzcXOJcv6Na5j2zw/J4gtAr1sDQ2DhpjVWlx3bOGTvW26DRe+SkeA7E2nvnpJ
	1fQDETW/7oIOm51VylqCirc09enbW9kyuLjCuWV5+OiwKn297MzK4ESiK/LorGUk5wltmZRY
	33Pw+W94Xh/yQnG6NWndAgneVGT/bjxx64jcsOv6zrP840LFxITU9EU3rDPk7erOyOimvP0R
	ceW2XHdSlwHFl4rttCq0/2rxxMfRDWHiL84Vup7q2LCt8CI3p+VwUCUeNTc8I2Tf9cnItXF7
	75VXA42e00WFwamDKTv6XkamfkhK3VSsM283q+8+PeXurPxpnzY89UcCED2LXcrTighNmlwS
	has18r+DrKQ8ZQMAAA==
X-CMS-MailID: 20250521110904epcas5p2ff2e2297e977703bf1ab672cedcb862c
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-Sendblock-Type: REQ_APPROVE
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-542,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250516101800epcas5p49fdae57cdf1fbec0427720ee38b0f925
References: <20250516102650.2144487-1-pritam.sutar@samsung.com>
	<CGME20250516101800epcas5p49fdae57cdf1fbec0427720ee38b0f925@epcas5p4.samsung.com>
	<20250516102650.2144487-2-pritam.sutar@samsung.com>
	<0615877e-247a-419b-b4d6-de377cb40914@kernel.org>
	<000001dbca1c$636ca080$2a45e180$@samsung.com>
	<a584146d-df86-4e40-8a0f-c3b7558fd066@kernel.org>

Hi Krzysztof,=20

> -----Original Message-----
> From: Krzysztof Kozlowski <krzk=40kernel.org>
> Sent: 21 May 2025 02:15 PM
> To: Pritam Manohar Sutar <pritam.sutar=40samsung.com>; vkoul=40kernel.org=
;
> kishon=40kernel.org; robh=40kernel.org; krzk+dt=40kernel.org;
> conor+dt=40kernel.org; alim.akhtar=40samsung.com; andre.draszik=40linaro.=
org;
> peter.griffin=40linaro.org; kauschluss=40disroot.org;
> m.szyprowski=40samsung.com; s.nawrocki=40samsung.com
> Cc: linux-phy=40lists.infradead.org; devicetree=40vger.kernel.org; linux-
> kernel=40vger.kernel.org; linux-arm-kernel=40lists.infradead.org; linux-s=
amsung-
> soc=40vger.kernel.org; rosa.pila=40samsung.com; dev.tailor=40samsung.com;
> faraz.ata=40samsung.com; muhammed.ali=40samsung.com;
> selvarasu.g=40samsung.com
> Subject: Re: =5BPATCH v2 1/2=5D dt-bindings: phy: samsung,usb3-drd-phy: a=
dd dt-
> schema for ExynosAutov920
>=20
> On 21/05/2025 08:48, Pritam Manohar Sutar wrote:
> >>> diff --git
> >>> a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
> >>> b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
> >>> index fdddddc7d611..c50f4218ded9 100644
> >>> ---
> >>> a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
> >>> +++ b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yam
> >>> +++ l
> >>> =40=40 -32,6 +32,7 =40=40 properties:
> >>>        - samsung,exynos7-usbdrd-phy
> >>>        - samsung,exynos7870-usbdrd-phy
> >>>        - samsung,exynos850-usbdrd-phy
> >>> +      - samsung,exynosautov920-usb31drd-phy
> >>>
> >>>    clocks:
> >>>      minItems: 2
> >>> =40=40 -204,6 +205,32 =40=40 allOf:
> >>>          reg-names:
> >>>            maxItems: 1
> >>>
> >>> +  - if:
> >>> +      properties:
> >>> +        compatible:
> >>> +          contains:
> >>> +            const: samsung,exynosautov920-usb31drd-phy
> >>> +    then:
> >>> +      =24ref: /schemas/usb/usb-switch.yaml=23
> >>> +
> >>> +      properties:
> >>> +        clocks:
> >>> +          items:
> >>
> >> Why there is no main PHY clock?
> >
> > external crystal clk (ext_xtal) is used as main phy clk.
>=20
> So this is the main phy clock? This describes the clock input, not what y=
ou have
> on your board. If you change external crystal to internal clock in one de=
sign, you
> change the binding? No, this makes no sense.
>=20
>=20

Yes, this is the main phy clock. Will revisit the binding and try reusing e=
xisting one.

>=20
> Best regards,
> Krzysztof

Thank you,
Pritam


