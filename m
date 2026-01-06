Return-Path: <devicetree+bounces-251819-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 13ABFCF76A8
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 10:11:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 541D030E64E2
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 09:08:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F988311C3B;
	Tue,  6 Jan 2026 09:08:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZzBRRXCl";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VC6Fzb30"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77AEF30F958
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 09:07:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767690479; cv=none; b=FzN3iAyhTfQRCFfL0Ryn2PzPmLimaUchkn+/z5edsKWzu21EbCVZuqB5uxmRwRzuCxs+ukEg0lztP3rJPYIczFEcybMUe1xW7rBa+Qkcu0apOX5rUVhCuDTOjUia9C9KAND095b6bMq2ooqy39U1gG62hclbYfZhGpuc9cP1uBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767690479; c=relaxed/simple;
	bh=KfVEUPuhe/F4xQReLShCAqrNsPPHd3O41IpiZZl8JnE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ctuVpRfomCBOXuKnoe9oFPVbeNqJCrareTkgz3ihfm6I7J876aXf7SDJIUME3z8WCzPYG8/105hRRVH1XyQTSw7ccwtsmcx+5DzPrry3CvCRq3ju76AaqLgfavi4rN8GnidAHIR+iUyhJL4/cNEbJ7Op3ulPBA0sGusCSXYMvWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZzBRRXCl; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VC6Fzb30; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6063wHr82684074
	for <devicetree@vger.kernel.org>; Tue, 6 Jan 2026 09:07:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rMVQ0wrZgfSmmWmnnU9RZzQRtKbqz/p3ccRfw5Q40SY=; b=ZzBRRXClND4oJKIo
	WTywjwKn7H8tzip3UNQVbBtVMnmHCVcRW8db525+vRkAWuokSHxMkqAQv/9+H2bz
	I0BXaPbik3sdx/H99d3nkORyEFvpB4phWsqWg+NdCMpHK4CuSscDOIiQL7HvcGIg
	olnZgmNebl6KNN3W6HhhZRyWBkgqmurAZ+AemNQAFPMNBEyv+eMGW4hsQXNZ94nZ
	O9FkU2pAdZhNKwuUsmO63qmMHqcYXyyeKXUlpX+aBUaFejC7xHZHlZZYbVJaTqUu
	8JHzGAI2PVmy8S5p6DXrF+iFyfpAmfOccxVObGaXIgGZxtL1o4QBZAVGuweGpke9
	uDsnQg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bgty5gu77-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 09:07:57 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ed74e6c468so9553551cf.3
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 01:07:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767690476; x=1768295276; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rMVQ0wrZgfSmmWmnnU9RZzQRtKbqz/p3ccRfw5Q40SY=;
        b=VC6Fzb30WyQVOZTdGYbC+LeTt0ly+iMfLKo+JztUXXKmevs+li7u3rQjpugIBN0rbf
         OU0hvtohMBd+CKvFlY0cB25U50DZ/thZf8JTgMJv8Hf7lgqtvwgaui2fv2SehJ90dviW
         slsQ5SEjruAzXUwOv8ay8+aqOU7MV6+T/WzMHRLT6qBm/edejP+pt/hYUYXRyTUF2G/s
         /x2qLGhELwz+vML2fOxTFuQMifHBlkk7e3oIlrDB+m2pGMk6wva9A4gZ4xK3pkPQmRVP
         TE3GjHSF+WKKVS4I/jlFoIHFvd20gkI0M8zrboMJnX+LuybecqCCO5nCDOqDjMnLbkms
         QXdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767690476; x=1768295276;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=rMVQ0wrZgfSmmWmnnU9RZzQRtKbqz/p3ccRfw5Q40SY=;
        b=vFEpzOGKJE1zcDwfMHrmS9RI9tqDKTuGJ6C8ivqpyNobhT1klxulgEXL6mD2H5IDMY
         Aqh/ItZv78jZ2nSR0gLV1WQWth1RDs+lpEhvDqn0FOdU79DvOsyscJpsc/opulqghMg8
         /FIfVLlaEvEdd0cy5VVgEd1vh/hgK764NtGlw3kNBhTk5yRwn+40DiAISyQLVGfDrXEp
         8cJ3Wybq/w0jd/+WRxnLTd/T8QdHNhq7Kkv3mQv23k+GzHPxYtf8pcR2C8SPjMYDCkkr
         5WbcSAtW3kQKiwy/MOsqVrzsPYigwhWvF8p31KsozBArwS5K0S4tjtQ+s1uwKz/OQnu5
         Mm2Q==
X-Forwarded-Encrypted: i=1; AJvYcCUwVIdBuFH5pEOWmjhkeTD8CWZ1kWBMIlG4ckNiT9qe3lkDP0I2x1fP9RJbBJJxAaa0UGFbriWPXhvm@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+y5IiL9fmIJkdJT/SLojwiuGQUGY4t+gB50TJ/T5YbMWkn+U1
	j9jUIH7corFgRPKz9XUkKGUqffSWLGuRH86JQribjpYkwjUcfK4GjTBKj0zBAC8xz6W54RhaHRs
	XI0O2oRdRSphyxzTg6ZWeGvff5KHiTTDivBc7JiNxvciasrnIvcfdcAioBAzs56+RkbDC8lse
X-Gm-Gg: AY/fxX6o8v853WVf6U60rxtVPFcoU/X61OusVsCKhiwYY2qkJzFLfxmbhvoZICn3i+P
	RQXj9WUEduNRhKcCuziFqbbr0eZhGlYCuWfM/YbS3pZks0AlXTPwjZMeYDjiRLROhD/uVNcG+fa
	FryjK6adUcKVrefvFFPmMuVPP/bUne4T+GFFuICn7miNkBoqznQfdq4ke9Of75OvnIK7Vrk4Muk
	e101tlGoJG6ZaNGypEioFpgGlgJfXOYJvYIwC5xoiKdd5ZjMWNz7Gx+dRcYDS7n/wjrttC/L8Aj
	fPdj0Vj4NsN2levpc8GoP44cMnwQLAMz3CR0t21jJCw6DoeTHIi+F/OHITPtU+oJ/y/Yh3GS5Jm
	BsWbkCJg5wQjCFMME9nHfnFIzPdmzv0MazA==
X-Received: by 2002:ac8:5a95:0:b0:4ed:2fde:d0b3 with SMTP id d75a77b69052e-4ffa76a10f4mr29735121cf.6.1767690476488;
        Tue, 06 Jan 2026 01:07:56 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEy6o6EhCJKmN9y2MDbj2LHw+yDhBdJjoIJgba0PuZgI9QZgw2azK1MCwGbMFR5WCfnP8qq1A==
X-Received: by 2002:ac8:5a95:0:b0:4ed:2fde:d0b3 with SMTP id d75a77b69052e-4ffa76a10f4mr29734891cf.6.1767690475981;
        Tue, 06 Jan 2026 01:07:55 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.229])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b842a2bcd30sm176270166b.28.2026.01.06.01.07.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 01:07:55 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Tue, 06 Jan 2026 10:07:40 +0100
Subject: [PATCH v4 2/3] arm64: dts: qcom: sm8750-mtp: Enable Iris codec
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260106-b4-sm8750-iris-dts-v4-2-97db1d1df3dd@oss.qualcomm.com>
References: <20260106-b4-sm8750-iris-dts-v4-0-97db1d1df3dd@oss.qualcomm.com>
In-Reply-To: <20260106-b4-sm8750-iris-dts-v4-0-97db1d1df3dd@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=697;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=KfVEUPuhe/F4xQReLShCAqrNsPPHd3O41IpiZZl8JnE=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpXNDmMGM4+K3cws/axv0ULMXEgjAJEAMt7Imyd
 DT/JKQA3MaJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaVzQ5gAKCRDBN2bmhouD
 18vjD/4vWcLYn7g/ZitVd8cFfwKQd12XVPlSBfmNx7Hd8KzAk1hVtBR41M8K6AUwnVbIEDwzcW3
 oyzRxkz8EsZ77wrrNEZDe5kgDbSd7SOrQX+ovZ3/LvP8JeqtACwE3w8h/WURppAj3HTp6DwHjRn
 6SYUau5sW593Hv5nHLjvdFggvP/8w9iDdtMHIIaJEhMNDtWfrilS2TvpULu6+MUo0GWzrowTlmL
 v7JiDEtFT/9eIIQBQl9TQAnr258AXPNuclqZ4TIFktrbs4AjqnsmBA6m5iy++L5UbFjkjkL3C3h
 3/Eq4+utQNbI8vK+2jgd5iQX3vTsxK6HzvZHGcKjWnfW8xeSud4Z4k39GYDT5qNyGR9WHL5ARor
 GB2QpdnwbBq2XoGZLECFowIuR0RcBdeAmHn2K27sA9txwl0H5rFj8VJKEtQ+8utlAoUJAgz1YFT
 fevlI0N7FfjhMuVRxiR/wUJHHPCH8yYOP27L+soPYUGAnz4DkAcd7vs+Kfund5yztFJfKDFMNIU
 tR20bVr2DNl+/jOzxfXbsZ1wDVUe6vRdIRDJ7C3vD/+jyILfV1W48482UpHAN0grBv0Pu++GZqI
 lN+LldpiEQ7CluYL7mNkGuWUXhc3Z/cQiONli12h3QjZogf128DsrAOX/nHTL/tXrcXenRGSo4c
 SQhrahTq9weu1fQ==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDA3NiBTYWx0ZWRfX215sIqhpUlja
 oJb3ZR2XXePhcT5hU6P4TL1nzhYgeJFHcCwsvYnMMKI74atzMhTIDxPf7y6jDUg+l849Ogx6/61
 LCCNvBZISnA6Qz3+C+vfror9GxuE/PdjjMQwj7ibUUCtVArSjgL8LdiYrrg9kdmhI1umpO67r4A
 ugCcQcQ3l0Ckg8nZeMVZmDxdSNkYFwUBv4ThGg3rNQMNgfBHYj8+jCDjEWMah3EN0ETQ0VsWHdO
 +H5qIcAas1kOTDfZgxxoDA6feSUaHYbG+nX5Ub2r2WVyVGRLxZyoX+x1dFulAT+iTVMESYoUKmn
 IoeUycw9DLN3QhaJt+x3swi59KDP5wXtHH4XRk4RAp49adBPnl6N44G5byqQ7LfOV+P2k/1sOIM
 IOusBcfT+Pn27BEsx9A/AcfkWouLLy+8cwbPw78/OkQJ6UxIoCGrZwEAVeyhdfFmCuiSC/q9CiF
 sMG5sVryog+8/PHEpCQ==
X-Authority-Analysis: v=2.4 cv=Rfidyltv c=1 sm=1 tr=0 ts=695cd0ed cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=Eb9f15NH/cHKzfGOmZSO4Q==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=khVYVHlWj4OykvzjE4wA:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: dXXP3_PQ24FVrRpIQD28rY4LG51Cx3ao
X-Proofpoint-ORIG-GUID: dXXP3_PQ24FVrRpIQD28rY4LG51Cx3ao
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_02,2026-01-05_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 priorityscore=1501 clxscore=1015
 suspectscore=0 adultscore=0 bulkscore=0 spamscore=0 impostorscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601060076

Enable on SM8750 MTP the Iris video codec for accelerated video
encoding/decoding.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8750-mtp.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
index e77fe0ce91ca..cb718331496e 100644
--- a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
@@ -925,6 +925,10 @@ vreg_l7n_3p3: ldo7 {
 	};
 };
 
+&iris {
+	status = "okay";
+};
+
 &lpass_vamacro {
 	pinctrl-0 = <&dmic01_default>, <&dmic23_default>;
 	pinctrl-names = "default";

-- 
2.51.0


