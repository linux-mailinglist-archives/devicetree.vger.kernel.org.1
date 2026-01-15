Return-Path: <devicetree+bounces-255374-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E4D12D2298B
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 07:43:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C5B843092802
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 06:43:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D0382DF12E;
	Thu, 15 Jan 2026 06:43:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aYnC3pEq";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="afqh+d3H"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E0752DCC01
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 06:43:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768459389; cv=none; b=l6bUrgjfXMKin1PkiDqJ+03+nCp2B16GveDprbMz3ytgknQ3nMrgA0tMb77WD8XQCzJVRgVVo9usW1rQmuyBehD7IUEqmEpqCgpm9x9tRaRU05Xk6XIta5qxY06dlnER8IetDjVTKQ8e6XGJLI39nv7P0T9Ojk1xWa27T2WQFWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768459389; c=relaxed/simple;
	bh=zY4nzOqgWJG5FPNxJMdBDEouCKDXTgLe3R1UeHOD92I=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bIcA8JxBx39sRlkjG0zhL59wDzqUB9l05Aqw88tcnn2YluOzwlMULETnc9KIv498dBUA2QI3in10pHfdZ0tTv43c4vtmgqy5CRfMf81mkVuNF/WMceE1DzI9M54IQCgc0H3fxl7k0dQ6+rf+BE1NWXQu1AF6Bki9epEe7QFV8Ig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aYnC3pEq; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=afqh+d3H; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60F6fcLZ606204
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 06:43:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dmhupPitsdTjkBnqD47avl5GqkBsMwhxxsdVOhlkGsg=; b=aYnC3pEq13NOl0D6
	CRyuaZQ/llGcUzK12fja7wcH9uY/bn8/KERAQ80JAbApXZp1rnMxDpCKXUrwvh3E
	brEFeJtBXwZbiqLIT0W1q3r0CuOREUY5ziX1gedebF7zGU9aJmnkmnGnXbErLyE+
	j0fe3zA3J5PBpkzPYL3KZeF8pQIV6VoVN1jcsPMVUgYMf4ksSsg4tf8K1tYiq1AZ
	53oMZyTUU01QHtWlVZHtr/J2kki8IYm6McIzqVhMeIlMo+6ZQhP28SPrqnCHw0Xl
	PigTixI3THhBWDMuOk2RnTX4Z26oNkgN20cbxWPtA6IT1utKW4ycsZL/Drc4LEA5
	4MNWRQ==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bptna02u3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 06:43:07 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-2b1766192e6so996682eec.1
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 22:43:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768459386; x=1769064186; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dmhupPitsdTjkBnqD47avl5GqkBsMwhxxsdVOhlkGsg=;
        b=afqh+d3H988p4JbXnvz7XiXgpKMyDDunQ/ijV5NBpk/tE4/H9jx17btwKqp5Z5dH2l
         VQGPqLKlBhz2L9GIaNyeeULEuf7EpiK0JF3F/cryifwHs2KsxeMJ8M88CwiVkQ1qBvNZ
         shCA/mUN7hSByrh10kJ5y0+lOmNBaCPD6XuziF+xC2F46ft5sRMPj9xADWJ40M8PE3Dj
         aJp+2nPakW8H3iwqz1rzRJQpMgIAi6p0KhR2xGk/cL3AWrPKnKAXL5zLWQNbr6jU4NBE
         FFywJpTFA8dItiVaD27Pz3zQ3GF6NhdYtoOq7ciG4J90ZMe7hnEIg9XXFGCKrvq1vDPD
         mo1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768459386; x=1769064186;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=dmhupPitsdTjkBnqD47avl5GqkBsMwhxxsdVOhlkGsg=;
        b=bKkbjnoU0Qbufjz5gqlI3MNDP6lpdEsTyw7MsXaPKA3oHzFHWxl/BwtbPldsfHJ5YS
         /13uOaU8E5swwkZhUkHTO4HT2VdU1BJFcYxi90MgcFDvmZZAYvqFwge7HsuoDlKdAD3g
         9nGm4SvnJIZMUYjMasOEG0T+wB+35PfkdbijVD00eJkIeblTxEddeJxuwPqk5sdiTmMW
         Rz02kr1Wh3bNMI/Q5cfjDdL6hcmS+Pf/XRjO8mjNSM59coWh3uB186QOOmwkmNNwF9CF
         5KDNPRZBB8XjPKk6abTiwnlX5436XlpU4IJB2Oqa6YimcZf6mY5O4vXeJFdoZA2NBkxE
         Xdew==
X-Forwarded-Encrypted: i=1; AJvYcCW90JF8KIsxuOuFb94NUagbKbJIJDhr87PhUGBI09CL49D2SPQF+UH2ilJi7odmjQWxC73f8GCiKEFF@vger.kernel.org
X-Gm-Message-State: AOJu0Yydz906QRv2rMTfKWZ9CRKdfa3X+6aVzlo2L2KDsFxx797Idp51
	xN5EkdW0NnScB/+yi/HwII54n3H3v/w+bnT1toJYnwEtiFSdSf/rR7odIg4JlItzMIQ7eOPZIG2
	vZc4QBITx4PSgqpORTzzTuSAifjaon5Ur6zSTqP8f4fR3w6pv5OTg2FCwz2NYqSNZ
X-Gm-Gg: AY/fxX6Qi/87kSMD4Mx1ei6MJAfdDcdDu6sz6eJS4A53+mHBLFLLA+G4dSjHL5gCtMP
	KGZtMFn15tnPIkTqytOFyFzB66ZhL2FqO13aTWfoGtZIfJhckjad8g3V16N1/AQe+rwf1cCVEFE
	S9z65rPSShvtHftnfqyH2SaL4gTreEGyLVDyzSbvq3g/83g12CcG7INDUcAT3uItI8LvJ1Y/X0L
	YNW7akLTv60XjZqLRk3sHkjMBSzNnZd8x/J9ENAqaxZyo9FskZj+z6xqMqcWXomNpFEHg8Zhm9w
	wKOOxh2knQ5ZZFbmD3uPGR/OVlOk7ibROnjiMujZaivkOnei/3gSsbtfpkMmrajKDgrob/DDC3G
	upb22fB5XbG3H8U1qktl9tiOyTDR39S9IaP/QVVH1Aet2edLzT44rzSXK8VRw
X-Received: by 2002:a05:7300:8191:b0:2ae:5e28:743a with SMTP id 5a478bee46e88-2b486cb19ffmr7343802eec.17.1768459386033;
        Wed, 14 Jan 2026 22:43:06 -0800 (PST)
X-Received: by 2002:a05:7300:8191:b0:2ae:5e28:743a with SMTP id 5a478bee46e88-2b486cb19ffmr7343760eec.17.1768459385506;
        Wed, 14 Jan 2026 22:43:05 -0800 (PST)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b1775fe27dsm18986471eec.29.2026.01.14.22.43.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 22:43:05 -0800 (PST)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 14 Jan 2026 22:42:55 -0800
Subject: [PATCH v4 1/2] dt-bindings: remoteproc: qcom,sm8550-pas: Add
 Kaanapali ADSP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260114-knp-remoteproc-v4-1-fcf0b04d01af@oss.qualcomm.com>
References: <20260114-knp-remoteproc-v4-0-fcf0b04d01af@oss.qualcomm.com>
In-Reply-To: <20260114-knp-remoteproc-v4-0-fcf0b04d01af@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-3d134
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768459382; l=1365;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=zY4nzOqgWJG5FPNxJMdBDEouCKDXTgLe3R1UeHOD92I=;
 b=toivXADCe6mAOdKBR7sWknEUl5lsvBrdnAuU8d28JRYpOA788Vjiz0TwRqNb5G2TTVuSK4n9O
 /5hSV+9ILC5BiJL07KrGGrFT0akFBHpg3FnvyFkVQIIWmyyHbTpCHBi
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-GUID: 4YV1NwcI_eAV-1NzwcCbbyXUdTYPqzYt
X-Proofpoint-ORIG-GUID: 4YV1NwcI_eAV-1NzwcCbbyXUdTYPqzYt
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE1MDA0MiBTYWx0ZWRfX3Pe5qr9OnweS
 Xk1n6w6cXQelQnDS68XhsTvhGiPEaxOBq/RHYsF36IZbgxqFSHqiGvFMPZJz+aFd/UmnDlYwSIG
 7KOUHhF+PgwC6cj+6Fq6zz85ITq6BHs0Z6cdw0zwzw4A7cTX+sWlJY3KijEOHFZJbqT5LJbXNEW
 MtgASrMbs6hzZX9OfF+rJWH+tIlVpRkbkHTNmuONwHQxPuXkVn8mk7+Jn8fG7TnaImptatN3azP
 SvMz+pvFYetFbRY0TqoFdKf8NonhdmkoA1sMEvZfEF06t9aHozznRmZLngkNiTcx4ofaA7Yi8Cd
 8kRGJ5Tzno4Gb9z7SFvWweUQAOrYkvbbWxySqFjc14nCSdzaHF7Dfhyx88FRA7WVjl/Sr7tmK+c
 W3qUSy8j6NkqWSSIBCRaQj8oFUbZ+vc8knYRQvCt2jS6a9VwTMmM8GSCSXczw07DN2f5e+mGYEd
 PKvnkMpe1K21jnt4TLQ==
X-Authority-Analysis: v=2.4 cv=fsHRpV4f c=1 sm=1 tr=0 ts=69688c7b cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=7zWBZCs1gTFKjwm3VpwA:9
 a=QEXdDO2ut3YA:10 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-15_02,2026-01-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 bulkscore=0 adultscore=0 spamscore=0
 clxscore=1015 impostorscore=0 phishscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601150042

Document compatible for Qualcomm Kaanapali SoC ADSP PAS which looks fully
compatible with SM8750, which can fallback to SM8550 except for one more
interrupt ("shutdown-ack").

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
index 2dd479cf4821..31dffd02125a 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
@@ -28,7 +28,9 @@ properties:
           - qcom,x1e80100-adsp-pas
           - qcom,x1e80100-cdsp-pas
       - items:
-          - const: qcom,sm8750-adsp-pas
+          - enum:
+              - qcom,kaanapali-adsp-pas
+              - qcom,sm8750-adsp-pas
           - const: qcom,sm8550-adsp-pas
       - items:
           - const: qcom,sm8750-cdsp-pas
@@ -95,6 +97,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,kaanapali-adsp-pas
               - qcom,sm8750-adsp-pas
     then:
       properties:

-- 
2.25.1


