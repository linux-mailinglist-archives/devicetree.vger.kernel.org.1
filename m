Return-Path: <devicetree+bounces-220900-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A29D8B9C66D
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 00:59:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 588E7428638
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 22:59:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA86D29ACC2;
	Wed, 24 Sep 2025 22:59:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jm7k6HBI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71F5E1D5CF2
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 22:59:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758754746; cv=none; b=XoQBooIDMiI6ax4hBjBI368uhUbJY0Vze0DuxsAv8l2Bn67v68aJW4jqtIO4I0YRbe3K+xVPIDIUGXratTJfp4wOqUv4X8KF7bQyUA8eSCiCXfdSjVuPiich8WaINsvcVIkgwpPd/ozUvBGWTv4AlXA5Z4smIXD9gdGIBLUAwz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758754746; c=relaxed/simple;
	bh=nccuP8cYHwqRLgitAVKUToM+oD9cA22ZoDKwCaULBko=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=HNpbA5tbvYhhW6eie78OOGWa7dKu/054kIlNED3WOMC8KLrdDEBNMocltigPnjDz8h/yz+sjjj9ELRwKirnEOHcMWAloeCtmzdaBIuzr5h4fn96PqXfPxjNIDAxH86GrSGcNKj/3HZeoYtd5OWLPlDU/5YNtdnzeYN9sH3ZlOkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jm7k6HBI; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OCTQKJ017434
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 22:59:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fMgpIMFqrzsSm+B2qsU+OeemAY/LmfQHctAKtQNCtPI=; b=jm7k6HBIMgEFJDiZ
	YpF0lrJNdphuFuYAUSKWJNdvWUN8N2M8mRSRKdgVf6jUxuox0NWpgr54BtWegrmJ
	Ke/qFPoLGubR9H3I8YhH9xIng0JHH2T0lRNDRqbjFPBasQj1esxtwivShQh8H12o
	5MH3e6hopPigaf+EJJ8ZFvn1Y/SiMUu2Oxg+sRD9vbX/fGILbsw1zcGQeoUUIkOW
	sg6xjDxmqwy0Zc1VJVxKa1OuoD3Y7rNPcQOv0bdCU8pvdZHa+fK5/kY12VMnvG2T
	JLKhjNkzoCclLZrJtY/3W6SFqUEzl2A7jkJAgfvkFGxvNCXZKWwIfnSg6B8gDpqB
	chhaxA==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bhvjya01-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 22:59:04 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b5535902495so235330a12.0
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 15:59:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758754744; x=1759359544;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fMgpIMFqrzsSm+B2qsU+OeemAY/LmfQHctAKtQNCtPI=;
        b=xBsJidp3v28Y6mxBobwuV3sjXlRAiP4KsKuIHWsdoJdUbBnjsM2kt2sxbITsq6g+T4
         Jnt6gIXBpRNy2qdYwOFXOllmlwDLtTj62EvDMJsBXXVLd1qONSJUDcHZ1ALK2rS9ja90
         TlMJXorm1tggkM6Ad6ajDP8MFsiC54JERpBvTA6PhqqS67Nvsg7oG2Ja/kT3H7RUQDaP
         c/5iQ+ZsIKieQ7BFnCHv9msea28g8ctjhfoCZ5mjCH6vzMp/VcJCO8IcJierrZYSYH9V
         rgWKhFShQIu0h2gCzQndOZOqcZledSjiNKPDiIByMyByan91IPpsx+UJi2Da+jfTX1aD
         wTVg==
X-Forwarded-Encrypted: i=1; AJvYcCXcaAHcX3EuJI4sbMFKapStDQ3jwFXk8/fPyWZGly1GZM2lNcA5Fdok2I0hmQ11hTsTlc9444oNdF5t@vger.kernel.org
X-Gm-Message-State: AOJu0YwZRd0/+WRgOV3izBJmGpzKQ2sSMJXeZVZQit/rw2i4tVbzmfF7
	nSobuG8+Eh7cUhY3xq1xxF84RM+FQAVJ4J6VkUI4Mwm53YSRIX61+pR3E4LRYxLvF5aYD1xQKty
	geeQaeJpx0wL/gCVth8TFChITWLty2Hp8I2TTnSscieXQZBCZ7O/ptcG+HZAtvvgp
X-Gm-Gg: ASbGncvbdOwnZ/J1puWfhY2YKdDSLj5EQ3EgA9zZ0notmQG3N2V2fQs9GC5hxQVDP3A
	utNsMpke7NeptqyEHN5KEccauiHKML0AroZUFG1NXVvM1jr0epntSgHORgJkzKBwzca4gpTTwcC
	JfdEgGWwE/fNxsqUgR9LXkdy4lUIt3rlKy2pznJz6Jm80yhHES8Tj+hBBgujHuVRInuy9psvCPq
	+jd2ux/zFr4pS0NkrjLSUGr/gx8iQcdEg+ukA2eFv5vdZVoOY//7b11FNPSj0elEJuK4VFQEODh
	G9N4E/f6DLlwCglDWwgbH0i1jBIGF2Zv/zY0MSuVgw7gADRjCyGIn9ygwqrOK+2xIQw06QB8E4q
	asXMLumw21r1I+KI=
X-Received: by 2002:a05:6a21:3396:b0:2b1:c9dc:6dab with SMTP id adf61e73a8af0-2e7d2e45e02mr1491876637.48.1758754743780;
        Wed, 24 Sep 2025 15:59:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGXb9iTgoVPLaR0CHqKB/TzfTzAqbsVbT7DO5mubz2WWzmbtksZ6qJqUAfhpQ7FIRENwBXqKg==
X-Received: by 2002:a05:6a21:3396:b0:2b1:c9dc:6dab with SMTP id adf61e73a8af0-2e7d2e45e02mr1491833637.48.1758754743202;
        Wed, 24 Sep 2025 15:59:03 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-78102c2b70esm111166b3a.101.2025.09.24.15.59.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 15:59:02 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 15:58:53 -0700
Subject: [PATCH 1/9] dt-bindings: clock: qcom-rpmhcc: Add RPMHCC for
 Kaanapali
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250924-knp-clk-v1-1-29b02b818782@oss.qualcomm.com>
References: <20250924-knp-clk-v1-0-29b02b818782@oss.qualcomm.com>
In-Reply-To: <20250924-knp-clk-v1-0-29b02b818782@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758754740; l=821;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=phKtN7ebMiQmSiG9AvoMUJXIakeBUvWlreynI7Iyig8=;
 b=/3h8ths0TYSVixc4PJayGd+ZArZnNhGQdhWuSaG6FBjv6i2DsdzTmRt/5hBJ6Hml81JAvRwgR
 UQ4zAULmxV0DoyWOG5l/TEUw5iFD9IXHvhE/n+LddOV7VNcB3QHbzKQ
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-ORIG-GUID: XSTF6M6pG_iyCl9zCRaBkdFgRIyf5WvD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDAxMSBTYWx0ZWRfX6z4Lcx0xHHee
 py8FtxEyguSP+cYaLzuNPnd0hBdvpGmrVd6MfrhGMMU7r/JSQYzvsSNZbLcUICMZ66K5+WQHEGJ
 YrbpTLDcerCvITjzNALPVZw24chX/pn+0aSCn3aAB2smp02yfmQ6XVl8GF4KLSdyqOkfe870eJu
 qcWerboqFUVbn0Fhs8rXu3GhVFQ5ffmGKgjJz2iRDePlGR5FacPyxUudX75Ull6Xz1jv0QSo8Pz
 sWUsxxCFU+I8N8G1vWfppFEMEZzxQh3uyirUTAPRbv/IPeAk0DnRT6zlDkmidcmz0LyBmmp44YO
 dpyYANXQUwKw1EDSfXMFTHE1kEJK7PGLNBFyGX+7lNdQp8DMHqhvol5athcsvfn6fspUSb7avXq
 qhvNJRJk
X-Proofpoint-GUID: XSTF6M6pG_iyCl9zCRaBkdFgRIyf5WvD
X-Authority-Analysis: v=2.4 cv=Csq/cm4D c=1 sm=1 tr=0 ts=68d477b8 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=b6mPgT8S7ijOLrz7_y4A:9
 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 adultscore=0 impostorscore=0 phishscore=0
 clxscore=1015 spamscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509230011

From: Taniya Das <taniya.das@oss.qualcomm.com>

Update the documentation for clock rpmh driver on Kaanapali SoCs.

Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml b/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml
index 78fa05726685..3f5f1336262e 100644
--- a/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml
@@ -18,6 +18,7 @@ properties:
   compatible:
     enum:
       - qcom,glymur-rpmh-clk
+      - qcom,kaanapali-rpmh-clk
       - qcom,milos-rpmh-clk
       - qcom,qcs615-rpmh-clk
       - qcom,qdu1000-rpmh-clk

-- 
2.25.1


