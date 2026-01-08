Return-Path: <devicetree+bounces-252927-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id B07EED04F53
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 18:28:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 6F62B304D379
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 17:06:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 525CE288C3D;
	Thu,  8 Jan 2026 17:06:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CLh3nfGK";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="UcjvgTVw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1853C28852B
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 17:05:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767891960; cv=none; b=oUAKex3GbgiIVkGx5hOThmT1adNblbEDcPypO9x3ykm+KkllBkHW5CGf53Gl6nRxHHP4KBH+1SZtVD2S5hgzyJ/+nF0GlyN2LA4SOMCSMgi3jHwyg+3xGWo/w4EUIa7wDPqUw3KzmFdrjKOFwr3urlysuHbOJKGzVcFFVflKI6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767891960; c=relaxed/simple;
	bh=auxVtD5eJox3nwV8AvyyNZXSmGFl20GvmUH1Rk25HHM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Ln64aLS5MQEcRc9uYaK5HRqxW9oy1b+VrZhm+OQEuuTbZjDLFjpc1pR4k1xz8KTwsT89emo3tJfs/laGKeQSIAAQHK2XDIYM7ggSKcQgeF+zfnPwTxZRtt/0c5IkgMd+sfrFH6b3Le9EYctQeb6NPBTz1QbVbZqX+UYt6HFEKY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CLh3nfGK; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=UcjvgTVw; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 608Ai33A3701154
	for <devicetree@vger.kernel.org>; Thu, 8 Jan 2026 17:05:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=oXtaa8lSRtD
	pg64WUKXPHUqHxomSPoDZGQ1io+HIie4=; b=CLh3nfGKvpTFVwAcloYTdGh0ZLy
	FQMIqRrFv30Ir+wwAptCAK60GIfNXQGOBneaXbpmvk8UhFgKVggmiueIPl1pew+/
	aGJCpDwHL4i5dcdke6mhzG8BYjqikN9zFQcgcbmui5fEUt2XGW3mrdMmAGvD6mBL
	C7+PndL3ulfcIZw/P2PFoUX/ddES7pZyrFdfz7x8LPNJl+M9U+nZViqdsHn5WZiB
	wTS+Owg5nBEfCxPrguwLBhgVm6JRBzvBXvsafdfMzQjiBwXXRzdZVE7tZtb5tk6z
	cPHu2X2muskkF9QfpNg9/VzF2svzgBD7pBuIZJStxbPt8QOqmZdVug5EAig==
Received: from mail-vk1-f200.google.com (mail-vk1-f200.google.com [209.85.221.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bjb39s67c-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 17:05:58 +0000 (GMT)
Received: by mail-vk1-f200.google.com with SMTP id 71dfb90a1353d-55b26ece522so3138746e0c.2
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 09:05:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767891957; x=1768496757; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oXtaa8lSRtDpg64WUKXPHUqHxomSPoDZGQ1io+HIie4=;
        b=UcjvgTVwPLrl86R/euR2hgc5Iw8MaryMlJRnbISNe/z3nYIIR9WMfMA/Ov4Iz8jnyK
         arKgqI/ABlCI7ODSaX9P8ZGmBCXYwK/5+/Ci4oMvuB23irYQDuASQ4mEJaBPol5z+HIF
         xgHBoz5QN+PfMuOQUpm2U6zsy5DNLU10CQmzH2hlxaURGOixDeYI9ndgH9jHIPnT2gc8
         y5T3+Z+AKOIYIN5nsRpcbG6u7821wG09dx3lu0z4qq01SIOp12mlPq6W4nvWNYuPcljM
         /Ofo6FW4SwyFiVdHN74iFUc+db6PQ0AqTwlmluDSu089Ule6OTjLRbth97WObcBjNlZo
         LGEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767891957; x=1768496757;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=oXtaa8lSRtDpg64WUKXPHUqHxomSPoDZGQ1io+HIie4=;
        b=O4+IJrcle9tatMfU+yVnvnbUUSoxZK9QdE4Ne7aP7e90uyaC2yfDw9NNYkUvVgtrkS
         lB2o/ayBYroj9C1KfJu8UvckrkB0noVehhrysWE5N6PctyBZaJUnzwGKY1WTrNEbzBcd
         JVOCVvvKws24DBlWf2hpsge6mPyHZymyHK0lL8gF9pEFK6nkpm822FGAG3K3MaZdNLCF
         ROTfHBQ9XjA0qIw8rGEMBxtYM7ccSokVRXCz7szeog/nU7n4DQOI5ow8M2c+zV+UDoj9
         yHXEJeDXWTbe2bQPM5uPUDZpsCoKZjQpWsxLuTxbsljdfiGJiyBn7/dMo0joZwJUM7jP
         QukA==
X-Forwarded-Encrypted: i=1; AJvYcCUGNqT1UtTm1WzlzauJgqHKeH7Hei3+JZctPaMqwYi5mcRv77wp6DT5HD5arv5BgzF2Itjzxfdb2wum@vger.kernel.org
X-Gm-Message-State: AOJu0Yzd+34FM25aHB2na+VItO0h7GKfK2rbjGaQ4D9LbTU/6Dgi3oNC
	E4xKLiLxUuGq10MYx6BgVfsrR7znn4/YLm75/5cSaoEHLAI9YjllEbgnSdDbMEshkO/zKJgZl1C
	EedsHdWANtf0iWAcAsCDHkcBFQWg0av0W3uQCnkpxWz/mKBFNRK73nWY0CnDDxqON
X-Gm-Gg: AY/fxX7zWnRuZxPlokdsGTrBq9QzcthSi2XbJ8WBFGNmHzekCceUhZDOpeHkiTIY0/u
	MSpv5VTwJhiaJRDRFB4aJp/UrBFWgIx+J07+9QY/q6TZCEj/kn2RJTX0YC2ids0IMQa5wYpg1TW
	Uh7uttZDMgs4Fl1WSUwancqE6yvQKrvPS1vd+laXT/WDMwToEzgQNjiIkwfKLODx1THCZP6zIRl
	l//L+p3QCwG/2JGxYisUCkJVdxAzoLEnQar+in4/WgVvUX/VHDRw8ol02S8fiD1UUg0UFtLNVTj
	Z9mCeQfPhC+Uk6hL/rTZggsLaYFpHENynlijiS1FXJSsupOcsrXJUNswPuAcYdxmcF20It/BuP3
	v7zG51Gsk91AOcRh96KEB8pkE1NVZ7wiCrlwLBryBoojZg1d/O7oyKKt5D3nZiI+efn7U8sViRC
	j3
X-Received: by 2002:a05:6122:208a:b0:55b:305b:4e45 with SMTP id 71dfb90a1353d-56347fddcbemr2294734e0c.17.1767891956819;
        Thu, 08 Jan 2026 09:05:56 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFryKTqX+VIKJZcVqmhSuDk5berk+HeToYMW6qymtmzRU0Q6B3iv78NM24/sjQMr3jxQN4Gnw==
X-Received: by 2002:a05:6122:208a:b0:55b:305b:4e45 with SMTP id 71dfb90a1353d-56347fddcbemr2294656e0c.17.1767891956073;
        Thu, 08 Jan 2026 09:05:56 -0800 (PST)
Received: from QCOM-eG0v1AUPpu.qualcomm.com ([2a01:e0a:82c:5f0:211d:6051:c853:ae97])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b842a2cffb3sm856373466b.31.2026.01.08.09.05.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 09:05:55 -0800 (PST)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        mchehab@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH v4 1/3] arm64: dts: qcom: qcm2290: Add pin configuration for mclks
Date: Thu,  8 Jan 2026 18:05:48 +0100
Message-Id: <20260108170550.359968-2-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260108170550.359968-1-loic.poulain@oss.qualcomm.com>
References: <20260108170550.359968-1-loic.poulain@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: LplWNAen_meQqU2WOaz_Zj9s7K3J5bDF
X-Authority-Analysis: v=2.4 cv=X7Jf6WTe c=1 sm=1 tr=0 ts=695fe3f6 cx=c_pps
 a=wuOIiItHwq1biOnFUQQHKA==:117 a=xqWC_Br6kY4A:10 a=vUbySO9Y5rIA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=mFalZiSrbaSKzsF1NWIA:9 a=XD7yVLdPMpWraOa8Un9W:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA4MDEyNiBTYWx0ZWRfX9IL/gEvcCN8k
 g+bFlgnv1JD+5HA/1dt28Hd00cvVtG8sHOwE8allXJTqKK6fTP5avrZK3OUY6z/d9s9Z+AfmmUy
 McDC0WGxxM2urVbQYYU/fyKtCz6iEiETZ9KK3svlau4u+Mc9WO2At3Crz6okCdnXT5kCiE7i+7m
 zCDC725+TbYVm9B71HCj8nvL6I3eJMZecW3IHDH91J0lk6ATxSHHhh3ltloQarr76yusEdICkdS
 UGvq3utraTpRRBJTRFVkh6yOAfgkCMkivCFSoUigTRAE0vqm08Aan5FMU1/J0XCrhRbebuwFaz+
 RF24TlaPIF+7CLSn6ck7DFYYsqdfq1yLO82+DxXAb44mC75qgMs7bCOR910864328Ci0VB/Tm7J
 cFIXv8cpttzXUoU9zfoJTffTloG47GwDfbrdiXBZkbANyF7hwQt5Z7Y5HLurB8MWPCAXanWLE+Z
 V7aa08pWpfyqjYUw9yg==
X-Proofpoint-ORIG-GUID: LplWNAen_meQqU2WOaz_Zj9s7K3J5bDF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-08_03,2026-01-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 bulkscore=0 suspectscore=0 phishscore=0
 adultscore=0 priorityscore=1501 lowpriorityscore=0 impostorscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601080126

Add pinctrl configuration for the four available camera master clocks.

Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/agatti.dtsi | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/agatti.dtsi b/arch/arm64/boot/dts/qcom/agatti.dtsi
index 992a157c571f..7815ece261ea 100644
--- a/arch/arm64/boot/dts/qcom/agatti.dtsi
+++ b/arch/arm64/boot/dts/qcom/agatti.dtsi
@@ -604,6 +604,34 @@ cci1_default: cci1-default-state {
 				bias-disable;
 			};
 
+			mclk0_default: mclk0-default-state {
+				pins = "gpio20";
+				function = "cam_mclk";
+				drive-strength = <16>;
+				bias-disable;
+			};
+
+			mclk1_default: mclk1-default-state {
+				pins = "gpio21";
+				function = "cam_mclk";
+				drive-strength = <16>;
+				bias-disable;
+			};
+
+			mclk2_default: mclk2-default-state {
+				pins = "gpio27";
+				function = "cam_mclk";
+				drive-strength = <16>;
+				bias-disable;
+			};
+
+			mclk3_default: mclk3-default-state {
+				pins = "gpio28";
+				function = "cam_mclk";
+				drive-strength = <16>;
+				bias-disable;
+			};
+
 			sdc1_state_on: sdc1-on-state {
 				clk-pins {
 					pins = "sdc1_clk";
-- 
2.34.1


