Return-Path: <devicetree+bounces-220984-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D304B9CADE
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 01:43:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DF79C382B77
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 23:43:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF8092BE652;
	Wed, 24 Sep 2025 23:43:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="V5pg0CNL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E8082773D8
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:43:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758757422; cv=none; b=XPLBbfC5lwXN79E8GK0gC+VbFPOqUJ2haz7Llt5LbLPlIth2I8KvmuBLwAH/lGKQ91SDYAPgU2f0Q/zFRlKUywdVmwJzpVNvS3qSyrHb0UbHcpDKc+ZDrDuSFqnSQXD1AbQOY1KHOWBLZzFm71cs2ET4X1K7/HlEWz+QZ682OIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758757422; c=relaxed/simple;
	bh=+PguNXnKz4shlGzI8jizbctu7QM/1nClTAgxolHd+Xk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kRSEUxpp87MDZYfNJby2VpqKp5s4P0ttt730kbkAY/Tsal1EaL/K4uWIhQLddJlId7SQa57asK9KGRc4cOmcdC6hQrvS182nR6CAQ1EXIo2MkVEuOYn6gD6WGQ93GMg7jB5HQ8WosZadeNHGlJdhCoQ4oCLclzsFRbfPups43bY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=V5pg0CNL; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OCf4wt029720
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:43:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CSmqcMOdgm06/uXCrcq/BO6IeQZcYft2rlSV8w8pItw=; b=V5pg0CNLOhyclzB6
	1015W++m/kBMoFtdlwGyrHkZLaNKyJ82wVVIL2gw9ueN3rqEgisi+0ty/hWKp9lE
	RKexsSUmfi3RSst7FKY6uR+LsyiBtkCamf8KnnnnEWkx3tuTwvq+eqF8/Ql1Fht5
	opnvS8LxNW4nbqDDY02OcInwQuoh6y919PqeEZ4Uvj08tUpLt3mBEMp7dpT8IjI9
	atyvsm6ctqFF++bnzdDadO6/G8Q7CqYrMRljDr3UE8BAOXwvUfM1OOMnRFwXr5Io
	2/k2sDExj+kPSjwdC9FInAqlhCBstrdQx9F+DmpKWH1MYSBk9ntxne4C5AWxMiNR
	VavUSw==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499n1fnxsn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:43:40 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-77e76a04e42so935001b3a.0
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 16:43:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758757419; x=1759362219;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CSmqcMOdgm06/uXCrcq/BO6IeQZcYft2rlSV8w8pItw=;
        b=xHc0N/zBPIyPSZbGIHdLyc4YqLXx0og3qYLqTW24MFphUuxO62V7827MXOIma2m43d
         oEosT44N4QjxdgYOTn964nqIb19M2GxhfyHBPOboHwwxbL0cTks7AkbrIetWxLTDLOI7
         ddFnoLfiZdzAi816grfES2mLV42rogO4V9bzRkFawDP4CmPiX/oEttEWYTTZgy/a7tmT
         rK1X/gGaTXA6p+DZWeW3zVjYyaZfj71SnQzaf+iMmKJ9ExExCUDmJT4Xb9GoZKGvm2tA
         zcLJh+guvKjR+xUCmcC47ooKqGkdU5k0D64A4vNyBL4tkM22jVFSr0uV+6YGB4ZZmt5H
         NaTg==
X-Forwarded-Encrypted: i=1; AJvYcCXerW7vN86GJ4iyVhQjNk4oc26b0EKtWHx05EdL68+s822v0KZ2w+DTyLjeNeqszScfQfmjeIsbwaEw@vger.kernel.org
X-Gm-Message-State: AOJu0Yyc/4N7mlEXSN2BPVaUUiHUUpRujy7EWlcuY4V6tSQJ2UN1tsB9
	K67v0ZdRGi0DbgYs2yirhCFSmZmtnMMgmbumWkXA5g9Q1kkvLa4gjCDPlK5RV+p+aOg9SQuPTML
	gzHamVpAqRBDDDFdfAdMHOdFxubZi4w4TCUy8oNpNXFEe7OVBAi2a1yIvdXCsSmkv
X-Gm-Gg: ASbGncv21T5iDYqg5PHVAaXFdO5wbhl+0UQ1KwbiE3mlVYjkfuRXKBnHuy/35+f/KQR
	6Y7vCMoldWVUdSRNcBFApzdtZBa+8Xu8G7KVGuey/qd0WUQmiqRNnId04uiQ8RqLZDhT5cYspy2
	WyADEwDgqYeu8GnrDXTyMgJQAro9uUtvXQ39LjhIjrTfH6N6jUx+qLAVldbytmJNIHb/ym6Vkxz
	6q0xy4o9rqEqUeMljHjwFPmltLDESi7uXOTq4UUvdxf1PeeU6Vs2bISZwDSikySE1fm/rSJRxF9
	OW2xha5QFuF86ENYbLdB8W2gOsCnzBoLv4+f0zb0EuOq0Ezb6a2u4ACOqCYISa4/MZSkwCscHqv
	Hf5U2D7s6mO5xQkI=
X-Received: by 2002:a05:6a21:6da3:b0:2ac:7445:4947 with SMTP id adf61e73a8af0-2e9a98848damr661871637.19.1758757419471;
        Wed, 24 Sep 2025 16:43:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFcuIRmS7RIsvaeOm57KDRbm38CTDuz3keIizggRlO/lUSftrPyZWVJOOBtLRd0M0r4HDiNtA==
X-Received: by 2002:a05:6a21:6da3:b0:2ac:7445:4947 with SMTP id adf61e73a8af0-2e9a98848damr661843637.19.1758757419050;
        Wed, 24 Sep 2025 16:43:39 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-78102b64599sm192088b3a.70.2025.09.24.16.43.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 16:43:38 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 16:43:33 -0700
Subject: [PATCH 1/2] dt-bindings: leds: leds-qcom-lpg: Add support for
 PMH0101 PWM
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250924-knp-pmic-peri-v1-1-47413f8ddbf2@oss.qualcomm.com>
References: <20250924-knp-pmic-peri-v1-0-47413f8ddbf2@oss.qualcomm.com>
In-Reply-To: <20250924-knp-pmic-peri-v1-0-47413f8ddbf2@oss.qualcomm.com>
To: Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Fenglin Wu <quic_fenglinw@quicinc.com>
Cc: linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758757416; l=851;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=QTBiSyI3nJAg71OzCZCRGKakt5nc3BD7jBRfC3qPe0o=;
 b=ItnrOGsrkJJ9kT+UpfamhX55N903VnN5e2kd4l4ebA1exELav+BfJJ21XIOhHTSOY4pKg3vdb
 +4In3GHQJ2WCZVoeV7Zy2f6F6sBswr3gjW/6QZeskFBwgalGXzeVfaO
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-ORIG-GUID: 4NYDEYqjHinuJZ5NLkhTGY8LE3uOboIw
X-Proofpoint-GUID: 4NYDEYqjHinuJZ5NLkhTGY8LE3uOboIw
X-Authority-Analysis: v=2.4 cv=No/Rc9dJ c=1 sm=1 tr=0 ts=68d4822c cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=5jWUu6Y50JxcgPCnrowA:9
 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAzNyBTYWx0ZWRfX0HCwFBZ3pw/F
 7+Cgf9KCbi/ZLxFtrwFmlENxGqMtLG4cr8bHeeJHKpQA8C6XEWy5ggo1+j0wwUXWX16TGmViCHF
 TD+jv1s52S7M1VYPoU/KO0ghSv543fPbWBQrrAn9XJmvBf45vmeoKNOzsWIKpUpjpujDUJ6Np3a
 +Rr/hmyJXsawDRQg8J52MeyttGd/Pu+8Yz6cw6TkZOG0eQRgnNwxuvdoHiXZqNY43qMu9krVP25
 +e81UgvOe/gd6KWKXSTNW0+eHun2AGI54FVuI5B1hxlkySoVgcMcQMssJUXj1td2XbqesNBBax/
 gUNUxTg4iN1n0fZbzgcyuhu+ResCFIhJOfS/xb3Z9rxE5MbWBZ7H+qelV/KgynugxgJdbPiJy1T
 D7BIP3/P
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 suspectscore=0 adultscore=0 malwarescore=0
 phishscore=0 bulkscore=0 priorityscore=1501 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200037

From: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>

Add support for PMH0101 PWM modules which are compatible with the PM8350c
PWM modules.

Signed-off-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/leds/leds-qcom-lpg.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/leds/leds-qcom-lpg.yaml b/Documentation/devicetree/bindings/leds/leds-qcom-lpg.yaml
index 841a0229c472..1278152e8eed 100644
--- a/Documentation/devicetree/bindings/leds/leds-qcom-lpg.yaml
+++ b/Documentation/devicetree/bindings/leds/leds-qcom-lpg.yaml
@@ -38,6 +38,7 @@ properties:
       - items:
           - enum:
               - qcom,pm8550-pwm
+              - qcom,pmh0101-pwm
           - const: qcom,pm8350c-pwm
       - items:
           - enum:

-- 
2.25.1


