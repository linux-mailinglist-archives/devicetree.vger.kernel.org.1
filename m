Return-Path: <devicetree+bounces-274652-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UIvAJ+HasmmCQQAAu9opvQ
	(envelope-from <devicetree+bounces-274652-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 16:25:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C81F2745BC
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 16:25:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id AF04830F4F50
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 15:14:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFB213C73FD;
	Thu, 12 Mar 2026 15:14:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="neVENLHv";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="L3MVS5sD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85ECE3C342A
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 15:14:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773328472; cv=none; b=Yw1NsXtDFJSq0pLhaU7qGJd22tLRcC8RSjcy5wU8bg+Zd5nRgjq1oDMFVeRZ5eEv8AHUflQayxf3i48qfwz4JN7CxJU9SWOqVYUP2wbB7twO++lduTys0tfkFLEhTd07COB7QqUlvxv1r4gBRn5NX20ZZQyFQYzi43HLgyc3xUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773328472; c=relaxed/simple;
	bh=4n+ezeOsiG6jQ/rP0xYQ+auI6P//RAr4Bw4iQYpjjmM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ctqg920gzuioPohYiBGmYxPBjjDGJjgtvzuIP7qHN8hNGkL09MDnJlZ1Bq5dIktGkZli++27CiIbktB/rLbvT2qOzq9EtM1uPqSuMWCooO3JkeVSi9ACnvi/TMxJAckfif5vM7xj8jiSml+ouS8z3sXZ+NQRF8lmpr7Hg4dF3Es=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=neVENLHv; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=L3MVS5sD; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62C8W4PQ1922702
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 15:14:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MXuXiqLICsx00TbPqwOiMD8zMxqcG0nuNwwmGa/0IMw=; b=neVENLHveH3Vocdv
	DjmdLi032VsRdBCpoCp3dk3+mxkpmeWEqTa7cPaccX6aK7I6HqWU+HpVYnNJh53a
	NWZmwCMmgAt2MEA4QkL8KS6wbaxigVsOJDznMn5frLwvgvH/EecVE2MC+dvq8+j1
	GLtEc3fCxnUd8bAsBB7ui1SkBX6MJFv+GvrjRMr0WN8hJRuLt85ObK9w4xo5SJ7m
	uXa+S8eJ1J58/ifhOCzlNQ8PAVtYxHVSI4IlPlLS3QglJKG8XDnRQlMdTgHBXc2A
	dmJYH1c25dt38H2XGKl1l9O+duyONTWMgPOqGhGqFiG33fHavrHzImg4VpFB2BDE
	jRU2lg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cuh4wthx3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 15:14:30 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cd7c4ab845so495531785a.1
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 08:14:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773328469; x=1773933269; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MXuXiqLICsx00TbPqwOiMD8zMxqcG0nuNwwmGa/0IMw=;
        b=L3MVS5sDttgWf+r+LKRBQ5KCRWVT1+U5SlJyoTVmrJETwg7S3bonel4MINtrM3oEc5
         LIqzSnr9fmubau3LUijhCsGfYUCpapr/9vIMOUVRCNccROJPozb1A0EVQQgwT90NEXQA
         zB/qGstpyxlf5TDMfKeRzKtJClq97bl8WaFR8AOnAZVTxk21q1Hz26tz0B9isPJ3Kzw1
         G7UqRuOVxlLzMHB16JBgtGzCS0/moIV8/HeNXpDJeUfzV9TOQ6057L4YUrm7728CpSU4
         Qtq0I3fdIjlNhobuauZt0FMmF9u7g9J83N6afxtU52oEWSwdof6W74HxbeTbnrci6y26
         lq1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773328469; x=1773933269;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=MXuXiqLICsx00TbPqwOiMD8zMxqcG0nuNwwmGa/0IMw=;
        b=DVJUNxlDFs3uWX2v7Z+qDuGGTX6zU1c7mup5xd1Hq0XvflGRL0tqo+IJ666pIdPWjC
         a9uL3OVoghTCDXguLgZrz60rsyztVFtdJfGdqG+JDHM1EaeHP8B/Nh1gNjf1XxKQFnG0
         e8LQ3isMuYKTW1OUwITBRFDy3UzvXIRgbRem4GUxCP40tggRqkWRf164hj2b7P9iFlAy
         XfhHoT8S25O2FMR0wyLecKhyGtdIQbgVB8+uFmdVdkHQyfdgH6gvuhbSuVV+6bvGfkMK
         UT7NjkVBGMzrdv/KhOND82KHsWlKZ3SNpeNudkuTHEzHtHXqQdW2DW7HuDaf6JUQyvo5
         y/Hg==
X-Forwarded-Encrypted: i=1; AJvYcCV/0cEm3UYqYvJaC8mz/MRPZjOEXR7TVSr4jPMenZ4kKms4RFUF0k9iFeHikHQyhcRla8MzINbm8fSE@vger.kernel.org
X-Gm-Message-State: AOJu0YwzcA9pKLc7/ryBbfU61XP3newyx/hri8ycwtVPv4ZfKBehjHSo
	Rfp4z4mBOJnRVfi44UfVteIbEC+3nY4xQkZBCjT+jDyQhU3HT9MYsGlfhwS1Wm+JuSPAuAsi8qw
	7y8U0oo/YzPcH+fMTDdcoVTQYvHAmXSAhu0dXkFycJ4kkl5a6tpoiwK1UyJx5m/+8
X-Gm-Gg: ATEYQzy9fs7LC2YiZQZsGB41z1GHUlbyYI6UXiZljwjr8epiHWjgCVfRGT4Hkfm1nv9
	YDJ1a0Yl8AP4JpJbBzezbIqj57FPX1U+AT0a6VETkV3uDsdHqNoxCTpv388jtUWIBjbsaZq61WX
	FRphMP6bNCPcEStxXt6/hI/1nJQVuTq+ZXW5P6NAKWL5+ZAzBCcThBN7GcgMBhhLTBn8GK2T95X
	xTHB3y320w0RMYheHh0s0PsTtRgvW4CpOJ/y7yz70CNEyhTPPMUBtYtDE5oy0L4Da5kJ8ZlAPZb
	TcUyhV/gis1txoE9bJR8+kY7BQ7I0sb2OaTmCqSl89rONMm2k+XNGghpOZ0xPudoMOiX3UBtY+f
	eYVLIduAsyUTINMAZehCDfGhPFhVaEGXO9/Q4wdBH8rQgZSsywEAG3dPbaIxQp8wdVNBhHecmOs
	vszDkrsFlzknjzX0QiV4MP4Ni3o7DB+zn/tQw=
X-Received: by 2002:a05:620a:3193:b0:8cd:8785:eff4 with SMTP id af79cd13be357-8cdb5a3fa29mr10087285a.15.1773328469258;
        Thu, 12 Mar 2026 08:14:29 -0700 (PDT)
X-Received: by 2002:a05:620a:3193:b0:8cd:8785:eff4 with SMTP id af79cd13be357-8cdb5a3fa29mr10082085a.15.1773328468749;
        Thu, 12 Mar 2026 08:14:28 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a15635786bsm972822e87.61.2026.03.12.08.14.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 08:14:27 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Thu, 12 Mar 2026 17:14:22 +0200
Subject: [PATCH v4 1/6] media: dt-bindings: Document SC8280XP/SM8350 Iris
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260312-iris-sc8280xp-v4-1-a047ef1e3c7d@oss.qualcomm.com>
References: <20260312-iris-sc8280xp-v4-0-a047ef1e3c7d@oss.qualcomm.com>
In-Reply-To: <20260312-iris-sc8280xp-v4-0-a047ef1e3c7d@oss.qualcomm.com>
To: Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bjorn Andersson <andersson@kernel.org>,
        David Heidelberg <david@ixit.cz>,
        Stanimir Varbanov <stanimir.varbanov@linaro.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Johan Hovold <johan+linaro@kernel.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1310;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=4n+ezeOsiG6jQ/rP0xYQ+auI6P//RAr4Bw4iQYpjjmM=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpsthQvfr9gHJIu/Mkgc/jIphCnUKy3xyHBrAts
 camYccWh8uJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCabLYUAAKCRCLPIo+Aiko
 1R/AB/45dWMySGjoQ/Uo3aboOrOiFFBNOoZQlEkXdwF7SvCbzIHpVSb09nOIpow1Xg5m9xy1tV/
 b9WspjWN1rGdpNQiC0A3CFIjuqYkLVXfhbvapLv9cfWiuCGPLQzg2uCGmJ2qIGaMBY5xdv6Osul
 /QRRMIUFyZE5YnYO40TOPBjZ9Ldq1yk1HBF8fkYSLY1VJJhG/CFCpdu/cKmrh/uJxa970VDNEBV
 fNGyQlYGt9PV12l0ePQXRPTDP6qnt+vkfXvqK+KKcsx27V4R/QnJSGabJsF5179jN04WKIQ9hgz
 PyK3aXdfMwPBTBpuK5sF+INC9fD+tDek8F6GjpYldZHd/17V
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=GcoaXAXL c=1 sm=1 tr=0 ts=69b2d856 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=EUspDBNiAAAA:8
 a=KKAkSRfTAAAA:8 a=5xS6gZYSRwgnaRfeS_sA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: wcw-DVZLfugeZ2okBO3JYyJ130PSuJai
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEyMDEyMSBTYWx0ZWRfX97tv9247zhte
 v6I1R5oUeooefFC3Yf0g/G8bEhtFn/Tq44vZ2T352A46zmV6LQthk5Ck9V18wbK6bUU8mvBS8/C
 2dEQLchhCDK9JjcaSICY/fYhRGO7U8aBKZ0EDf1xr0XwnWMVmfbJKpML2tpLNokrf2mmme8yoEX
 Gck9DOTfpx0YcwoE4xXw7TVmIql1ITDymZQ7OsrX6jSBR6z5S4H78zP7lU0rK74Pqfv84nY2mqg
 93l8HdZLpsdxQGCDcdx/s0KoW1dTobgwPdf9RD+zaRhtkzm1Y2ECTX/KWnVbVFrVioNRD+UR38C
 IjrUjfdO04wPEg9dSLgI4BTBzYJ3wuZYqcEy/o1wab53egYEShdp1H+EFLS9sDscFF5ZOe2DtFC
 j81SiAcdPyUgTrrAsYOs314vREzKC1j5pXKOIg94Fc8PDpdhSj0M3Ao+q+Ydo0XBj8IDctzPikD
 xLXkE52vz+Gmk3vZvrg==
X-Proofpoint-ORIG-GUID: wcw-DVZLfugeZ2okBO3JYyJ130PSuJai
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-12_01,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 suspectscore=0 spamscore=0 adultscore=0
 impostorscore=0 malwarescore=0 priorityscore=1501 bulkscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603120121
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274652-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,linaro.org:email,qualcomm.com:dkim,qualcomm.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,linaro];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 1C81F2745BC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The Iris block on SM8350 and SC8280XP is compatible with the Iris
(Venus) on SM8250. Document those two IP cores, using qcom,sm8250-venus
as a fallback compatible.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/media/qcom,sm8250-venus.yaml | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/qcom,sm8250-venus.yaml b/Documentation/devicetree/bindings/media/qcom,sm8250-venus.yaml
index 43a10d9f664e..3700f8fe91cc 100644
--- a/Documentation/devicetree/bindings/media/qcom,sm8250-venus.yaml
+++ b/Documentation/devicetree/bindings/media/qcom,sm8250-venus.yaml
@@ -10,7 +10,7 @@ maintainers:
   - Stanimir Varbanov <stanimir.varbanov@linaro.org>
 
 description: |
-  The Venus IP is a video encode and decode accelerator present
+  The Iris2 IP is a video encode and decode accelerator present
   on Qualcomm platforms
 
 allOf:
@@ -18,7 +18,13 @@ allOf:
 
 properties:
   compatible:
-    const: qcom,sm8250-venus
+    oneOf:
+      - const: qcom,sm8250-venus
+      - items:
+        - enum:
+            - qcom,sc8280xp-iris
+            - qcom,sm8350-iris
+        - const: qcom,sm8250-venus
 
   power-domains:
     minItems: 2

-- 
2.47.3


