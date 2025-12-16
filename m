Return-Path: <devicetree+bounces-246935-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EE1EBCC1875
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 09:25:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 32F87300D8EE
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 08:25:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C2FB33B968;
	Tue, 16 Dec 2025 08:25:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oqmsY5Vm";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bPfEv/zf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9657433892D
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 08:25:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765873527; cv=none; b=epw56isL2Rf0EbWKcDccmUhesjBgJTdNBOYcbFh5ZGaMxPkhtnStSu29NI++PbZRA4vHajUWJWOZwW0cKpQACBJjYEF+ZILCrNImpceQDq4RVQUV1JzVza+dpQJonm0DLMJP3F8bIz7zu2voBN0ShPnhdHmMDhLR2glUHKkpWDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765873527; c=relaxed/simple;
	bh=WyMjmupbqcWMRb43vGhQ2BNfAXqkKxTBxHkdmxBlDvY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=oFwTpABTWQtX6YIc8GiCHP+jpEleBpdqz9AsI0hB2S2YYonTlu5hyT1pyJUzlc8gt8+EDTGR2FlCOmS1Od/ZtuF6SXaZseFtKELkJtY8pDyN0OggIiWSgp3cp/fzGh5kRshYvNxW5GFRzN03Ga4WpHaFjj/1EZSfGkuIhA0owD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oqmsY5Vm; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bPfEv/zf; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BG8JcVJ1682276
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 08:25:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6CVQdUgJy5sTgBeGktrNp+HJ5eUli62AzcAe/eYRZ2E=; b=oqmsY5VmLK+HUxqw
	hEq0AksSdNS1TFpWgjBNT+n8yu4b0otYoUXz33tk1F8hrjBtLxnLXvpxpZX4ShWT
	8CjKABlaM0k+bpmB5IXLs3Xp9COfHV+VWE0kD+yyf717QlqQuGG1xsoJXnwujZRu
	334WUmvJUw+TYJtczDVMoyfPWVnvoSVSXn3M4HiCRtwX4ZuV/7sgtj4cd5QNw4Kb
	XTXig6lJoNR6JoWBONhiXdhBJ3w8RKbB1DS6FuCuU8cpKTcuRL2q/+IOvk/q9hXe
	EdBKbIxjkCiNzezVZABFEwl8gr4LGAU0BlpcKtiMTyly7RsDmE1ZMQBnL7tw77fk
	KV7GEw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b2q7tjsm2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 08:25:22 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4f1f42515ffso42129811cf.0
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 00:25:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765873522; x=1766478322; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6CVQdUgJy5sTgBeGktrNp+HJ5eUli62AzcAe/eYRZ2E=;
        b=bPfEv/zfYLDu+T/43620L1rb//89WdosW9A5/Uqw3zKCNO3zLh8rmJmatCOP6m94Nu
         3C9E6sFRui2IUaNyw/5j/nMPNpcAIkVUb8k0TfIMcG3GTpRNAwpawVZqMhvWilQba1VH
         aHJebBpkSm01n4UK+kUizsEKFNQGcz3sCSLp8y+7BrgAtJ6p2azpkVanW8NK4XNI/xzk
         c+qT8nDYJu+OsNBzLz3GCZ+rH+b22Hs5Aabj47HRbPsG+6qwVj33LvXXMuO+0suTqJny
         kcQce6mjwUBVU+iTYykB7Tky2070wcDvpmb3IeFet0PXPWMGZX5BZjyJz/F2GnXhccp+
         OBIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765873522; x=1766478322;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=6CVQdUgJy5sTgBeGktrNp+HJ5eUli62AzcAe/eYRZ2E=;
        b=kAH8CatTArsr6yDJt7nV+IMZqbT07Ht9R2zpWJdSjZ2S7p6s/m9sBMUTKgDUYrFOJg
         CTAXoy4qZjVKMYRiFmBIvuQp5CWkhe2OlYpQYSuHxBuuf8aYopBMEXtK87Db9omcIqxj
         Zo3jsrt+5g2z6w+G+x3cQH0zbIydkDEK25B+bhYJpSqxF1BFd1Hic33OwN/0TsjA5jQo
         xvv7004MXkE9MSJ4gFRX3YBMezGt0Je6Kv3/IStxSSlqD6XPocjL9IpgwmIRscoUCQk5
         Bb8fnlejI9f7HuDDezh6uuicgeC8gN367hDJU0IK6Uf8Sy5X87db0nES9J2yhz22Y03M
         gqUg==
X-Forwarded-Encrypted: i=1; AJvYcCX5mB0YfnQVT4CuCMU3h6wTi1Jn5SWlENS7FSu3SLIMdqMOvZkr9bsqEe2SyqaIEbu04WZuO/sifo6i@vger.kernel.org
X-Gm-Message-State: AOJu0YwSlbvJKjHedn51vkE9nhN5tlqPIvaVa4rYbMJg6J5KR1gR7moI
	VGFzvKylv84RCEfanaGbeFkvEOwSyvfYqwK7uI4adNgMv/YhDM/G99eXYoEk3dir66hW+ho9qf+
	1rIOMPnes+Rv9fDCztyJkIm3VTkvHVQodLOBXisRorRhp+JYUlxn0HSy5c87N6v8t
X-Gm-Gg: AY/fxX7nzb4vr6DO0PpV3nnHASLfVV1naweN2ltCOHEXzb1ClKhCvn+W2QuGpfvJNYB
	u3IJ8bniBtGW3zUNUpD1acj9UMo1WeSSa4iHSyk//p8OkEn6MnonmxoprbFB0BPDzt/EOsIMFZL
	/90GdPeQRK7KUyvdFeYgDnW8xNnoNCssBWXxnKWDmH1tLNJ5Gs3JLZJxUuTxyWhTf6JmR8mEoww
	ak4yHMoOLl/FnU7E7qi7RZs4b49qJmkWqE5hjiSrt9UCSzCwTPyE/4aEMQPLjtFDt1+E7Bh5CBR
	28cb0MORNJEEQ1Q5k9Rl0B8woCR/SVgYh+YT/oKrpOdLV6IRjcRneS6c3gZiJ3JXDaOIoZoTl7J
	P4IBz+qLjd0o+r5Y=
X-Received: by 2002:a05:622a:5905:b0:4f1:83e3:bbc7 with SMTP id d75a77b69052e-4f1d04f96b9mr203911311cf.27.1765873521859;
        Tue, 16 Dec 2025 00:25:21 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEPOTJbHCWpoIZztaNlWGsgzKDsGqAoZbgMYz1zxuCVqM/vU/W/aX3Bwm8sIrNbVq9Eo/2Lxw==
X-Received: by 2002:a05:622a:5905:b0:4f1:83e3:bbc7 with SMTP id d75a77b69052e-4f1d04f96b9mr203911041cf.27.1765873521358;
        Tue, 16 Dec 2025 00:25:21 -0800 (PST)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6498210fceasm15134381a12.24.2025.12.16.00.25.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Dec 2025 00:25:20 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Tue, 16 Dec 2025 10:25:04 +0200
Subject: [PATCH v2 1/2] dt-bindings: phy: sc8280xp-qmp-pcie: Document
 Glymur PCIe Gen4 2-lanes PHY
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251216-phy-qcom-pcie-add-glymur-v2-1-566a75672599@oss.qualcomm.com>
References: <20251216-phy-qcom-pcie-add-glymur-v2-0-566a75672599@oss.qualcomm.com>
In-Reply-To: <20251216-phy-qcom-pcie-add-glymur-v2-0-566a75672599@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: Wenbin Yao <wenbin.yao@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Abel Vesa <abelvesa@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=1536;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=8ctGmRsvxnprJICb6Z7+wGAlCXuoQjcYUPvRRkbBi4Y=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpQRdrV4K+ZKLOo9QEOLsk9HQSrQXPEvYTcBmzx
 rhqrtPFvqiJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaUEXawAKCRAbX0TJAJUV
 VtDLD/wKyzycQ7gcw2hxaq9M3HyI/7CvpaY94F5F+i1BzAlYumKwvTcmQjOhZT8uKWKP9qcAWFS
 wF3x63xK+EKbG8PDdKdkHCbn/WLkLAMNSoH1l7ld6SQwBPO3qxCz342JOjNmVRQZK4FVEoLu5bs
 jui75ECySPHb/I7LUMCufpLgw+SSAoBrkzzOx3y2vBMUL9Bd+muxTnA1iRMciQGEQ3wpvDkVzbo
 RcpXtwLRGZqDAE/PZO8Tpskh56m9F0ir4XRZXYEFQDgv7kfz9MXazpdJH/fXd97BG3UBG223dEw
 wTaHw412vZMaJ9nFLYohVSUUoxeYr/amJcpH9VfRW95Y5eSEhGTv8YyRlBV1y3EQSkklkp9VIpP
 9mHcoJ7OTsKpUKcINbnlX0j46VWc+MxjJ7C3t3HAT2MWGFbYQGlrxeP79wj5YtxF7I1jhI+Yz26
 g50+FaQXjo5uII65x8qVDVjCifGyv1EsE92LL1+lzlOLvZUvCIAvicmu+pl+jzpoNqIxSkJcujx
 fnnJV2x4UVauTm5X1hmCa3UKAjEkuyZaYIsNk0B4I6OAnKY+0gpPkiqkFs7jQZqiCfMbr1oUTpk
 6dV+wStmxXbvwJ5qhAsOdFJMGAQDtb7dcgM2MnDAGFNT3w+jmdat0qIMtODyIrtZvnIs7PoGgr+
 xHRRdBhOdIbphUQ==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-GUID: nF3E6uWPb0LGm4bBtb-pVnGNp9nB2EYb
X-Proofpoint-ORIG-GUID: nF3E6uWPb0LGm4bBtb-pVnGNp9nB2EYb
X-Authority-Analysis: v=2.4 cv=Qo1THFyd c=1 sm=1 tr=0 ts=69411772 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=CzDMsQTYOGAzJB-GoUQA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE2MDA2OSBTYWx0ZWRfX5TqHT2QW8QvS
 zfpAXiMf6W/0OcIC4dopDd6xoGWuhV8/8Ap+P0FM8yduyRcD4nZ04V0EQ2RQ9LqaI6OY71gLe7J
 chfyMqvhfLyywC/gsQqcY4d0VB1YnLYfP5CHFNI1/501kkNxLjiwfVuzGTGq+AMIoKbrtu+cN+Z
 f4qMsRTrO/UYwAkR9yfJmEDN9LYz9JAYuusDu2VsB0YNnpsQx8g6yp+CA24O5RrOzW/dASL588E
 aDLSQXOSuAfIwvZJ9VnH1I8gPf3YGF2czLkYaxAlFb6qgzxk7FsnDZL72gRiJgCbd2ACnVrv7PF
 DESUiTwLnY9Fy+Zua3d/gQJ+nzFdkp1fxUwM+m/iqpt927nQyLdQ4+qPHl25boV+YDly/2cni4l
 ZfD+EqbveOtShvQH+xPIggk8AAHEbg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-16_01,2025-12-15_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 adultscore=0 phishscore=0 bulkscore=0
 clxscore=1015 lowpriorityscore=0 suspectscore=0 impostorscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512160069

From: Abel Vesa <abel.vesa@linaro.org>

The fourth and sixth PCIe instances on Glymur are both Gen4 2-lane PHY.
So document the compatible.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 48bd11410e8c..e23480a13016 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -16,6 +16,7 @@ description:
 properties:
   compatible:
     enum:
+      - qcom,glymur-qmp-gen4x2-pcie-phy
       - qcom,glymur-qmp-gen5x4-pcie-phy
       - qcom,qcs615-qmp-gen3x1-pcie-phy
       - qcom,qcs8300-qmp-gen4x2-pcie-phy
@@ -179,6 +180,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-qmp-gen4x2-pcie-phy
               - qcom,glymur-qmp-gen5x4-pcie-phy
               - qcom,sa8775p-qmp-gen4x2-pcie-phy
               - qcom,sa8775p-qmp-gen4x4-pcie-phy
@@ -215,6 +217,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-qmp-gen4x2-pcie-phy
               - qcom,glymur-qmp-gen5x4-pcie-phy
               - qcom,sm8550-qmp-gen4x2-pcie-phy
               - qcom,sm8650-qmp-gen4x2-pcie-phy

-- 
2.48.1


