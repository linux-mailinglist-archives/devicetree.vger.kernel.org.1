Return-Path: <devicetree+bounces-167655-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 86E2DA8B3DC
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 10:30:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0DCA53B5310
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 08:29:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0408B22FE11;
	Wed, 16 Apr 2025 08:29:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TO/F75jJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FBE5230BF3
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 08:29:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744792178; cv=none; b=tbtTceNrhx01GsJh+wVlUhxifUZLLkjagFUkz3rlix0qdv3dkD4D7LrHwnm0VcEtzc1NY7AHljRekghNnAwiktTxJZnrf7A0LM2H1pWnsjoemDZrFdRw2cutyIGFQ/h1SUqM8O881r9e48rayYln/1QAvK0khS7B2TjdQTtcYAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744792178; c=relaxed/simple;
	bh=SAyK9sJUeGV2KdHd8ZazsiTrrxo8/0P3PB/Buc6flu4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Sf7s4js7mxQ9Gv9aIBvRxeB2ffJwknLehMvEyorXMU7bZ/x3Na4SjP6IvymBEZFEnnGjNEkelfPqR9j4U8CKpkDxMPQtB9j8E5iODSEUzqTMnkKfBCcFuCnMdBrPAXe9N0wpNCKHbsLp0u9P1PQcLKSZlCB78dBxgEBr4ZsbO7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TO/F75jJ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53G7JOiC011255
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 08:29:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UWNSmWOtUtq8/CJoI1vzXJVwJ8IgTPzBjgmc3+pQA80=; b=TO/F75jJPZd4f7LQ
	qJH84NNGPdM3fV1iHm1EBp47GO6jJ00mwqB4oxdVWjmBZ1RmP0RZO7fqxDMislZO
	DRpsU6BJ1+15pvMXwCsnL9sYJFFTDX+eMy9ZNL+aJoWK4Awr2W5hf+OpzOO0sMZB
	pMXsDHY+oBHFdIF1Ny7rjFqKJeY1UKe5CFmt/uNbkl/o/iUD1pFbEsYEMc4nZs2w
	nMH3ERWanTGOqWnOt+H0bPJy0FXWb8GdChPMjBQXcrickqtW/vLjZ+MT+JvpGS4G
	X9lpYVQmafg1VVu+xz3//Os+coWBVLF0c0te1Y4dYsq/9u8/i+6WHrIwpXFnHSZM
	2csuvQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45ygxk2r3c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 08:29:31 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2240a7aceeaso59420335ad.0
        for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 01:29:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744792171; x=1745396971;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UWNSmWOtUtq8/CJoI1vzXJVwJ8IgTPzBjgmc3+pQA80=;
        b=dnpD5sdARYAi8APLoTcgfBlaUzvFL1PjOizJ0CNJPEuhQXyfKh8g3ryBt4PWYR6QsG
         CyoxsuQJscHcCFZMwco4QA0Qk+byFqN/vhi8Ss5YOBVcicGYnMy27HTsQs72wXoxRxLa
         ixipyWos2EN40LfkDjcMnfs9vXEeP80BwKzEYZuepVyt6Cdw6WMA29sgYNz0oBOJg5tr
         iHs8RNv1PIA//zziwL/4Y+ZubPerFR7EFpBgum/LJwA7icNI3oShZvjGA9obPOzr4xGa
         wCBvg1ZPKWDnpjTEL2uq4+YIXwyzsZLaldrRc/2oAdTvZhjmlRXSSvF9l4rknaleqcVB
         OvDw==
X-Forwarded-Encrypted: i=1; AJvYcCXkmqgQ9tLxso+i1lKetWGsdpedQaTfu1klIZRFjTZrDrG3BEmbiLws6LskD40TW/+JPwgUKUs6aobX@vger.kernel.org
X-Gm-Message-State: AOJu0YwZ44P3JN4ryLexKtht8A1436+cH06BOdZK4dJ/PbSOtDT67+/s
	BNLfdaJgtQt2cbL0/y99fZbKUq4RkZPp1wkeild8CfbXo6EfurE+0qWjV4W+Gi8GHlNMyzDIXoh
	g3zGvQYjlkGQLoJzwlTsC1VeTzdQmkK26pm8TAye4TSqY2vjXMbiOLz0wgrze
X-Gm-Gg: ASbGncuxRRwZFqTh///OItYrUHO5dSg3ya09wE3JZnUVHQ78e/RyCgaLUZbz3qa4R0Q
	J70O85Vvp3X15xadDkmi5WYDYzk1Q3uJNnOcduNxelfFyKabGuQZugi3CjW+GSkMsh+Dp1DbSOC
	ieXc7FlJtXdKjWJs8SCvHWEJ5uPrbXGdYz2A1S1p9jPZGmJ32Nmg7k5lmTGGx/xKHwR47sjsMhc
	ir5MF1o3ATJG36YvzK89rw4zNKqIqrPydbkG+gzDQHhcJTzYFFkixIc13n7MbWnrPOwLSoHsprP
	feK0t6Gc5JYdZ2JZQeQK5lvPPYU6ADaWbnc+IhlZoKkp6w5m145Xwf5VX3flrIdCGHv/XpPzqkx
	RKpvQi5MmQdwxvr+OZQKw8gMZWNA1Iw21jvbI10y8h0E0h6w=
X-Received: by 2002:a17:903:1a0f:b0:224:10a2:cae7 with SMTP id d9443c01a7336-22c3597443dmr18676125ad.40.1744792170731;
        Wed, 16 Apr 2025 01:29:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGeUfHjjSZO1m7gR90fkswaHOTEejRvETuSsQKkbL+XX8T8042X1GJo4LJcRd89F1ItixjHIg==
X-Received: by 2002:a17:903:1a0f:b0:224:10a2:cae7 with SMTP id d9443c01a7336-22c3597443dmr18675835ad.40.1744792170409;
        Wed, 16 Apr 2025 01:29:30 -0700 (PDT)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22c33fcee11sm8340125ad.191.2025.04.16.01.29.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Apr 2025 01:29:29 -0700 (PDT)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Date: Wed, 16 Apr 2025 13:59:18 +0530
Subject: [PATCH v2 1/5] dt-bindings: sram: qcom,imem: Document IPQ5424
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250416-wdt_reset_reason-v2-1-c65bba312914@oss.qualcomm.com>
References: <20250416-wdt_reset_reason-v2-0-c65bba312914@oss.qualcomm.com>
In-Reply-To: <20250416-wdt_reset_reason-v2-0-c65bba312914@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1744792162; l=846;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=SAyK9sJUeGV2KdHd8ZazsiTrrxo8/0P3PB/Buc6flu4=;
 b=mbNxlNeS9QipHP2Ao6yWsmbakQOC98yMhCWN30kr4omaRSzkfFDuyQxkTt0g3nr/kO9jTOdll
 7zEBuZD9HlDB03IudL6c7bMcxpxKcRUw6zPujmfMVFKyHCWXQaf5AU1
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Authority-Analysis: v=2.4 cv=WecMa1hX c=1 sm=1 tr=0 ts=67ff6a6b cx=c_pps a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=7sp3e_VSdAcdU5CosJ0A:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: 2bq4F3189I0cVFzuiNE3xLjz-li1xHGd
X-Proofpoint-ORIG-GUID: 2bq4F3189I0cVFzuiNE3xLjz-li1xHGd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-16_03,2025-04-15_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 suspectscore=0
 adultscore=0 clxscore=1015 lowpriorityscore=0 phishscore=0 mlxscore=0
 impostorscore=0 mlxlogscore=874 spamscore=0 malwarescore=0
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504160068

Add compatible for Qualcomm's IPQ5424 IMEM.

Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
Changes in v2:
	- No changes
---
 Documentation/devicetree/bindings/sram/qcom,imem.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/sram/qcom,imem.yaml b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
index 2711f90d9664b70fcd1e2f7e2dfd3386ed5c1952..dec1b1ee924cf1386f559eb262ea864f2788c165 100644
--- a/Documentation/devicetree/bindings/sram/qcom,imem.yaml
+++ b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
@@ -18,6 +18,7 @@ properties:
     items:
       - enum:
           - qcom,apq8064-imem
+          - qcom,ipq5424-imem
           - qcom,msm8226-imem
           - qcom,msm8974-imem
           - qcom,msm8976-imem

-- 
2.34.1


