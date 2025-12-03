Return-Path: <devicetree+bounces-244050-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FF17C9F59E
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 15:50:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sto.lore.kernel.org (Postfix) with ESMTPS id 4BE53300B6ED
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 14:49:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03CFE302CBA;
	Wed,  3 Dec 2025 14:49:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MxM2cbnl";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Qu/pAkPh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA2FA3019B4
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 14:49:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764773358; cv=none; b=QL6IY5ogajIZiLC3XUVKn4hnwEvUO6qirMkk/DZ266EfdmYEhFscYhBw1mchRe/RlzLPWhKemw6lZ/GWj7vrwN5RJ9HCKdBY1jnOYGxQddP/8NfJZvXw7vS0tZX5wnGpdq/gF8MFce2ANTJWYLJN05AQos1YuRWiRsmtXEfmLbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764773358; c=relaxed/simple;
	bh=TK4C26YG6YS1qqZbYDcKOj9J27rTVcU21dr5ItejpdM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=kZCAqa7G0BPI23SCLHriHO9viPxlB442JCkpjL6rz3TFZ+N/YSLVZzMUVdQmB1s8L+oAbKhAlWZGeG7MskPvHlDjAKyZIfUZUT6KMgqaweHA74pIwyQlHYmZ4HV7mjsNzKfFHwFfOpiY0qBPXw2SaWcO9zJWDZUZWWJANxvUbFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MxM2cbnl; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Qu/pAkPh; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B3BReSP1968405
	for <devicetree@vger.kernel.org>; Wed, 3 Dec 2025 14:49:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=Atr3pJe2kw6
	wZLpBUgQpWYOFtrNlIEChbDtnB98xDaQ=; b=MxM2cbnlfkRJ9YxYyxAzuvtzR3x
	qzm7hEgt5FDs9WCMw0RjCqgixRa0gyXhk7UyglfYHH1RdNrWLNiYrkn6b6KUpAVx
	L2KHUVgSpdAXJMQ2Nt0wDr/JRbG3H7r7iAMgPbiJT23MD3wjD40/Rj7+3ZPy+kaO
	lgK7xCRBb5A+OrrbWH6FUvcEUXlxW0JQZlWtpYL19e1cCszDmR5pcXEDPCTCox2m
	jkvlFWfbzu0qyYFGgRpkR7qi95llsNTjHO4ObHUpm89u42I9LaVS2Yca9bPiqt+U
	hLck2nklU+9ycxkQqptg/7K4/mXjUvRJNdAkO8Mn2DPkFVzg0i71FIJBK9Q==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4atmbtgggn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 14:49:10 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7c7957d978aso6488984b3a.1
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 06:49:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764773350; x=1765378150; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Atr3pJe2kw6wZLpBUgQpWYOFtrNlIEChbDtnB98xDaQ=;
        b=Qu/pAkPhEdi0qhR4RakJFIau4wXqzhlFbFGpzcPEcoaRUEqcXCTfYzTQF9ynYruSG2
         r99aKmoboXT0LUBnr44iVcMtHcY4DKudvKQn3vZ4lXFNPaY0Ps9WMlUulE1ia78t3KOo
         ox2IhtSH1x12FgEMdPenVgObMCV1N7k2AdH2rm1ntr0EIhNsKJKqkqgRCzkawgcoSLCR
         wsJLnSlhT/iBKKcInqdNev1Yzn3zhg65l60aKQA48nUDJ7mIuPv9Hku8i/4978N0osns
         bBSytl7bN13/QQbm90w3TE3xGm2LqMTAkQbXQxsRxHuoqzfRiiAS1Qg3GaJmVe4vnE+f
         QBXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764773350; x=1765378150;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Atr3pJe2kw6wZLpBUgQpWYOFtrNlIEChbDtnB98xDaQ=;
        b=h8zq/REV1JTnxNFgHL6/adFhD6C/tiRqY9zuLg+K/s/UeO7WGd9swhSFj60eZz7GHD
         TnYd5f+IVzpGX8Mndasgg8HWyQHka5n80sSRBGG+niDx6KHWu061tHgxaMtF5hsgGCzd
         I76hMo15qrGvOUZHN7cdZMzMBl5eUs0I3AiNzOm0u4m1iUWo1nz5BaaaSdpAWTP0J1fV
         x2U0MPkatiSX3O/byeg9EMofa/ZnfZYdcsuUWhg9tGAKiJmf3vKkxAiE3sGYQPhxstKK
         TQBocNd0qgIWbG6vqsghjkpfYQVx7w16JtKracYOyChudEOtDSuY3G17ZG69rZ1ViOOs
         w/Jg==
X-Forwarded-Encrypted: i=1; AJvYcCX17RwlI+8Id8Y2iMOjZeyBenVnNMgAkywEN0YQmdreBBa/nD7o+SxKOOlFg90yiPRCAubDkkwRwWBT@vger.kernel.org
X-Gm-Message-State: AOJu0YzfoGumFRf2ZguZwoWcDAb4Njxu2dyRIewCP8Q7WMoiLvivW05r
	aa+4CcUmh6K9dFw/7F/z0nTfBcHhFhw8t/eeYHjXFHYIEdOnvGk4U+vH4p7X+bPb1x0AT5mFc7m
	j0bBgTWIT6ziog0OUZruyJ4wAuc9GcmhlRu7yu2JvrscWYY3LfxevjwShf3cSfT1RPsj2+wYk
X-Gm-Gg: ASbGncsqTnC+u07eg/CtvjEKjBTGYj7OzgFTqVDOqnIbxiha9Z7rCehp2qgbZ+gthnE
	aB9Q2KV3004kcjSjFBiPCKR1dPMakrB2FseTvYsmFlmqJUJdInRAhPB2WlS/bbZZES4B47x3A1N
	FdYNfyAFCisTpgT7YW6OdDIl3dryjNjnCeY5aCwOI3zAZpT7EU7sbAUQjqTkuiNREBvnpHQTPDW
	dYdLiM5LwuQwSqo4QLbMKnYWpOaRmYxWmEmfkfdX1mpqz7mWp6+DG03BO3YZB4cxXCsOTXcFUEV
	owPrUUYy3AcapOIBoNE5eEdMOoMb5i3IG5qacsWnJHKWyM3eVJ01SeMO3hyCxVsUbpOD1a/aDUq
	q6Fxs2gnsXIdh5CTLrmoUcmQSchEQLIeq5vLXDmjgjtANBe4=
X-Received: by 2002:a05:6a00:4f91:b0:7ac:69cd:ea0d with SMTP id d2e1a72fcca58-7e00dbe9ecamr3038601b3a.19.1764773349659;
        Wed, 03 Dec 2025 06:49:09 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHACWcicajFdpjYcyq79tcM5wcHdJLLDaB2okj0GdKNWcWKbqKQBmooZHpYlAjtIZCZ/1nTMg==
X-Received: by 2002:a05:6a00:4f91:b0:7ac:69cd:ea0d with SMTP id d2e1a72fcca58-7e00dbe9ecamr3038570b3a.19.1764773349150;
        Wed, 03 Dec 2025 06:49:09 -0800 (PST)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7d151eb5bd9sm20719683b3a.27.2025.12.03.06.49.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Dec 2025 06:49:08 -0800 (PST)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH 1/2] arm64: dts: qcom: sm8550: Fix compile warnings in USB controller node
Date: Wed,  3 Dec 2025 20:18:55 +0530
Message-Id: <20251203144856.2711440-2-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251203144856.2711440-1-krishna.kurapati@oss.qualcomm.com>
References: <20251203144856.2711440-1-krishna.kurapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=KNBXzVFo c=1 sm=1 tr=0 ts=69304de6 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=m6TBH6dnwUdo25Hfm4MA:9 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-GUID: piLd0zdNlb-89zxeAx-cMcJBwlmEZ1So
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAzMDExNyBTYWx0ZWRfX6H017ZKXNbrx
 8BBYUc/8Drdq/GdiH9NqYUaYErG867peDJb/O9Cox58mkhDHHpto+XbNMzNfZf1OMJiIfPO3LgX
 V+Umj8FBrbIqGGiPKfUsPentcN3KLjSeVHAQ8pn89IuVxOz05d8KogLVW2jMkkmrLdOzmJamTOf
 xzMkdAHp2v9tPzMaRPAPvgCdrqF/wajkHV7C4puEutGOYYNKYylUVBvqPVEyFifbbAf+pvXlOlk
 6dDLm1IZmIVQk6zMZ742jemoYyP8QmUGtM3CWkEHqWS+DuWEYPzmSfh1CZmDCFv3jvrJY3CNiPh
 Yu+2FS98N5C0hk8gBfnEwDEe5rpVdcHg76K23E+up1BzaTjBeNaxvdhzZGpYUmlUderocBvVsp1
 dKhogGmx70oVkVEg3FM6C6n3bNwu5g==
X-Proofpoint-ORIG-GUID: piLd0zdNlb-89zxeAx-cMcJBwlmEZ1So
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-03_02,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 suspectscore=0 adultscore=0 malwarescore=0
 bulkscore=0 phishscore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512030117

With W=1, the following error comes up:

Warning (avoid_unnecessary_addr_size): /soc@0/usb@a600000: unnecessary #address-cells/#size-cells without "ranges", "dma-ranges" or child "reg" or "ranges" property

This is because the child node being removed during flattening and moving
to latest bindings.

Fixes: 33450878adfc ("arm64: dts: qcom: sm8550: Flatten the USB nodes")
Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8550.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
index 2ca9e50ef599..e3f93f4f412d 100644
--- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
@@ -4133,8 +4133,6 @@ usb_dp_qmpphy_dp_in: endpoint {
 		usb_1: usb@a600000 {
 			compatible = "qcom,sm8550-dwc3", "qcom,snps-dwc3";
 			reg = <0x0 0x0a600000 0x0 0xfc100>;
-			#address-cells = <1>;
-			#size-cells = <0>;
 
 			clocks = <&gcc GCC_CFG_NOC_USB3_PRIM_AXI_CLK>,
 				 <&gcc GCC_USB30_PRIM_MASTER_CLK>,
-- 
2.34.1


