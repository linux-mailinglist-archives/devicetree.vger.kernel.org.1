Return-Path: <devicetree+bounces-233697-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B877C24D7B
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 12:49:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8BD2A460062
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 11:49:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13D303446A2;
	Fri, 31 Oct 2025 11:48:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FQPvey5G";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DIXzhEIz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89340346FC9
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 11:48:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761911311; cv=none; b=Sp4xwQR1f3ffp5HAGfvNkDkjypqCmBMPtPe/DX5FPrAWN/5K7xzbM4n10A9n7SRhR9ip4xdYXU+te6O0k2wnUuxZ9QaSLbQfuo0mpuSLlHUW4kKDsp8xvBeshAZRlE66JojKw65c2iJvryr6tw6WUuw2oVFfKZUJTCcoKm9zajY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761911311; c=relaxed/simple;
	bh=sOQOsePjYlM2SdUmv8lUrLY2KaB8teOMMCQg12ut7nA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rX3sJ/So9ByfCihiuBYsza6Qeh1AtOqlmtJSSfu8PovysyXoGn28OAbTM9M9JhEQabgD3LWpN6jQTeac59k5kybq943ZBczJXxByG750Z1NINwp7ATcRlT0J+z+lSRXHLaSoaRz800QGn53RxV0xSrWtt+/hJspBXWvLlZsGLVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FQPvey5G; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DIXzhEIz; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59V7jrCK832852
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 11:48:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=j1FjvgdJcCM
	iQjsMtzDEBVWbE1HV5FnpJ02ra3ujabY=; b=FQPvey5GVIUh2Vh46cc9O/hrd/8
	jNqN138I5ZOhO6FaGxnnw0JY1dIzG1EtHHlmRsOBodPjgZFb9HCqrgZf6UOlzL6g
	HH9+GmXvKmMaOTuO6fmFhFmbrn673bcAAu3oQqkp2MOBTFpbmpTKUdqFasPAXNsq
	kDwHYBMI0rhRIuAihGfjdNKuoLfo+CxssahzkOZGrqYfqh9hNnIC+9DLozH0pHvf
	9yZPc5nE0paxO8AdiTHPPSwT+ftOtAvaUuzrBPXWmiHTXjLHGO67bBPYii1keGJh
	vXfv1ATmtcIW2XQCnTJW2GwUxVKXkphPWrJgsxbx2KoQ5CJ83r+UNJoDNmA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a4ffb231e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 11:48:27 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4eba930d6ecso54069801cf.3
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 04:48:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761911307; x=1762516107; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j1FjvgdJcCMiQjsMtzDEBVWbE1HV5FnpJ02ra3ujabY=;
        b=DIXzhEIzLdGQ2NJ9DNJwu+1UFIX4cSO3FhHYUx/mXVqIgMvK2oSAfO9nKm8tNuXaxl
         HAXN5kKjgjY3QohEKvDrbzl1cVzrCRmzvPs03HIiKWe4Was95kCr+BKC+3qX0ys1uQnV
         k7QK+3qAiqtZxAaWUW734u4qqLlBMh0iGQ4KiDTiurPof/2xCkcaV6xG8dtvJyd2wggR
         L+3KEXw2Lb8oe/R+5I3seTvuiar44URy8SnfeX4x6PN6gsSEFXvQPHpeeBeOrMDAY1+Z
         4xhOlRh3FuWqTyHEE/aikz45QFTRT1Xqw8Dd+/XdFI2cHjtjdVHaW4l/GjW73QIIlX84
         WQAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761911307; x=1762516107;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j1FjvgdJcCMiQjsMtzDEBVWbE1HV5FnpJ02ra3ujabY=;
        b=dH6vhyfZRccigoLcUbgKY0Fzg5sHOc7qhsIhuzH5+Z2G1ba/HDrdRJDqUM18mrG97W
         GTter6td84sGQnEstOiGuHVM100W4S7o5Vm4/aybN9wBOPoaTO/i9BLHIrrTTpxTY16w
         lBExOpPlJFgmGPhGlThTLDanNpI1h7H+/DI5myp01gWLeX+uyE8OxsboQyqUGQtL9Jsk
         fAgk8vFGlHra8bCalxcUxC+u2Wfc0hrC/Kze+M0FFk5DdTKTpPZIcv5Xprj7RCyvsTde
         LtAAWA9Zb1qscpo6t8QEn39QzuuWAHpFc57RSOTO8HYaMh1fRwRj7CmvGlUbgn3WEv3R
         QGPQ==
X-Forwarded-Encrypted: i=1; AJvYcCXpSF/p3Pq6JfOEhhgf2jQVGdV2IHDzlGH48+VBkyBMdhvGx7UHIzmijSPaEUEiFJKdjFiSbkUEKmRk@vger.kernel.org
X-Gm-Message-State: AOJu0YxeGZUY5PD1ARHOPOAglZFst/uJmWL+OC4gB4oRcO7+vlKu17I9
	GyDsZX7tMm5xN+urO5tfoTBGzE0qcOZOTjUUAPBWoloAEZj/ICbLRq5VtsX2rzad6shvCJRN2WI
	KidO0KQtVPqn/kT6pdSU+cuJWXnk9kAWt5OkrcT1NF4h8e9mhmQvcN4qwZT7E3o7Q
X-Gm-Gg: ASbGncuUBZB2RNEuabpU12GAvgIjOpFs9+elVwBeUDuo0xZaGHx5BpXz5aM+RVKO5Wd
	wMBy2Uplbx582htV4wvULFer/a5Jum8Ir0GAEQILvZjkCbf2g1MH4gnPSvweYCdbzJQ0TtPQwjJ
	Sq144We1fmtVHPecsfPhrXQw1pkCRo5NN7py35Qta8Ocwz6qweWJjGkLQuF1D4E/HzfYt5I9dT7
	bfHtzq+T7BL903N6DvJecxN2giOIDTXmgoCPsUUGmye9nBmHJUKlHGycONc5VyGNIk9IV6c8jPA
	1FSnoybZjDZN1wG/oDsQA87SGYxXx48yrdEwIYey8ajw4+Ff3TF6sYmAzsOUJHX9VV0d7hW5vvJ
	jg4yl2Qv7A+/V
X-Received: by 2002:ac8:5d0d:0:b0:4ed:2edb:92b9 with SMTP id d75a77b69052e-4ed310bd461mr39463171cf.81.1761911306797;
        Fri, 31 Oct 2025 04:48:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGV7FeNt00GvU4b+LMEjbJ+gjBtvvYtDUL9yozhNZog5D7ftzUP+YptgowQ6Mp0rebrCNKzpA==
X-Received: by 2002:ac8:5d0d:0:b0:4ed:2edb:92b9 with SMTP id d75a77b69052e-4ed310bd461mr39462901cf.81.1761911306373;
        Fri, 31 Oct 2025 04:48:26 -0700 (PDT)
Received: from debian ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47728aa915asm86831165e9.16.2025.10.31.04.48.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Oct 2025 04:48:25 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: robh@kernel.org, broonie@kernel.org
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
        perex@perex.cz, tiwai@suse.com, srini@kernel.org,
        linux-sound@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, alexey.klimov@linaro.org,
        konradybcio@kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH v2 2/6] ASoC: dt-bindings: qcom,lpass-rx-macro: Add sm6115 LPASS RX
Date: Fri, 31 Oct 2025 11:47:48 +0000
Message-ID: <20251031114752.572270-3-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251031114752.572270-1-srinivas.kandagatla@oss.qualcomm.com>
References: <20251031114752.572270-1-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: UM7nFz_mALj9eCjRxKu6d2Ef5csrN1-I
X-Authority-Analysis: v=2.4 cv=fpjRpV4f c=1 sm=1 tr=0 ts=6904a20b cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=Vptr8DYYLnhAWPBg-1oA:9 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: UM7nFz_mALj9eCjRxKu6d2Ef5csrN1-I
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMxMDEwNiBTYWx0ZWRfX+xma+Yk6aPGS
 DZDb6IlMY6LaaI/7/dyPWjMhN88c9h9rpKpFa0+V/HVlpu8V7qu3iWGOdX02+G6R+QpjJ7n8dqk
 6SfD7Ia1uxDCwxATu2ZIH/XJNDw882su+cXIN+JmKuv55GWK7JOUXDKZ8o/bB/Vz/21Xn38GpF/
 /y7y5wEjRSNgAWQWEnexYH0P+4M+2KWpevS+uxMknJ1PzOqvknKtBrDjmeWslwV3TkLGE0Lyxpf
 fA3LJbeCUwVdHBdrjnBYrprAXrpGPhvQv56FwREVX1fu+nbz3IqGKRANTUn/oOJ02UGBT7hZScZ
 1RUFT7liLGg85mJWkY7T4wpGb4pEhpznNeRP69AT81hQslTLL2AJOavHo6gvbPTIU5HmYfZZeLk
 daj4pwyAQLMNBmYEkjvz7c9kwE+zYw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-31_03,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 lowpriorityscore=0 adultscore=0 impostorscore=0
 bulkscore=0 priorityscore=1501 phishscore=0 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510310106

Add bindings for Qualcomm SM6115 SoC Low Power Audio SubSystem (LPASS)
RX macro codec. This SoC does not provide macro clock so reflect that in
the bindings.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
---
 .../bindings/sound/qcom,lpass-rx-macro.yaml    | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/qcom,lpass-rx-macro.yaml b/Documentation/devicetree/bindings/sound/qcom,lpass-rx-macro.yaml
index b869469a5848..2eed2277511f 100644
--- a/Documentation/devicetree/bindings/sound/qcom,lpass-rx-macro.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,lpass-rx-macro.yaml
@@ -14,6 +14,7 @@ properties:
     oneOf:
       - enum:
           - qcom,sc7280-lpass-rx-macro
+          - qcom,sm6115-lpass-rx-macro
           - qcom,sm8250-lpass-rx-macro
           - qcom,sm8450-lpass-rx-macro
           - qcom,sm8550-lpass-rx-macro
@@ -81,6 +82,23 @@ allOf:
                 - const: npl
                 - const: fsgen
 
+  - if:
+      properties:
+        compatible:
+          enum:
+            - qcom,sm6115-lpass-rx-macro
+    then:
+      properties:
+        clocks:
+          minItems: 4
+          maxItems: 4
+        clock-names:
+          items:
+            - const: mclk
+            - const: npl
+            - const: dcodec
+            - const: fsgen
+
   - if:
       properties:
         compatible:
-- 
2.51.0


