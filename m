Return-Path: <devicetree+bounces-249192-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 965E3CD9C5E
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 16:26:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9071E3026BFA
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 15:25:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85050322C78;
	Tue, 23 Dec 2025 15:25:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VkraxcAV";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Db76ljzZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D664B29C351
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 15:25:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766503520; cv=none; b=SDnViKIPJNg/CvnurzpEnTN/yo+Utb6dEfmp/q53skhQBO8nO7PdPA2eXzFWMnMJVpqTwYFA6HbNKzQEJcuAqaAyTW1TwrIe45wa4o6xcmiND/J7jj3Xd+h7H3ba5xylSCppXQ9xzlHO04/QAF7aFYn61G2Wxm9RcVNiFlFJ/bw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766503520; c=relaxed/simple;
	bh=G66E8fx+L7zfz9oMuG35JIwYIhu6Ttp2Ewl9PrskaL8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=qHRUvzJO/XmoMMCeSG85VABz44WxhDtisvWUpg3ujPz+dK71CMk7+Pf0Ay8xtgwaeN4Ym4YsPM6911znoeMI/sfU1NmNE6WYE/E9Mh7AgnUjVHatgiOn7EkXXaGsxP3VFI7kgMmiTN1vg38c6680EXnE4AkpWvMBUzkh16L+4oA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VkraxcAV; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Db76ljzZ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BNCe40u561263
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 15:25:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=swioPwHv+v70eeUAVzefRp8+8yRTw6Ca8/Q
	qJVxwAdA=; b=VkraxcAVQ96otXS/ddELXZPa9a5PpPly9e8JmATMT1TYWMEF6B3
	ZipwM70klDB0rOfhwtqrYibZtFbwHPfKbjoPjCjsdqRPbNGvGaa04X6oc2nRWGdP
	lhzxwvpWWrQdb+gYytCZTdjwnIzta75gqiw/rj7ZDDx76+uDJE9HVGytskNV8O9f
	ZnD5J6g3jL0V8/EjseZNSSi77peTEo6wsLeepI6I0kVad7lVoEUlak/eWw9+3Hjv
	/TN7N0ttCbeNeo6ej1/K4o36wvAlNl8M6JtXyVXJLp2AKr9lra0DF2k9PGPzxR3J
	XqNa5KnMgjoTECnJOyq9sfzlls9c5YYjbJA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7u9creca-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 15:25:17 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ed782d4c7dso89367811cf.2
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 07:25:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766503517; x=1767108317; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=swioPwHv+v70eeUAVzefRp8+8yRTw6Ca8/QqJVxwAdA=;
        b=Db76ljzZ8qRB+xxywMhA59aWQONq55P8LmTYu5wPTfkO9wADtT9yLv84TfIFsDga4e
         jc+yYB0n4VXEi+5BqIavSHYgzmvoNu8k8I689nuheBpk30HxpURRZxSmf+CflWJavBGz
         8jGkW4eWnMjjrhdrAXDqX2qHJYIXyd/IG+zLfQWZU9bDcmm/kwE5N2sdyyAzlFk7r2Hb
         ulfHSVNM0CbBHppyveoICJ9tP2rCjflPGpYBwx73Ckn9wclN8n9oqYSzEWz2UI4vAsvv
         ugYNZhcD0uHolK+MXZw3MCSBd2cHQA0UBWaBWvdtsNgijW710A1oGd2kvUhs8uw4Xvys
         R+lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766503517; x=1767108317;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=swioPwHv+v70eeUAVzefRp8+8yRTw6Ca8/QqJVxwAdA=;
        b=eaes6sWsfi9KAp9TGo0sUrxyvOAL7YOcRI9TC1DDo8gNS9OM/N3+uyqwQfMKXf1ZMd
         /B3MVI//j52xlx4GHLPXqAs/KGgVaS0IOqOIg74802EBflmkWIwCI/fc5BB85FP8bTQz
         i7MviLWFwv+6TvXlqxEsGJEJuHyXRQCAEESHRy4zkBpeT4DyFqw2GeizXpEfd9K9SASB
         KdHVNAfJ9lo16N4xAuLCV5i5LVsX93+S8SXGgWHXwPJg3DIPbAOiCGOYrIrqys+CUt3g
         3DsVnN1yNnDbmlk4FHc1Ku9EqFkpcHCBP1RiX/Mv6I1ceMCcc/+4ZGEqqDmMSPUS39tq
         cLEA==
X-Forwarded-Encrypted: i=1; AJvYcCWJKcx0OQJkbR4TVrRDwCcwvwzXq5SO4w4hq+rY0W4nkfn00cf0RFM6ICxsuXSNLFKciVBohZpso9or@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4cCdBiWJr0qIOFFlfLj/RHeUVuzUuvkrAK8hL/FFrF3PmWAFR
	ssV5fWEkpaYY/xyvFPYrS5LN4+J2l5vWUp2pY6OTI4weg83xQMdy/PANWW1KLD5HLPeBQbiYpSn
	0z+bXIaYP8t/vsg1BE0S4f/0yNqPzlJnaAyp1O0E8Cny/b6L5Bjw6DXVCBDZzGatz
X-Gm-Gg: AY/fxX4x3gCeqtFBKfjKoET0Wj9Zi5IOurSWz1y9iLdn0HrZ6LtMV/xRCkAeVUZQmqv
	15qdtyA9AXBwBhhu6PsVMhe9TVzc+Do0HQnwLsdpJTsOHGLeK58m1tXmZN11gHnkbgW1qi6hK6V
	aVSyNnnxkSN5t1l+HThUrD7iyND5NstWPe7mQDq1cFbmhIoG6bWs1Hgc93UCZc2Y8gdUYFDNnok
	JKFaUKfT/jzYlulI8avzbDmUiE8x11GnvbbOhllCf5anwlMnjBHLPLyzvZpmQQks8/pqLalvgX8
	Qt/UVmbcmb4b4qUrgAVUGfaXhMwvuXo7mQb/kY9ZgLoWspZ5qlBv035o8rLDdI/lKLL9qfCKCAs
	ZXip+7b3/Qso7ohFTFXQDWCtVK4xWSheFv8i8q5XUrifnvOzvDmM3xUvK+0iME3EVNR0=
X-Received: by 2002:a05:622a:1389:b0:4ee:1b36:b5b4 with SMTP id d75a77b69052e-4f4abcf6c6cmr192921671cf.15.1766503517148;
        Tue, 23 Dec 2025 07:25:17 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHmRbhrmDceASeL3z5pklcWBSlwUzr1ZwN9b83wnRLT3KyyEmN31UjSsXEzCxHiojU90XgHlg==
X-Received: by 2002:a05:622a:1389:b0:4ee:1b36:b5b4 with SMTP id d75a77b69052e-4f4abcf6c6cmr192921081cf.15.1766503516519;
        Tue, 23 Dec 2025 07:25:16 -0800 (PST)
Received: from quoll.home (83.31.98.88.ipv4.supernova.orange.pl. [83.31.98.88])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037f0b12dsm1430334666b.48.2025.12.23.07.25.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 07:25:16 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH 1/2] arm64: dts: amlogic: Use hyphen in node names
Date: Tue, 23 Dec 2025 16:25:11 +0100
Message-ID: <20251223152510.155463-3-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1005; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=G66E8fx+L7zfz9oMuG35JIwYIhu6Ttp2Ewl9PrskaL8=;
 b=kA0DAAoBwTdm5oaLg9cByyZiAGlKtFbIQzko1XrP1llHftHM4pRSWLxv9oygGQ4ajS0ySTX/1
 okCMwQAAQoAHRYhBN3SYig9ERsjO264qME3ZuaGi4PXBQJpSrRWAAoJEME3ZuaGi4PX8fYP+we0
 NZIvA3rK1U6S4+XWHbMDwVZJw9AXHLNX/URFNBStFNEY24T0QCmIkWzg6UhLnzsBoEsh1E5mOQ3
 krMl1DoKvIyEfzgv1b9exH0na/yBAPfpv55poAL8F8gp6zAYp/sSFcpyxkv1FCoW87N0Ce6uCKK
 7fefzyJ8FcVrwd3xGrPtIl7MfgF+870/yUgEMMA2t+bPu30xP3h4accapDcrGTOFqycloYX06HI
 t6K1B8JEbvp638KO9wqQvuGWSXrhPMcYVoS1usglzHMevKm1EB+ZcG+X2bVE5ZB21bw0fUZPSpD
 J+tc+PEFL15iqtAqzehehH4ZrqxIlVLiP+/noO4Tf8F4di4seTXUz+WYTnE8tcLgEDpRTNmsGV/
 Y9ZU57n0dORu8O41Br9OGdxy1ybn/PnurBo9Qe+gvPlieJtvmD2iSOCp/YcRdONgzKS3I9KoXVW
 LlzrVmD2t8ttnnpYYlLiEFkKJRYzLmsW6Ph9ZF9+r/9wqJGMgVv+KH8BypJx+jTAgb/cchjYQm4
 /ogNwluZK0siSHrbQcBekjXJU+tLGxnm5FuvbssXcpGJREvdaAtC7oBjtFxYNaMvR22YA634KLi
 DVILZ4UodXadW2B7zn8j4KhFyenJrZecrhcu1YHrJnYJvZc/JXjSdL6C4UJ5adbCljkHuptaXnV 0fdqc
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: dy8M_LIxckXZhigMmTSNTe30WAn0q6Ej
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIzMDEyNyBTYWx0ZWRfX5ARNp9oYQGps
 8L3U41HhkDeBex8u9GiSLbtZ923+3QbMjgd8Km4l/0qV1Ga5bfsw65GFWlXRtz4lWnMQmTwmLDF
 I+xHyHb0iHzSi7nz8v2P/arAdLfjfE5o3Km/jH2eDrDpohFmvON5IRigUQIpTwMaG9HXMrvuYfq
 J9UUnzirSU2aPtiEPEpzEBXDRDMkVIFU2D2Tkzxa0DGsVUKAm2RGGBcCcF0QsQSkbKkpKGmdhCF
 OrpRRXnzKrGKa1RNOxZiU+X6PaNZ34E3hiPPBwD5BhNWtCW0sxD05WSW1WiosHzlzf2yq/+nSU6
 iWbvoR+YJJajsOPJmCvsKv325Rx6aUcnXYKPPH3nbsp1lilYZQqhCKI/kl9MSjSWA/zY/vNVlhF
 a34ff+E5rJLYv2l6QDdA34rME0jwM1y8F9yIMhJt2X3zgP0o55n6NH80qRIm+574Q641eJi2/JB
 U3atqkAbWII/FLapPUA==
X-Authority-Analysis: v=2.4 cv=HsN72kTS c=1 sm=1 tr=0 ts=694ab45d cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=qe4J/qXhiWkb1JZGYKbLYA==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=WFmU4M8xItcfhem_W8oA:9 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: dy8M_LIxckXZhigMmTSNTe30WAn0q6Ej
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_03,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 priorityscore=1501 suspectscore=0
 malwarescore=0 clxscore=1015 adultscore=0 bulkscore=0 phishscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512230127

DTS coding style prefers hyphens instead of underscores in the node
names.  Change should be safe, because node names are not considered an
ABI.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

---

Patches done with sed, verified with comparing unflattened DTB and
dtx_diff.
---
 arch/arm64/boot/dts/amlogic/amlogic-c3.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/amlogic-c3.dtsi b/arch/arm64/boot/dts/amlogic/amlogic-c3.dtsi
index 13b7ac03f9b2..c9d9f3ddf73c 100644
--- a/arch/arm64/boot/dts/amlogic/amlogic-c3.dtsi
+++ b/arch/arm64/boot/dts/amlogic/amlogic-c3.dtsi
@@ -780,7 +780,7 @@ int_mdio: mdio@1 {
 					#address-cells = <1>;
 					#size-cells = <0>;
 
-					internal_ephy: ethernet_phy@8 {
+					internal_ephy: ethernet-phy@8 {
 						compatible = "ethernet-phy-id0180.3301",
 							     "ethernet-phy-ieee802.3-c22";
 						interrupts = <GIC_SPI 75 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.51.0


