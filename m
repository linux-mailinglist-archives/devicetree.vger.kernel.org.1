Return-Path: <devicetree+bounces-232835-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E5707C1C41B
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 17:53:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B78669611A7
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 16:05:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E7E6355806;
	Wed, 29 Oct 2025 16:01:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Uopo1BI+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FJwpg0qN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5559355054
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 16:01:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761753683; cv=none; b=LOm/GYFEOhPw0uZcGOIzk7JSU94nKxvgnUPOI8oe5dbIivIUcYaqwDzZEqeb9NLxR/IBPQQJcAT2HScgdR4ZYwnnva/H1E/3KD5UZkpneptbApJ9bxDt6GtwaM0rpb9uqdGoDoeG5k7pzUz94cZX/8BFjFtBhE2fiWH+4KkHcMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761753683; c=relaxed/simple;
	bh=GsY8XliOywntV/lSkdR2EomMbEJYJdhySDnjPJ9zxtQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=gLpfThKK0sVr16P3DG/W1asA2tWB+OEU+G4lNoLqYrAu8qhPAI17BJdHhcqWgbJ9DPOFiDP2Lu5Y8RP3pdh/rlyQstrg7PYDbBJwwsAjZkc7nM8+j3Nnqb3ysrQumcD483hME+6/GZx8unW6utzX0RiGBl9p3OrEXCjiuceDMLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Uopo1BI+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FJwpg0qN; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59TEdcnu811844
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 16:01:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=bCQYJqybrY4
	QyIi5nJG9oiSEgsqPll1C9TpKkvG3Kps=; b=Uopo1BI+3neqkrYpdEHJZFPWU85
	BePw8Wgpkah82je0ldGoTb0qmRJzwoQYS3b51z3JmzXKU1EtpAH+qsx4XqiR69pD
	puF5HXeDH+DiJxgtPrduOy2m+xaGUvsTAbE+fQXNHH1gqE+aPl6atjso3FaexfJG
	v+p66bzeEUP7UzaXHF1j8p54hUu9J0uX+OtHv6VcUs67pqCugrpE7blw4gi0C1FC
	+UcjPiLRyJvIEP+x+XhivZHgHIMmdPy2jnDt0nIwDT4vpJH6MpjNGGyUYpZ0zCfe
	uZ/26d+sBaAAPUElQtvLhSMX8/90MIj/MCrzjEflBKWegTeOdZax+w2fFQQ==
Received: from mail-il1-f200.google.com (mail-il1-f200.google.com [209.85.166.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a3mvg88tg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 16:01:20 +0000 (GMT)
Received: by mail-il1-f200.google.com with SMTP id e9e14a558f8ab-430d003e87eso265968165ab.3
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 09:01:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761753680; x=1762358480; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bCQYJqybrY4QyIi5nJG9oiSEgsqPll1C9TpKkvG3Kps=;
        b=FJwpg0qNSksm707+zIKFP41t4uFV4GrWJT4t9nl5eWg5adSHjb3joyadTlFYgkOujm
         rdrcqLE3nXdDoBUhZ7045e/0FP+09oCZ5+WP3OFPflHwxJAJDriX1MEXWa+0ZAg2+PW9
         5rtYhQgZ9dxBHvlvvwk9kT/6ZPDsrX5t8eQlUjeS1hdxdUtKDvtZXLbuuuhvmXaaUrUg
         hoOznqnX4HrUlqrW2M/g2ijonnAp/kDkaH203HKqx5iQybWIPiAxILo6C/idS1fxVL0T
         6csTKYhwhL+//dX/isCCCk1i3W65rmQxsoP5AyHCUBgjlujxIFin9gDaiMhmPVk+c5CH
         68Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761753680; x=1762358480;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bCQYJqybrY4QyIi5nJG9oiSEgsqPll1C9TpKkvG3Kps=;
        b=bx7zHv9Y8Fvo8RlEyrFts8c1z5AR9hMTx/ctUQR5VgbrTMDQ/m05YpDKKcPC+FmE88
         A7yGK/XGX5n1SQ5FZbxULHd2JHS9pxR3EdQCw2sMs9jMtb3ivK5PzOdznHzzrr1fZM49
         3amX/snnJHX6WewiCcVukHJMZjJjVuJrEmTjLk8L4YVAH4yOfVDcGizfhNK1AyQ42KbF
         5enUzVQgGpLoTmCMiCX7mtMrLASHfjEEvX4Q5olLbodasQkx93zpxAP4M3vVmBvdTB2x
         eV2oIkE9LMxS1m85ur23C+jkGzBY+v/nQSnObW/X71j0P2z35Byc5ie0QjN9FFqSd+03
         cJKQ==
X-Forwarded-Encrypted: i=1; AJvYcCXDamZWqkGPeLAB19/LWWqu5YqeScUcYni08m7U0fYZFVdOP3P+8U2q9fvx/QxAvLCOipOMLYlT8nQ/@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+GSE2wzhhYHNH/PjSjTdHB2sDARluxLtnnDZAykNLIWoA8oCD
	2zVADNOTeL490Z1jxR3XQEMFf4HoZIYeo6/3X7BNoht4bbJeEQCUbagvI9kLDZ9/EdWwiQbIa0Q
	t8LT6G23ok+zHcpQUIbT/8gGRyx84A+WQfnxxPwjW7sfcWiV/FV/AlBlBPSmHa24L
X-Gm-Gg: ASbGncu06VwdEaKgegBn4+2IIpk4haE+pp54936p2An6gi+Qrdc9g+r3y5QKdIH6swK
	TYfPp0JaRzk3xV85Hrc1VhnGODVuYuvJ/aIjlXULcJ2xFb5I828SC3IWUMUJs3Wgxy1Wv56d0/k
	cX1YejG/BrNQXA3MEz5VXDCYBra+tuEJsBQYXXZwIdsGxWvm9eWaKdZ/x1vGBcAkGmXDW/7rWWl
	E1sNP/52hrtH+MGu5EtZznjd8xt57738WD4ltD3L7KPPu4ktV0wi4yV/BOuGX5Hfjj0dB/PnGi7
	veMvRgxWE2Zrqxc4zZLDvgdffAoYGAZ6IwOX44FeICeddOeuuPTYNyA0Z6DtdUt56myGXq1aqOT
	rWpN8fv0pb6p5
X-Received: by 2002:a05:6e02:1aa6:b0:430:c77c:cc35 with SMTP id e9e14a558f8ab-432f9086d91mr48455275ab.29.1761753679816;
        Wed, 29 Oct 2025 09:01:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGjE2ILUkFn3/Lrhrza2F+LZELq3MCwWNFyOzyJeSoP67+DN5uQCi8Stu/eGsDknJ4oEUzAEg==
X-Received: by 2002:a05:6e02:1aa6:b0:430:c77c:cc35 with SMTP id e9e14a558f8ab-432f9086d91mr48453445ab.29.1761753677620;
        Wed, 29 Oct 2025 09:01:17 -0700 (PDT)
Received: from debian ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4771e27f7b8sm57154535e9.0.2025.10.29.09.01.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 09:01:16 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: robh@kernel.org, broonie@kernel.org
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
        perex@perex.cz, tiwai@suse.com, srini@kernel.org,
        linux-sound@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, alexey.klimov@linaro.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH 3/4] ASoC: dt-bindings: qcom,lpass-rx-macro: Add sm6115 LPASS RX
Date: Wed, 29 Oct 2025 16:01:00 +0000
Message-ID: <20251029160101.423209-4-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251029160101.423209-1-srinivas.kandagatla@oss.qualcomm.com>
References: <20251029160101.423209-1-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI5MDEyNSBTYWx0ZWRfX8vm0SQdsyjyO
 BD0Z8yn7e100DOtzbXypk1ktplPpBh46AW+EgC6LnOmORFySjmL/sJDALYqgIftuydDtbMZln5L
 cCoUdmI9v0LyVJlPENI5FSFX0wYwPsCklQJ7yNXuyvVRIg1/Jo8T+FQtyf/AfOAZBmY14MWIfV6
 n5NhcbDtTumOuYLEmhmQuPGbUD8OVJPmWnEUOYQGFKM8BBEY+K/Nv2G/O2kSs5CFTpgeyAD79lm
 3j6MeUAqTFfCkClHKJSNQhgfbdihfM7hPlLxg/KNQEtFcIIyWtF9KKKPp1+0Mu24LH/ZfdEI3Ug
 UMqJ9JLKSrDdeVmYNr1drKn7b2iGK6EtRDnxVjoSGyuB0JY9Ax+mE2ej1e9gRz6sLQNxgTF/5iK
 oa1Qam7vEUlsp0clwq6Qvl56owmIGw==
X-Authority-Analysis: v=2.4 cv=S8XUAYsP c=1 sm=1 tr=0 ts=69023a50 cx=c_pps
 a=i7ujPs/ZFudY1OxzqguLDw==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=Y2NZmO-KPezWHx3tqIEA:9 a=Ti5FldxQo0BAkOmdeC3H:22
X-Proofpoint-GUID: GCMF-i-7XR0slQwpDFlJ6PyF4zttxn-m
X-Proofpoint-ORIG-GUID: GCMF-i-7XR0slQwpDFlJ6PyF4zttxn-m
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-29_06,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 spamscore=0 bulkscore=0 clxscore=1015
 phishscore=0 priorityscore=1501 impostorscore=0 lowpriorityscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2510290125

Add bindings for Qualcomm SM6115 SoC Low Power Audio SubSystem (LPASS)
RX macro codec, which looks like compatible with SM8450.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
---
 .../devicetree/bindings/sound/qcom,lpass-rx-macro.yaml        | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/qcom,lpass-rx-macro.yaml b/Documentation/devicetree/bindings/sound/qcom,lpass-rx-macro.yaml
index b869469a5848..7f9697831918 100644
--- a/Documentation/devicetree/bindings/sound/qcom,lpass-rx-macro.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,lpass-rx-macro.yaml
@@ -25,6 +25,10 @@ properties:
               - qcom,sm8750-lpass-rx-macro
               - qcom,x1e80100-lpass-rx-macro
           - const: qcom,sm8550-lpass-rx-macro
+      - items:
+          - enum:
+            - qcom,sm6115-lpass-rx-macro
+          - const: qcom,sm8450-lpass-rx-macro
 
   reg:
     maxItems: 1
-- 
2.51.0


