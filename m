Return-Path: <devicetree+bounces-11771-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B453A7D68D9
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 12:36:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D74A11C20D82
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 10:36:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22DBB266A4;
	Wed, 25 Oct 2023 10:36:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="vVVUdOVu"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A447426E0E
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 10:36:38 +0000 (UTC)
Received: from mailout3.samsung.com (mailout3.samsung.com [203.254.224.33])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0496910F3
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 03:36:15 -0700 (PDT)
Received: from epcas5p4.samsung.com (unknown [182.195.41.42])
	by mailout3.samsung.com (KnoxPortal) with ESMTP id 20231025103613epoutp03d0f8b52e06bead2a48d375f61f57eb15~RU1h5lW4y0489704897epoutp038
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 10:36:13 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com 20231025103613epoutp03d0f8b52e06bead2a48d375f61f57eb15~RU1h5lW4y0489704897epoutp038
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1698230173;
	bh=+dA8CLW4Uw8h0Ln1czVzzbczb8qavjLH60g5Jc7kYyw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=vVVUdOVu3LbR84JGEJ8xWvqYwz5UiE5hwWmOC6sW4XoVTCiB1MVB5Yw0KTZ6c/SBW
	 jhRkanfWmFrXfo9ydWGuuLyZuBqsp6ZdhbtCdBtrUqorin2YFhNAJKoeZdZjyJh2e/
	 GEe7zla2hWhBcJ8ve0SQpqf2a5XeI7AtkrxccPww=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTP id
	20231025103613epcas5p15db7cbe1e16d0e37638b54422f0ca90d~RU1hZGkFZ1081410814epcas5p1o;
	Wed, 25 Oct 2023 10:36:13 +0000 (GMT)
Received: from epsmgec5p1-new.samsung.com (unknown [182.195.38.178]) by
	epsnrtp4.localdomain (Postfix) with ESMTP id 4SFlhW3C0Bz4x9Pq; Wed, 25 Oct
	2023 10:36:11 +0000 (GMT)
Received: from epcas5p3.samsung.com ( [182.195.41.41]) by
	epsmgec5p1-new.samsung.com (Symantec Messaging Gateway) with SMTP id
	88.CC.19369.B9FE8356; Wed, 25 Oct 2023 19:36:11 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPA id
	20231025102307epcas5p1fde3d5b0095477a8a565ce9f913e71e5~RUqFaTSRw2161721617epcas5p1t;
	Wed, 25 Oct 2023 10:23:07 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
	epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
	20231025102307epsmtrp2323b7bc00be62113e6cee87603f9b293~RUqFZTlBB0922409224epsmtrp2O;
	Wed, 25 Oct 2023 10:23:07 +0000 (GMT)
X-AuditID: b6c32a50-9e1ff70000004ba9-52-6538ef9bbc16
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
	epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
	48.D0.08817.B8CE8356; Wed, 25 Oct 2023 19:23:07 +0900 (KST)
Received: from cheetah.sa.corp.samsungelectronics.net (unknown
	[107.109.115.53]) by epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20231025102304epsmtip1bc37362777751d2e605797d915a1a2e2~RUqCS8_Hv0719407194epsmtip1l;
	Wed, 25 Oct 2023 10:23:03 +0000 (GMT)
From: Aakarsh Jain <aakarsh.jain@samsung.com>
To: linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Cc: m.szyprowski@samsung.com, andrzej.hajda@intel.com, mchehab@kernel.org,
	hverkuil-cisco@xs4all.nl, krzysztof.kozlowski+dt@linaro.org,
	dillon.minfei@gmail.com, david.plowman@raspberrypi.com,
	mark.rutland@arm.com, robh+dt@kernel.org, conor+dt@kernel.org,
	linux-samsung-soc@vger.kernel.org, andi@etezian.org, gost.dev@samsung.com,
	alim.akhtar@samsung.com, aswani.reddy@samsung.com, pankaj.dubey@samsung.com,
	ajaykumar.rs@samsung.com, aakarsh.jain@samsung.com, linux-fsd@tesla.com,
	Smitha T Murthy <smithatmurthy@gmail.com>
Subject: [Patch v4 11/11] arm64: dts: fsd: Add MFC related DT enteries
Date: Wed, 25 Oct 2023 15:52:16 +0530
Message-Id: <20231025102216.50480-12-aakarsh.jain@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20231025102216.50480-1-aakarsh.jain@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VTa0ybVRjO+b7eINR9diyc1IFNHSQgZVRoORjYVNj2GfiBUXcxBmzoF0oo
	bdPLQI0ZMNgckcvIYMCAbdzlTqEdkALlJhvG4ZBBVBiDgoMiLtJtMi5qS0H/Ped5nzfP+z7n
	HBbOmWJwWYkKLaVWSOR8hivNOOTrK7jxFFGB8yUctNRVQkfmpwM09LjCyEBVG08wNFdlo6HB
	DgMTNfXex1DdqJmObg7fp6M7Aws09LO5G0MPSmZpKHd5Hkd6yxQdzVvPoJ96yhjomzYDHRWP
	92GoeXiWiWqmH2CoVr+NoUrDMybK6h1mosz0avo7kGyqaALkdPU6TnaXzjLJKtMKRuobrjDI
	mSkTg+yovkBmjWzSyNzOBkD+nVHOJG16L3LsuY0Z4/ZJUpiMkkgpNY9SxCuliYqEcH7Uh3ER
	cSJxoFAgDEUhfJ5CkkyF8yOjYwQnE+X25fm88xK5zk7FSDQa/tFjYWqlTkvxZEqNNpxPqaRy
	VbAqQCNJ1ugUCQEKSvu2MDDwLZFd+FmSLGfVgKn6XVNfVhpBGqhnZQMXFiSCYd3SEJ4NXFkc
	wgRg01o+5ihwiHUAf53QOQsvAMyf26Tvd1y0lmPOQi+A2RMGpvOQhUFT7W1aNmCxGIQA/nBH
	7mhwJ9IBtHytdWhw4joNWlpsTIfmIHESbln8HRoa4Q07nmQCB2YTx+BG3iTNafY6bGwz4w7s
	YudvvcjY9YLEBgt2TSwznaJIOLfQDJz4ILSOdu7xXGj7o5fhxPHQUrmCO7Ectpqu7Rkch+bJ
	st2ZccIXtvYcddKesHCsZTcJnHgF5mwtYk6eDbsq9rEPLJvZ2AvlMBxqrNkbgYTGopt7AV0F
	0LrVCfKBV+n/FrcAaABcSqVJTqDiRSqhQEGl/Hdr8cpkPdh94H4xXaCxbSdgEGAsMAggC+e7
	s89FI4rDlko+/4JSK+PUOjmlGQQie4JXce6heKX9hyi0ccLg0MBgsVgcHBokFvI92KtZ5VIO
	kSDRUkkUpaLU+30Yy4WbhvU0hzAzVl471+cx3PgoNALlixb/9M/x6W/PK1Ae8Vuwmj7K224Z
	T6ZXXhquNd01PuzzlbmMnfEuFit31rw3o5eSosaDgiJHVqax7bCFee5Xj6hSz8qha/XExe/e
	jXqWWXT47Iz4jbUlzwMxNduc/OM9W7aUv8AFiWGRY+44VACNPmc9itfNsZ++OflxRkH1KXrA
	vZT33K731OlGKrRpvqmrD0O8dtjSgcLTvFdvtEV8oO06Xeouez/22y8vtc5sX162WrzbE8vr
	Drgc+WdLmvPbUtEv98r1j+9aCqOY348KWldvn2hPj+24PFDnf6X/R55VVt+d6vHc7fdckSUo
	7uV5pekEn6aRSYR+uFoj+Rc50p1waQQAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAAzWRe0hTYQDF/e7udq+jxW2t/FpSMBNkmKWkfGQPs5IrqfSALMNs5k3L19rV
	Mo0ey1lqPvojSvOFLk2zkrlNZ850TY1Ay4oNoWEWy9Ls4YuVYjWt/36cczjnj0NyhAW4mDyZ
	ksYoUmRJEh4f1z+VrFmf/wUxG3+ULEP21hIu6vzWhaN3FXoeqnGMYGioZhJHpmYdgRqN/Riq
	6+3kokpzPxe1dL3H0WCnAUMDJTYcFX4a5iDNBwsXDY9GotdtZTx0vUnHRbdfdGDogdlGoLvW
	AQzVauYwVK2bIpDKaCZQ9mU1NwjSjRWNgLaqJzi0odRG0DXtnzFa05DLo99a2nl0s/oirer+
	hdOF2gZAzyvLCXpSs4Z+Pj1J7F0Sxd8SxySdPMMoNmw7xk8oGNNh8if8jJ/VenAJ3CPzgCsJ
	qU3wymg5lgf4pJB6DGB+bzG+aLjD3zk9xCIvh/XzI8Ri6AoGdfoBXh4gSR61Hva1JDl1EaUC
	0Fqfu9DEoR7h0NykJpyh5VQInP3g7SzCKU/YPJINnCygtkFH0Zt/Y2vh/aZOjpNd/+pVM8qF
	YSG1FQ4NOUAxWFoFXBrAKkbOJscns75yvxTmrA8rS2bTU+J9jqcma8DCY1JpK2hv+O5jAhgJ
	TACSHIlIcDgMMUJBnOxcJqNIjVGkJzGsCawmcYmbYGasIE5IxcvSmESGkTOK/y5GuoovYVlG
	ZZlhfIPplvejvtOTtSKp0m8vFazPtHRYaneNUTEch0f30cHAqRvisKrZlzlwJqDV4O975GOs
	d3+wh2OndlTOVHV5soFWblZ75fictM0ouCmqbc5K+37gRKk2dHxgp+1g941A0ZB9hxsv+lp5
	kRbGFJZG9pxJ77vss7m6+kSwL7d8VZDOInu/0h7NZK8Qnz8lD1FLx89mGr4MGr66fxoltQkz
	64x7lIay0w9l1jbVcHia3Xp1XbTGpiqr6xKGmF5lRPRERFzbjYXF7vt2x2taHTUfGKDxinWf
	7RjBQifCpfagQ8X7WzwSDR4u7JNnxPaJwQK3vBD/C5vExyU4myDzlXIUrOwPXytFcyADAAA=
X-CMS-MailID: 20231025102307epcas5p1fde3d5b0095477a8a565ce9f913e71e5
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-Sendblock-Type: REQ_APPROVE
CMS-TYPE: 105P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20231025102307epcas5p1fde3d5b0095477a8a565ce9f913e71e5
References: <20231025102216.50480-1-aakarsh.jain@samsung.com>
	<CGME20231025102307epcas5p1fde3d5b0095477a8a565ce9f913e71e5@epcas5p1.samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Add MFC DT node and reserve memory node for MFC usage.

Cc: linux-fsd@tesla.com
Signed-off-by: Smitha T Murthy <smithatmurthy@gmail.com>
Signed-off-by: Aakarsh Jain <aakarsh.jain@samsung.com>
---
 arch/arm64/boot/dts/tesla/fsd.dtsi | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm64/boot/dts/tesla/fsd.dtsi b/arch/arm64/boot/dts/tesla/fsd.dtsi
index bb50a9f7db4a..f421012b0a4a 100644
--- a/arch/arm64/boot/dts/tesla/fsd.dtsi
+++ b/arch/arm64/boot/dts/tesla/fsd.dtsi
@@ -342,6 +342,18 @@
 		#clock-cells = <0>;
 	};
 
+	reserved-memory {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		mfc_left: region@84000000 {
+			compatible = "shared-dma-pool";
+			no-map;
+			reg = <0 0x84000000 0 0x8000000>;
+		};
+	};
+
 	soc: soc@0 {
 		compatible = "simple-bus";
 		#address-cells = <2>;
@@ -956,6 +968,15 @@
 			clock-names = "fin_pll", "mct";
 		};
 
+		mfc: mfc@12880000 {
+			compatible = "tesla,fsd-mfc";
+			reg = <0x0 0x12880000 0x0 0x10000>;
+			interrupts = <GIC_SPI 137 IRQ_TYPE_LEVEL_HIGH>;
+			clock-names = "mfc";
+			clocks = <&clock_mfc MFC_MFC_IPCLKPORT_ACLK>;
+			memory-region = <&mfc_left>;
+		};
+
 		ufs: ufs@15120000 {
 			compatible = "tesla,fsd-ufs";
 			reg = <0x0 0x15120000 0x0 0x200>,  /* 0: HCI standard */
-- 
2.17.1


