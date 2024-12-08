Return-Path: <devicetree+bounces-128250-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 78FBC9E8314
	for <lists+devicetree@lfdr.de>; Sun,  8 Dec 2024 03:08:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 60715165BF1
	for <lists+devicetree@lfdr.de>; Sun,  8 Dec 2024 02:08:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D16D17758;
	Sun,  8 Dec 2024 02:08:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="lQ068TEs"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout2.samsung.com (mailout2.samsung.com [203.254.224.25])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CE2CC149
	for <devicetree@vger.kernel.org>; Sun,  8 Dec 2024 02:07:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.254.224.25
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733623680; cv=none; b=NwjjaCBFmenn9sDeTuRhC6BvfmZuLyGtmP4KJpUHKgScQroc4HT2424Dna1fXkEWG2tJm4DTQKUM/m1zlgjiAPdV7U3JyiMRe3LjnLmE2SXWEWfEu3Z+cQd3Y9tsN48olVr3VtdrlXIcT0ZJkD/hsQ9aojS+Xglt9zb07eCv03w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733623680; c=relaxed/simple;
	bh=2ioJLEOimHcS5qn3zuVKILz8+vlv36OyYE/D8F7NJh8=;
	h=From:To:Cc:In-Reply-To:Subject:Date:Message-ID:MIME-Version:
	 Content-Type:References; b=DvEJbKFF8rxAerZ17om8fyGybzhHQMkglAnhNo9Yhnde3yPsH44R5GX52TG9PLilQmUl532g/cG4NrTD0hezUKAQpJbwiz6fKVDI3yCsItRLiU8tUS9Ip4E31Sse13vWspXNHlxEG4C2cl8a+1g85TbrE6W46znwZ+g+sw0BrWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=lQ068TEs; arc=none smtp.client-ip=203.254.224.25
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from epcas5p1.samsung.com (unknown [182.195.41.39])
	by mailout2.samsung.com (KnoxPortal) with ESMTP id 20241208020749epoutp02236e8040e959b577fae1bb590371e711~PEYrB1Oed0192001920epoutp02t
	for <devicetree@vger.kernel.org>; Sun,  8 Dec 2024 02:07:49 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com 20241208020749epoutp02236e8040e959b577fae1bb590371e711~PEYrB1Oed0192001920epoutp02t
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1733623669;
	bh=KLKyQnrF5x93Vn+g5TnewvjfKvBfI76WnJygwdw0hVE=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=lQ068TEsb14Qt2IAbOxt08K/q1IPU33JZc9siaGJ4R0CB+evzIt54ba+rPbpZE8XO
	 tiawwqSmkRUNaYhK4sns2UsJta20unfid1+z5uuh6Kx3t9zNgbqPXbiaD0GD6YPrH0
	 05JM6wBul1oJV9BEBo/k63UGeftS+BtRmrpL1/r4=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
	epcas5p4.samsung.com (KnoxPortal) with ESMTP id
	20241208020748epcas5p47a267cd9724258ead187b5351ef77e4c~PEYqcoTaO2944129441epcas5p4p;
	Sun,  8 Dec 2024 02:07:48 +0000 (GMT)
Received: from epsmges5p1new.samsung.com (unknown [182.195.38.178]) by
	epsnrtp4.localdomain (Postfix) with ESMTP id 4Y5T0g3XvGz4x9Pw; Sun,  8 Dec
	2024 02:07:47 +0000 (GMT)
Received: from epcas5p4.samsung.com ( [182.195.41.42]) by
	epsmges5p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
	E2.BC.20052.37FF4576; Sun,  8 Dec 2024 11:07:47 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
	epcas5p4.samsung.com (KnoxPortal) with ESMTPA id
	20241208020746epcas5p4ad06deac63f0f0e684f3fa2e0153e7d3~PEYoT8nZZ0889108891epcas5p4z;
	Sun,  8 Dec 2024 02:07:46 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
	epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
	20241208020746epsmtrp12d808f1a8f2c3d155f54aa8b1ccfa648~PEYoTSpG20269902699epsmtrp1I;
	Sun,  8 Dec 2024 02:07:46 +0000 (GMT)
X-AuditID: b6c32a49-3fffd70000004e54-70-6754ff73a69d
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
	epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
	CC.10.18949.27FF4576; Sun,  8 Dec 2024 11:07:46 +0900 (KST)
Received: from INBRO002756 (unknown [107.122.12.5]) by epsmtip1.samsung.com
	(KnoxPortal) with ESMTPA id
	20241208020745epsmtip1b959213a34c4853655a97200e8f779f2~PEYnKg_W62769927699epsmtip14;
	Sun,  8 Dec 2024 02:07:44 +0000 (GMT)
From: "Alim Akhtar" <alim.akhtar@samsung.com>
To: "'Faraz Ata'" <faraz.ata@samsung.com>, <devicetree@vger.kernel.org>,
	<linux-samsung-soc@vger.kernel.org>, <krzk+dt@kernel.org>, <robh@kernel.org>
Cc: <linux-arm-kernel@lists.infradead.org>, <rosa.pila@samsung.com>
In-Reply-To: <20241204122335.1578-1-faraz.ata@samsung.com>
Subject: RE: [PATCH] arm64: dts: exynosautov920: add DMA nodes
Date: Sun, 8 Dec 2024 07:37:43 +0530
Message-ID: <141801db4915$f8ffb4d0$eaff1e70$@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQFjpTq5mUG5UMRch2oPlNEF/ignPQHSFX3Ys7xQWvA=
Content-Language: en-us
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprMJsWRmVeSWpSXmKPExsWy7bCmlm7x/5B0g94Pkhbzj5xjtbh2YyG7
	xctZ99gsNj2+xmox4/w+Jov/e3awW3z5+YDZgd1j06pONo/NS+o9+rasYvT4vEkugCUq2yYj
	NTEltUghNS85PyUzL91WyTs43jne1MzAUNfQ0sJcSSEvMTfVVsnFJ0DXLTMH6AAlhbLEnFKg
	UEBicbGSvp1NUX5pSapCRn5xia1SakFKToFJgV5xYm5xaV66Xl5qiZWhgYGRKVBhQnbGh1dP
	2Qoes1XcO3ubrYHxImsXIweHhICJRN/6oC5GLg4hgd2MEk9m/2DsYuQEcj4xSpy8ngiR+MYo
	seTdXXaQBEjD0pnn2CESexkl/kxdzwThvGCUeLZ1LVgVm4CuxI7FbWwgCRGB6YwSL6bdYQNJ
	MAs4S6x9e5sJZDengJXEnQ0BIGFhATuJOS2/mUFsFgEViSm/fzGB2LwClhJzm9+wQtiCEidn
	PmGBGCMvsf3tHGaIixQkfj5dBlYjAjRy0prTUDXiEi+PHgG7VEKgl0Pi2rOdLBANLhKTtp1n
	hLCFJV4d3wL1mpTEy/42KDtb4vjFWWwQdoVEd+tHqLi9xM5HN1lA7mcW0JRYv0sfYhefRO/v
	J0yQIOWV6GgTgqhWlWh+dxVqq7TExO5uVgjbQ+Ji5yamCYyKs5B8NgvJZ7OQfDALYdkCRpZV
	jJKpBcW56anFpgWGeanl8OhOzs/dxAhOnVqeOxjvPvigd4iRiYPxEKMEB7OSCG9lWGC6EG9K
	YmVValF+fFFpTmrxIUZTYHBPZJYSTc4HJu+8knhDE0sDEzMzMxNLYzNDJXHe161zU4QE0hNL
	UrNTUwtSi2D6mDg4pRqY5jVNmKmy5ejERdsFTNzFE5bfq51pkOR0PVuTn2eR4dMnPd4M3MkO
	+lJOV2Inn7qXyiSZ87Q/XqDwtvP5GPd33Q/zGQImtfk5LvpabH3sYcuZj68rXfUMnuf9Fmr8
	0hWfmXs44E2LlspRPYHe5vTnsmvlOJ8HdvRuMX9x3+jeiQhm0ymFq2INz8udnzj5zYKPe7bt
	9atrjhN88vhwxrbJ3Cv//t57S1rJ84Hi1Vt6fIlsP1pCzSU4D2Tm2wd2mdU0b1Zy0dJNyHtz
	fqXS6xn/mNJsZpzVfcXsLpo6NbKstGkn/23DUw8/L1891z6/gkfR7JqFpLXowva1DblHt83+
	E6H717LTRr7H3OHQUnYlluKMREMt5qLiRAASlYYjJgQAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrHLMWRmVeSWpSXmKPExsWy7bCSnG7R/5B0g69XOS3mHznHanHtxkJ2
	i5ez7rFZbHp8jdVixvl9TBb/9+xgt/jy8wGzA7vHplWdbB6bl9R79G1ZxejxeZNcAEsUl01K
	ak5mWWqRvl0CV8aHV0/ZCh6zVdw7e5utgfEiaxcjJ4eEgInE0pnn2LsYuTiEBHYzSky+s5sZ
	IiEtcX3jBHYIW1hi5b/nUEXPGCX2vN7FCJJgE9CV2LG4jQ0kISIwl1Hi4Y3fbCAJZgFXiS3/
	vrJBdHQzSjy+ewVoLAcHp4CVxJ0NASA1wgJ2EnNafoNtYxFQkZjy+xcTiM0rYCkxt/kNK4Qt
	KHFy5hMWiJnaEk9vPoWy5SW2v50DdamCxM+ny8DqRYDGT1pzGqpGXOLl0SPsExiFZyEZNQvJ
	qFlIRs1C0rKAkWUVo2RqQXFuem6xYYFRXmq5XnFibnFpXrpecn7uJkZwFGlp7WDcs+qD3iFG
	Jg7GQ4wSHMxKIryVYYHpQrwpiZVVqUX58UWlOanFhxilOViUxHm/ve5NERJITyxJzU5NLUgt
	gskycXBKNTCZbpnPnXmCT/NLy5u/N76m1J7Z1N53mJ+R6ar3M227WD++Z3n2omc8b9Qt452w
	94LS5YIFD/c1/8r85/X/xvR3ng+/rD7JtvDtz0cfvbXdpLNX7KguNJi5TPdzS0/5swXioaHB
	ojq9K07O7pV5f7Pi8GmlgBN710xINk3xv9kgsIdp69lIIYF9wZNWsMRMYp2Xeip1xTsbuR7h
	1mizBXFvJjHJdZxKcVh35u0izzu9O1OuaiZcP3FOPX6ueeLmBxJTFd6untMdoZgRb7tLvKb5
	8ZOtLwuEJC99EN3U+vT+z4U/5xubqp398mymK8OFov5XZoGlfScuZ7hFzClOFc4VW/Mizi6p
	7+jif3vzFOwTlFiKMxINtZiLihMB3PCpshEDAAA=
X-CMS-MailID: 20241208020746epcas5p4ad06deac63f0f0e684f3fa2e0153e7d3
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
CMS-TYPE: 105P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20241204122402epcas5p2412733eb46d495fadfa30e5af3c5ce83
References: <CGME20241204122402epcas5p2412733eb46d495fadfa30e5af3c5ce83@epcas5p2.samsung.com>
	<20241204122335.1578-1-faraz.ata@samsung.com>

Hi Faraz,

> -----Original Message-----
> From: Faraz Ata <faraz.ata@samsung.com>
> Sent: Wednesday, December 4, 2024 5:54 PM
> To: devicetree@vger.kernel.org; linux-samsung-soc@vger.kernel.org;
> krzk+dt@kernel.org; robh@kernel.org
> Cc: linux-arm-kernel@lists.infradead.org; alim.akhtar@samsung.com;
> rosa.pila@samsung.com; Faraz Ata <faraz.ata@samsung.com>
> Subject: [PATCH] arm64: dts: exynosautov920: add DMA nodes
> 
> ExynosAutov920 SoC has 7 DMA controllers. Two secure DMAC
> (SPDMA0 & SPDMA1) and five non-secure DMAC (PDMA0 to PDMA4).
> Adds the required dt node for the same.
> 
> Signed-off-by: Faraz Ata <faraz.ata@samsung.com>
> ---

Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>

>  .../arm64/boot/dts/exynos/exynosautov920.dtsi | 63
> +++++++++++++++++++
>  1 file changed, 63 insertions(+)
>
.
.
.
 
> 2.34.1



