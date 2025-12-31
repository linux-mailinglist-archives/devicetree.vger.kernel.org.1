Return-Path: <devicetree+bounces-250779-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id A9377CEBC5E
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 11:20:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 45433300D54E
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 10:20:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2E50312816;
	Wed, 31 Dec 2025 10:20:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="M6Kpw0o8";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PcB0Jhl2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 880812DF12E
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 10:20:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767176439; cv=none; b=PhDNZ1hI2CkOCw8eX+nsmne0DteQKIDWZRmmmUCIC8ax74RIVCJD3Tozd4wEGU+HZV3k7lz/CfFzckVarr1NvlksQTVLf87LSqiE9F2dgTQT5FrUWNsTdDIzC3A9ZBivMHa0A0Ro2kJwwSCbZMOfdGMgrPZxm4dbBT4wvCTBOlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767176439; c=relaxed/simple;
	bh=WbwLapcoBYVUOHH17uAt560cjO0yCUq7zurPWaYfqCo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=uqq93AWgHHZ+GzC9Yna5can4LFs8BZoad0+9K/4BCsM7V+Tw3xI4JOu+SfOU9xdl3dfOYGleuusYjYxqGjXa2p4mRn6KDzCUPe2k1Fc3NQJuaOnRpFLM/DXth3oeqbJLbeO6v2GfqYrkyyxG0tBVewZ6jKyumcI09wiOqWmXHOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=M6Kpw0o8; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=PcB0Jhl2; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BV1m0hm3971198
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 10:20:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=XEBcPcSM6wL
	bfxhU/wplJRdk9eCPONJKwsjXMmZ6BuQ=; b=M6Kpw0o8LU/d0DRvKCHV2VWmXQl
	3vI7S2w3Wh1nfSKvprafrsJVv21uU/xbi8dmPFuG7e4a59uEN82DwZW4smuhfntl
	vH0yzsCRPEq0WgVCjQznFasiE78mzduNrNMxVCNoT287JuIoDvv5UYHjVgmYI1HA
	2J4NuGTWVk8YB67/KWTWTt9/Jyo9kiy+VpyGNOJW9S9t35TqMhxKafU5yHH+AHdZ
	fUereK8DNMXbgC0P3j83He339Zr6ZKue1olI7chPrGUEHY9doVoiYvRgQSHnXuyT
	fjIVDBWOHFEUgB5sWi0vqOrfN6WNeg4DoBqUtvuDLZdpGiPPOWvd8dZoouw==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bcdky2f9m-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 10:20:37 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-34a9bb41009so17283317a91.3
        for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 02:20:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767176437; x=1767781237; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XEBcPcSM6wLbfxhU/wplJRdk9eCPONJKwsjXMmZ6BuQ=;
        b=PcB0Jhl2KpKRF8NokbiM3Cq6TvykID4osbk6RlV82UZQ5xAwI6+FiRXhLjIGWIDrpQ
         zQ3cIHsqShwzrsY24UG0ppaRmAXyX3iH/bpVRfDZsvp/jZYw0zQzw7FQ1f/ktj0+4f5b
         vBzHMSptpe00A/nlGZXUaNnw5leMqrqP81FjDWQbThzfdVXGLiRKYgPeILjT433khF6E
         wTEtAz25yEqmbEG8LBasLdwb/evVUymLNSm34R5gMDvQfaYZsZYd7UEUxXICJJ3fzGG/
         FCopTPZICfQEvYEx2Ia1V3Rfmep7pabaugS9a3KDJ4k0y0OOEarWEZyKYfE8Jbt23ZpE
         2tEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767176437; x=1767781237;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=XEBcPcSM6wLbfxhU/wplJRdk9eCPONJKwsjXMmZ6BuQ=;
        b=Fxw4WMLe8QS62dRNdNLIuz6O5A3Zno/ShJgorUK6Ek0hBI/o8ih99z0Z/bET50nHsp
         bHWICAaS/YTbiL/wP/8FKirQ4crfTW+HnZUOdQYoLTUue3Jyo4eHhr9M4Mx5C5V6vfyn
         9O3ul1DJBZOoaM591JlFc6YFrhNBVNcTVHw08usibT1iRxL1/wzJ/ZbHv1QJRgi0EYd8
         f7pniRGOZUm+akPNuRpHM9FpPD4Ee+DE27MTi7gHQ8HHF/qUo5uMMqRd8z6f4vpkVoGG
         5s4wv4DxQTs/1+vk2JyfIYBqRF4lbuKQmvErwNrBn4WZW80G/7vfgsAWll5WVjz6ZLEh
         iwWQ==
X-Forwarded-Encrypted: i=1; AJvYcCUW5Oc8pd12MCYPD8TyszoEc+Po4FZjG61TS2UYhsI+d9GGcNIEq+NP6E51YCqhzdgOgAM75hcAbcgc@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9/P17WK4yJUD0rO1bYgoCDyx5PsjtaVibEjaYK6YaM6JAI1rv
	gB5C3iFLXJWcgCa/Or4PdAxHsLlfLoAKv4ZVXx+lFOivhgaHtAyVBXxnLAq9/cAUXHRRGaBqA21
	Dr8k2ky0obu7aQf9+7PhWld98GSn0YEobvPWD2Nr633fx3po58vz9Lx8N769Qazgh
X-Gm-Gg: AY/fxX7lZMALeRyrJOlTDAG28r+vJ/oolVGv1/DbnCKFtI5bOzokmuUU5chJFXBMy4Y
	iPF0YrgO0gkhtdbDdeRjkuvt1hhpRdRqNzbILsFfnApx4ID5VF/ZM3MDLr0bDfAqKnBcJULLxk/
	Dv0DTQJrkaI69MBXzfcDYDkTCvbd699AlH3lvRy0smi4SDlpNdWNRCxjsODoh0+DCpaE/kAri3f
	4u7pziHiThsPcAAXVMi0AhpyujXG5LvZtNUVHQI6mUU7bdlMe6x7Su+T7M+VtS4R19ROalrLmJS
	ObOmOnW3ndG7S0Zw2xRBvDwMcJxmyX4XIcpZU0LZHcu4XBlsOoZNQA9ji7oVgoJkt8Rgb1q25QF
	VhX5btQdHV8yok63uQtkBRwa57gPAL5J52ElUMJ4lJOIzyoYDyy9J
X-Received: by 2002:a17:90b:4d06:b0:340:ec6f:5adb with SMTP id 98e67ed59e1d1-34e9211e593mr28730556a91.3.1767176436728;
        Wed, 31 Dec 2025 02:20:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFEjlJBqSWAvJiTfFnf3s3JSnAtH+WdrtcyGfKYTo9ybrSfp6uxtjPPOtWE6yRH94zddL3hRw==
X-Received: by 2002:a17:90b:4d06:b0:340:ec6f:5adb with SMTP id 98e67ed59e1d1-34e9211e593mr28730523a91.3.1767176435623;
        Wed, 31 Dec 2025 02:20:35 -0800 (PST)
Received: from hu-pragalla-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e9223ae29sm32163920a91.16.2025.12.31.02.20.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Dec 2025 02:20:33 -0800 (PST)
From: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
To: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, martin.petersen@oracle.com,
        andersson@kernel.org, konradybcio@kernel.org,
        taniya.das@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
        manivannan.sadhasivam@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Subject: [PATCH V2 1/4] dt-bindings: phy: Add QMP UFS PHY compatible for x1e80100
Date: Wed, 31 Dec 2025 15:49:48 +0530
Message-Id: <20251231101951.1026163-2-pradeep.pragallapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251231101951.1026163-1-pradeep.pragallapati@oss.qualcomm.com>
References: <20251231101951.1026163-1-pradeep.pragallapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMxMDA5MCBTYWx0ZWRfX8gcCGTX3eSbU
 ORqVvcaw6NC2Pxc/yD7bd7xySqNKZ85LxUblXjRo3sSkBjCkp9mEFn2YlfP1UD9WQKvnWSoJmJk
 2uFTYuklRcJF4rMKzPdSotjCdRcbm0kX0QEQ1vzRpiJ1DWPOG7M/o14JSLl9/tuIPwCVGqV0qrS
 292n981rE/ERoCtaxCNGH38VDR0gLRSq6bvqT4FhBqHAhsMpBUnw7w5IaJWmrkqXXZG41raE2l5
 7+weER94o6R/8LeXN6Kepv++ELioEGwQn4nG1YwUmwPKxgFRG0fIeXk6i0iY/We4HSozcWHM59O
 j+8kxAqkCTzZQHgAfa5TBnRv0i3lhdjJ54Il3MxmK/RhJaO5+lBVHzGCl8NvIciEW/LK7qdXkOA
 W0Z+a1HhbcqZbNo5PjGICX1zSaQrMrKi5a+4JnOu+pMBCfPZOA+1w83vNqhheIBmQMccOepYy3B
 Pqa0DnXf9nI1NQfxdAw==
X-Authority-Analysis: v=2.4 cv=Wskm8Nfv c=1 sm=1 tr=0 ts=6954f8f5 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=EoSPSCKz7Q0euKVW9XEA:9 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-GUID: N_ko2RSLMBKSzMw2Ap-8R4ukdQO0TUvX
X-Proofpoint-ORIG-GUID: N_ko2RSLMBKSzMw2Ap-8R4ukdQO0TUvX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-31_03,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 lowpriorityscore=0 priorityscore=1501
 impostorscore=0 clxscore=1015 adultscore=0 bulkscore=0 phishscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512310090

Add the QMP UFS PHY compatible string for Qualcomm x1e80100 SoC to
support its physical layer functionality for UFS. Use SM8550 as a
fallback since x1e80100 UFS PHY shares the same tech node, allowing
reuse of existing UFS PHY support.

Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml    | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index fba7b2549dde..552dd663b7c9 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -28,6 +28,10 @@ properties:
           - enum:
               - qcom,kaanapali-qmp-ufs-phy
           - const: qcom,sm8750-qmp-ufs-phy
+      - items:
+          - enum:
+              - qcom,x1e80100-qmp-ufs-phy
+          - const: qcom,sm8550-qmp-ufs-phy
       - enum:
           - qcom,msm8996-qmp-ufs-phy
           - qcom,msm8998-qmp-ufs-phy
-- 
2.34.1


