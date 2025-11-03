Return-Path: <devicetree+bounces-234481-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4476BC2DA56
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 19:20:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F2A043BE188
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 18:20:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B27D28C5A3;
	Mon,  3 Nov 2025 18:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Q3kmv1b/";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="dU8az5vZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1055288515
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 18:20:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762194023; cv=none; b=jlSY51w8t/tdh3CLAoVh+aFV2Te4Z64lJxwetsrWS7sxkS+KGO58+jyiV+Q9N/PgKHafVDVtpxDVqX5qj9xP12MuzVnXijNjM8xs+p+30J+7CvlmHJ+XV3ON6waiBqYmRnD7oTu3+xHjKswT2Suy71Q3CCGz99JxSD2VylWABAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762194023; c=relaxed/simple;
	bh=oo2xnbG8WfJs7Ko5NlyD7ow8RcCc85G0ZwCs7i2rSnA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=TL9J+omGrCzrJ+6JEicGpfMR5FtW3EXW3oaVjb1c0WSZdFVRreygiUHehDwW1WDvGK27KilQ0KnQV+D8SzLsORSv9BtuLBkdQfmNFVz5z/LVE2oxx7PZZX3f7SxiWKs1wxn0StHy5iakl3W4hnL7cuXc/NgScqOEax1WVOl2p+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Q3kmv1b/; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=dU8az5vZ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A3H4DY03616709
	for <devicetree@vger.kernel.org>; Mon, 3 Nov 2025 18:20:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=9+fmEwX3ZGj
	Jy7IkWaAmJIlp4fYLouSuD+9Zy1mJlxc=; b=Q3kmv1b/Uo4espoie30HgfH3dRn
	5kDYBLT31qhA9LjFLAxSgipXg1OAL4gc/yfS9nkqC0oYdS5big1fx40R+hkLBYRz
	mFkbPvMH0OqjPnCLPl5RMGzu3zt2TPn6TnyT0nUk4TU8Y47fDK9yNSQ52Z/vuDTt
	VODTEQqV78od1NjvNss0eTzY0D+OAXCzI3IeQcKJIeveuuG0P6JiYrgJ/DunXT0Y
	Ugv5FYUuRE/uW6YgEHgOpv5PLLmgeKnbeqKV2kRkiav0oABW6LMMlng3Wrn2Sg/o
	vrnS/FN279dkbx3bY4lB96NFuk8drMe1LZ2SgB0auHiJe7gQJSASJM0EQ2Q==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a70fhr7e8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 18:20:20 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ecfa212e61so201587651cf.1
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 10:20:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762194020; x=1762798820; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9+fmEwX3ZGjJy7IkWaAmJIlp4fYLouSuD+9Zy1mJlxc=;
        b=dU8az5vZRdlfp8dXUT5oZ0Eavk+AXRbt/gB/nydyCZPrDNe1RVINs3ciSOA4zShuaR
         SPWTapyYjjAtIMcUFBndWmRs7+Z7MBFbVcOB4gQBjhSlZ+bkzFKWb60qNHqp0hlYPluK
         K92qWaYbA/vQIdd4KXY+kLTA49TQYnDgtxpShLVT0WZvZj4bFsMMQOt3O2MEdkogOxJn
         tNTp+m/7dfveNJnnroFP2QwPSs0SJb1bJ+K4hRnDK7peIiCYBTjrVOt6vz4wflovEPu/
         +7buBui7zGEABgiQHc8LZpcm9dG2tGhCmKdjDaVAVar12DPaC3A8YyvN2V+Pmle7iYDJ
         B87A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762194020; x=1762798820;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9+fmEwX3ZGjJy7IkWaAmJIlp4fYLouSuD+9Zy1mJlxc=;
        b=lCx5y9uMc+dIoSWlYreb9p1B/n4XvcfEscgl1DPSedi624S/fTZJbMAtNo/SbEOqv+
         cxPwjDxAiaYmJL7+m3AKp5y6K3lgm45iQvi4yHLvuCxvLnQVBxhMPgWruywBEYfSSin1
         6zFp4jow2SNuMrz0BmwaOI9xOBcbtJv88Kvv4yWE7ROvZKsCVSWqU6yQwch9egfZ1B7/
         dtYB3Sve8t4pS2TpC59eNsG+1NFhCxBzVYtMrLXmMfI/q+za6K04bAes9l3HgSu+dPcz
         UCriVWbefRKbP7vSVkat4YxR6hQc5EMJY8l28JNeD8uSSx9nEvg+5rquFLkMFJ7aKWxO
         uqXg==
X-Forwarded-Encrypted: i=1; AJvYcCXJrkGQzu62cHkgb8Qkzp1f8BaMaj3GjBSj14AGnHzO1P+uKnlezDRkPYkjTYcmA4fw7v/aww5WEFGa@vger.kernel.org
X-Gm-Message-State: AOJu0YwSBZFXpTErds1qY4JCOPhgQLd6LHGSlA3UlIuaeIlvLk+jhf2O
	rPSZFw3+cMIrrkjUd4BJXaJ6VgGpuz+SQlol8qH6Dt3YPMibqwB2gItdX5PuBxvaDYQ7d4rE8QZ
	sXgJAWfp/rwJYIf26gOYGbfGc9U5AbDiMz6JcoSyscz896IT0em2F4poCs3dXKNUs
X-Gm-Gg: ASbGncucB07HegbwNZHqtoStFC/eP+nZxzGwXC5kiSUo+I5sX+pzMpfAAaztqQ1yE4s
	Bf6PvLBQfv0X/BOV34YxbeMmdI59C1T1OQomu2AZKmfsclwXK4TWRhMZSjdAOzXdoZMMJBbDU/H
	XEFu5m4tHaHAFJheWgO2VPQ9PE52rRyoN2nsmaEBTViC4TtO1ci6LSd+UJyidk6Rx0IC6XcVXE+
	guO4pBzHZBDs2AhKDz1YNMPOuM90863CTF2rlOOKuscyAchKnfIxHIWJL7AVVpKeSRcgX+yTRN9
	98lkMCV9x7QLQCzONsJdT5hMXup00Bmv4aTDh4ygCrVOuGeo+ytpOxBCiCEoS+z8CnhqKYpylEa
	qXWBVxbkmX4Jp6Yw+dKB5zLZ9WTvKZmCiAVKD5Q3JHIS7R+K7G2ti4A7FrPkEBcsulQ==
X-Received: by 2002:ac8:58cb:0:b0:4ed:3d24:9570 with SMTP id d75a77b69052e-4ed60dd8fecmr4619951cf.37.1762194019803;
        Mon, 03 Nov 2025 10:20:19 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFmwwb1yLDp+Pw90OM1b2QDBTcxme5r5EnDtGwh5UXFiSszHYIcqIchMcYySW6qF60B0Ci3Sw==
X-Received: by 2002:ac8:58cb:0:b0:4ed:3d24:9570 with SMTP id d75a77b69052e-4ed60dd8fecmr4619381cf.37.1762194019103;
        Mon, 03 Nov 2025 10:20:19 -0800 (PST)
Received: from QCOM-eG0v1AUPpu.qualcomm.com ([2a01:e0a:82c:5f0:8842:5746:daeb:a8f8])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4773c53ec2csm169096545e9.11.2025.11.03.10.20.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 10:20:18 -0800 (PST)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, sre@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-pm@vger.kernel.org, Loic Poulain <loic.poulain@oss.qualcomm.com>
Subject: [PATCH 3/5] dt-bindings: firmware: qcom,scm: Document reboot mode
Date: Mon,  3 Nov 2025 19:20:04 +0100
Message-Id: <20251103182006.1158383-4-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251103182006.1158383-1-loic.poulain@oss.qualcomm.com>
References: <20251103182006.1158383-1-loic.poulain@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTAzMDE2NCBTYWx0ZWRfX/CxJZdwMgHJp
 XLbaINStMkwen755aZW110bYeVQXIUKvfFsEMFJLnQ7qbbkRj46PmH+TnOKuxN4SR73/QaMdTtR
 hqHV3MZeSWg9w3NVYkm7oxojCmmBlHdpyR2g2Kwo0OlgB1RhksCfO2Oz53fx2vwSS0PW6BN0W0z
 tTb+rm6HKe5fgPmSDyYD9yl1O1QfE/rar84MDtqQK+RextxfbSuCLuy3aHnHFS24VrgxkM2vEps
 1nlNatwGtH7/tMtM11fs9YjBGlEHRTQLg5n+KaGjqcHpyU1AzUaLfo+rOD3XshXZRXyZ+Mek9Zc
 xW5j/MagEsO89/v3ftH9lMdnrpG0CEF4l/umRh97UBg+LhWm83Ri4wA+/qB7iZcLA9RbLFBn7eh
 8XtNV072ncTJJ9V8y7et0gN5jJJ0Qg==
X-Proofpoint-ORIG-GUID: OiCx3pRRn7eUGOXKq2GHRDVfz6B9ctTf
X-Authority-Analysis: v=2.4 cv=CbsFJbrl c=1 sm=1 tr=0 ts=6908f264 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=6UeiqGixMTsA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=QcpCrrypq3z5zaV8IXQA:9 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: OiCx3pRRn7eUGOXKq2GHRDVfz6B9ctTf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-03_04,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 bulkscore=0 impostorscore=0 suspectscore=0
 lowpriorityscore=0 clxscore=1015 malwarescore=0 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511030164

SCM can be used to support reboot mode such as Emergency Recovery Mode.

Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/firmware/qcom,scm.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/firmware/qcom,scm.yaml b/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
index b913192219e4..c8bb7dacd900 100644
--- a/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
+++ b/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
@@ -121,6 +121,10 @@ properties:
           - description: offset of the download mode control register
     description: TCSR hardware block
 
+patternProperties:
+  "^mode-.*$":
+    maxItems: 1
+
 allOf:
   # Clocks
   - if:
-- 
2.34.1


