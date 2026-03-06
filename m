Return-Path: <devicetree+bounces-272139-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gERKMsXhqmkJYAEAu9opvQ
	(envelope-from <devicetree+bounces-272139-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 15:16:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 66C24222704
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 15:16:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6AD0331C9A22
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 14:05:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40D363B4EBB;
	Fri,  6 Mar 2026 14:03:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gcX/xm6H";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="b3PBfxXE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD0AD3B3C0A
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 14:03:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772805832; cv=none; b=RvFWhGWpg4wnWoRJyemfnD2veb/2DPZ+WsbYK9ZnduhE5bjRC2bd/fEmq/X2GbsO7uJuNgu/bBAIL4PCD+s39DXMk91WH49goKOnu9M9vfaY2Y66EMrnM+jHI5F00o9EUn0ZMupjkpaxP1h7YNlFpxTa9OAj/8gu+bs34ujFtVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772805832; c=relaxed/simple;
	bh=kJAc7f5m5jxavMkgdIHdotCTd133ITydGJDsM8ctX+g=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=pPz4jUuBhQYJ1VFTPkEY/5gXRF98mRl19yNNNggsjE7K1iv/2gflOWl7tPo1hUs/hFkwlKVIkPYxyQ6vq22SnhcrCqTWsNMK2jKKBsIhi7HE+ip8AgytwqD9aBBvxMQPE3JfL4ahp2ExGRSP5iwuiU/oZulWz2myENFcpznoF54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gcX/xm6H; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=b3PBfxXE; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 626BajNS3716442
	for <devicetree@vger.kernel.org>; Fri, 6 Mar 2026 14:03:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=thDMk6e40n+6IH98mjP5Yb1qMk17Ss9qvkj
	Pv6/pb60=; b=gcX/xm6HmU67074MVmE9teSdUwGPWt3J/qIS1GhXSsOazi/ExHV
	pJk6bTRxemgeDPsKFShQXxKJiAabAE5ssaIzRoi89goD5LalNGSCnMPuCYPx6JTW
	PbNQkBJtoeNaWYXo9HtvOtYnw9gNM/gWcTqO3rCWksNEPaySjg+sIObP8Qe+89W6
	uxff01OfydmJkr3AP7qge1bWiN31Et+sidktV/B9kYKJonuye7fa3DDKD1I9kBUd
	7oBQn5lZlYMN4PxhpT/7PjK8wSXJQyQxzIsLNkrWMT2sQvAtx++zpaO0acSwvYd9
	oGyiTQSa91e+U03q4t5jKKKaIiQPi9h7djw==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cqv98gtmm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 14:03:48 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-2be0575e290so5102998eec.0
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 06:03:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772805828; x=1773410628; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=thDMk6e40n+6IH98mjP5Yb1qMk17Ss9qvkjPv6/pb60=;
        b=b3PBfxXEkMzotgAN2Qmfi9ZZb+arIbOZnvUruvLXzNQS2H0Njfo44VkwyazMezlKxG
         9kM+IecUUG+c25VFZc+TZw/9VLOk2T9+MCu+Vra/+6zO4sM7GPQDk9S9b7o+2fCpXjq9
         /RXP5BHqqXySdYtlbsDAg0w2iPziWr2UefwBM4Cj7gqLBqTG1R6ANijkgDPmTdsFApZ4
         +oiNnDjADZ4BgHdY3eS3G5bKtXiERJcB6lL5nhHZqK3Hr3s43RD28QoAWZoDYtSTsBKW
         sKR+x/uCY/ohbgE6UxxfVUM1vpSmHWWnVXvuVBRT3vFTK0kjRDk5MiDCj/mG+3GLSh1b
         E8Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772805828; x=1773410628;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=thDMk6e40n+6IH98mjP5Yb1qMk17Ss9qvkjPv6/pb60=;
        b=BY7Ne5UBlPsRjpw14ML8OzsSxga9+lknO4tdPUiNelcdbVV4rFWkpmR58Hn2uRFVBe
         JB0kM9wIWRkqD7zrEprstCebaqk912PeMDgjzRLh2MusbC258TKIpQ2DIKsi9biJG5mN
         zaYuL6gbi4WkTydrlQiS+Oy1I9THqFQbYTuWAdWPyVZCx3Te2Cb5+ZH5P8fkMwiG8wDX
         JUyHZP68W9KLEy7LMFAM2W4ELvMHsfi5fFPOJYoGcVz3jK2NMehPuJ6RLD1J481co6B8
         q0Ll0AEonOTF2wA3b2rmBdqlJdZqeuzklToU2XwcM72r9OUfvbTqaDU9b+Cg6mNr+uno
         wSXQ==
X-Forwarded-Encrypted: i=1; AJvYcCWu2lDg3CKrzLSrIuE9bbWqu990Sx2CTuqi3BhlfoBBEMVfYhh4wAbG4AemsoWMwbOhixq6BqLcZKkM@vger.kernel.org
X-Gm-Message-State: AOJu0YwiVQy+qg/4per2rnYtPkmr3q+tEPZwvl3y7eV96wcnHUk8inK0
	qz3Sy3KbDN1Rp7qomYpT1LdhrY8sr9hFEIFHLjMg/EBh/+hphjoFkqoj1unM1eute9ucICxuql/
	38P2grr4ZdDzQp7x0k8JfynwGgqD1h61Gxbr8lNilyGXKG27S34+VfVXQvRdtatdI
X-Gm-Gg: ATEYQzzk9stUoCYg/+V6/EqP6BwGGIHoKnCs1pQlf59x6ZngqqPBCbzfcmkp0EgcOX2
	2zpNX2frqV0cLudEbaHMeoJ5o5d7fOmtNKRNercFnJS0DTCqQ3ChQrOyfA1mloyXVG0Z8ImjiTA
	SAqC7Njv4pTxQ3m6aymK12LiDYavaLkfC8kYittXJ2K2xxSPXXa/YZF8hSMKavIL2x+imJdJVPC
	TiJzPRG5fjfLt7tAutN7to7wj/tgCE7ccEom5LRnsr9B5//KSZmLlDqSd5L7KVm+K1FcvhqeN8a
	S9t65BAIgTjXqqUTjRPa5bzp76ckZkCfCOp0ttBSDOZoXFDFHOqa+LzZImMd+keFFfgviYWkR0I
	mIYwHtecw+fMb//inYOn00X+o+k4IGRV8d1EKZ235BOGUQigkCv+8M701sjqw234FhL22pK6nRz
	xCVp5rCA==
X-Received: by 2002:a05:7300:a44d:b0:2b8:6ad3:804e with SMTP id 5a478bee46e88-2be4e0555a3mr767859eec.22.1772805826481;
        Fri, 06 Mar 2026 06:03:46 -0800 (PST)
X-Received: by 2002:a05:7300:a44d:b0:2b8:6ad3:804e with SMTP id 5a478bee46e88-2be4e0555a3mr767820eec.22.1772805825537;
        Fri, 06 Mar 2026 06:03:45 -0800 (PST)
Received: from QCOM-aGQu4IUr3Y.qualcomm.com (i-global052.qualcomm.com. [199.106.103.52])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2be4f948631sm1200531eec.19.2026.03.06.06.03.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 06:03:44 -0800 (PST)
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
Subject: [PATCH] dt-bindings: remoteproc: qcom: Drop types for firmware-name
Date: Fri,  6 Mar 2026 22:03:06 +0800
Message-ID: <20260306140306.1328719-1-shengchao.guo@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: W-zGQPysM1Z6_RAbhf5jyN1DoOZBx0PI
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA2MDEzNCBTYWx0ZWRfX7aEoFk3Y/rTy
 h+9d7gaaHk8C5gP9F7Av4Gi93sPk4NTN1XcVGbqIZ2P0Ek7ZdA1FwuO9FgdP5lvX/qhZhgT0Qef
 HdIAA0kXl4gmBgOjccUNdQHfYCHsSrzRDfwzKC98cK9VrVwypoIwFhlka0SrHuAvMKRvsBLLa0+
 4fQsoqGDYFfXrJ3lgZ6dF9MvutvT0wEC82hWafxnhLZbmbiEPRYUUa+zhnr/4CgDOCvCsr0HLlw
 GNC8qV2FsomXTnb5ppL68pct/OBbP9ZLVFKTA0R9sSzqK4HLqRWy62dOeOd++Ykc/6mM9v4hj8B
 7YUpcpEqH1Dkd348pb1pilJeiDHxkk1AIgX/JWy1HPOjwmn0QbKsYe8ybmw/uZoiVmyCP0xVF6A
 618dYZNbzoIq2y+0J8jXk5Q+oj4U5NvFOSAtWdA+AWARKghM0Buie2zOCOXoGzDXLZXIGled9aZ
 VEuNFOmneC+CzmWTceA==
X-Authority-Analysis: v=2.4 cv=LbcxKzfi c=1 sm=1 tr=0 ts=69aadec5 cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=b9+bayejhc3NMeqCNyeLQQ==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=EUspDBNiAAAA:8
 a=nzWYI2exGoiye4W2V5EA:9 a=PxkB5W3o20Ba91AHUih5:22
X-Proofpoint-ORIG-GUID: W-zGQPysM1Z6_RAbhf5jyN1DoOZBx0PI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-06_04,2026-03-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 priorityscore=1501 bulkscore=0 clxscore=1015
 phishscore=0 adultscore=0 malwarescore=0 impostorscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603060134
X-Rspamd-Queue-Id: 66C24222704
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272139-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shengchao.guo@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

The type of firmware-name is already defined by core schemas.  Some of
qcom remoteproc bindings define it redundantly, while others do not.
Drop it to be consistent and avoid it being copied over to new files.

Signed-off-by: Shawn Guo <shengchao.guo@oss.qualcomm.com>
---
 .../devicetree/bindings/remoteproc/qcom,msm8916-mss-pil.yaml     | 1 -
 .../devicetree/bindings/remoteproc/qcom,msm8996-mss-pil.yaml     | 1 -
 .../devicetree/bindings/remoteproc/qcom,sa8775p-pas.yaml         | 1 -
 .../devicetree/bindings/remoteproc/qcom,sc7180-mss-pil.yaml      | 1 -
 .../devicetree/bindings/remoteproc/qcom,sc7280-mss-pil.yaml      | 1 -
 .../devicetree/bindings/remoteproc/qcom,sc8280xp-pas.yaml        | 1 -
 Documentation/devicetree/bindings/remoteproc/qcom,sdx55-pas.yaml | 1 -
 .../devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml          | 1 -
 8 files changed, 8 deletions(-)

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
index 5dbda3a55047..63ae3a30f626 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,sc8280xp-pas.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,sc8280xp-pas.yaml
@@ -42,7 +42,6 @@ properties:
     description: Reference to the reserved-memory for the Hexagon core
 
   firmware-name:
-    $ref: /schemas/types.yaml#/definitions/string
     description: Firmware name for the Hexagon core
 
 required:
diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sdx55-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sdx55-pas.yaml
index 5d463272165f..7e67eda13240 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,sdx55-pas.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,sdx55-pas.yaml
@@ -56,7 +56,6 @@ properties:
   smd-edge: false
 
   firmware-name:
-    $ref: /schemas/types.yaml#/definitions/string
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


