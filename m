Return-Path: <devicetree+bounces-209430-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DF964B37201
	for <lists+devicetree@lfdr.de>; Tue, 26 Aug 2025 20:15:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DEA6E1BA761A
	for <lists+devicetree@lfdr.de>; Tue, 26 Aug 2025 18:15:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96D7B362094;
	Tue, 26 Aug 2025 18:15:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="K/2fyven"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E289B2F28E3
	for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 18:15:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756232119; cv=none; b=CJlhsTX6Jj5kR++zD3OXm7U2Tn107uliJoV4Da/5PnD21YHGmVUBmSfhD99gI6ZrH336oCPWPz4kGUKNhpDNdKaArXTxJb3T0PFSW0WI+HlwXuB4S3t5placHAO6CNjEnNvgmKWJNT9b1blURnuoB4E3PRiEGVxfuvcoXzmrqdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756232119; c=relaxed/simple;
	bh=0qNN5G0trkSGssI8DdO6WhMsx6naV5xeqsAx0Itjr2A=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=dGf/1PLWrjWs8EpyEsq/7zLnZBiIYpDSGMEUgiAKyt7E5SWVsv/F1bGhCFSiAUFbvWLKZT+OmJqon6tBIA0+wndT4ZxO6vTUz8bByoEZUKnU0eBErHf+V5eFqR6CRGb+EU9CqRVV3osTHmhbbeMkztvvTPlB3OnmntYIdGDsMvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=K/2fyven; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57QBqVEP000801
	for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 18:15:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=+ihNg7dapi0
	zoNoXXHZt+X7WOykNzgoKa/7zoDikPNo=; b=K/2fyvenmJ/P2YNPLj/yoDyeqrq
	mnUhkMHsKkwfrrhnW4GiYlQ50foZ7eu79dhse3IezGAcjREDLTEQTDvpWG5cEdH8
	21Jtcw+eIC1KqeZ3IhqcbDcc2GSVHbYcG7TgKzmPdix6JndqW104kX5oz8OTqWWh
	XGhuNvkvjZp0zAjxBns+uR5hOPIzY787c592sFdyX5qrqKELg3utNIJHbigNhnOb
	LV2rYtYetf7qxpxfB8JFdj+VwmprPu1lZ5+fpvRI//WZi8vILxxAyOdRTE0yBGe1
	9FC0VBzqXSFVKftsHyBni5pELYMj153FBOGTXnnekgQBDDK48KxqNsLFWQA==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48q5xpt46x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 18:15:16 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-244581a191bso13244545ad.2
        for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 11:15:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756232115; x=1756836915;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+ihNg7dapi0zoNoXXHZt+X7WOykNzgoKa/7zoDikPNo=;
        b=VAbzbxyw7PxP1UegYIRVEzTyp8MKp40+DcbHkBbYid8eCbG66lFfGLPVla2Pv1Rncu
         IL+EJQn6hxlOIVwN6u4oxsRycc4wpL69ZMGHOOBo8wUU845bqch+RL05JYaYQ2dudGAD
         JD0rJJzHwzxjLE7aVV+MTrW/RHHHkgtup/mILBuW2zW57e6rUpxX+3+1NzAbi44TIXrW
         E7onAoUFmuUX2hYmhKXv6XT6lIxrxScfqr0TvpxnQYwDVnORVr29KEEC/OkIdkhcIOXE
         AS8UZeD3WoPosV7D/tcAunRylIRVyAuMcsn4BqBD3wKN8KtvJVcwdBoYYs/YXraf/vHD
         tcSg==
X-Forwarded-Encrypted: i=1; AJvYcCXCuQdoDXjpHN9bh8H/e9GOOvkRLgev78Kf/jobCMdntaaEiLYHXj4YQOzf7+Z3xsxWaViSm932sSr7@vger.kernel.org
X-Gm-Message-State: AOJu0YywJL7kkaSGakWTxEOEPPzB4ai4UU0VW+EFDK7gW+VrefG7Wmx6
	pV8pSahcnR50p6besrE/wflzfyHP1q5ttijuQn1nmT8YC9UEics8Hj9cWqyrJUMuwRDtqyDcu1+
	gGQT/tsTXrtHdBIYKEYg34xIYRQ3FJjMsDAeY1B2jr/rcGBl/H8NZqtKRLv7zH27S
X-Gm-Gg: ASbGncvtc4r62hGfWmzM5VZdCLa92nbIDSdjR5VCSrpP4HAo1qm7OiDXppm5VKluURE
	JmSqvtojmWO4msw0+4qDQcN0LqP3ulWVcATx6Opb2WQ3EqjyQMZ+Oe3wnuLz1+OFs1wcSJU9I50
	+ZfI+yU69xFs04572WF+1LyR0RAJ67hXiPi4mCw+b0JN4SLTLTUBUSenc/Ia5L4Zbcco0g6kfxS
	hZG9UbHtG+bz87xqrl9jfD2ZIYarxGOuv2torCyJiBdiMLq4GHuz12NvJVUiSZpQUtZLg40p9kn
	WvUV/0lS4xdbbiaMq4WwjbpAtll9RCoRIs1fv1+WODKyLLtfePbUbu4nEgo/vv78mhEtGvw=
X-Received: by 2002:a17:903:2f88:b0:246:b35a:c655 with SMTP id d9443c01a7336-246b35aca38mr69796855ad.8.1756232115007;
        Tue, 26 Aug 2025 11:15:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGATiV+04qck3dgjysFlVeEpbFtlXyRspOnVjNEGZ5zaJRMGiEP+KPvuRcHNp7ykWZ//qnDrg==
X-Received: by 2002:a17:903:2f88:b0:246:b35a:c655 with SMTP id d9443c01a7336-246b35aca38mr69796605ad.8.1756232114565;
        Tue, 26 Aug 2025 11:15:14 -0700 (PDT)
Received: from hu-uchheda-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7703ffb47b9sm11065536b3a.3.2025.08.26.11.15.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Aug 2025 11:15:14 -0700 (PDT)
From: Umang Chheda <umang.chheda@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Umang Chheda <umang.chheda@oss.qualcomm.com>
Subject: [PATCH v3 1/2] dt-bindings: arm: qcom: Add Monaco EVK support
Date: Tue, 26 Aug 2025 23:45:05 +0530
Message-Id: <20250826181506.3698370-2-umang.chheda@oss.qualcomm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250826181506.3698370-1-umang.chheda@oss.qualcomm.com>
References: <20250826181506.3698370-1-umang.chheda@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=KOlaDEFo c=1 sm=1 tr=0 ts=68adf9b4 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=Zd15BVePnIxtF9Lu70oA:9
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: 4PT1yg547IQ9MK7ZiMPuSqAKJARAk-kA
X-Proofpoint-ORIG-GUID: 4PT1yg547IQ9MK7ZiMPuSqAKJARAk-kA
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIzMDAzMyBTYWx0ZWRfX4NNYkfUSTkh8
 L+jAn95cdf6/Pmu2jS7J01LvJj++/3yBzW+DUUCHsdm6KmXt3X3qDJF8yinuHE9RAQLH6Wl3p97
 fjb7uOhNe4+xVnJ2NiAh2O3FmSeXftEQO/fDudga8sZjBzYfPKh6HE8uEPsaKWMifLmd5aMOvmn
 41LfoXGZyTYndIFZxEdJECGBtMD6aidpJ4GU2iX9wMAOQyAwyuyQAlueT2lZyvG4JDsX4zuIopC
 sfVxidxTQPg9wdM1Q+S0wnjbMlJVB8IsCvKX1RgIyJN/iRmwGA5mQNJdAh6JQ1YomDUhtBuHFen
 R+/+9pemJN9WjTHzNX8Q83U1F4sywYDftW7TN8b3xSO1fgZhqGJ8R0L2tZDPPEslxbTUc9xIs58
 oZTgYZVN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-26_02,2025-08-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 bulkscore=0 adultscore=0 phishscore=0
 impostorscore=0 spamscore=0 suspectscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508230033

Introduce new bindings for the Monaco Evaluation Kit (EVK),
an IoT board based on the QCS8300 SoC.

Signed-off-by: Umang Chheda <umang.chheda@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 55e5eb75af89..a4b125f83450 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -854,6 +854,7 @@ properties:

       - items:
           - enum:
+              - qcom,monaco-evk
               - qcom,qcs8300-ride
           - const: qcom,qcs8300

--
2.34.1


