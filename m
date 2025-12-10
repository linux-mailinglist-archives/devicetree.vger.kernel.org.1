Return-Path: <devicetree+bounces-245545-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 71734CB1F83
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 06:26:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A586830262C0
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 05:26:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 410C13002D4;
	Wed, 10 Dec 2025 05:25:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QYepnAMS";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Ko68ZYX0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82B1B2FC874
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 05:25:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765344358; cv=none; b=UnoqkFAPHspeUp1gsTefHwEQQUJWx/SrgYENAsnnV3R+32n2tBWvXa24afiexZyCmsMZ/LfGLnEp3wJJ8vBfqD+9Y4ijOzQdfMOrceKbtgoYImUUpyXEhEKSgVbXOkRPiwQ9NBmdDFm1DT1VySz8dPexq2BYOi9EjxAK1I1s7mA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765344358; c=relaxed/simple;
	bh=xdDdUZnOYcgCwJUZZ34tZ/A0VcSemH5Zjgu8YsJDYGE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=JUmK5KZwpQeguMESYQ1cPM1tq49ZrvZYIKYm/nJSewF+C+Jfuk1nZkk0I2eFa/rmVukbU/K2RPD04892z7SqSGvqq5rH4iZ1hRxIMqb2uS3bTdrnX8h7q2Zqib15cELR9lGngc302jPAOYABvgYAXhCTj+AUxRVw8TZ2qSwa/o8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QYepnAMS; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Ko68ZYX0; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BA3M52x1987456
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 05:25:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=h4+jgRJZq4MrRRcwGvChOT
	Hw1OOD/rCwr41pxytunco=; b=QYepnAMSds0kdHxJZKp4PpsD4A8jIzXJ6BqAv3
	Ij5IQ+NAaiYS3Dyp8cI9Vd4rHlQ2PhT0OURXE4YVPvYPSHO15q//ZWJu0bQaullg
	ZyJzACjicaSECGOKk2WBAX7tHI4WtYnRas12Pp1SHaa3sIq7nVSy1F8sIPh40Vkj
	ge8zdDbKq+LfGdcMUqxu1kNZpIS7pW2nC5VENKtUfPUPmXYGhY9GRGARLKF3nGNc
	i7zn0w1jU0d9s7eSqf91E3/aIIP+hMUE0crmil9D6MZP3MJ2DnrkDRMQW1POUaKC
	ghgar3lMzTh7ssQieZbnzSq1ZS1tL/Bgpv+COBE2P4b3Z+WA==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4axvn4h8h7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 05:25:55 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-297f48e81b8so8190995ad.0
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 21:25:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765344354; x=1765949154; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=h4+jgRJZq4MrRRcwGvChOTHw1OOD/rCwr41pxytunco=;
        b=Ko68ZYX0Mo77vVdJwZGSGnhrG4EJUUNzHH4wR5LobOmL0ymFxJeMBeReesiKlIp1tx
         Dkkw99Pv8PuyZVCagVWwmF/TS8rV+7aTGXE9mPyiYacvCSZcDeI+JV1HIAdGS1sOAzfe
         +Ym1RA61Tj0a5nPEL+xfodSMnfFVkQvyKyLw0q733G7LzVNXgikDkIODRHazcW3z5HcT
         ShpmYy2SdlfxmxLUCTE8DX+YVstW9nwExRXHz6iHlbBU66r6PU7seh2SDWPW7RBlaY/T
         UQt4/NMltUukfxUREQkvxSHiTszEAVOucOgS2bvHABaarkIIBjK/9h/nGbHK+I/GoaqP
         aPKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765344354; x=1765949154;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h4+jgRJZq4MrRRcwGvChOTHw1OOD/rCwr41pxytunco=;
        b=WvFZtmeU6ukKrj59E04g4pGAMyimYekm052mgrhScYq9osPD8J4yqrFn5fFvIYlOgB
         dZXZBV2z+2dcEEeq3TF+tVWpBDZnLb118HiYvz01shtweI0+VpFwR4AGuvloaOg6piJT
         G/kjOMdiKLpjARV2VBG6SZKeKLK2xsHRWz2WH3862CIr4x6BeBnP6Cb464tT2eutZuk0
         JvzkB747d0V74pG75IkiVSYz1fS0iNSSPd32bmgWfDKBsirmYreb//GkQO/7UY1ctYDG
         pbgy5ByNFA5NES7Hmh1YNOr1lOkdPT0RRRkSivFS0yl9Sb4kAzmKBK5DevQ22vkW2RdH
         6JmA==
X-Forwarded-Encrypted: i=1; AJvYcCUzCb5hNzwvBmXFPAl95K9im5XnJHavIXYiCQaNgPfTP48VBfpfSLrlMvZ+3QRjWWSCrIKSuagE+KTf@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+/sS5mSQYc8+DXjjfOyAC6JFWG6RsYw8qWSPa+agtJeUJTikQ
	FflZla/SIA7Xoij79Kyf4jTpCem2NlpEhRTu9rZ+O0qECK6odKTY+S+euNZqY8003ngTiJQtcFY
	VlbrDiRTNizAtJ91INLADnKctVTltwe8pgKfAr95Ju/8kbgt9Ye3bEkWuTuSyvxiJ
X-Gm-Gg: AY/fxX7gV428ckbcM9Ep7QRrygFywKZnB1vQ4uvdCWek8ogKYeq3aFEpwz+PXYGB+31
	SlVwiiD6mk4h7zYYB2/L1jkCPxx6cACkDcelwQ2ezMJsEDGexn1eIc5XSAcT0OPWIZd3sy4rF2O
	8TeMoXZzbzdCp/fUP3Nvh9xTmLjL/kSe8Htwzy2rXbgi/wZx3gGmkTk5Tp4x8yBntrCy7MX0NUd
	UJ2C5UN9hanaao/lc4TwrPpxFRSBZmORomdu94ln0hJZIkg4UtH4SIUGp44bgYQtUf0ICJvrb9r
	OAb7+viiufQjkIp6Mt2EkYgUO+nS5b4IOoIwn1GZoY6MF/p+NJHtWBAAOi4aDvbLJpU696ay02u
	OOzNuQn/e1mITJdRqgoqod7oJ2YsEUEWncm4=
X-Received: by 2002:a17:903:1aab:b0:282:2c52:508e with SMTP id d9443c01a7336-29ec27f3a42mr13459945ad.8.1765344354101;
        Tue, 09 Dec 2025 21:25:54 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEYyjbZaWOt1SfFIga+uyq6cXzyGdN4fCdqbt8UdQgQckADhNLsbaTQEK62uYp6sbBXPpZRMw==
X-Received: by 2002:a17:903:1aab:b0:282:2c52:508e with SMTP id d9443c01a7336-29ec27f3a42mr13459525ad.8.1765344353604;
        Tue, 09 Dec 2025 21:25:53 -0800 (PST)
Received: from hu-hdev-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29daeae6ad1sm172644265ad.90.2025.12.09.21.25.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Dec 2025 21:25:52 -0800 (PST)
From: Harshal Dev <harshal.dev@oss.qualcomm.com>
Date: Wed, 10 Dec 2025 10:55:33 +0530
Subject: [PATCH v5] arm64: dts: qcom: x1e80100: Add crypto engine
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251210-crypto_dt_node_x1e80100-v5-1-5ad22a869a56@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAEwEOWkC/4XNwQ6CMAyA4VchOzvSdUzQk+9hDGFjyBJhuOECI
 by7g4sXjZcmf5N+XYjXzmhPzslCnA7GG9vHEIeEqLbq75qaOjZBQMEY5lS5eRhtWY9lb2tdTkw
 XwACoVJJVWPBciiOJ14PTjZl2+XqL3Ro/WjfvjwLftv/NwCmjeMoRAXijC36x3qfPV/VQtuvSO
 MhGh+zDIRS/uSxyjaiBS4lKAPvCrev6Bt6TtWIUAQAA
X-Change-ID: 20251127-crypto_dt_node_x1e80100-bcb1a2837b56
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Val Packett <val@packett.cool>,
        Stephan Gerhold <stephan.gerhold@linaro.org>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Udit Tiwari <quic_utiwari@quicinc.com>,
        Neeraj Soni <quic_neersoni@quicinc.com>,
        Wenjia Zhang <wenjia.zhang@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Harshal Dev <harshal.dev@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765344348; l=3082;
 i=harshal.dev@oss.qualcomm.com; s=20251124; h=from:subject:message-id;
 bh=xdDdUZnOYcgCwJUZZ34tZ/A0VcSemH5Zjgu8YsJDYGE=;
 b=CBs+/uHUIhz9sBnzvQBEXJBH77HK6Cf0lmef6ko4CcD12E+Nfs9Elip9eANqPy6vVLVnwcH1m
 KVsdZrRlDp2BhbeGP0m9DxFzhD4JaheMFpn5j9RGmJYrRP60g7dGSvb
X-Developer-Key: i=harshal.dev@oss.qualcomm.com; a=ed25519;
 pk=SHJ8K4SglF5t7KmfMKXl6Mby40WczSeLs4Qus7yFO7c=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjEwMDA0NSBTYWx0ZWRfX8dIH/nXbUugu
 q0Bip+xGJUi5snenz+s8ilOq5b+/9q6CMmjJ6JEZo0Jj5ZBYYoILnHr2SY8y5GhqnzcUEbDRTJD
 NWuOtrs4ujnkA4/Ypps7igymF/YLIcEtZ8CQkJcbY/leYqP+TZJwZ2VlQT8nx7ULABfpRoh9KQD
 /8gLdw5djXRkdrRC0bpWaeRozK9BtJB/20YsVA7WB4ZdE5jTpB5BPtb7DqRXXkfCFafuVs9szZN
 aMvarNuXsW9E+24/8W1Qg5Gg6t+C1md3V0EIhorYe/g6pL+eBaUd+GrysvNnGb4gALh7/arz8o9
 bpz8udSPb30Sn5KNHhmjlfJKCYRa9csRiateahcJoT6vp02E17qgoF1YVkVSRPY3yRMOdtXYMG6
 1SvPZqFUuEI9LGloteaenLvCp20hww==
X-Proofpoint-GUID: vIiXlZy9sJEtkBfyykbf6b7RnRYGGyzH
X-Authority-Analysis: v=2.4 cv=EarFgfmC c=1 sm=1 tr=0 ts=69390463 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=sh6W_4nX93PCX1bT9VcA:9 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: vIiXlZy9sJEtkBfyykbf6b7RnRYGGyzH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-09_05,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 phishscore=0 bulkscore=0 impostorscore=0
 adultscore=0 malwarescore=0 clxscore=1015 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512100045

On X Elite, there is a crypto engine IP block similar to ones found on
SM8x50 platforms.

Describe the crypto engine and its BAM.

Tested-by: Wenjia Zhang <wenjia.zhang@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Harshal Dev <harshal.dev@oss.qualcomm.com>
---
The dt-binding schema update for the x1e80100 compatible is here
(already merged):
    
https://lore.kernel.org/all/20250213-dt-bindings-qcom-qce-x1e80100-v1-1-d17ef73a1c12@linaro.org/
---
Changes in v5:
- Sorted the nodes correctly as per their unit address.
- Collected Tested-by and Reviewed-by tags.
- Link to v4: https://lore.kernel.org/r/20251208-crypto_dt_node_x1e80100-v4-1-f5d03bb2c501@oss.qualcomm.com

Changes in v4:
- Updated iommu property to use 0x0 instead of 0x0000 in last cell.
- Updated dma-names property by listing one dma channel name per line.
- Use QCOM_ICC_TAG_ALWAYS symbol instead of 0 in the interconnects property.
- Link to v3: https://lore.kernel.org/r/20251127-crypto_dt_node_x1e80100-v3-1-29722003fe83@oss.qualcomm.com
---
Changes in v3:
- Fixed num-channels and qcom,num-ees properties by updating them to 20 and 4 respectively.
- Link to v2: https://lore.kernel.org/all/20250221-x1e80100-crypto-v2-1-413ecf68dcd7@linaro.org
Changes in v2:
- Added EE and channels numbers in BAM node, like Stephan suggested.
- Added v1.7.4 compatible as well.
- Link to v1: https://lore.kernel.org/r/20250213-x1e80100-crypto-v1-1-f93afdd4025a@linaro.org
---
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 26 ++++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index 51576d9c935d..7066130f242d 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -3760,6 +3760,32 @@ pcie4_phy: phy@1c0e000 {
 			status = "disabled";
 		};
 
+		cryptobam: dma-controller@1dc4000 {
+			compatible = "qcom,bam-v1.7.4", "qcom,bam-v1.7.0";
+			reg = <0x0 0x01dc4000 0x0 0x28000>;
+			interrupts = <GIC_SPI 272 IRQ_TYPE_LEVEL_HIGH>;
+			#dma-cells = <1>;
+			iommus = <&apps_smmu 0x480 0x0>,
+				 <&apps_smmu 0x481 0x0>;
+			qcom,ee = <0>;
+			qcom,controlled-remotely;
+			num-channels = <20>;
+			qcom,num-ees = <4>;
+		};
+
+		crypto: crypto@1dfa000 {
+			compatible = "qcom,x1e80100-qce", "qcom,sm8150-qce", "qcom,qce";
+			reg = <0x0 0x01dfa000 0x0 0x6000>;
+			dmas = <&cryptobam 4>, <&cryptobam 5>;
+			dma-names = "rx",
+				    "tx";
+			iommus = <&apps_smmu 0x480 0x0>,
+				 <&apps_smmu 0x481 0x0>;
+			interconnects = <&aggre2_noc MASTER_CRYPTO QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
+			interconnect-names = "memory";
+		};
+
 		tcsr_mutex: hwlock@1f40000 {
 			compatible = "qcom,tcsr-mutex";
 			reg = <0 0x01f40000 0 0x20000>;

---
base-commit: 765e56e41a5af2d456ddda6cbd617b9d3295ab4e
change-id: 20251127-crypto_dt_node_x1e80100-bcb1a2837b56

Best regards,
-- 
Harshal Dev <harshal.dev@oss.qualcomm.com>


