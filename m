Return-Path: <devicetree+bounces-273954-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CG+eEiIwsWm0rwIAu9opvQ
	(envelope-from <devicetree+bounces-273954-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 10:04:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3875C25FF02
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 10:04:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2F341331E8AE
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 08:43:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52A4C3B9DB6;
	Wed, 11 Mar 2026 08:43:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Z/xlv8Dw";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GZbEnTh/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E86573B6352
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 08:43:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773218615; cv=none; b=g19LIoOFn0jmJseaBzwfT+9Hr0wph8RcPlaPdK4xllJTihW3kPKi25i9h1Lgj/Foz+yy6I65s1J0e9Z+CE9f57dtx5jnYEDjPJkyPZZ6B91wlCPmVr0r30pKXkRJ4DwXViQ1QKxS1ORXuvmj/KiLeow/Iyk43sQAd4GvQ6Mkjws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773218615; c=relaxed/simple;
	bh=7pVPSN/bARO0AUEdyRvnLcCM5Z6J5AABq6iQOG96BTw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=k38wuLjsbIMuLr6LwO044bxI+6ON5RYjdasHhrOlfk2lsJCUORYiHG2wDH0cGkGeV7WhabeQUHgOloumN+NliiCn65c2EDpy3wbwn3r1kVHfbGSql7kXes0z6RymcehifuNedKbDXzTD3R6v36u9nY0rO5uWzTFJGt24+XR87l4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Z/xlv8Dw; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GZbEnTh/; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62B3EwSw248694
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 08:43:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=vdxk6qV7wMGcdh3HIjEA/Y
	MBavLAHiFVQZ2t2Ltj6A8=; b=Z/xlv8DwCUh8cc2NkgWAHeKsdRoG6i0mQ7Pr2q
	2pyyH1wakosnoRka5OTbZuAynDVG9GgL0tWK0s/0QaYEPtC6LnSiPW+O4UFxwuRx
	nZYertbVBWPxWcWAGvEqfx7z58OWM1TKuEakIA4UznfQLmjTaFyye/PrZCdIPXIJ
	ulPbvnvMrfx+33Ty0/dxkrQgYlOqBMAen1PYaHU7juGnzfe6LC0zB+fVRjRJpjQF
	n35OjQQlgqQuXFyYtCfVUGBJMdCuChU7h9zGHN4gH2e696mYO3K/CmAwmqW34Xur
	ferWWl6eqE0HkCVBtIBy75bgcl8ozSZjcULF9lJnAjzL0dYQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctqv12mpw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 08:43:26 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cd77e5e187so2305666485a.1
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 01:43:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773218606; x=1773823406; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vdxk6qV7wMGcdh3HIjEA/YMBavLAHiFVQZ2t2Ltj6A8=;
        b=GZbEnTh/GO3EcdZJJaUJKhUS4A8kG+6m83ClkwIbg8sHfF/Rtf6n+dTwqrftjwzNhD
         rRETVnLyboJm10IdbjMdHS/oZ6yOAlBLeu1s49JjjBYYBiTO0XoiwvQbyyINLWtIIXsn
         5BuPVfmqqR8oZS/zJD9RyCmrsL/EarmAESRKm2x79VSRk7nw4MuYTYXUpuFb9TogwC4w
         I/fDJ0CSVXeaQO7R4Cx/KUN5hoXV/9NA5BO9FldqL/uclNoZvk/JhSRf/fJhpk7mGUJG
         g2FA7XaLksGRT6B4DTVrOV1iB4RBhlfdYtrdjSSqOU1XHfCVgx1lFytsAGbC3grHpJtQ
         uytw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773218606; x=1773823406;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vdxk6qV7wMGcdh3HIjEA/YMBavLAHiFVQZ2t2Ltj6A8=;
        b=fEACbhF4QTYW6wFqCfbculHmlpjsEA4WpnCNnVFI5nptJLTOm8GOU8+dxt20B+0slj
         h+GYxtMn/ak+7OxK5o/DiDkQVt1B25eZ8vou7XdqaxpGvH97vm63zaOvtof+kyXXFNdo
         MlwFI7wi9mAa5PTD3z9f45clWkT40G3RUjkhrr7sE+3G+Afcchwp6Ee8RRm+iIVpR8st
         2sT0ilhpkbKa3dCzhOkG5lYTwYnM+y3hnXJztQwhv7+ZZiCQvpVCBgUQmNUEL7MYFVmD
         dZ3f7602fs1DjfR4YzEUZUPhh3DvVp38vw3YcvF+zTzWOvihaoMZCjITBmhoi/LOSHBf
         KzOw==
X-Forwarded-Encrypted: i=1; AJvYcCXvgCdomFNWaBG3eu7pehTaXkHbx8ujsEQhPueFZW03dp0Jnzs/sR7meQPQ7iWD02A7NBpv72FdEOiD@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8RbujNWQUwm5Nr3h3SCVkbSZKc63DysQgDPu/A7NsV7orJ08f
	Kw3/PIXh3+nJUgmr1bfjVWrru0hoKPfBAB4sOwjLADz7tL2bT7P+2rqgx+03OPMVC5Xsc8tXQBj
	9E/YbS8FgjB7vmx2Lntm+ghRyuWvtb/R4FRCAnZ4asrq4y3n9nd2Xhwrb1lK1ROpp
X-Gm-Gg: ATEYQzycPrDPzrmlLSxyQIYXZXZl8vzFCJZP+2upnLwN4fDXiCl+lgTtUrMVrHnsL1o
	iFErcbOphoqzvl0XdVu13Lp9CyLe/H01PegmywN+usjuzAIF0M2aIIKnxDc6HwR5el9QtCAhU1b
	5VxkrrdKqqiNYeEZWRjboNfu1UQ5NHvp3PkVthm1ioM1yAV8p6WVhdn3Us7c4nnW9ztc6y9d/u+
	v/wcUwolvIqm/pCIR4Avs/1bIUScCJeF+HSlA7K4v3mJ31rCkp1XKWx55sBhauU92AkvI6fNJDC
	2GbZamtlNog5VOCTLGgDLxEUp088sTwQa4M4MKmO0l2Gr5kICiBlT5RQ1x3CIrrqd7QKQQUkZOB
	PLqmXVZXIupGLYqNkXdkQgcl9/e+pfw==
X-Received: by 2002:a05:620a:459f:b0:8ca:2a02:dfd5 with SMTP id af79cd13be357-8cda1976568mr208748985a.30.1773218605415;
        Wed, 11 Mar 2026 01:43:25 -0700 (PDT)
X-Received: by 2002:a05:620a:459f:b0:8ca:2a02:dfd5 with SMTP id af79cd13be357-8cda1976568mr208747785a.30.1773218604830;
        Wed, 11 Mar 2026 01:43:24 -0700 (PDT)
Received: from hackbox.lan ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439f821e32csm4666254f8f.35.2026.03.11.01.43.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 01:43:22 -0700 (PDT)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Wed, 11 Mar 2026 10:43:02 +0200
Subject: [PATCH v2] dt-bindings: firmware: qcom,scm: document Eliza SCM
 Firmware Interface
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260311-eliza-bindings-scm-v2-1-b2d2e69068e3@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIABUrsWkC/22NQQ6DIBREr2JYFyNgxHTVezQuEFB/o9Dy1bQ13
 r1g0103k7xkZt5G0AawSM7ZRoJdAcG7CPyUET0o11sKJjLhBa8Kzhm1I7wVbcEZcD1S1BOVnZC
 y1aqTpSBxeA+2g+dxem2+jEt7s3pOT6kxAM4+vA7rylLvJxD/BCujjOq6rkrBGDemvHjE/LGoU
 ftpymOQZt/3Dy5Buy/NAAAA
X-Change-ID: 20260221-eliza-bindings-scm-7f377bcaf743
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Robert Marko <robimarko@gmail.com>,
        Guru Das Srinagesh <linux@gurudas.dev>,
        Guru Das Srinagesh <linux@gurudas.dev>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=1559;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=7pVPSN/bARO0AUEdyRvnLcCM5Z6J5AABq6iQOG96BTw=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpsSsiZogxQDGCDGiu9ms6V4+sU5WJzhPLxfctf
 ydyRhnKq8aJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCabErIgAKCRAbX0TJAJUV
 Vr88EACbKEHT6ZphkPFU2gu8Z8dtZjQqITPMTc8LBz30/XCROEsRPtJdnF9E/JH7dmWdPGAR+Pv
 t2CZ2SxHVXNh2dSxSlbb7r22AAXblFzdtjw3esWLqEXKKJdUpkQISRvainivuALOeBHokrWYjH9
 1gABH4qqeHV4P3oXIeN+IUe4xUq4EqvQIY/IT3bZ9XF+gxerMOQSi5NbJujN8STCrpAEeZoiU0y
 k66iZS+iI060fD+ZQs6ufN6LzQ0vdDEQD1hcKYdOSVH22VGrDYo+ZofJPzHi6OPBE3WoqchFz/5
 qsJbEASSFCRPaMSJzStIwWQFtfMXaO+jbM639+V8JDJgTtobe1L4wQOsMC6iwncStWXbJENpmwj
 VP+a7wRZFCySEItW0APRjrl9skcVk6oiw6d+bsqFLj+jIKxz8d0wumkDUBQuvkDUK5K58++h6aq
 Mx361IGHrtucCpzl+1fysgeGzmmEV2RUhQoGejvtWkb4vF1oP1Dv4setqeRs/Zvq8GRsuHHyy+r
 047vgmAfKcwfTA5IGaBsMPv9nqM+UYovnxgZ18GeXUEEX6qoAK3vi1Z7Dg5LVN7iTtjZMMPXeye
 hwEuO/5GiA9eaOShZwS18EQ6+R2cOg3lPiesivxfVcB/sX9iB1RbqAelB4/IyqJgWOBmkZH85hK
 mCb/WrqhYTaQtUw==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDA3MyBTYWx0ZWRfX4vvvwddunVKU
 6nj+Op90s8Ocq82+Ol6J4Tse6QIC7JCqTJTEwzFEzmM/GL0xGaw35kTvCjo5pq1SzJMDEYa25HG
 7rcsP5wBboLe+4tZfz6KNriAiXKwyUeOoMlwMgV5YSUqz8b6wP3nIa6rPXOmRmo3kGH+XU2JqVp
 zVf/hKs1sX2VHmm52XfB36zljnV6Xp09a2xzOBm64lCnLmTYaqLEpXCscBJr6jc0VeUmw3EamJk
 sPPR4PdNmWxbWSvl6zOg+Bxxd7QY8szEh0Y6Nygpm6S/ErrFPEhdYbNycc+tWWZv4F5y5VGDyIr
 7BuScxDbl+j2LqMmwDEJ9yeD0qxdx34FapX5dxXh1t3g6F26nwaOM7RlYWNGX4SUaeqbxjuXLfO
 iY/W+H3kxR7lQ79fY/uEadi85Hpg8S94TpKhSZzZMpKJEGeX0hDKWzKSL++/dYSxsE2Y2hdO4ju
 dZ4qPn3ye7sOye4cexQ==
X-Proofpoint-GUID: zfgCUIrcD2Kathc-snLOsdME8aVbg36X
X-Authority-Analysis: v=2.4 cv=S5vUAYsP c=1 sm=1 tr=0 ts=69b12b2e cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=bC-a23v3AAAA:8 a=EUspDBNiAAAA:8 a=ffYJIid-Q94gFHaen9MA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=FO4_E8m0qiDe52t0p3_H:22
X-Proofpoint-ORIG-GUID: zfgCUIrcD2Kathc-snLOsdME8aVbg36X
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-11_01,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 lowpriorityscore=0 clxscore=1015 suspectscore=0
 malwarescore=0 adultscore=0 bulkscore=0 spamscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603110073
X-Rspamd-Queue-Id: 3875C25FF02
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273954-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[msgid.link:url,qualcomm.com:dkim,qualcomm.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,gurudas.dev];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Document the SCM Firmware Interface on the Eliza SoC.

Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
Changes in v2:
- Added the compatible to the if-clause for interrupts being present,
  just like on sm8750, even though the schema is way too relaxed and
  doesn't mark them as required. No idea if it should be or not.
  Anyway, now it is in line with sm8750, milos and so on.
- Link to v1: https://patch.msgid.link/20260223-eliza-bindings-scm-v1-1-c88643112dd4@oss.qualcomm.com
---
 Documentation/devicetree/bindings/firmware/qcom,scm.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/firmware/qcom,scm.yaml b/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
index d66459f1d84e..d55c93cb610c 100644
--- a/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
+++ b/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
@@ -23,6 +23,7 @@ properties:
       - enum:
           - qcom,scm-apq8064
           - qcom,scm-apq8084
+          - qcom,scm-eliza
           - qcom,scm-glymur
           - qcom,scm-ipq4019
           - qcom,scm-ipq5018
@@ -204,6 +205,7 @@ allOf:
           compatible:
             contains:
               enum:
+                - qcom,scm-eliza
                 - qcom,scm-kaanapali
                 - qcom,scm-milos
                 - qcom,scm-sm8450

---
base-commit: 343f51842f4ed7143872f3aa116a214a5619a4b9
change-id: 20260221-eliza-bindings-scm-7f377bcaf743

Best regards,
--  
Abel Vesa <abel.vesa@oss.qualcomm.com>


