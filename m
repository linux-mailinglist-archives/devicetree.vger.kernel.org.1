Return-Path: <devicetree+bounces-220969-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 48819B9CA30
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 01:38:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7489A383202
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 23:38:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EADFB2C17A8;
	Wed, 24 Sep 2025 23:37:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="T+Q1OWyr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4799D2C0294
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758757055; cv=none; b=Oj40odNP1kRZlLghFplFOT5P5BK7SdH6qt2uBE8vGEkM41M0pa53MEN3jEdnxxr9bgpQjxYMXMEK6ANUy3AL4iJ2BOZKJGYgbjbtp/6kt5iVxVDYBAf5YKDqLgDOSTphNKewZjVYrhVKgwfmVESVN78zQ13vdp4wYnb4Z77sIek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758757055; c=relaxed/simple;
	bh=yEh271CzwWaC8AljYBxBXpSjh6rUZDtONCY/hWD2UMk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=by1XGSnr0YDBjzSepVpA4GLc+vZVjwC+0RwKxRRqIc8SpRYPckr5uRR7t5Pq4z3qCQQS15YfdVxxjWqA/cRvtgWSylHSkLnuVbyOCpMLxTZotlfsnkBIMX5/2n8fq7JG2BizXMTd4Mw0qupzdBKiYxgFq3U7SsztR6Cx2L/46JI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=T+Q1OWyr; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OCab86025591
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:37:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sVcW8Q66ceh6MYrzZqjm2SaMfynWCP8KmOA8erMrvnU=; b=T+Q1OWyr61TG8a2o
	f+XWNxmTqoegl9+fULRYU6QZ+hr6fWbTGsUZVIUVGym7pC+D4xYJpDe2PGB4jz9q
	wXcI0q61NjIKF6lScGpk5NJ5aL6wCF5a8RPEIAsZxz2KyCaaK8BWFrPSeMsc7StX
	yiHxGOXXHc71vaEcQMiwO3xOvcvIoGmMtlZcJm7l5LiVFkXE+3TjBBfUktf+iBsK
	VEGr/99ntAuiWjGvy32+wq7R3A9oKWHcFW+iG5C1CBAyTO6WQP4w3AVkRP8WqrgP
	lcmparsFaJgYrZcmIBDBJzQ20gJM/sQxtWc4EQcRcGeGbgdHoRO91mP9GvUXz8n5
	Z574zw==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499hyexccw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:37:33 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b554fdd710bso195626a12.3
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 16:37:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758757053; x=1759361853;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sVcW8Q66ceh6MYrzZqjm2SaMfynWCP8KmOA8erMrvnU=;
        b=s/fGQFHuJP+GaXR5uGAVZ2Z/9fAKWdxQnAT+FvxdcA66yqzL2ktNO4vuPDPyMpY3Id
         6sTgMiUAdp8lt+v7JVg2nG0Y4DQLYic28cJKulgB5Yw6aYAcWL1fawQNn1YDAQykkWX7
         kdDK3D/V08Yke2cz7+/2uqSivqrmycGfr/qIuSCka1CtbGV+PicU1ggT11dxr6CWqoNo
         MvZXETNe3561HcDM4B9rsw1FI2rfCvUSbJfKyIfX8IkIj/8lYTroVVTju4Doa/vUUUI/
         QqC65qFN7MSDLvrn1JVBUyNPafflzqRZW523UwTWT/ZvCdH4cm3TG04y18ShJIsBDr7I
         mWTA==
X-Forwarded-Encrypted: i=1; AJvYcCWdWC3W2MNe1AWOdmRTsPijIPuAdBtqmd9MNdSrj9qKRUFQTpxaK8GiuhLd6SMifDQVSV+GyIMitCV7@vger.kernel.org
X-Gm-Message-State: AOJu0YzvoyDrZkxZ1lfKM7hsNKlgD55BMiXMo+ziU15RlSGdCXxFtx/S
	buS0gYu6oxtVn6kacYQGkzgDgj1GM2iXx1wt8vAiovcbgMoKdv8c/HVruJox9w70xq0N6vPpn6J
	Gi/UVtSGWX7mGgBLQAL8wa7BGQrGwf4JSNy/jtNGVJsIvujF7XhUkWiZgVPVkF+hz
X-Gm-Gg: ASbGncsJGVS+3RcZtMe1xhPCRlPCjEoDUoYa7tEwtb6keZgD0oHrg9J/qY8mpovJ/I6
	Xp0W/lmlk4R0AfhLhlbXG/eSgKrtrdanjxfNFewazieBQMbF9RZA1kNPDY2fC5xbW+YSAemBpvD
	XPt46COYlMpfqfSsjqzup/+Mm9VFWeWbraHzOTb8bRifFTcmrbna/9+oY6fayhG45mHQs7OWy6U
	XKg4MFw8eS3EM5A7owdfycxqhSUDgn+Lz2Nz9fBtYch+RkdZNJMclWD+GZWATmFaLuVzVX9gnu7
	gZQ344q7cPF3VnSoG3TwA0BbFdY+lr/UZBBsSUKFZHEP6GCxh53FEzl/Rgpzj9YeLn860/Qwkcq
	tLTX2+eSdFyIzzEg=
X-Received: by 2002:a17:902:cecb:b0:269:8d85:2249 with SMTP id d9443c01a7336-27ed4a0b73fmr14564585ad.22.1758757052701;
        Wed, 24 Sep 2025 16:37:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFXmjvrEnPvGjw08T9XlJAG8e9A/cjwzkIN1aq8g/j/hd6m6hrQcO13lIbbk2ZuOVJncfQ00w==
X-Received: by 2002:a17:902:cecb:b0:269:8d85:2249 with SMTP id d9443c01a7336-27ed4a0b73fmr14564295ad.22.1758757052285;
        Wed, 24 Sep 2025 16:37:32 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33471d73550sm227187a91.3.2025.09.24.16.37.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 16:37:31 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 16:37:24 -0700
Subject: [PATCH 3/6] dt-bindings: remoteproc: qcom,sm8550-pas: Add
 Kaanapali MPSS
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250924-knp-remoteproc-v1-3-611bf7be8329@oss.qualcomm.com>
References: <20250924-knp-remoteproc-v1-0-611bf7be8329@oss.qualcomm.com>
In-Reply-To: <20250924-knp-remoteproc-v1-0-611bf7be8329@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758757046; l=1334;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=yEh271CzwWaC8AljYBxBXpSjh6rUZDtONCY/hWD2UMk=;
 b=WgDbDk1afzYHwLEq85KNb5qbz0+EvdnzpgXWnfc3RWJBu97y3uO3RboLzFk3znzNlEShHGrwa
 mRri/sVeo0rAbUjCUirYvhiXbK0n1FQI9Pt6nAixhXy9r80MswFJnqv
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-GUID: nTdydCQ8gTiANDew9KJSpG_8IovlVQ7F
X-Authority-Analysis: v=2.4 cv=YMOfyQGx c=1 sm=1 tr=0 ts=68d480bd cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=nKf7ylKirmyFfaXDjPgA:9
 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAwNCBTYWx0ZWRfX99Op66ZtYQgX
 smVaEXN9Fw9LREu8d2lEBbfKfmFTDljq8jnSIv7P28W5Ty+6I7ygC+GbVyjMC54z0FdlnzrPcvT
 DD3rcI1lZZaANaYc9T+9x698ryr3x86fzWAga2NGCEqWjUJQDSCOmoxH5oJ+v4hhwb6AxTCgIqA
 zQjol40V/Fp/HhxSEWfW6LQvYRCXFog0cISRsqG+BD30LyqKR7sbH2Jw/l9SDyjYmtl6VWWzPBP
 q6QniVXsQ63OSYUDXaC2pNMUGux/sRC6VMszFeNnZDl3c15mfeez+bZQWUiS1BoQVjJQUc8t2df
 vxseq+VIu0NZms4zoLKFfTm0JsxrG61KR9t47sb/TYg7UPPZbiFEgkf6WHPKzEAeHN7017UxQ4l
 1RaGa9tw
X-Proofpoint-ORIG-GUID: nTdydCQ8gTiANDew9KJSpG_8IovlVQ7F
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 adultscore=0 priorityscore=1501 spamscore=0
 clxscore=1015 suspectscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200004

Document compatible for Qualcomm Kaanapali SoC MPSS PAS which looks fully
compatible with SM8750.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
index 031fdf36a66c..b0d2f0371e5e 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
@@ -38,6 +38,9 @@ properties:
       - items:
           - const: qcom,kaanapali-cdsp-pas
           - const: qcom,sm8550-cdsp-pas
+      - items:
+          - const: qcom,kaanapali-mpss-pas
+          - const: qcom,sm8750-mpss-pas
 
   reg:
     maxItems: 1
@@ -191,6 +194,7 @@ allOf:
       properties:
         compatible:
           enum:
+            - qcom,kaanapali-mpss-pas
             - qcom,sm8750-mpss-pas
     then:
       properties:
@@ -227,6 +231,7 @@ allOf:
       properties:
         compatible:
           enum:
+            - qcom,kaanapali-mpss-pas
             - qcom,sdx75-mpss-pas
             - qcom,sm8550-mpss-pas
             - qcom,sm8650-mpss-pas

-- 
2.25.1


