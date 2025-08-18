Return-Path: <devicetree+bounces-205944-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B9509B2AF2F
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 19:18:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A80DF2A42E7
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 17:18:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86338258EFF;
	Mon, 18 Aug 2025 17:18:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="rG85scs/"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout1.samsung.com (mailout1.samsung.com [203.254.224.24])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF0AF1F91C8
	for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 17:18:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.254.224.24
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755537527; cv=none; b=ihlFLAzdXDG3KxzDOiRcrxoe/yPnzF78ExwJWxGfEi3FBjGD4h6ZdhxWlCcQ48KVMi25rLa8OxYzbdPvFiG4o3x2BqvkGEO/NqrwYKYQrIcX4HXIbXf4uvEaQoOjWNegRBj2FAdCEll5xPM7pAEEJ/vh7baGAYO2UN9l0ut16is=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755537527; c=relaxed/simple;
	bh=6OcDvLVx7ZKerMd+/2uswYan9YURramDttO59ACGzkc=;
	h=From:To:Cc:In-Reply-To:Subject:Date:Message-ID:MIME-Version:
	 Content-Type:References; b=kXCYxFZPJM9KQ3Qh9TOm4N/ig4WLxLbJa19Nn0J/iRTnVBcJTn+sF4a9PAQ9SM5vBQAD/5iz9SriIWzPiqOCiET95/B2M43fEPc6+M6or0zJUyIWl942vNwbsHB71H01t+3HrGSWPjRBAZAFfdjoZs2pckDEiGPraKjcw4L+fKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=rG85scs/; arc=none smtp.client-ip=203.254.224.24
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from epcas5p2.samsung.com (unknown [182.195.41.40])
	by mailout1.samsung.com (KnoxPortal) with ESMTP id 20250818171843epoutp017165e66ed68997968bbc80c7d04e1cb6~c7BOm8Rnk1352713527epoutp01E
	for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 17:18:43 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com 20250818171843epoutp017165e66ed68997968bbc80c7d04e1cb6~c7BOm8Rnk1352713527epoutp01E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1755537523;
	bh=DXam3b+H7XikahUHcOfNq3UHS4W6/E59lS1R/vF9/E8=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=rG85scs/c0zeFc4WXF+++MTw7Jfxe2Xt8C+L7JQYTAYdJhjA4NQD3HaBCpS7AVHpD
	 kdNLyDMfS/Trvi2n+UkkTKZJI6PvpIZCz0HIa4J4YxyJuwIQaDFOmx2RUtw1Th8ZTy
	 420nxNjZ3tpIRAbz0h7hVPB4j9es6rEFzD9VQx24=
Received: from epsnrtp04.localdomain (unknown [182.195.42.156]) by
	epcas5p4.samsung.com (KnoxPortal) with ESMTPS id
	20250818171842epcas5p4009ecff833c293e3066ff39d03bc290a~c7BNgSI6N0869708697epcas5p4R;
	Mon, 18 Aug 2025 17:18:42 +0000 (GMT)
Received: from epcas5p4.samsung.com (unknown [182.195.38.87]) by
	epsnrtp04.localdomain (Postfix) with ESMTP id 4c5KDx5WGSz6B9m5; Mon, 18 Aug
	2025 17:18:41 +0000 (GMT)
Received: from epsmtip2.samsung.com (unknown [182.195.34.31]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPA id
	20250818085434epcas5p23546464f6d2642c74d42db7b134d8aec~c0JCsYmhE2142121421epcas5p2S;
	Mon, 18 Aug 2025 08:54:34 +0000 (GMT)
Received: from FDSFTE462 (unknown [107.122.81.248]) by epsmtip2.samsung.com
	(KnoxPortal) with ESMTPA id
	20250818085431epsmtip2b7a1352fc6b7055557af8d1d093782bf~c0I--9NYD2484224842epsmtip2X;
	Mon, 18 Aug 2025 08:54:31 +0000 (GMT)
From: "Shradha Todi" <shradha.t@samsung.com>
To: "'Krzysztof Kozlowski'" <krzk@kernel.org>, <linux-pci@vger.kernel.org>,
	<devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-samsung-soc@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-phy@lists.infradead.org>
Cc: <mani@kernel.org>, <lpieralisi@kernel.org>, <kwilczynski@kernel.org>,
	<robh@kernel.org>, <bhelgaas@google.com>, <jingoohan1@gmail.com>,
	<krzk+dt@kernel.org>, <conor+dt@kernel.org>, <alim.akhtar@samsung.com>,
	<vkoul@kernel.org>, <kishon@kernel.org>, <arnd@arndb.de>,
	<m.szyprowski@samsung.com>, <jh80.chung@samsung.com>,
	<pankaj.dubey@samsung.com>
In-Reply-To: <b22f9381-1835-463a-8daa-97835b159f78@kernel.org>
Subject: RE: [PATCH v3 12/12] arm64: dts: fsd: Add PCIe support for Tesla
 FSD SoC
Date: Mon, 18 Aug 2025 14:24:30 +0530
Message-ID: <000b01dc101d$b834db40$289e91c0$@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQHWPHKmIG2WTsjb/5pkHKJ2GfeRPwIotln8AZEe0jECYiuDgLRC4i+g
Content-Language: en-in
X-CMS-MailID: 20250818085434epcas5p23546464f6d2642c74d42db7b134d8aec
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-Sendblock-Type: REQ_APPROVE
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-541,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250811154746epcas5p261ba0c811f9dd8748f8f241b76be6525
References: <20250811154638.95732-1-shradha.t@samsung.com>
	<CGME20250811154746epcas5p261ba0c811f9dd8748f8f241b76be6525@epcas5p2.samsung.com>
	<20250811154638.95732-13-shradha.t@samsung.com>
	<b22f9381-1835-463a-8daa-97835b159f78@kernel.org>

> > +&pcieep2 {
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&pcie1_clkreq>, <&pcie1_wake>, <&pcie1_preset>,
> > +			<&pcie0_slot1>;
> > +};
> > +
> > +&pcierc0 {
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&pcie0_clkreq>, <&pcie0_wake0>, <&pcie0_preset0>,
> > +			 <&pcie0_slot0>;
> > +};
> > +
> > +&pcieep0 {
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&pcie0_clkreq>, <&pcie0_wake0>, <&pcie0_preset0>,
> > +			 <&pcie0_slot0>;
> > +};
> > +
> > +&pcierc1 {
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&pcie0_clkreq>, <&pcie0_wake1>, <&pcie0_preset0>;
> > +};
> > +
> > +&pcieep1 {
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&pcie0_clkreq>, <&pcie0_wake1>, <&pcie0_preset0>;
> 
> 
> All these are pointless, because the node is disabled. The board level
> should be complete, so also supplies and enabling the device.
> 

I will enable required nodes. Had enabled while testing but missed to
add in patch. Though all nodes will not be enabled as it is a dual-mode
controller and cannot run as both RC and EP at the same time.

> Best regards,
> Krzysztof


