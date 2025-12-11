Return-Path: <devicetree+bounces-245784-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 92FF7CB5444
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 09:59:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 07B4930361CD
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 08:56:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A1AE3009E7;
	Thu, 11 Dec 2025 08:49:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="D92h8Tw6";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fJQ4EyV8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB2413009D3
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 08:49:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765442999; cv=none; b=JhwZ/WG311YAFvOBTt6bh1Nn/AeYbg+wGT5BvZz5h5n548aMzlOgBWioHK4aDekoE6Z/Re8Qx5lKdFLIzXxdA96XzUR1jGRAVaqKBlen4AcnVP7lEPPUhRg5sVnEeHPTIqXe+rK3OsUjZh+EVBpX0yc2IouTrGBsnVZ1E2oItqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765442999; c=relaxed/simple;
	bh=bvfLg/DOPMj8qnPhaTia7oKAAuu0LFvdKpTuLc0a7K4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=lp13+fA8VvqgPO6FEwyyEkQFkYO2rJharYEsYaqwAXzDNnN3/nG7ShZbyxhi77wMjP6Mk35n1xMlAEi6D/85ZklpZKrO01GCSzp+N1xiubmobSRKtpv18VmL+Lm8yWdPIB/i1g233+aeseVOsrsgitNazVboUJMLa10ruPiDtGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=D92h8Tw6; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fJQ4EyV8; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BB8gS7M964408
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 08:49:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=8SxwnjnpxPGkw7klPKkoO2
	QYM+Z388l0PBRvJ4pFsYE=; b=D92h8Tw6ptL57sW0GxXAJYIfezfZl3CDfmaVmf
	f9c9xydTEQtU3bYztaELKtNHPsUUR2TvxxaWK4/x6sIKnmaFzF9Z5/xpzau8GdIj
	+hUpT2H9fDO0QMfKgqJYWoDW+SiYdVailaSWbf47RkulcI+HDmz+AdJ2pAz4OIdK
	Ly+Imc3z3/puJNsUg9bLkRwih7aSlNC7EAE5N0uK12QY0JN5r2SZ/hMwJUTmcv0j
	/c66N90U5YyxPuwCMiCGUmFBC/+mLc8vyUHJuS44j9/WLoOJ+9qVDsGJmWw/1u/g
	O+n5f9ksLe8GmRHqG32wKYeWyWPkiQpo+ma4V0KmNv7OHRSA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ayg0pst9v-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 08:49:57 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-295952a4dd6so16527715ad.1
        for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 00:49:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765442996; x=1766047796; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8SxwnjnpxPGkw7klPKkoO2QYM+Z388l0PBRvJ4pFsYE=;
        b=fJQ4EyV84Pozwd+UgWDiXSnuMk2unG0n+meqKCXw45E1BV7gEyyRNwlhiseFF7iwTr
         aZXpJuDEWa4AHBndeQO7o12Vh9LqeB7JtVKMsud5Cp/yf6FEe3C/0icm1xj47+4123mx
         nrff4OlsdJ43W4mG5XyD9hThm5A6WkukP5QA082rk9EsoifFkx+EIkd2m0E7L4kNBqcq
         Dz495tO14g548NVnq/Mf98QvkAiRPazarEqJcKV9PI2t03a16YLkzpvPObXssWxWYYF0
         8KGGagLyKOz4WGQE8h7esxXj8gSMCQoaZruKrRinep09116nvNseVB+z2UF1noEZSajF
         6z2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765442996; x=1766047796;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8SxwnjnpxPGkw7klPKkoO2QYM+Z388l0PBRvJ4pFsYE=;
        b=trxMGEatd/3v5CW+ZpVug1IaUCCVaJKWWqo88ejjEpN6RTeReNz9+m/jWcLkBZSYLw
         43LEVO0CGQz18LEB08JLvGTDJLmkOOstW1gIAs3mpk6HKpRbiMFqsqiNa8Hw4fKQ+9J8
         f1Mwsc6a6dK2kzZ52jNzP/UEaYhbP72+yt0Duur8ctRbJm37rd+A6TmOfz9aHoV5eYZi
         UuCeIqD3zW9YiEZKBDWoEn4pfA3wPaHlg+zpStGpTnEdLIorYzymD9J22YNOs63K1YX2
         lgXcc1aZU/pe8zCC8MF1FgKF6cMu3l98b2cCR/REqvoYMB4JR9iPs3nlF7s7Cb+7/bf+
         5HpQ==
X-Forwarded-Encrypted: i=1; AJvYcCUbgOkUn0LV0LTBe8aTgb8jQj2kuLU85527uKX2p/Mn9l++gb/AYBjdsDF+YLBA55jUrzdaBE/YaVcS@vger.kernel.org
X-Gm-Message-State: AOJu0YysszXo9DHpCbXn5TyZuVGsDLHfTq9hydXbrWvIEYrYpXGmqr+B
	v1+pdGsk8NMGRKMvbhGQvfN8qjP7MxsXOaZmYuQDBqHEs2/HWjWsRTTN942ICjdS+s7jtil0ABu
	KzKu7EyYDfVetP+UohHPSk4ERhIVd/RZB86ggLIjYofQm/Fz14H10lyVI8sVeSMde
X-Gm-Gg: AY/fxX7vLypUnCinxgnE1k1XbmFv5k6JSNiGknWDOI8ox1AwVbsFgGsxQxjYxHnl/PU
	g06hWWgjPfp9fHB8Ylh/+O+v4rlIcta20rJPpNgFit5/XtT3SAik6/hCpXSvfNiX4aRPOsYKxbq
	/qAcTHKV+b001FS+fROGjLn9RHF9yoxDbmRjDS7+xfJFXUcMm7sAOggUMauGSgVCGT2h07gkbgU
	XyDoHHnYPrjjJRlLKQYyG1wKQZ4RW9Qbt2h82RImB1RmgENfuNYpZSOfSUmxn9xwQ03lpUSNY6k
	6ESo2Tts1lynZilHCtSeiLxBcM7Yip20rWdwSnXoJ2OWa625ex+uJtkegFQ7OQ3+k/q5IpnzDKR
	giH+mu4aQrh/Zkfzw3jW2+A6ihKhvxyVC4LQ=
X-Received: by 2002:a17:902:cecc:b0:296:5ebe:8fa with SMTP id d9443c01a7336-29eeebfe575mr13747375ad.23.1765442996385;
        Thu, 11 Dec 2025 00:49:56 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGBa0oS93/MQoeu73NXgcNxkSjgAVk1cWs5YGATBhhuOw2YX1kd6M2yLudoYN7TBK0HDJ06bg==
X-Received: by 2002:a17:902:cecc:b0:296:5ebe:8fa with SMTP id d9443c01a7336-29eeebfe575mr13747025ad.23.1765442995876;
        Thu, 11 Dec 2025 00:49:55 -0800 (PST)
Received: from hu-hdev-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29ee9b3742dsm17330425ad.6.2025.12.11.00.49.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 00:49:55 -0800 (PST)
From: Harshal Dev <harshal.dev@oss.qualcomm.com>
Date: Thu, 11 Dec 2025 14:19:45 +0530
Subject: [PATCH v6] arm64: dts: qcom: x1e80100: Add crypto engine
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251211-crypto_dt_node_x1e80100-v6-1-03830ed53352@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAKiFOmkC/4XNSwrCMBCA4auUrI1MJk0bXXkPkZJXNWAbTWpRp
 Hc3daMLi5uBf2C+eZLkoneJbIsniW70yYc+R7UqiDmp/uiot7kJAgrGsKYmPi5DaOzQ9MG65s6
 cBAZAtdFMoeS1FhXJ15foWn9/y/tD7pNPQ4iP96ORz9v/5sgpo7ipEQF46yTfhZTW15s6m9B16
 zzITI/lh0OQy1yZuVZY4FqjEcAWOPHFMVjmROaEsohKVhslqh/cNE0vhpId+2MBAAA=
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765442991; l=3298;
 i=harshal.dev@oss.qualcomm.com; s=20251124; h=from:subject:message-id;
 bh=bvfLg/DOPMj8qnPhaTia7oKAAuu0LFvdKpTuLc0a7K4=;
 b=LswJj5AJOraWtdtSFasYLTfaVd6dtyw+evTQKolsSF8+71Q75dfH2duwSDjO5kEyk07cJHAEu
 UTQkSyn0fR5DRipGZKV+yk/Oqre/uPYyfj4pNtne1ltcJQdJ3NDVWKg
X-Developer-Key: i=harshal.dev@oss.qualcomm.com; a=ed25519;
 pk=SHJ8K4SglF5t7KmfMKXl6Mby40WczSeLs4Qus7yFO7c=
X-Proofpoint-ORIG-GUID: RbbIWEWfqeUOnd8sIMkEVRUPFSkdV7A_
X-Authority-Analysis: v=2.4 cv=b46/I9Gx c=1 sm=1 tr=0 ts=693a85b5 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=sh6W_4nX93PCX1bT9VcA:9 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjExMDA2NCBTYWx0ZWRfX4g+Rns9aGxxs
 5QA55+SZFFLZGpzSrpCCVLyadru+G9CTRw2bUeJfqN7zg0izT/yacBi/AyMZuqHhSaKUWYiiG8v
 QVB0hdoTwupYPeOyWccr1uix64b48gTVDLO1YrzkMG4rzPuvFdy6rWvMbZC+Uwvla/V8yWV11Uw
 xAdl9RA0x/4japIiQi5m7E8eqnt8cnP9rk/JY2AcWuuLUaQ3xXEAgNstxhv3y2Hdhko3znaoGf3
 GrAumfcnAFInVYy0xiw1dINj3r594/dloC1KVmK3TardW2fzmRLkwreja6a4JhzsX0vwS+LgXM7
 QI30P1Zy6+RQ4WE3durezKBauf9YTlA6ThS0fshhg3HpfpxGs8TrgunWgbWum7/iAMYMy4qzH7H
 gdJrfAoje516tV94FAShZg160GHiNQ==
X-Proofpoint-GUID: RbbIWEWfqeUOnd8sIMkEVRUPFSkdV7A_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-10_03,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 spamscore=0 lowpriorityscore=0 suspectscore=0
 phishscore=0 clxscore=1015 adultscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512110064

On X Elite, there is a crypto engine IP block similar to ones found on
SM8x50 platforms.

Describe the crypto engine and its BAM.

Tested-by: Wenjia Zhang <wenjia.zhang@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Signed-off-by: Harshal Dev <harshal.dev@oss.qualcomm.com>
---
The dt-binding schema update for the x1e80100 compatible is here
(already merged):
    
https://lore.kernel.org/all/20250213-dt-bindings-qcom-qce-x1e80100-v1-1-d17ef73a1c12@linaro.org/
---
Changes in v6:
- Added Reviewed-by tag from Abel.
- Link to v5: https://lore.kernel.org/r/20251210-crypto_dt_node_x1e80100-v5-1-5ad22a869a56@oss.qualcomm.com

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


