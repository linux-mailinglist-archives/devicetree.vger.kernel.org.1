Return-Path: <devicetree+bounces-227924-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 18415BE5E40
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 02:30:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1CCB1585D85
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 00:30:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C57C21ADCB;
	Fri, 17 Oct 2025 00:30:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Gx+j0mSd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48A88194A44
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 00:30:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760661041; cv=none; b=FipS6Q7wV2EGLZiyj4UieYZgXHsWX0PwHDS4kJyN+/0+smur6DyiWOmqW9YTGLy8scjEyh1owVeVG8ZbgJUlEqQ4iVWqmJquPdt7u6HEsBKfpBH6P6a+XlorQxUzixdGIWTCPmdRd+OX9IvJ3Y9Q8j4WNJRXDejompmvbFybv9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760661041; c=relaxed/simple;
	bh=5hM3y6cna0ixKs77V59yacjoC4eomSveY+2fA2Kl2TY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=qZiRygvRjmovMSm/rFi7trsvRIVSLkRZ9k33cXcyIG5xkrkMjFN1w4mYPjtBQy4cAoUKgrwkB7UJka6YnGrLaSpN8RYR1VG1NFjZ9ol4bMOdEGu1Y7yHBKvAlnBA1azEBFJqHIpPseh/LdXfldP74UEbRpsk2m2kJnNkBaV0ctc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Gx+j0mSd; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59GKLXFQ016623
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 00:30:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=oKGF+83l4Kq
	SVQrFOlbLJspJHtMRAO6JREgm1hfKmrs=; b=Gx+j0mSdqlKXPuREooZ8U037p+x
	zhGevibx2xisununmxuU7zte0a2wfq3W1/RQQjXZtO6egoWvjXY/Qdef3IB6t622
	Xs1fhOsyIEk7i1xdS9gYQhUa44dZO/Zl4xZgBInjUVVX0DK4Wd22jLPvXBwvqBgx
	G94G0azbBgDhJSMrw9yL4myoOCEACjlcDHzfh6yS4y1ES0YgO6vads49donOFuXx
	K6nLBotw5zSQwlN+zHfme07rbb/PwQzSCHalovjVYHCKQhjpS/kVrP1Kmv6jMePg
	xHT3Dbbbd5mSGfI2A3xudYBSaddSepJ7+F9qbFa2A5K/5foOhIChBBhPl8g==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfm5teny-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 00:30:38 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-79e43c51e6fso1024243b3a.1
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 17:30:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760661037; x=1761265837;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oKGF+83l4KqSVQrFOlbLJspJHtMRAO6JREgm1hfKmrs=;
        b=iq6dETHQrq04xD8DGmsiQlY7cfrQk4MXgzvlZmi/pF8vp/IZ5KihLO+iOacRo1Z51v
         Zxm9kxwDl+GBv91hB4jUOhmyCCm34MwZBMdSP+KoxzwRIqyU6QmRBenYJ9kv1BVzNnlA
         TwRCtBxg8LiPNHW7igzaU+Eh2ZfUSIPfXege0M6Ucpv1mLlig0c4KMya22fsKBUt+cn7
         MJ1V+mvxb73HKgh3iktKiNdaf+mP5z9ujx06pZ/qmRq3HlMHVYFKVh1d1LxOG/Du6pBZ
         D1+RH8MUUBb1928z9w2cQgATuch6CUNDHL9xJtBynFcKdEuVcOTvNDYhsdCCYwbLPyj+
         5rUQ==
X-Forwarded-Encrypted: i=1; AJvYcCV4C8R6grBuZg6YMU+kd/up4F/u5t9ydCiWjEOKBIG3U+prKoAjqFQOx2MvkATbyKeA/p+qZn3jR1Q+@vger.kernel.org
X-Gm-Message-State: AOJu0YxO0lVimF9zfOKwxwSUGc5DhhCu/eq+unDrvcUT+vo59n8hfw9K
	uFYYXJW+aX3rnZD7Fh7HYDGIudPWwgWKa75tngCxcPl3pMEdUwrfHFNt9N2TMc1flbsnS06AD6P
	zzf5CX1d9Cu0z8E12fxCMahYYDt9hMmlrM+nj27kirJD3N1UdhkuuUihyACTkvzy7
X-Gm-Gg: ASbGncug9MmTXVu5zXQtY2OtjL1/IxXTXFisgo6QD99Kuk2dTPjADBcYd93Tg12rxMX
	U12oc6z4U6aOarYqU2JOjDeUzp7FK/a4WyDRR7gI8XdlGG95Wf8lDbjo/U/lEUrIxdrp1YqfeT5
	yFSGHUXVYlVAhbhevCYMsdN9QNK6yoiMexCBfmZeh09IUTbwyD7/VAYO4cgfyS+y/GUfbxaRk3i
	rF/MS4rY93LRPo2WrXzERwNxWkZhALexBoEfy/ulpdYMn7SGb4uQVsTwgiNWBgD5PaLDPZ8ODWa
	FzRc6YX+G711jBLcwOKSVUsvZG36KupHOtJOoU0LA/RMGts8WaYGsn3FEvoWyPNq3K0S2iJe/6o
	FdwUzPc2fpyzxrqruF4v8tWoyrdj35Yg5zLXd5Sv7XpiKdc4IedWDrVyp0CIkUw==
X-Received: by 2002:a05:6a00:2191:b0:776:19f6:5d2f with SMTP id d2e1a72fcca58-7a21fa132abmr2200178b3a.11.1760661036907;
        Thu, 16 Oct 2025 17:30:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEn6IsRhGZ4xlP3bS88lEKXjX8HQPq/koua6rjTeilXyVx3cCXfQkxF8B5J04SOKq0JCLYU9g==
X-Received: by 2002:a05:6a00:2191:b0:776:19f6:5d2f with SMTP id d2e1a72fcca58-7a21fa132abmr2200147b3a.11.1760661036405;
        Thu, 16 Oct 2025 17:30:36 -0700 (PDT)
Received: from hu-amelende-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992d0966d7sm23613050b3a.40.2025.10.16.17.30.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Oct 2025 17:30:35 -0700 (PDT)
From: Anjelique Melendez <anjelique.melendez@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 1/3] dt-bindings: soc: qcom: qcom,pmic-glink: Add Kaanapali and Glymur compatibles
Date: Thu, 16 Oct 2025 17:30:31 -0700
Message-Id: <20251017003033.268567-2-anjelique.melendez@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251017003033.268567-1-anjelique.melendez@oss.qualcomm.com>
References: <20251017003033.268567-1-anjelique.melendez@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: BXP3tRMcXGsJvpHe-3JrL7UNBbXT5HRy
X-Proofpoint-ORIG-GUID: BXP3tRMcXGsJvpHe-3JrL7UNBbXT5HRy
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAyMCBTYWx0ZWRfX6bzvLQaGQjyg
 wRDeh/VU+9rDpV8eg8IXVCWd2NBuXYS2go5Nnil+39Xlewlcr3NIwhXdcaUsPTsVtEu6GZZyUMR
 NxsxUxwhkzUWHMuFXIjvn1LvJaurOgrqK6czVU3yV/ngJfZor28yjUK+hjscy/EvMVn1R9IkqPY
 TF029KRfAQ6f/Kqjer03Ko8t/P4R6cPiHIrsd8DU6oihmUgVkD73OnuDxOWOf77uKqOT4S8i6Ly
 Iyp3CauWrYN96j0MCM+rVaroWYP9eDwTDI7HUyyD/6rhVvY5JOOORG6K2nmf97Qb0qf1j3mqRPx
 LIApAp4d9g4IHUkF8O2rBQ8V671ABeQQTl96GSRsjGzUlRJav7nfBlA4N9bfrWXVraIrbTHoVWz
 NQvADGGxJUstPQ7NOBXhtZk8m6/Fmw==
X-Authority-Analysis: v=2.4 cv=V71wEOni c=1 sm=1 tr=0 ts=68f18e2e cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=ygjGbgp8loThTX2QW0cA:9 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-16_04,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 spamscore=0 adultscore=0 suspectscore=0
 impostorscore=0 phishscore=0 clxscore=1015 lowpriorityscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110020

Document the Kaanapali and Glymur compatibles used to describe the PMIC
glink on each platform. The Glymur compatible uses Kaanapali as
fallback.

Signed-off-by: Anjelique Melendez <anjelique.melendez@oss.qualcomm.com>
---
 .../devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml      | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml
index 7085bf88afab..42b5a5d811d0 100644
--- a/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml
+++ b/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml
@@ -37,12 +37,19 @@ properties:
           - const: qcom,pmic-glink
       - items:
           - enum:
+              - qcom,kaanapali-pmic-glink
               - qcom,milos-pmic-glink
               - qcom,sm8650-pmic-glink
               - qcom,sm8750-pmic-glink
               - qcom,x1e80100-pmic-glink
           - const: qcom,sm8550-pmic-glink
           - const: qcom,pmic-glink
+      - items:
+          - enum:
+              - qcom,glymur-pmic-glink
+          - const: qcom,kaanapali-pmic-glink
+          - const: qcom,sm8550-pmic-glink
+          - const: qcom,pmic-glink
 
   '#address-cells':
     const: 1
-- 
2.34.1


