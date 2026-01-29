Return-Path: <devicetree+bounces-260665-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cBCkEqqmemnF8wEAu9opvQ
	(envelope-from <devicetree+bounces-260665-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 01:15:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BB569AA2CF
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 01:15:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7EADF304C4B5
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 00:14:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CA0C40855;
	Thu, 29 Jan 2026 00:14:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="A5W45zGS";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="aivRl80u"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F388A28DC4
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 00:14:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769645659; cv=none; b=o9B11T5+UX/BEi6GqXiTbJas3V9dnl6XXSaP5pgyprOPrx2QezaapRQw1dTDIuZyshSdt2fiGpXrQQT+4roJYZros0TZ4UdPTjpTfGkHQ0eAqsDzn2+V+1E4uYObRqyP0VgilDKhp8AUUeE+ojwXfSHL5L4BJdQsXfnr64QvblQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769645659; c=relaxed/simple;
	bh=/mktlExfi6J+VTNoAOE2TdBEptRWSmxhz1fAVt+g4Hc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=aZICB6UoyJGBrommEWWbqNP2t0ZEwMw+IfhWq8ex6n1f8IwXXVFfe6rgOkHAMSCLkkxgl7bAonHR0Mh6v2ufIPVZhd/xC0a7a/lPDjK3SQNpnyTD02GGBUzMANVAc9QYoy/C26XHWfpwruMi3QfRYqTJig1Iw7dVEY4rkvl7/TU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=A5W45zGS; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=aivRl80u; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60SLox7N1397054
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 00:14:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=uWU8cEg6n+p
	lWSlJaDPz2p2B5LygHk7I/F0OpCPVYD8=; b=A5W45zGSoww10EYhuFr121HGhMV
	vyI8E+3Ncg6dGumL9OSSXmZBp8Ok+9KQVP5skj6mQISFUkQ9PItnZVhGnhyBGREi
	6/YqZgulsAoMLMMSdyH5w2XB4dixjjNoAb0i21gGAX9WNRjSv1bP9nZRJ6u9lByt
	Vc+jqyXrDL1KW8+YrDL8iQAhLOAlzGhy7eEVogOPUWqtfEeLFZivNjoBmQ2PMm2P
	OIiGeF3MSD7K0gbrJmrryeEKK1bSSk/xwfzr2ZWGiFpNeylw1C00oYQXPnP6K7Cu
	g+CZkxK90vffsuhq4SZGlfZefVcPGndrah91fBdX3P2dSoMvZTaCVkDAPxA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bytqy0au2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 00:14:16 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2a0f4822f77so11686655ad.2
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 16:14:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769645656; x=1770250456; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uWU8cEg6n+plWSlJaDPz2p2B5LygHk7I/F0OpCPVYD8=;
        b=aivRl80uL31d3LPWxr624dsr/5I22XhgUSIQ/OpU7VK9DQ//R3v8rH32LBZkDj6w7s
         EPECOi5k5IkT6OtSUqtEjJH8nmRj3TYscJpMx1NqZ+g0nEqIjsG9DpjVi9/8b73fIYoM
         G64NSRFkstLT/VRe46BGVHJ6BbakX3pYN7/oo19cM052fSI8fMIB+uAdKgB6Y/yV/LH5
         7nZNjMpXz6HBMVDix5yRY+pmqLpfOenELcQIjzB4mLPSf25mX+sKR2XlvdI92spxVGGg
         aoaOyqJia1SvbV9Q29Hj+W+VaWQhC64zW3p5W3noqyETmvTy3m1j0cnYygdmvKW7gUgF
         srkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769645656; x=1770250456;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=uWU8cEg6n+plWSlJaDPz2p2B5LygHk7I/F0OpCPVYD8=;
        b=qVU8o2PNasogSWrLTHdJX8ghx62wgLQ89TzKhfyuERFw24MGzEsj4FPWsJ09dm3r3N
         YKhJp95FyGNiOlaiU4kZQW82jgpBxXLZfTzuPES99ojXZjH+XN1ltUP13eeUIDmVMGnP
         vGJ+5RfqqGKf+1zrcgeBw9PJwfHdi6jVGxPTtR5mo4wKe2+nmleNcgOOtRh0wQUGsF4H
         123R2nEhayImARpvvKgz/2usybIGgSVo37YAlsoFkvQ60jFnrh3z0SbuTS3e0EEmguW2
         z44orSQDKtAbU/hwC+Ht+D9Z/MgKE//l9EnQwoILDhMkWAcLzX/53uUh/XownpYOr+hn
         E5xw==
X-Forwarded-Encrypted: i=1; AJvYcCVOBkPuoFwakKZztzqa89MpqSvwaCuldM77E0swV0z+KG7AhdnKQqj/lq1Qk7A6UGQ/3CZQbih3R8j9@vger.kernel.org
X-Gm-Message-State: AOJu0YwRQ5OLm5g/qSaSGCH3ngT6Bs82yoK/teCVKN3RJeixFZSRwsj2
	LgAj4iY0i/jxXCNQE8Q110mECl3ObWdFqlGHQuxq+gWBxc8++Pxa0pZ3BEw1djPGGpTkxec9+vh
	LvOTYYFdCZ5JmsDwnY+jgdsV8KRZuisaekWElPUSkQ0u3ZOSbzgM9Fpp0ppzqEXLh
X-Gm-Gg: AZuq6aJ0lsxXodO3JNxf4Hdn4eIXcgE0HQPQ9L4o/Ri8/NWF0462OX6mpbir9fytsH9
	9M4cUD9ASSJj2+PKnAcKji6HK8Kv6i3Z5p4b4wOLwhObsyzW+z0kZFShdz+rZ3gvnEbW8xeG/En
	IcJwTS0rdK164Ppv3lCD7N9lRkL1qFubTckf7/UjMGN1sdagsBec29AG1jEXgyRqhBzOBbXvxo1
	6SL4bZDf+OMdYFWit6ijaqv9sh7nnMcXPRGrXPBbEzIktHuY9/ZBVfw7G/ezYsbOHMrJy4aQ/gD
	faBVHotUTDEdXRzw6571GyQWuiUvCb/Vd3LqCcNcj+8N4/jjhS10CU71g+IYeZTBzceHNchczVE
	ghZgBa2KikDx1Ll8BmsEXz/Tf1h0ZMbWgAsSkxND84wulivELqVkzImZd1CKMp5jP5HMwZqXune
	QyRka+DzKvif+1qgoamg45VVU6
X-Received: by 2002:a17:902:da4d:b0:2a7:683c:afb8 with SMTP id d9443c01a7336-2a870d63794mr61400075ad.16.1769645655627;
        Wed, 28 Jan 2026 16:14:15 -0800 (PST)
X-Received: by 2002:a17:902:da4d:b0:2a7:683c:afb8 with SMTP id d9443c01a7336-2a870d63794mr61399845ad.16.1769645655188;
        Wed, 28 Jan 2026 16:14:15 -0800 (PST)
Received: from hu-sibis-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b4c3b29sm32055845ad.54.2026.01.28.16.14.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 16:14:14 -0800 (PST)
From: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
To: robh@kernel.org, srini@kernel.org, amahesh@qti.qualcomm.com,
        krzk+dt@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org
Cc: mathieu.poirier@linaro.org, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-remoteproc@vger.kernel.org
Subject: [PATCH V3 2/5] dt-bindings: remoteproc: qcom,sm8550-pas: Add Glymur CDSP
Date: Thu, 29 Jan 2026 05:43:55 +0530
Message-Id: <20260129001358.770053-3-sibi.sankar@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260129001358.770053-1-sibi.sankar@oss.qualcomm.com>
References: <20260129001358.770053-1-sibi.sankar@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI4MDIwMCBTYWx0ZWRfX/b4OYiMwZtna
 xtyFAUiFIBzOvugd/fR9cd4FmKnMJQlcwppdjw8XK9fetEVQHE1eiGy7uFpPokaZt3mEHd2CLmw
 DAaDfhIFRv9FQF/UAD+o02bqFpjtQm+O5iIYLv5ow+d/DfCHpPajpVybzKEjqL4aEPGKb159Eom
 nWJlNBrwqyblx7bCpr83tfd3sHJ/FsA0y7mPrm2kIlKOpkFYeX1nZjNuo5rIzopLgO8DN3VAEeF
 JOYc2MVbgyFpull5THwAwGGW5cSzLa4rKVTXtgO8GdVvZ1GMqN0uZclf40rcaDJ58Ksp/aaE4ny
 OaloALWZCPk14w0zABy80QChcs0iPQEtEpHPpGOpinSPv+UaHp7JKls9vmHhVqRYp8G3QJFHBMC
 JxyNDPWDz/qa+iW6gCS7xanbRVUErfWj18dYjH5/ILdE7giyBkBXqwjk4HBEDGF9pVO8SWinhNB
 bpP5rwFCVRqKleggIgA==
X-Authority-Analysis: v=2.4 cv=Je2xbEKV c=1 sm=1 tr=0 ts=697aa658 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=I8BSNejkaQ8d0caDSfYA:9
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-ORIG-GUID: q6EmM58zepPNaQf0X1ThtZDPdKIcepbM
X-Proofpoint-GUID: q6EmM58zepPNaQf0X1ThtZDPdKIcepbM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-28_06,2026-01-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 priorityscore=1501 phishscore=0
 lowpriorityscore=0 spamscore=0 impostorscore=0 clxscore=1015 bulkscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601280200
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[sibi.sankar@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260665-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: BB569AA2CF
X-Rspamd-Action: no action

Document compatible for Qualcomm Glymur CDSP PAS which is fully
compatible with Qualcomm Kaanapali CDSP PAS.

Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
---

Changes in v3:
- A few variants of the SoC are expected to run Linux at EL1 hence the
  iommus properties are left optional.
- Link to v2: https://lore.kernel.org/all/20251029-knp-remoteproc-v2-0-6c81993b52ea@oss.qualcomm.com/

 .../devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml         | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
index fb6e0b4f54e8..6a29d239ef41 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
@@ -35,6 +35,7 @@ properties:
           - const: qcom,sm8550-adsp-pas
       - items:
           - enum:
+              - qcom,glymur-cdsp-pas
               - qcom,kaanapali-cdsp-pas
           - const: qcom,sm8550-cdsp-pas
       - items:
@@ -103,6 +104,7 @@ allOf:
           contains:
             enum:
               - qcom,glymur-adsp-pas
+              - qcom,glymur-cdsp-pas
               - qcom,kaanapali-adsp-pas
               - qcom,kaanapali-cdsp-pas
               - qcom,sm8750-adsp-pas
-- 
2.34.1


