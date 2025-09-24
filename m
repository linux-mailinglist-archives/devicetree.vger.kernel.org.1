Return-Path: <devicetree+bounces-220950-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DB48B9C957
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 01:31:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C4D4C1BC41D0
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 23:32:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C67BF2BE64B;
	Wed, 24 Sep 2025 23:31:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="O7b0lg8B"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC2871A83F9
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:31:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758756706; cv=none; b=jzI5DupbvTWgdzXvrOEh7HCYStKtFRPejniK3yYPL6hIsZP7dkPQxkDI9DHhj0Ep78a4Jd0fvBd9IjC7KFIryJSUIxFfSE2Ct/DB3Zv4WNhpWsv0vCE0GnDtP37RmMSFAuTUoQrY4RxGIvAYS7O0BReODGNsaJozZwUFfZ62uYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758756706; c=relaxed/simple;
	bh=wXNnd7mo5fJeF+EfIqe4rvJrO/zhXKq6+nkowY9OvnI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=KpswKSbrvmn8NOgZ7uZkLqahCeM+sZwFscQT7gssMaID7x+FdjAkJ2OZwUm80RrZuqhOzcb15SeYArCdgwyGojE1ZlDkQgPPmCUS8zu6+AsUWGoV7hjyYXQkNcEKG9COSBPfW9fn1VL4DTw6DcSep6O4b+ci70IS1KhQ4tT4ZM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=O7b0lg8B; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OCnMtj022454
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:31:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bIBMNjflRa5jzwbyfLjwjF4RUv1x+p6yVbJhMuG67JM=; b=O7b0lg8B3ZUSAxf0
	TbazgpNlHKXtzHI3mL9OSp0v7uUXckU18PNJP/8GghBgD8nes5LWVDGYPpGqVhGv
	Cyvxf3FEypzm8Y6RInIIu6cybWkKxBA5Dm8Y6cvHKLnHSTzJ6F9sOS7W7xWFD+R0
	5TcbSD2EPo8wWhjMm+VXeo/HSLrz7SI+nqRts7a8d6PVfSktgF4y5RIBpNyPc+y9
	KjOO6LaWmScKvs/5BRoDnxOW01TXT1VYM6hDuMyyCCzp1MKSnXSbqwLdjw7J100+
	JgaEYWZybyu3PtrPjqwcPi+mQFZ1VVudFzx9FEY1yJsA/FwV5cZlGuq/MRzb2jIn
	lm21Mg==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49budadkex-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:31:43 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b551ca103d8so215589a12.1
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 16:31:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758756702; x=1759361502;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bIBMNjflRa5jzwbyfLjwjF4RUv1x+p6yVbJhMuG67JM=;
        b=t5ulY66fhuwaq1n4wGUsd3oe7bPv1W9xkYyguBlaICrN8qY5jsBEjU995VfWETN6SF
         i/RCFHnCa35C2LiAi7aidxFZ+U91A4x5gStONkKMz38zTxdyPFXK7y0drTs4x2hF3rco
         a5EuP7516ZRtogQPH0W4J7im6EPaAlk3OTimUnzFcBxUdSjlfCWbTdW+yTYNoCLBnHCZ
         Xjm3squxiBlMYKDKl0LfWZj/KtD856x3nOLs/TYwqkVJAHLkmc9kjikalLlUCXCB3O6j
         bBXse7yGFfeJx3i7joRvk1OqhlYISMaaqpqskT9jTAwene1h6QH0Q+IVESNM3gK12C8W
         1uGg==
X-Forwarded-Encrypted: i=1; AJvYcCXbrQLh+IrgimrqGEBkdggaYyL2GVa6WGDvIv/pWYyBKWOsLeNoPM9vxffx0cxAYrA1UFk5Onj5kbdE@vger.kernel.org
X-Gm-Message-State: AOJu0YxL1jqqAzUucSH4nddOyAM8qjsy/hgl3hNh9+RawDmLoWZSCzhn
	/3hAV5yQByfD6uc2jG73NjtyYvywcFHerq/Wa/jRTtt/EPrL4qbvP9fArkEBpxJHt8IJ4H4EJwR
	fdFR+CG0fGJu/CQdo8kfGxOcqBs9PX5t4LxfsoBhcIPnmTcIOsdJqxhZVdYLwK+gL
X-Gm-Gg: ASbGncvt+/bWCFQxINxI/sE68pwg71EjQHwlMuLJgQYhnLdeBAW3KgDVgdj2oi2lwYu
	KAxaq5Z5FB+fUAqGllmn/CouT7xcP4rayWOzbaX2C2abXTouzCxm3RncZLtUJ0U31xK6eDN7sTf
	ulqm9jsCkQBnZdvPcGo6WfV1EwGCvzh/5G955l1vuYS27FAaaICEMBNUSvN/nN2bT0CJtV/Iniz
	nec6Liy4bB3eo+1pNGcjsYcO9SoXauJg/INWxBiS0wok0gkeiMb0Cm0nub8VxeQQ8k+p56Gn3f+
	/ig9+UDMkGljBL9Ve8novzIxdSiP+eFOeWlN9HErIDzb+OWYhWs05Jp/S++woMittFD5ndQwPEa
	CaRlaRomIaQiHHgY=
X-Received: by 2002:a17:90b:4a4c:b0:330:84c8:92d7 with SMTP id 98e67ed59e1d1-3342a28b80cmr1757095a91.12.1758756702043;
        Wed, 24 Sep 2025 16:31:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEbGHswp8+HdmDWy6LMMlKCl6gUqqzepmWEukpmqovXR2wNzS4aq1fg6hLyaHQizCT5NKll3A==
X-Received: by 2002:a17:90b:4a4c:b0:330:84c8:92d7 with SMTP id 98e67ed59e1d1-3342a28b80cmr1757069a91.12.1758756701617;
        Wed, 24 Sep 2025 16:31:41 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33474f14e4bsm194322a91.28.2025.09.24.16.31.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 16:31:41 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 16:31:36 -0700
Subject: [PATCH 1/3] dt-bindings: soc: qcom: add qcom,kaanapali-imem
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250924-knp-soc-binding-v1-1-93a072e174f9@oss.qualcomm.com>
References: <20250924-knp-soc-binding-v1-0-93a072e174f9@oss.qualcomm.com>
In-Reply-To: <20250924-knp-soc-binding-v1-0-93a072e174f9@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Robert Marko <robimarko@gmail.com>,
        Das Srinagesh <quic_gurus@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758756699; l=786;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=wXNnd7mo5fJeF+EfIqe4rvJrO/zhXKq6+nkowY9OvnI=;
 b=c5aPrZjdPN/hNG3ybepN8IMXT7vQqDz7rID1e8NYhAnvcF13FX+kLpHriPIgTY3U5ofqRxVHr
 S3C4btxFeumAQ4rpWwbz/HvfNf4oJIEvI0x+iGGgJIniUTLf7JKJadX
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-GUID: 9CbmN3UXZBtmdYxp8PXnwXeRMvjsb7QO
X-Proofpoint-ORIG-GUID: 9CbmN3UXZBtmdYxp8PXnwXeRMvjsb7QO
X-Authority-Analysis: v=2.4 cv=Yaq95xRf c=1 sm=1 tr=0 ts=68d47f5f cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=Ety4sU5WZCxzx5fwigcA:9
 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDExMyBTYWx0ZWRfXwvRRpr7lIV6z
 NJVC5R5ssrTNDIP0eK15BffxpGxkiJ1ooO9Qf+cFho/4gxkeeElOhNMA+HP61yBLCNGrtS1lS60
 bNC3v1cnqtyEIaXPbM/3sLw21i0HkF2ti5TPQlHP1w7EoXqArKvKenlhJK+SlZ6ETcNInpGccwY
 KGkgWlDPXnIosOJtLiXx205US65lVQxYpCSlSeZBXNkeQYVUWjPcf2vy4VXDvgFKbanCqkcce6B
 HalmAdGPN9qWg0xUxA6XeEqOsq3YigX3wKX6ISYLo+2cRA/NbFKXbxC2L/QolZAesikduYj8c/l
 ZsH1mgRj/id65JQJ9hHvbGNuu4cTmQjG4rFP+nHwNaOtZbLGKbQC5r3PoOufrqIUNFdVt55OUfb
 hFKlPbu4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 suspectscore=0 priorityscore=1501 phishscore=0
 adultscore=0 malwarescore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509230113

Document qcom,kaanapali-imem compatible. It has child node for debug
purpose.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/sram/qcom,imem.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/sram/qcom,imem.yaml b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
index 6a627c57ae2f..1e29a8ff287f 100644
--- a/Documentation/devicetree/bindings/sram/qcom,imem.yaml
+++ b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
@@ -19,6 +19,7 @@ properties:
       - enum:
           - qcom,apq8064-imem
           - qcom,ipq5424-imem
+          - qcom,kaanapali-imem
           - qcom,msm8226-imem
           - qcom,msm8974-imem
           - qcom,msm8976-imem

-- 
2.25.1


