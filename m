Return-Path: <devicetree+bounces-176505-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E4D65AB45BA
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 22:55:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6B95B17D228
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 20:55:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14BC629994D;
	Mon, 12 May 2025 20:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VatOx3kY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 662DB298CD9
	for <devicetree@vger.kernel.org>; Mon, 12 May 2025 20:54:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747083293; cv=none; b=ozZTJemSdFlp1xBap9Jul0PvJz8enDxlX0JZMTAxFHzlrVHyQlw3+eimga1g7shlvdIjwZHhtMxnXnmn3b/q62JbblvE1K0xz1bYzooBXbsy9ucqW9tj1yZwRWcFcoXMmy0d1bJaR/pcXKn3bpjGYIZ/qAsZrNCqoxhFzDBpazY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747083293; c=relaxed/simple;
	bh=iVXmk+6PlFCRAwYWJHcWgZJRCI46HfqbqwSKFjMQVkk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CH1elhxnLBnUZfZp/Lwvv+xe4XVvpQhnlup6nsgU1CRJ40NPCLDrgezZ1kst/iifE/MMDc9Jqybc4lX/LdWQshNbp9Nc+sCQJzXXvKNXOuSgTShm+veyca8y2IJqmUuydKpNybvnPA6f77KhVPdoWTASqJV67c1MV/c2VFiTBss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VatOx3kY; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54CKF43n021385
	for <devicetree@vger.kernel.org>; Mon, 12 May 2025 20:54:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7gubxlw2eh9/E7VsvX3yb5YKpoQUbGbeurpx1mvSfWw=; b=VatOx3kYhcNSAd4h
	4L6ZSnsqxRX9P4mIndpwzP6G2aSNuOiuluBYMIdzUa+PnYWWc1hjNoMLv/vPwZhG
	qesp20FOREVXfxJ+kLga1lj74EPp5gLIOTvARHokIISPpWmW6yLYKmuXEIBBQMzO
	Qwjdcjb/j3Ii448bAYSizgrrmOAL22gcARtuQHZKqqlxqYDCkrD4qYE690ME5zzs
	Irl7mW6qG7H16nsTBK77kt921FPIZvaAfmA/6lGpdHB2C+XaopKZhqt7Z00jbaQ+
	WV2zOv1RQs9fr7khR6ESnZTfCRN1xfHdvM7AmlxergwFKbFAqLli3SUZW8VhBt1a
	kMFxYQ==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46hx4k5knu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 12 May 2025 20:54:51 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-30abb33d1d2so7721055a91.0
        for <devicetree@vger.kernel.org>; Mon, 12 May 2025 13:54:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747083290; x=1747688090;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7gubxlw2eh9/E7VsvX3yb5YKpoQUbGbeurpx1mvSfWw=;
        b=U6syKrsJCG4MnFinOa+F+atVg4pbOmG6zsNQLPJDbPux3SJmcSXwOt6YahDAps/ort
         i9qrHeE+ELaVuZO7wPkOhmWAUqGOGrj57IYmJN1zOeGpLp1UoO5QL3mnhJ2r+nQwr+Rg
         Ei+49jIkeo76JMXfRNp6rL+zA4Qcz8gk2b1WYw+QgbTzGd3HUk8Axxbb9xYMWF/bSaOb
         UehfqilhT+0YivP2VOlKqR3BSeEcWFyFkeu4itAFhZfHHYmBClTqfTtrMJIBM65Tit2i
         wGso50NkAzfv+F7bKI7DU3+tYeS/Xq/Q2vjfNaRQr+qC88cVjNCQ6xNMTx9v8E8xLKvY
         3vsw==
X-Forwarded-Encrypted: i=1; AJvYcCWC2OUoNWDGnRYL3dyMJymLIznC2GgguBTksyhbZGMIyEFQ1GNv8tuElhBEVNc9k9xI4DCEo2jhzgow@vger.kernel.org
X-Gm-Message-State: AOJu0YwGoJvAnR3Nw3QFi6AMXzdXcKO46Nc5x1QaDmHIHiTKOXKYRSQX
	Yc4HAxh/45M3BYiDenepXgnwAkap3B4vYeVysDcMmu0VNAdTBRtnLpiup/zLe4bmgq76iZfsZGe
	gFcKwqOEvbl1qmU4L07om5a3CUKkBTUibb77uLCkCE1uOJBB1bz1zgTOSw5WE
X-Gm-Gg: ASbGnctQ2nIhD33Nj2XGP5ef4jHMtsUpqByKiq3sWzvtnTOPc3beXsKQtyqPPeFT2Mx
	PR7rH/CijE9kjWsp+hXBpQn+HdpW7d+K5TRVMhrerUS1p+Ezt3/z6dFN5s/50nZJjo4xSaQ6R9C
	qg0sFTbDq2B69Yqse/e4uRim9fhxcO/y1NWxNbriuP5qYjhzjBOQWC8hcnxkNLTlX/LHAEQdmgu
	NG8/dRS1TdZCdN7sVoDCcvDdBEVAivFG9LqswXS9SkYmd8tRWlNrdBLtpOw3+eRakY1OnGeXcpG
	LPp3pIQ9srbf5Mw0ZbnEsBYYnG/AM23lIGvlQE12e3gQQ8rV1PnrfhNF5oFf55x8T3g=
X-Received: by 2002:a17:90b:3dc6:b0:2ee:b8ac:73b0 with SMTP id 98e67ed59e1d1-30c3cb1b61cmr26249492a91.2.1747083289703;
        Mon, 12 May 2025 13:54:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGk3d4/Rgx4etOXNcj7wkqAR9K3DKerdvbHlwqKrAsSbHmD3HQ0ohyfs+PmiNKcmz+h9Mwh3Q==
X-Received: by 2002:a17:90b:3dc6:b0:2ee:b8ac:73b0 with SMTP id 98e67ed59e1d1-30c3cb1b61cmr26249448a91.2.1747083289223;
        Mon, 12 May 2025 13:54:49 -0700 (PDT)
Received: from hu-molvera-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-30c39df09dbsm7084867a91.26.2025.05.12.13.54.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 May 2025 13:54:48 -0700 (PDT)
From: Melody Olvera <melody.olvera@oss.qualcomm.com>
Date: Mon, 12 May 2025 13:54:41 -0700
Subject: [PATCH v5 1/4] dt-bindings: cache: qcom,llcc: Document SM8750 LLCC
 block
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250512-sm8750_llcc_master-v5-1-d78dca6282a5@oss.qualcomm.com>
References: <20250512-sm8750_llcc_master-v5-0-d78dca6282a5@oss.qualcomm.com>
In-Reply-To: <20250512-sm8750_llcc_master-v5-0-d78dca6282a5@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>,
        Trilok Soni <quic_tsoni@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Melody Olvera <melody.olvera@oss.qualcomm.com>,
        Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1747083286; l=1020;
 i=melody.olvera@oss.qualcomm.com; s=20241204; h=from:subject:message-id;
 bh=iVXmk+6PlFCRAwYWJHcWgZJRCI46HfqbqwSKFjMQVkk=;
 b=pk2BOOptajSAyMagaMVP6uYmAPaTxTnBlyyEjrHkhdE4RSmNSmq8z76wODfjXDJEx4lNKdRKX
 kws4iyoAYuQBONWCKjFxTmsxbhCchsi0fQ8j7YLD0OVlPD2U2KbVv11
X-Developer-Key: i=melody.olvera@oss.qualcomm.com; a=ed25519;
 pk=1DGLp3zVYsHAWipMaNZZTHR321e8xK52C9vuAoeca5c=
X-Authority-Analysis: v=2.4 cv=ReqQC0tv c=1 sm=1 tr=0 ts=6822601b cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=XYAwZIGsAAAA:8
 a=sCV_76e64iQtlowYmxsA:9 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
 a=E8ToXWR_bxluHZ7gmE-Z:22
X-Proofpoint-GUID: kHes4Dv8kYSnDrW-Qpbm_4sV5xOEMy2C
X-Proofpoint-ORIG-GUID: kHes4Dv8kYSnDrW-Qpbm_4sV5xOEMy2C
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTEyMDIxMyBTYWx0ZWRfXzTF70AQbHaUz
 s6QBNcjq1anu90//6MBWucllaoc1y9H+A50tEIZUWkL6sn7AkwjqAfITREzI13D2orKRKLmwGT7
 1xGBsjh9pWOXmQiThav9NYqbK8DCgc2DiCqP18NhEdI5p9Uo8A6sGfg5lJ2Twslba4ojuoXII03
 vXi81CSnm+oTCo4YlhFIH1b8CDJ6blj2Sc9kX6h5L3zU5zaaZXnG4asf+aqQ7fmBWuG/iimxZzO
 ZAWsMS1HpHZzxBkpYXGYHWJ+75XKC53GROIwcGOUzZvxHl8A6Um9W3H8mgulnAKgCG0jwbUtblx
 3qh3RU+VxH/pAaAarf9WTMD5tVwrjg+kNHsZq/u4DJSGGoM4XMziAzlgqMgb2IwiWlZsyQUu1PY
 RSLDIzgnZf1Y5cUiW3ySi9wHftvMpVY4u0C1IcJFd94x/VScDgVNSS9mM5vsN6fltkgN5/CY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-12_07,2025-05-09_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 mlxscore=0 mlxlogscore=727 phishscore=0 suspectscore=0
 spamscore=0 priorityscore=1501 impostorscore=0 bulkscore=0 clxscore=1015
 adultscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505120213

Add documentation for the SM8750 LLCC.

Signed-off-by: Melody Olvera <melody.olvera@oss.qualcomm.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 Documentation/devicetree/bindings/cache/qcom,llcc.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/cache/qcom,llcc.yaml b/Documentation/devicetree/bindings/cache/qcom,llcc.yaml
index e5effbb4a606b1ba2d9507b6ca72cd1bdff51344..37e3ebd554874f0fbbb8956a718dcb717ee82155 100644
--- a/Documentation/devicetree/bindings/cache/qcom,llcc.yaml
+++ b/Documentation/devicetree/bindings/cache/qcom,llcc.yaml
@@ -40,6 +40,7 @@ properties:
       - qcom,sm8450-llcc
       - qcom,sm8550-llcc
       - qcom,sm8650-llcc
+      - qcom,sm8750-llcc
       - qcom,x1e80100-llcc
 
   reg:
@@ -274,6 +275,7 @@ allOf:
               - qcom,sm8450-llcc
               - qcom,sm8550-llcc
               - qcom,sm8650-llcc
+              - qcom,sm8750-llcc
     then:
       properties:
         reg:

-- 
2.48.1


