Return-Path: <devicetree+bounces-249202-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 13B19CD9CD0
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 16:38:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6FA37308064B
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 15:36:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B981348454;
	Tue, 23 Dec 2025 15:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kv/e3bz9";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="krWeaOeb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8CE7347FC4
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 15:26:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766503593; cv=none; b=HSjDFyXMVRYGOVYQ3W+EwFjDpp0Mawss6GRSts8TyIRM5fYqc2Wahe+Q34FYnlQwYiOGsBX3XqgPm+flIEnd5ShcCQT+G+pLzCKcdUhigfVF85jco4tm54SS0Jf0M5Unw9eO4rqvIhjhuw3pTU+M4A3ssd+C3CnV5k/jw89wEnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766503593; c=relaxed/simple;
	bh=AjBqw0LrXSn7PVqsMBzJk5wO5mqfJHNLvVrqozEl9Xo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=PZ+UWoTnx7pRi+UHnOHAyXkDtHU8gfw3pvZjaqPxjQ4FH1CrI/hSmtrIqd0ogTmSaYrF3Htdseg96aCAv34Fh5LB2DX1xRNUOSiL1ejWUbIOXp2ZUd/uunshMvyDpOuIn9FN3oz/csrVeIO8IioMC4g2LGm/10cAJ0oNa+BQ+24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kv/e3bz9; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=krWeaOeb; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BNDmcpH1632644
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 15:26:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=X1DWDmOcDxjUqXVftR07Tf/hOGZFmvvZAzs
	YJSWm4Sg=; b=kv/e3bz9AHymfz3+5I/afYekbCVwtoEy851+Xyj9B9zKExAJ1BR
	dNm8oaAN0mc+qXIqI7t09u4qFkXlRDJNhuwAJwQOmnwk3Zbl5ojNRt6MItMDPHVE
	IAo5o+vXQsL05BhPWKkKrYlbtlODbKj2075kU2JcUPdUc6SvQQdMRL4HEVLDhnuN
	sncX7A1tycNjHauaG/a36lqE4hFDItUr4JjF2yiHzuJ1fvQE8vrt7CNVhB6DjsH4
	Bi6VZHMxKmZ7+HPdmTD+JY9nXuPGLGfKP/MSJkPPz0JkkyY//Pp6ftEazYzpep8D
	UwkGS78/kgYAbhHMGXKjw0AHajNhhPO2UCg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7ck8k5um-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 15:26:31 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ed69f9ce96so165441801cf.3
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 07:26:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766503590; x=1767108390; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=X1DWDmOcDxjUqXVftR07Tf/hOGZFmvvZAzsYJSWm4Sg=;
        b=krWeaOeb4Sd05Hq1sAM9MI0DZXEuTrKN5W8w5njY7CNr98nJmh2+Dp6nBnw2ydR3SI
         lm70NQhUFj72VHoB4n1e5IJNFwAlKM5TbJbyjb92eHyFVzqf9v5Z4R9QgKbPxIfo7vVO
         9SWTSBn1SgLXBVaqdYLhD+tKPZY0JLLpJTUigbOqvw0RFhX+jVByNmEhQyx2b0AUzQVx
         BlIBCqJswuVreY9pB6wNc6U2HqWQHVrKYbm8qPL3dJp+RFM/DpQvkuRag9bazez9a9it
         lzn96lZjWRvsBLDFxW2dUj2kPpl6p2Px+bXPz5l1KWbwRUKnJeD8KJfYv8oLoZxglpsW
         rYew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766503590; x=1767108390;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X1DWDmOcDxjUqXVftR07Tf/hOGZFmvvZAzsYJSWm4Sg=;
        b=CzAy2a+b8PqveGJorCv5rvkRd6sHubDaOSUNIM2aTojzO/iJqCdzhA7Zn1ydEOrfAo
         Dv+al15WEvY7Nxm/WethY+nYLpgeB9XgCKXGUZvOotq/I5lewzPErN48GS3ztQhMwFZo
         QGIEcVp+7duHYBR+UnUM4U9wWQ3ZY9PQL8a+CiloSCvzPLvAyVvC1Rnz9uNUeePOAgt5
         2uUvcr4HlNKIJ46BSpVz06zW/jNusYcXIcuuJcTvNsdILJfcQRbcfKnnz7yDDey6YpUr
         uUR+cXV5gjfpgvKYBERUCxBuvDNeQDGKvs+/rg8tuzQljR11fCUGs3Q/k+cZe2Jb1sa2
         B+pw==
X-Forwarded-Encrypted: i=1; AJvYcCUsbSQFf1CL0Lr39h7DMg2ddiYpOgiXmrQJ1LXw31FfXN4QT7PemvVECWMByFyKD8kStf3eoJgb3XK9@vger.kernel.org
X-Gm-Message-State: AOJu0YyLTrMJTWTAdjAXdNAmyMqZHGYD9NftGlqo7a1ytL8Pj0eAENaq
	oPuzcD2J/mudHhBSVxt1enbuo/uNQf/NDBuh4N9dErV3MU7KxqMYE1eQcMVIUcvRU9tJLdh8gaz
	huqW8inZY8Th4ckAxwv0TttEAvkqeF0/TKRF9p4yY08vRA3fr3RqeXqIX1PWoE/1q
X-Gm-Gg: AY/fxX72AurKuH5ESw39YjlLQKm8dMg2karLCZvKz9aO/9WCXBwZY3hfL99qLl4MpPy
	a7fIIWistwmvxRnv+VQ0JY2Kf2vm0y04fFFUNmF0GEmgjEGjs/LvxxiApom3+onOKEz9JbsB/vv
	rlEwg/wJ1bD06+U9CxJvlXKpXHZNMrcMs3hBP70nC4RwMTw1D45DiaGpnBQ1KDMdaDejqytj4Xi
	4dDQgMDkpwm5QBiHR+LvV7vN5nkKYJJZCc+eI9ogqRjEb9Wck0xgJ54qZzbyjUv2ru3IF3ujPhB
	uLlAOUj77ykSx0SO3V+vUf8RggPz/d32Xl/QOwpV6COC2Ea+Lb1tTmAVi2lcLvfmc7pD5VLv+e3
	d49l66C6vyzTIVTsXDiZSf85c7JuuaKGd/s9jdLTJ7LC4r2iSNilZ5s1NVCpqhLsQfk4=
X-Received: by 2002:a05:622a:5c0e:b0:4ee:2352:1bb1 with SMTP id d75a77b69052e-4f4abcb8c77mr256977561cf.5.1766503590263;
        Tue, 23 Dec 2025 07:26:30 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGhINT4HlTgCPcN4kDXGyPMqNqL00KSDVH433jvdDmzYeBYGVAIeIz8zba5MebY8zKgAtzRoA==
X-Received: by 2002:a05:622a:5c0e:b0:4ee:2352:1bb1 with SMTP id d75a77b69052e-4f4abcb8c77mr256977011cf.5.1766503589885;
        Tue, 23 Dec 2025 07:26:29 -0800 (PST)
Received: from quoll.home (83.31.98.88.ipv4.supernova.orange.pl. [83.31.98.88])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037f3e271sm1454905266b.60.2025.12.23.07.26.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 07:26:29 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Chester Lin <chester62515@gmail.com>,
        Matthias Brugger <mbrugger@suse.com>,
        Ghennadi Procopciuc <ghennadi.procopciuc@oss.nxp.com>,
        NXP S32 Linux Team <s32@nxp.com>, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        imx@lists.linux.dev, linux@ew.tq-group.com
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH 1/3] arm64: dts: freescale: Use hyphen in node names
Date: Tue, 23 Dec 2025 16:26:25 +0100
Message-ID: <20251223152624.155845-4-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3777; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=AjBqw0LrXSn7PVqsMBzJk5wO5mqfJHNLvVrqozEl9Xo=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpSrSgKRXpkMjgze66mvIN7KDsSXjviyw0Ybzt4
 l68cYxR+vmJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaUq0oAAKCRDBN2bmhouD
 1/v4D/4g3ihOYBcKkCo88QxGxzO8WiWCsDlpTOUkVfmLRkGYVMV/LLkYLX9RcY1RkVjQozHbQkw
 Sp6NGb1Jtz+aOdS5zT76E58/woi4SS52mpCv0hhnuG5mUvHnSawKwYJlMB2Y9taX2Cmoc0LJbiN
 u4Xe07glAv9bOVcRGUcYjQDLNZytTosMtj5RRycygHBAo2NZ8yUuyH13nBQQRVAzra4P7+d3g3K
 HM3mEzVMYFpPF7ufLThUpgBbd6TiyvD2XKbVI2zLEog3gNmcwrRn5edycYBeGfE9WWYrOPAg0zB
 L3I7uxQIoxW0Tu9zseMTurI296Z6FLykxULFo+ZENulG/KxyvB1s4rvUvJR91bWIHbXRJ2E09hD
 ylCnj+ePA+yWOtaCumT1Net8zy2pfJo34hCHgbyIUT0K4aBVkaviyWi91Bzblme90jwbaJ+xK/t
 RHxAVSTSq0819AM6hLZCp4GTP+y9LiNB0NkPXJWeTxDVG0YOPVG1upWK0R4H9hPSy3JWXM4a9QO
 mAxKyZb2ATZq0rszGdcN5RVR9ZIDdjIaKp4SogmHYS8vdQ6Teq2sOQXWtIoeUAn5RbinpJSfmso
 X5OCguwixzAcy/zM1CMRS/73CL4W4i5GPRHAeAnjCjX8f9MTj55V8qT1zGFvjp5g/rETXgK/yMK lkKtdn172eBRx8A==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: PedB1OOWfdA_jgcoK79xvBDlD233vhGw
X-Proofpoint-GUID: PedB1OOWfdA_jgcoK79xvBDlD233vhGw
X-Authority-Analysis: v=2.4 cv=asi/yCZV c=1 sm=1 tr=0 ts=694ab4a7 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=qe4J/qXhiWkb1JZGYKbLYA==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=FUnLEkIPDp6DTj-5v1EA:9 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIzMDEyNyBTYWx0ZWRfX07BLX8+IEEEc
 kzL8Zmt+Up+AAlMGTcsY+4PSLZa3u5/cyGChxOpjZISBxOkfWFFUAbw6zTbAaIObLTjQ7WjCNDP
 834S8jnY8yhQRSRUjtTQcmJqCDEP4eXOyPcwMN5CmfqSn8u/O5rKewc9RzcO4AsboLIlqWZpKxG
 t3wK9/D/TsaS6IJfaeAWB0dqe3kG2qkivjWuv+7hzy66ZVDOSfmj3Z3fWCFbAdE94wjKha+zfFA
 Rqh1u5ViTE1eWOh/8GmvBaMuB2gQIZLlc6ssUdSItylRjPiS0ZOEAA1ipQGkdB1KRaBDFvq1WPD
 25rxTth2+yonZeReMkH38sX3SiJ7fklky0TE38c9OqkDTErTDphJs2gCwqJZK6I/c/nY1+zxQnp
 76tzEx1aQOlw0UBIOP6tvOystIkiQ/QvvBrk3U+8WcWawUawHYjUBkZpUzxIXjzgdDVQNfpxBey
 6KmeHprza0AL/BOoogQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_03,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 malwarescore=0 adultscore=0 spamscore=0
 phishscore=0 lowpriorityscore=0 impostorscore=0 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512230127

DTS coding style prefers hyphens instead of underscores in the node
names.  Change should be safe, because node names are not considered an
ABI.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

---

Patches done with sed, verified with comparing unflattened DTB and
dtx_diff.
---
 arch/arm64/boot/dts/freescale/fsl-ls1012a.dtsi          | 2 +-
 arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi          | 6 +++---
 arch/arm64/boot/dts/freescale/imx8mm-phycore-rpmsg.dtso | 2 +-
 arch/arm64/boot/dts/freescale/imx95-15x15-evk.dts       | 2 +-
 arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi     | 2 +-
 5 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1012a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1012a.dtsi
index ef80bf6a604f..b07022e3b6d5 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1012a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1012a.dtsi
@@ -278,7 +278,7 @@ sfp: efuse@1e80000 {
 			clock-names = "sfp";
 		};
 
-		sec_mon: sec_mon@1e90000 {
+		sec_mon: sec-mon@1e90000 {
 			compatible = "fsl,sec-v5.4-mon", "fsl,sec-v5.0-mon",
 				     "fsl,sec-v4.0-mon";
 			reg = <0x0 0x1e90000 0x0 0x10000>;
diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi
index 22173d69713d..6fefe837f434 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi
@@ -851,7 +851,7 @@ pcie1: pcie@3400000 {
 			status = "disabled";
 		};
 
-		pcie_ep1: pcie_ep@3400000 {
+		pcie_ep1: pcie-ep@3400000 {
 			compatible = "fsl,ls1046a-pcie-ep";
 			reg = <0x00 0x03400000 0x0 0x00100000>,
 			      <0x40 0x00000000 0x8 0x00000000>;
@@ -890,7 +890,7 @@ pcie2: pcie@3500000 {
 			status = "disabled";
 		};
 
-		pcie_ep2: pcie_ep@3500000 {
+		pcie_ep2: pcie-ep@3500000 {
 			compatible = "fsl,ls1046a-pcie-ep";
 			reg = <0x00 0x03500000 0x0 0x00100000>,
 			      <0x48 0x00000000 0x8 0x00000000>;
@@ -929,7 +929,7 @@ pcie3: pcie@3600000 {
 			status = "disabled";
 		};
 
-		pcie_ep3: pcie_ep@3600000 {
+		pcie_ep3: pcie-ep@3600000 {
 			compatible = "fsl,ls1046a-pcie-ep";
 			reg = <0x00 0x03600000 0x0 0x00100000>,
 			      <0x50 0x00000000 0x8 0x00000000>;
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-phycore-rpmsg.dtso b/arch/arm64/boot/dts/freescale/imx8mm-phycore-rpmsg.dtso
index 43d5905f3d72..414f44b85564 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-phycore-rpmsg.dtso
+++ b/arch/arm64/boot/dts/freescale/imx8mm-phycore-rpmsg.dtso
@@ -33,7 +33,7 @@ vdev0vring1: vdev0vring1@b8008000 {
 			no-map;
 		};
 
-		rsc_table: rsc_table@b80ff000 {
+		rsc_table: rsc-table@b80ff000 {
 			reg = <0 0xb80ff000 0 0x1000>;
 			no-map;
 		};
diff --git a/arch/arm64/boot/dts/freescale/imx95-15x15-evk.dts b/arch/arm64/boot/dts/freescale/imx95-15x15-evk.dts
index c1e245ecea9c..ff720c139a7e 100644
--- a/arch/arm64/boot/dts/freescale/imx95-15x15-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx95-15x15-evk.dts
@@ -216,7 +216,7 @@ rsc_table: rsc-table@88220000 {
 			no-map;
 		};
 
-		vpu_boot: vpu_boot@a0000000 {
+		vpu_boot: vpu-boot@a0000000 {
 			reg = <0 0xa0000000 0 0x100000>;
 			no-map;
 		};
diff --git a/arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi b/arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi
index 43418844701b..456129f4a682 100644
--- a/arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi
@@ -40,7 +40,7 @@ linux_cma: linux,cma {
 			linux,cma-default;
 		};
 
-		vpu_boot: vpu_boot@a0000000 {
+		vpu_boot: vpu-boot@a0000000 {
 			reg = <0 0xa0000000 0 0x100000>;
 			no-map;
 		};
-- 
2.51.0


