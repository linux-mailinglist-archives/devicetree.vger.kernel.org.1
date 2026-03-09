Return-Path: <devicetree+bounces-272918-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mI1BIGK/rmlEIgIAu9opvQ
	(envelope-from <devicetree+bounces-272918-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 13:38:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D7052238F71
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 13:38:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 388333006951
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 12:34:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80DC13A961B;
	Mon,  9 Mar 2026 12:34:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Z7Ri+/Ec";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MW+wRvdT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21ABF39B497
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 12:34:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773059669; cv=none; b=AquvbFgHjqLcOxQsk4AxhiotMAc56JQic3TbMWdLjeZz1j4+UCjm0exDhZWTiM9auEt9XefCOGreNca/eVeEIN2+cWDXvye9GCMwhLtBjR4Jes4XcTHqp7772rLo9z+lsKAKU4KPdwhWSLPII826oQNmpeTg6PH5swMREp/ARvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773059669; c=relaxed/simple;
	bh=uHvarZKkcWBPmEKkDgNjhsQDN78sa38uRQjIFbhEi7Q=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=GWfEWlABE7FP9fktgB8cWypBC35oA9FglgFyYHUoqUeS1KTk2vhdul6Ff6YZfwWhaB50QKWopSRvzayLeRIN/ySifOXr+8cF9kh1lOcw5pj28WeCCZu3TPnqHdQklzTdnseLqqL3OCBWIjwPxkvdPk64nOjFBDcRB0XKwObX1cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Z7Ri+/Ec; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MW+wRvdT; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6298IM062662872
	for <devicetree@vger.kernel.org>; Mon, 9 Mar 2026 12:34:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=5Mb1KC007OM3t3c8wVDsk7TCU1iQIR+1koW
	4yiFNyPA=; b=Z7Ri+/EcdD4CZxH33UlBvpeTSka7UxYqwbPoi4sbzXoMgCYwxzl
	pu1iLHjK/KGugkemC4PU71lkF1zslLn6MAdF/1Tmk4Ki7o/4M9s/eiWaYvG0edrj
	bg+1xT3Cm2gw+s2FDdSjZn4oHj2e2Oz+USe0oERuabnC3/AjhWstvfo6c4gDo3bF
	bNugW/z54wQrtc599bWqzYUFCT0ynDa5Uw3J1KN6xZHpIC/qDbRHwDsVeASxFohS
	DeD0pgnvLHYK9XdXWnFKFHLrKvFk3ocrxdbgA1NfoHQ+yfnf8wnww+gXT7nojHwe
	ap9zwBMKeWf6WdrxTH9LrlO3dmChC5xUu7g==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cr9cpnp2h-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 12:34:27 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-2be07cafe1cso28421988eec.0
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 05:34:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773059666; x=1773664466; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5Mb1KC007OM3t3c8wVDsk7TCU1iQIR+1koW4yiFNyPA=;
        b=MW+wRvdTUKjjZUZLcaOVp8q8T8YqU6NOIuw9ovuuXAij0JDanVDO/VX1Ft6tQnOWm/
         8YjZqnNoHmkYCY4zJdcaWx6uEao5eCSgKVrHoVqlCLaeIZhZnbXr259BLatTZ3Y3btDl
         uGsINUMiATS9CtPutiR6E7Oi2suG0Ymjrgb9Ikd2aTvrGDLkeS7y2ClIdUdOUFloDqf5
         jk/K8JADMsVE4VBwmnGZeHKsqmFbCd7DveMVVoZ7vxYEBF6URbVEt9NcXaHqFdAz/kNk
         XgBb3lmfNXLCIguaDCFvraNs5NQxjb0LG9nPKG4BztgTIRBAz692PqhIS+HWyhPLORAu
         KH0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773059666; x=1773664466;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5Mb1KC007OM3t3c8wVDsk7TCU1iQIR+1koW4yiFNyPA=;
        b=nb0ZUt+sUhN4CANPKOtsCb3VgF+Rv6KFxtJiQ7OB0Pw08HZE1Eu552MXQudCX/MUtS
         jSE04vCUQGWww0Fm7MJ+vlw7Z5kPztmqzQOc82oGyvGqCzEaxxDpCsh0Fih1qomNW0QU
         d355kytS7xbb1CDCll61PiQ6t3axJtiO1Y1ykNatLUbb6RIumtPKmc7ogOSteaDkiaI+
         dxLvwhmOPYYfVCec7imlUsBgItiBSVjPg9dyzrgghFvR2oImoX6sbqusTRof30IJrwX+
         2dpeNRnlCvqO8CA85gx5HjxhJ2ZKqOJgpHOcreYnQQOthQtwH7BsdHbL+u6u9GyaNknY
         lOcg==
X-Forwarded-Encrypted: i=1; AJvYcCVGJgyYZXDdZUcpHaIe8+FiILq2MrLrglsFqRcQvc1dTqLBpoEdaYBRhy7c43UTZ6mUl9PkACv/PALI@vger.kernel.org
X-Gm-Message-State: AOJu0YwSlFBQWBbPzDM7CFKZ1YrlS24Ze/FmOolLv2mYIIMfCiXipCND
	FnG31s5FEvf6vs+YJnG/cToeoLErIflf5C0FmHMhIMfmCSXFmFl+v1g4tI+hrBkHw1xBJvLZgwS
	3Wob8k/Yl44DQRGuseCWdXf5ZUFhPjvrA/3kEDJpQmhOA6aBqG44T4vmzCG4dYvvW
X-Gm-Gg: ATEYQzxpKCk+lHYE+OWsFcrykKHwO6XmX5w6owhaMXtZQNPC/cudY5qjjaXgXoIfS0A
	7UejyGbZ8ofP47TGI3fg74K1usvp5zvwaokCv6o0yMvzhPYiUxBVUIGcUAwm1G6kEb6IlLe8LFS
	3PpHd/sKgJOzb93CVEgLpf2o5dqdCJmZrztP1Cwix71ElSUEmadz1UatOW/nmH/m0VQcYXTBSlk
	zvJcsr2g5iLolA5UgPLzsJG9+JObmZouqs//vjgEY8CNS7al08dFZtBJ9V2MD/J38Qdjrnr9bVp
	clg7xTYvLJbHfm76jAD/wPdH4CvnK6WTQAh5OjAzBRA9JYIcQ/vwVyDLSXSY2N1Gs+ljFoukf/k
	uQOdtU7QIW08u8NtXmoTxqF5Xfu6pASJs1UZ9NkoQ6aSq3bYQgF7ZlfzWFa4A4O16iU2ROwykDE
	7yMmaWxQ==
X-Received: by 2002:a05:7300:cc12:b0:2ba:931e:7021 with SMTP id 5a478bee46e88-2be4e091747mr4250272eec.34.1773059666036;
        Mon, 09 Mar 2026 05:34:26 -0700 (PDT)
X-Received: by 2002:a05:7300:cc12:b0:2ba:931e:7021 with SMTP id 5a478bee46e88-2be4e091747mr4250265eec.34.1773059665542;
        Mon, 09 Mar 2026 05:34:25 -0700 (PDT)
Received: from QCOM-aGQu4IUr3Y.qualcomm.com (i-global052.qualcomm.com. [199.106.103.52])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2be4f8481c1sm9629170eec.15.2026.03.09.05.34.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 05:34:24 -0700 (PDT)
From: Shawn Guo <shengchao.guo@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Stephan Gerhold <stephan@gerhold.net>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>
Subject: [PATCH v2] dt-bindings: remoteproc: qcom: Drop types for firmware-name
Date: Mon,  9 Mar 2026 20:33:57 +0800
Message-ID: <20260309123357.1911586-1-shengchao.guo@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDExNSBTYWx0ZWRfX9IFCOjcG/afK
 Btzl3C0/tFZUDovLrRAbri6I0pDG0YaBiTykPnwqbGMgE27vlBpV3lrqD9Yypjomd8lTOgw4Ck4
 bS2xbrC/2kqmIbbUSdiszo6iS0e/6ws4dbigmMHQqdWOYh5q4aJmrI/ASzW724m+uhmOe7brqDB
 5fluGQi2m4r67ImHwJzRT2H1v0PzzhbylFhrzcDHNaA2DHBIEcoGQkiAH9Z/gYVCqaB6W6S1cvK
 k89b0FFcjQMyjIKWBauCRHNaa52MQAY4BMA4Xr6TCwYE63of8XFsh6XaVSTX80smG1ZR8Tv0oYy
 ez8ydPEJoHK6t49UxD4WY4gyDmNVrV73GxcJCGLk+7LyDAGBhJNYDbdUkKSgU2BPv0nifuAX1Xw
 mx6aF5x8JcSFruNWA7ZpAkMDVDgo3txJBpvnbX4DpamkVrdvzvpCTZRaHov4FGtD9488UNFUG7/
 ujSTUsyvNRc0s3QDRFg==
X-Proofpoint-ORIG-GUID: jkjOWuVAHxETOwKorcYtZAfDfw-O3muF
X-Proofpoint-GUID: jkjOWuVAHxETOwKorcYtZAfDfw-O3muF
X-Authority-Analysis: v=2.4 cv=e7sLiKp/ c=1 sm=1 tr=0 ts=69aebe53 cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=b9+bayejhc3NMeqCNyeLQQ==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=BPq8mJ8oFBHe2hRyu_wA:9 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_03,2026-03-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 priorityscore=1501 adultscore=0
 suspectscore=0 spamscore=0 bulkscore=0 impostorscore=0 malwarescore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603090115
X-Rspamd-Queue-Id: D7052238F71
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272918-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shengchao.guo@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.994];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

The type of firmware-name is already defined by core schemas.  Drop it
from individual bindings that have either a redundant definition or
an override as string type.  For the later cases, constrain the number
of expected firmware names to 1.

Signed-off-by: Shawn Guo <shengchao.guo@oss.qualcomm.com>
---
Changes in v2:
- Add constraint of maxItems 1 for string type removal (Thanks to Krzysztof!)
- Link to v1: https://lore.kernel.org/all/20260306140306.1328719-1-shengchao.guo@oss.qualcomm.com/

 .../devicetree/bindings/remoteproc/qcom,msm8916-mss-pil.yaml    | 1 -
 .../devicetree/bindings/remoteproc/qcom,msm8996-mss-pil.yaml    | 1 -
 .../devicetree/bindings/remoteproc/qcom,sa8775p-pas.yaml        | 1 -
 .../devicetree/bindings/remoteproc/qcom,sc7180-mss-pil.yaml     | 1 -
 .../devicetree/bindings/remoteproc/qcom,sc7280-mss-pil.yaml     | 1 -
 .../devicetree/bindings/remoteproc/qcom,sc8280xp-pas.yaml       | 2 +-
 .../devicetree/bindings/remoteproc/qcom,sdx55-pas.yaml          | 2 +-
 .../devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml         | 1 -
 8 files changed, 2 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,msm8916-mss-pil.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,msm8916-mss-pil.yaml
index c179b560572b..1e7c165f925e 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,msm8916-mss-pil.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,msm8916-mss-pil.yaml
@@ -137,7 +137,6 @@ properties:
       - description: MPSS reserved region
 
   firmware-name:
-    $ref: /schemas/types.yaml#/definitions/string-array
     items:
       - description: Name of MBA firmware
       - description: Name of modem firmware
diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,msm8996-mss-pil.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,msm8996-mss-pil.yaml
index 4d2055f283ac..1b65813cc8ad 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,msm8996-mss-pil.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,msm8996-mss-pil.yaml
@@ -126,7 +126,6 @@ properties:
       - description: Metadata reserved region
 
   firmware-name:
-    $ref: /schemas/types.yaml#/definitions/string-array
     items:
       - description: Name of MBA firmware
       - description: Name of modem firmware
diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sa8775p-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sa8775p-pas.yaml
index 188a25194000..bcd2bcf96e24 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,sa8775p-pas.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,sa8775p-pas.yaml
@@ -51,7 +51,6 @@ properties:
     description: Reference to the AOSS side-channel message RAM.
 
   firmware-name:
-    $ref: /schemas/types.yaml#/definitions/string-array
     items:
       - description: Firmware name of the Hexagon core
 
diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sc7180-mss-pil.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sc7180-mss-pil.yaml
index b1402bef0ebe..7c9accac92d0 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,sc7180-mss-pil.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,sc7180-mss-pil.yaml
@@ -98,7 +98,6 @@ properties:
       - description: metadata reserved region
 
   firmware-name:
-    $ref: /schemas/types.yaml#/definitions/string-array
     items:
       - description: Name of MBA firmware
       - description: Name of modem firmware
diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sc7280-mss-pil.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sc7280-mss-pil.yaml
index 005cb21732af..f349c303fa07 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,sc7280-mss-pil.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,sc7280-mss-pil.yaml
@@ -98,7 +98,6 @@ properties:
       - description: metadata reserved region
 
   firmware-name:
-    $ref: /schemas/types.yaml#/definitions/string-array
     items:
       - description: Name of MBA firmware
       - description: Name of modem firmware
diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sc8280xp-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sc8280xp-pas.yaml
index 5dbda3a55047..8227527c1d77 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,sc8280xp-pas.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,sc8280xp-pas.yaml
@@ -42,7 +42,7 @@ properties:
     description: Reference to the reserved-memory for the Hexagon core
 
   firmware-name:
-    $ref: /schemas/types.yaml#/definitions/string
+    maxItems: 1
     description: Firmware name for the Hexagon core
 
 required:
diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sdx55-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sdx55-pas.yaml
index 5d463272165f..8c4abde74915 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,sdx55-pas.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,sdx55-pas.yaml
@@ -56,7 +56,7 @@ properties:
   smd-edge: false
 
   firmware-name:
-    $ref: /schemas/types.yaml#/definitions/string
+    maxItems: 1
     description: Firmware name for the Hexagon core
 
 required:
diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
index 11b056d6a480..27b8c127d74f 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
@@ -52,7 +52,6 @@ properties:
   smd-edge: false
 
   firmware-name:
-    $ref: /schemas/types.yaml#/definitions/string-array
     items:
       - description: Firmware name of the Hexagon core
       - description: Firmware name of the Hexagon Devicetree
-- 
2.43.0


