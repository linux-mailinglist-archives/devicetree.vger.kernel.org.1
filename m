Return-Path: <devicetree+bounces-233699-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 609E7C24D70
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 12:49:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 48D584EC174
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 11:49:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDA34348466;
	Fri, 31 Oct 2025 11:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LUo+zSp7";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="N9pAhcod"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E147347FEE
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 11:48:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761911314; cv=none; b=gL9WZRhY1GJfUs9WlvGsJNMaKnD5aH0LbaDTwhefOJuQsBvK4ARqrN568YfGZIgTLu3omJKU7tm41nO8VQ3e2ljHyOInhilSiUk+YXocSmoKQRa1wRRs9HAVtqKV9NUa90qtYPKZWpAYTENDWbXaPvAx9k5NN6RGMCnX0rfMNIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761911314; c=relaxed/simple;
	bh=1z/FSnj3ZUgyWqaLRX5fY7Les2o4JmWnSmIDwUcEQN0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GcXN8dbG04m+YneVaHFN3+169pFtjmTUi/3gVVYelORy9ztjLUUdpkh3f148l9b7oCPdn5tAZLs57OXqFqo9xH7/EIeGwWjKTRgFC+D0uN5bT7I9KsU4OFzJ2ATjzyD0I2h0rae3qN2xo3oVYa2vzbLBqbsrISPZgIFjAQDsCwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LUo+zSp7; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=N9pAhcod; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59V8WKlL898094
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 11:48:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=pWjm3r9JBLg
	yWiY5RrLVYsR7m0kB0QZc1E+F4Ywtwhk=; b=LUo+zSp70Cu/KiSHtG2Den5fseV
	BlZWcKOR9SLf5tW/oardmbA+AgKX4QQAOhJwxG0GQZgrW3/mVJrV1T77OwFvnOx3
	65vQkb1pPs/1HnmTE/HpE96oo6LyQL2iq32/rS+cqZiwFxZRasCbriHy/9/lZyhh
	fbT9ZexMsJNYuR7RS4L2gwCuWCaDCIfmnzojoamhuJcsw45xOHvLxkgQW0R0+nSr
	4jhabXNP2RBaMvYQoDvbvk//t1qICpG5v4KiTPyYO7C7rsP+KWwQy2RcAlA33qJ8
	ouTBVOVysTLILhE1eQrBjPp34IVUqrsj11z5ReeYA9mm6dCbruSk2f9tc4Q==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a4gb21xj1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 11:48:32 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ed3f9732c8so33511cf.1
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 04:48:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761911311; x=1762516111; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pWjm3r9JBLgyWiY5RrLVYsR7m0kB0QZc1E+F4Ywtwhk=;
        b=N9pAhcodQDwmUFNNhEKcUkHmKbJ8tpuT1fCm8NT3bXBBw0T4tiWkXQpU1Lba9ItNOd
         IFGew+oa2TMIJKbyfIhX7wUG3mjdizpBN7jbhcUQMkk/oGAaqxvitiNCA9D/wmrSG/h9
         Eals3xKdj4C+axxJJoSt84s2KiHaJ2D8z4dM5DnFCKOxP3WkktLTsO83OrmwEQf7sbgM
         poFyen7ZEWmS6zorzgswGnPdPlraeC2ZcXYZN6GYGqaPgXeGorIz1Uw+L6bkk3Mz+FOU
         iJEeaxz8lQWQboStbZiWOLQuld2wQxFNz3z6LtbhvKXMsGlNnRtQKSkKz4OY/zGlifBc
         2yqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761911311; x=1762516111;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pWjm3r9JBLgyWiY5RrLVYsR7m0kB0QZc1E+F4Ywtwhk=;
        b=ScB3LOef67zi8gMELkks0S+4UzVjCCGeFC8aR6fg7wWir/9m2xoNd/7vKlz9ILZjGJ
         5EhPMbvRDZ5RcpUL521c6sKoBb5Ran/ca99A2RlbQXVB7XU5w1BDKx/9iR/XkrnTVNzj
         JJUjv9youu++5m9zxtbZ8OTu8yN5cJWKtLC8OjPUUKyQOCViIYQmYMMjVwBQZLPvIVxS
         pPX/+NotC0ebS++TLau2cPGKQ7h2aPmmHyr8SaFpmCA3LmYqn8DuRKWzZ+FibcEY5ze4
         s01hyrHijYQv630aH1po2QifVWHwGjtWKC06RsN0PfY4LDp1CdIHT01j4d1Q8ZEts1hX
         LTeg==
X-Forwarded-Encrypted: i=1; AJvYcCWwugNDAPUPHhWp/acuXlaIFCy1UtGLbrCtTnB4Yr2Ov2XGs1isYJxz2+NaExaFpsR8mjlwm+z1sVKD@vger.kernel.org
X-Gm-Message-State: AOJu0YzuuvjivKdfJh+pL417Ezq/geLoJkOhL8V9663ZAdlCM6TJIUHc
	WvqAB7/EbT2w6IN6+asBjGeyKtGGRw/FmyyLajZc+uzEzlHIAAQBh2FHwsUHTinSWODXlbJ6EX2
	7Q+uMhYHgUfejObx1e7PWgmBXY/+zCE5pFQJoycKcYrc4gP+UaLSv+GjwIlKCJVKIoUnzgsNo
X-Gm-Gg: ASbGncsvfL4hMvZ/xMOGWiUGwfETIlixP/eMo86C+GMBngoyTo8XksL3apRVKfwMl/l
	3ME0Lv7qysq/LSHc9syqqlGqR5qccAshvu8AcHLbrhoWPbhtr9ncp3dq5vVOfYetq5t0TnkF2FH
	uXAh/JnYVCLmcPG7FY8uKtuBYltAphUviyJQzIESpbL6dzo7hYY4/i31xadQQJhqq9FgXwR7/he
	gi4OVFEZBGr0CEzl9VRXCcsTenOpLBqKDFS53znVf8WgpyDlFrOoZ1R3U6MMAhPvokvwM58hxRf
	s7u8RFYpcYAqPFkAoyjvIatGremqpGBqozRWFkJ1CrD5jLZHzjX5D2BfiOtwUWg1g4Hz+X2UZhq
	mx5SZlUSH3zeb
X-Received: by 2002:ac8:7f46:0:b0:4b3:4457:feca with SMTP id d75a77b69052e-4ed30d5c037mr32900341cf.6.1761911311234;
        Fri, 31 Oct 2025 04:48:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH1PW4aUXjWsnBLAunnktPoZEmZj62hrfAxwz0VwIb8pmFGBAHF6H9IebLcOFRhJ9pXXvAaxA==
X-Received: by 2002:ac8:7f46:0:b0:4b3:4457:feca with SMTP id d75a77b69052e-4ed30d5c037mr32900011cf.6.1761911310708;
        Fri, 31 Oct 2025 04:48:30 -0700 (PDT)
Received: from debian ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47728aa915asm86831165e9.16.2025.10.31.04.48.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Oct 2025 04:48:30 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: robh@kernel.org, broonie@kernel.org
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
        perex@perex.cz, tiwai@suse.com, srini@kernel.org,
        linux-sound@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, alexey.klimov@linaro.org,
        konradybcio@kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH v2 4/6] ASoC: dt-bindings: qcom,lpass-va-macro: Add sm6115 LPASS VA
Date: Fri, 31 Oct 2025 11:47:50 +0000
Message-ID: <20251031114752.572270-5-srinivas.kandagatla@oss.qualcomm.com>
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
X-Authority-Analysis: v=2.4 cv=efswvrEH c=1 sm=1 tr=0 ts=6904a210 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=q4DFcrmTo4ZQpOTRNT8A:9 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMxMDEwNiBTYWx0ZWRfX9CKpvlZg2TpJ
 DvypBftnxJjSa9HXviQaYSgjQ8ySa57RR3ABn/gvI6QQe017h4By/9Lc+XR2ePDJD7VAYUaVBFx
 GabdljuJ4b1fBd3u3V7AD+WtJNCRobiRfmEhIDysg5MREV0+DAK31ch+DllttKCfaprNdtaZSyb
 oYoDwEzjVJclmd5teUZDLJTgOfs9746XLfX7mUkghERQzk/+lmj7AKlp7tnssFuppwmEr6bzZPd
 d0NtckcuOFKQei1dDDwgJ9C5AwV/ATkbe1R/m87Yh/VXUuieZRsq7be1PJQzq9bu82W4RZaHeiv
 mVXp85JPlVVjI65tzoVga7ApJLcynrtiWl4mLgZpcEqlrZYZ1Tkr/jpydnUEfGWU8slC/QYrT7q
 3ycWitygWE9KQRbN4dpDLR9ol8slDg==
X-Proofpoint-GUID: Jq7VlcaKlu1zSqsTiX2gFP-N7RJ-yoYX
X-Proofpoint-ORIG-GUID: Jq7VlcaKlu1zSqsTiX2gFP-N7RJ-yoYX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-31_03,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 phishscore=0 impostorscore=0 lowpriorityscore=0
 priorityscore=1501 spamscore=0 clxscore=1015 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510310106

Add bindings for Qualcomm SM6115 SoC Low Power Audio SubSystem (LPASS)
VA macro codec. This SoC does not provide macro clock so reflect that in
the bindings.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
---
 .../bindings/sound/qcom,lpass-va-macro.yaml      | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/qcom,lpass-va-macro.yaml b/Documentation/devicetree/bindings/sound/qcom,lpass-va-macro.yaml
index d3851a67401e..5c42b2b323ee 100644
--- a/Documentation/devicetree/bindings/sound/qcom,lpass-va-macro.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,lpass-va-macro.yaml
@@ -14,6 +14,7 @@ properties:
     oneOf:
       - enum:
           - qcom,sc7280-lpass-va-macro
+          - qcom,sm6115-lpass-va-macro
           - qcom,sm8250-lpass-va-macro
           - qcom,sm8450-lpass-va-macro
           - qcom,sm8550-lpass-va-macro
@@ -99,6 +100,21 @@ allOf:
               - const: mclk
               - const: macro
               - const: dcodec
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: qcom,sm6115-lpass-va-macro
+    then:
+      properties:
+        clocks:
+          minItems: 3
+          maxItems: 3
+        clock-names:
+          items:
+            - const: mclk
+            - const: dcodec
+            - const: npl
   - if:
       properties:
         compatible:
-- 
2.51.0


