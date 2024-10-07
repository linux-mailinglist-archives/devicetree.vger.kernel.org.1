Return-Path: <devicetree+bounces-108341-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B8F149925C5
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 09:15:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EF9FEB23846
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 07:15:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C302C172777;
	Mon,  7 Oct 2024 07:13:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="I47RHCMW"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout3.samsung.com (mailout3.samsung.com [203.254.224.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4F5A170854
	for <devicetree@vger.kernel.org>; Mon,  7 Oct 2024 07:13:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.254.224.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728285224; cv=none; b=ISRp7J4LuQ7FP75xpHS/SMQ6HnVfrRnEU7yQz00OUilrfJoT3FXxMtlgoNXHA/l99gHVZ9vjXgW/nfpGMDcX2kbLUkLGlUemUjcnYsCZfb6PAbGi9dM3ZQo6tPaQyf95+v9Vf0iT8ZxsOEQATAM0wMUjzGrywJlTOQiq4DNo45Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728285224; c=relaxed/simple;
	bh=zmrMt3XYyv2Uj4lLMTmDOs3aG1zFJbJCuPA0W9VUiYU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type:
	 References; b=jeRwb/A6E8TTRVGT8MGMBE8OYn/NeISAPqwm79BQoYqIE5eAENBbs/hwLMR4KlkXbktOiaQ2ELV0PYzmaCty99Vq9C6tNlSCUWI7otMFUfKE1juYKvIyzgjYvtHKMD7RkJMajC780/7mIVoCbBFwWnFMvi7dSTFPz+NwCpn+Dyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=I47RHCMW; arc=none smtp.client-ip=203.254.224.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from epcas2p1.samsung.com (unknown [182.195.41.53])
	by mailout3.samsung.com (KnoxPortal) with ESMTP id 20241007071339epoutp03eec7c937a3af21a250daf6decbe181ab~8GkAck5Zv2088320883epoutp03R
	for <devicetree@vger.kernel.org>; Mon,  7 Oct 2024 07:13:39 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com 20241007071339epoutp03eec7c937a3af21a250daf6decbe181ab~8GkAck5Zv2088320883epoutp03R
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1728285219;
	bh=CFW3gUil44XBVe30jBZdUdrPggHOfezLZgTYNix0LA0=;
	h=From:To:Cc:Subject:Date:References:From;
	b=I47RHCMWCp/xPpgvEz0UdhVh2thl7quL63wQsuTq1gj/oYJbPzDwNIvw7mB6hC1yN
	 267O2ZNdfJG8im9l9Vpz06EsRSSqfQeRxk7kT7Q8v6Xe8GSpH1C9g1F4H1NfSAUJq5
	 N/WVGQJYWwMK5T69oaaN1c7LMzdCNGQOeeQXFfJ0=
Received: from epsnrtp2.localdomain (unknown [182.195.42.163]) by
	epcas2p1.samsung.com (KnoxPortal) with ESMTP id
	20241007071339epcas2p1e03d382f7c40c99d2f7ef4b25b083c9c~8Gj-9-0JR0691506915epcas2p1W;
	Mon,  7 Oct 2024 07:13:39 +0000 (GMT)
Received: from epsmges2p4.samsung.com (unknown [182.195.36.98]) by
	epsnrtp2.localdomain (Postfix) with ESMTP id 4XMVkB5W1Gz4x9Px; Mon,  7 Oct
	2024 07:13:38 +0000 (GMT)
Received: from epcas2p2.samsung.com ( [182.195.41.54]) by
	epsmges2p4.samsung.com (Symantec Messaging Gateway) with SMTP id
	71.E4.09811.22A83076; Mon,  7 Oct 2024 16:13:38 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
	epcas2p2.samsung.com (KnoxPortal) with ESMTPA id
	20241007071338epcas2p240e751a9d59f1cfa11515c90e2d8e991~8Gj-JRGQ61941819418epcas2p2w;
	Mon,  7 Oct 2024 07:13:38 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
	epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
	20241007071338epsmtrp1ebb1e9d2aeef5e37e9437ca066e1a20b~8Gj-IYK8q1386213862epsmtrp1I;
	Mon,  7 Oct 2024 07:13:38 +0000 (GMT)
X-AuditID: b6c32a48-0869ea8000002653-68-67038a22066b
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
	epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
	FB.18.08227.22A83076; Mon,  7 Oct 2024 16:13:38 +0900 (KST)
Received: from localhost.localdomain (unknown [10.229.9.60]) by
	epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20241007071337epsmtip222e3299ac0a90584dab9abc60fd44f3e~8Gj_5Q_t71371013710epsmtip2_;
	Mon,  7 Oct 2024 07:13:37 +0000 (GMT)
From: Sunyeal Hong <sunyeal.hong@samsung.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, Sylwester Nawrocki
	<s.nawrocki@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>, Alim Akhtar
	<alim.akhtar@samsung.com>, Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, Conor Dooley
	<conor+dt@kernel.org>
Cc: linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, Sunyeal Hong <sunyeal.hong@samsung.com>
Subject: [PATCH v1 0/3] add clocks support for exynosauto v920 SoC
Date: Mon,  7 Oct 2024 16:13:30 +0900
Message-ID: <20241007071333.3011125-1-sunyeal.hong@samsung.com>
X-Mailer: git-send-email 2.46.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprPJsWRmVeSWpSXmKPExsWy7bCmma5SF3O6wYVtGhYP5m1js1iz9xyT
	xfUvz1kt5h85x2px/vwGdotNj6+xWnzsucdqcXnXHDaLGef3MVlcPOVq8X/PDnaLw2/aWS3+
	XdvIYtG0bD2TA5/H+xut7B6bVnWyeWxeUu/Rt2UVo8fnTXIBrFHZNhmpiSmpRQqpecn5KZl5
	6bZK3sHxzvGmZgaGuoaWFuZKCnmJuam2Si4+AbpumTlAdyoplCXmlAKFAhKLi5X07WyK8ktL
	UhUy8otLbJVSC1JyCswL9IoTc4tL89L18lJLrAwNDIxMgQoTsjOOXisu2Mhasei7ZQPjHJYu
	Rk4OCQETib6+p2xdjFwcQgI7GCUOvZrFDuF8YpSYu/87C4TzjVGir2kNXMunSf+ZIBJ7GSXO
	tX6C6v/IKHH42w3mLkYODjYBXYk//xxA4iICe5gktpxfAtbBLHCWUeLunAXsIKOEBZwkpj5c
	xghiswioSqx+OpUFpJlXwF7ienMKxDZ5ieuPjzKB2LwCghInZz4Bu4IZKN68dTYzyEwJgVYO
	if+bnjJBNLhIPDpziBnCFpZ4dXwLO4QtJfGyvw3KzpeYfP0tE0RzA6PEtX/dUA32EovO/GQH
	OYJZQFNi/S59EFNCQFniyC2ovXwSHYf/skOEeSU62oQgGtUkPl25DDVERuLYiWdQtodE88Lb
	YB8KCcRKPH15hWUCo/wsJN/MQvLNLIS9CxiZVzGKpRYU56anFhsVmMDjNDk/dxMjOKVqeexg
	nP32g94hRiYOxkOMEhzMSiK8EWsY04V4UxIrq1KL8uOLSnNSiw8xmgKDdyKzlGhyPjCp55XE
	G5pYGpiYmRmaG5kamCuJ895rnZsiJJCeWJKanZpakFoE08fEwSnVwDT78qcrzK6ty2M9Xc6a
	x3GofU6sWnxh+03LrGdG51NvxC0JNtULd1xy5c+iV5EL2i59u8RUkHFhAiuDff8WlSq73LC4
	lcv6u55XbW+/eylvzVt7Z13riLq2uof8tpfy068wlT2Z0TQ906J38q3HNiqrWQ/xzkg7u/PG
	58yTUZ1e7LmGVz+f2TbtmMOEpVJfPl9ZJK3dMplt09xfrWwyH3KWGWWusw1w5Hiq21Q2a/Ls
	/O4eprtHjxpW/4vfW77qToCm/h4eo7drdrxcd5s1Y+8E7Q138rVTDmlNsuhZxVDj1Ta5uDCP
	UcqhYLfN65N755XFmfW8Epgi0Pplq3nBtr1R8bneBx487ytpuhLqt12JpTgj0VCLuag4EQDS
	1ZmnMgQAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrHLMWRmVeSWpSXmKPExsWy7bCSvK5SF3O6wbNXXBYP5m1js1iz9xyT
	xfUvz1kt5h85x2px/vwGdotNj6+xWnzsucdqcXnXHDaLGef3MVlcPOVq8X/PDnaLw2/aWS3+
	XdvIYtG0bD2TA5/H+xut7B6bVnWyeWxeUu/Rt2UVo8fnTXIBrFFcNimpOZllqUX6dglcGUev
	FRdsZK1Y9N2ygXEOSxcjJ4eEgInEp0n/mboYuTiEBHYzSjzas5INIiEjsbHhPzuELSxxv+UI
	K0TRe0aJHS9PM3cxcnCwCehK/PnnABIXETjEJDHx81MWEIdZ4DKjxLG7k5lBuoUFnCSmPlzG
	CGKzCKhKrH46lQWkmVfAXuJ6cwrEAnmJ64+PMoHYvAKCEidnPgG7jhko3rx1NvMERr5ZSFKz
	kKQWMDKtYpRMLSjOTc8tNiwwykst1ytOzC0uzUvXS87P3cQIDnItrR2Me1Z90DvEyMTBeIhR
	goNZSYQ3Yg1juhBvSmJlVWpRfnxRaU5q8SFGaQ4WJXHeb697U4QE0hNLUrNTUwtSi2CyTByc
	Ug1M5947503wOPZYbX+f1O151+uMN4YE1DLX376wueXCl4rPt24bLf4/9fORDJ6LPxSeZawo
	jn3xodDC8fFn/onpb42VznDmOIf4PH/r5VefWlxd5f9m0cT0iVsSxLb8/28Zwqf3POZqgccV
	wYVvbecZNG6tnXNW1Ewx8VyER0GRw8Q/h6YwftyXZi+Y/oWX5dnzL6e7ub63p8ZoSBl/u8Za
	OYm3a+tV99kLnR3VTm5p7l6++PTXSY/O/9wrcuEK94dzLBfTfbXafyy3urgi4NlD+bx3isxa
	GVcZj2pyJRtd5jgbH/Nvlvtjdgaj3Duerc/5dXSrt+StPiZVtsJ77ZysSNFnqmkbEtQvPqrT
	fGK7TImlOCPRUIu5qDgRAHM2PM3hAgAA
X-CMS-MailID: 20241007071338epcas2p240e751a9d59f1cfa11515c90e2d8e991
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20241007071338epcas2p240e751a9d59f1cfa11515c90e2d8e991
References: <CGME20241007071338epcas2p240e751a9d59f1cfa11515c90e2d8e991@epcas2p2.samsung.com>

This patchset adds the CMU block below to support exynosauto v920 SoC.
- CMU_PERIC1
- CMU_MISC
- CMU_HSI0/1

Changes in v1:
 - Rebase the patch to reflect the latest fixes

Sunyeal Hong (3):
  dt-bindings: clock: exynosautov920: add peric1, misc and hsi0/1 clock
    definitions
  clk: samsung: exynosautov920: add peric1, misc and hsi0/1 clock
    support
  arm64: dts: exynosautov920: add peric1, misc and hsi0/1 clock DT nodes

 .../arm64/boot/dts/exynos/exynosautov920.dtsi |  50 +++
 drivers/clk/samsung/clk-exynosautov920.c      | 290 ++++++++++++++++++
 .../clock/samsung,exynosautov920.h            |  47 +++
 3 files changed, 387 insertions(+)

-- 
2.46.0


