Return-Path: <devicetree+bounces-248660-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id ECBC9CD4DE1
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 08:30:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C8E3D300647E
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 07:30:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B355B306D2A;
	Mon, 22 Dec 2025 07:30:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ggfQWPqA";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ctdUEu9R"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 333381F5846
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 07:30:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766388639; cv=none; b=HwibgbVbFwBi7A63/OjQ10E8Cy3Yy9cTf32y5idq9L/5kyXv8mfWsV2iH9YRNW6JKgrud/Jwi+AvZjsy6mI7k7cqKZwCM6H03fgEmj2qWl8Tgi0+18gxXZzxQZpdi1hieOwrbgNQglIfCb3xyMKLQzAo2PYNAsvBgy2MNXADIwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766388639; c=relaxed/simple;
	bh=qW1dCynVSQHJl3GfWl5279VWZIV36Iu0VGCn/rkz/PY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=g8P6cHDuD7k49yahViCJiOV+aJ9I6YDW0MWJyrPNwzkywoMbKGXC/CX5osSkXINmufsxnqBBMWy190eNyFAAaz1vy+S7TYLoh7/2AeWUqGtTIjNLYMGbq13URFwUyqU244PU0H6qCTIR57byiPpJcGKXzkSpIjKuivoEDfQ6TXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ggfQWPqA; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ctdUEu9R; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BLNFexD3841451
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 07:30:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=pOw7S4DuLhrD4R0rtDZpc9
	Lki/mxYUK9+TJeC3HNIpI=; b=ggfQWPqAvYSVn3/W/zZXrc7YEX4p3jliDmzj5X
	5DziLF62dx3PSkspK85TcBF/SISGvoDcCwdB27JvrDtH1e7CWiow5DQkujORQBp6
	3IbU5ZQTNDLo587r/GS+EnyppG8QCS3aJAAVnCCPmHFgAF+XSmiHzT6hD/uUBhuy
	EoIYv8kSJpCCwP+S1Yv81Lp8DTB9Y5kb+uEsBAR8XCAFPyPrs4tVFxOQTnwX13g+
	2vshY65iDoy/JZcbl/pQzd6uVzzVabUzsnfq9zG3KEYCO150NI+QzUookii6EAru
	koo7tJpjhGewaJ4dv0B3fUgph/WuNj1seojXftZDFv+whlag==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b5mry42p7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 07:30:36 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2a0fe4ade9eso38876755ad.0
        for <devicetree@vger.kernel.org>; Sun, 21 Dec 2025 23:30:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766388636; x=1766993436; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=pOw7S4DuLhrD4R0rtDZpc9Lki/mxYUK9+TJeC3HNIpI=;
        b=ctdUEu9Rn7sJ3Ptaio6helwgDPOF6hSK4WUCN1tzKndS0SW94ZqD5xCm+LEAr6oXa5
         FHwS09J970SW7xESaXb++025OeEnFH0hpjY/WPZlVUDauzyOCYfTvz5ZhNIpGD78vf09
         XqpQGMq8Q8ahSaDMmBk6r+2oEHofB+IVsNAOnx84q2q8EFvpJpyPwOZm+gA5RTgkHGdl
         kbdEm7+4a9BIRsmnauHNGujcj3P+OZSSsH1Ib7hoE98VuDZEz9Kko6SwVjiNY/7Wc4kW
         zMDwGldw+nraBUeHME5ZbXNwaOf4UdAF/JooULLinXM/qZzAOavBhuS2sI94qnt9nan1
         fnxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766388636; x=1766993436;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pOw7S4DuLhrD4R0rtDZpc9Lki/mxYUK9+TJeC3HNIpI=;
        b=T/TdaLWF/HMWWlHD8jTWUmwzZ1c1FiwFJR//XW+8St8KUAyAirypmv0EoTjEW2hbGn
         nR2agt3taDNIcPrve6KpCgkPh4YN8smB5jMNbSK/tVZoLafv2aXuQg5Y459wOD9vdl/x
         4oNDsphLy+Av9j4xs6Tg6/53IAPA1pMFSlFVUtVdu04YjHIIWIytf4T4HsjBBgQOa8Qf
         AP0t1Gra9V/1Hp540Kd2QEOU1HsDkl14Wj6ATs+48eKgq07IEmGniY4F80sN59iccAQZ
         K++ainf5gVKggnfQjKpQWXW3PBhh93k3qBCtoPWo00K/dIm0aAUs1Glvh43xR+QSash3
         zTjA==
X-Forwarded-Encrypted: i=1; AJvYcCX3WIgIfHpuPV0MPwr67jOkA4mMWLpOcEEr95ZtuNeJUEMTmye147svfC2OamRr4qVE2D4qrayQAUC8@vger.kernel.org
X-Gm-Message-State: AOJu0YxHP6FG+gkYfc7zSqnYvR5DAAFSLy+6vWzLnd3yA8f6Y+zu08Ds
	0mSxad8xZ4+snlLfa5Pqlq2+KqWMtUlzDTM3zDyNPlG5W4tsZKl+P0Y84qZMmqprA5tUqsP3wvv
	8bMAsAoZ1SeMrNaIBapDvgPm7z8iIASNyWQDZwxOZaTV6Mr+deVMnWcGxes7VwOlEdpbGoo7l
X-Gm-Gg: AY/fxX7T30/KbQT9A3dcH0ah08sfmez1vLlvvgsxFSDkRe8sPql2lG4ViS4mRPB5HmI
	E0+ro2hqFCqS4Hh/5ycTzN0s3DlebLQN/eKtBkXLWxYiiR/TMRV+r4stHPmUWdkwdt2sHBc89EU
	qK5UqoBLjZTOiJqgpDMSp2H96q69Y3ZotrxpNBxyDTy+cjdwXciKyoZG+jLhzFVtmH8O3zG4YCu
	/rlMUImJoXwqBvBy7Auk913Za3FSkv+i3yNJmrRVKO3AI8azlHJ/nW+7sgrbowp2oxEqQ5VA/KG
	0r84zV1j7EjP5TciL//+uILYvY5Yb+h7Le1SXN2qzFu9iCwg1C+inM2S43m4qW84FFAZaM1AHBz
	nTBVyHntFF+L4j1WxxOPyPPmtX/8ODnXAuKHaQRAXTRMdpdc=
X-Received: by 2002:a17:902:d488:b0:2a0:9b4f:5ebd with SMTP id d9443c01a7336-2a2f2229d26mr90282715ad.15.1766388635683;
        Sun, 21 Dec 2025 23:30:35 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFyG7vVnroKfDbK+1jLSNTAu8S2yVfhu3vCAJeQSMcNFKnEvbSuRLlnUpWEfy50d5f4FVP4OQ==
X-Received: by 2002:a17:902:d488:b0:2a0:9b4f:5ebd with SMTP id d9443c01a7336-2a2f2229d26mr90282335ad.15.1766388635179;
        Sun, 21 Dec 2025 23:30:35 -0800 (PST)
Received: from hu-arakshit-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3c82a9asm89052925ad.30.2025.12.21.23.30.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Dec 2025 23:30:34 -0800 (PST)
From: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
Date: Mon, 22 Dec 2025 13:00:19 +0530
Subject: [PATCH] arm64: dts: qcom: monaco: add QCrypto node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251222-enable-qualcomm-crypto-engine-for-monaco-v1-1-06741d6ea66a@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAIrzSGkC/x2NQQrCQAwAv1JyNuAGdKlfEQ/bbVoD3aRmVZTSv
 7t4nDnMbFDZhStcug2c31LFtEE4dJDvSWdGGRsDHekUiAhZ07AwPl5pyVYKZv+uT2t6FmWczLG
 YpmwY83noQ6AY+xFabnWe5PNfXW/7/gOcjSa8egAAAA==
X-Change-ID: 20251222-enable-qualcomm-crypto-engine-for-monaco-7c6b9112779d
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Authority-Analysis: v=2.4 cv=cbbfb3DM c=1 sm=1 tr=0 ts=6948f39d cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=cVBMcqNyiYGVgfMZcJoA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIyMDA2NyBTYWx0ZWRfX09iP7GV4N+Wg
 E+gpSk6OEgLx+8aMQdZOIXYZyEYi0BooR75XEPDH0BenOPWp/ws4UuPx8sm0mBHCBqOjGed+h67
 M6vSccyy7hsX7xvv571hKbrEZIsGubsWndCiSKUQ03l3hYHtyt5PxGpzQXDSK9NEBfDc6oh2wKu
 U20mDSg4XVU1QG0UDj+shogSOPJLxOl+N9TXNUk2eWc4l0++9GObZ0Q9rt0Qh8zmsTr8W0vpmhZ
 DPBFcpU67JMIVdoeHcqJb7ZajczbK6/7Nfp+Q7HBsk3opa2p91FhDm0O6L2dzdRmDy/hWcWYa0h
 wGslTH1Nq072IL45PJ7+oSbYRfHLHuahPGti5JsYhLh30r9PHCIhscN17Gu9ubvku2T1WiJEyJQ
 URQNwAJ3uECUGWqMnUgVyllHT2vTAS9Buxk6tDKjhf+DLuLM4F8k65asRZ4KIrW5Rv1OGWiZ2DI
 J2Ie3In8S+s4b0Mizhg==
X-Proofpoint-GUID: rrVXLVctlo4oLWozgwckRILaK-KbBSk5
X-Proofpoint-ORIG-GUID: rrVXLVctlo4oLWozgwckRILaK-KbBSk5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-21_05,2025-12-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 phishscore=0 malwarescore=0 adultscore=0
 lowpriorityscore=0 impostorscore=0 bulkscore=0 suspectscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512220067

Add Qualcomm Crypto Engine device node for Monaco platform.
Bindings and Crypto DMA nodes for the same platform is already
present in the tree.

QCE and Crypto DMA nodes patch was applied as part of the
commit a86d84409947 ("arm64: dts: qcom: qcs8300: add QCrypto nodes"),
however was reverted due to compatible string being miss-matched
against schema.

Resubmitting the enablement of QCE device node for monaco platform
with compatible-string being aligned with qcom-qce schema.

Signed-off-by: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/monaco.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/monaco.dtsi b/arch/arm64/boot/dts/qcom/monaco.dtsi
index 816fa2af8a9a663b8ad176f93d2f18284a08c3d1..dd0b9ea27fe1cdfbf6aba07e98183871be7ee889 100644
--- a/arch/arm64/boot/dts/qcom/monaco.dtsi
+++ b/arch/arm64/boot/dts/qcom/monaco.dtsi
@@ -2350,6 +2350,18 @@ ice: crypto@1d88000 {
 			clocks = <&gcc GCC_UFS_PHY_ICE_CORE_CLK>;
 		};
 
+		crypto: crypto@1dfa000 {
+			compatible = "qcom,qcs8300-qce", "qcom,sm8150-qce", "qcom,qce";
+			reg = <0x0 0x01dfa000 0x0 0x6000>;
+			dmas = <&cryptobam 4>, <&cryptobam 5>;
+			dma-names = "rx", "tx";
+			iommus = <&apps_smmu 0x480 0x00>,
+				 <&apps_smmu 0x481 0x00>;
+			interconnects = <&aggre2_noc MASTER_CRYPTO_CORE0 QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
+			interconnect-names = "memory";
+		};
+
 		tcsr_mutex: hwlock@1f40000 {
 			compatible = "qcom,tcsr-mutex";
 			reg = <0x0 0x01f40000 0x0 0x20000>;

---
base-commit: cc3aa43b44bdb43dfbac0fcb51c56594a11338a8
change-id: 20251222-enable-qualcomm-crypto-engine-for-monaco-7c6b9112779d

Best regards,
-- 
Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>


