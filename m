Return-Path: <devicetree+bounces-233511-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D8B4C2318C
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 04:00:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EF8533B97A1
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 03:00:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 530262749D5;
	Fri, 31 Oct 2025 03:00:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Q6b2y4Pw";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="TVy/qw79"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 969C31DE2BF
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 03:00:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761879614; cv=none; b=I1/q/Xh1Q0vEwzpIoPGjIjr/LmvseV27Cpv26TeaF9LKBVWPMWN+O3S94JHYtBu2WIbONaEgFdKzGDWTjqkFE8jugIbCD6Tly3lykaDNvvENVoo27HNZ/UENIpsbYVe5iSkheMBDpAsIEdKScB0COAsj/zlGBlTkQYUalP8JnaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761879614; c=relaxed/simple;
	bh=12ifn/h0FdAmM0zlYgL6vpYfcGA0ATj8ireBxFP4Hvg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NERGKA16B/V1SUqUDMp4pa+YAFrNto/3SL0x/luz7C6+gPU/bKkRWkyp4s0D5Gss8DuM4YjLeUQiENne9EYY7BjY58jNtYh+T8xgwfuBZd4pILGVAXbdqBVrpT8a7lFxn/2rIj2oGchx5G388TAHvyfCJ4Gi/jYK0/FOmR5Z5pE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Q6b2y4Pw; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=TVy/qw79; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59UIQs7h3115502
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 03:00:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aIoImiVEY38ckPGZxJxA/BLNldACaExF3yFcJOYBzxs=; b=Q6b2y4PwSFVGJKLl
	SCWuprWTiDpOO/a69RcuQYLWpknL2G4BMrG22b4uhbpZ36J9YgXhFCJneWD9EreN
	7dW+hfadDfpPqda7XaRMSTrc6sAEc5O8k3eybENwgGqvCOj/XGQop694/ajhlXM9
	yxiN5TaDleOhi47OHO62tJ5hKzBSx8N2CLe9TTW3JNhCllCEdxsJHb5BMqDIdt+L
	z7IZGtg3qImdCTu8DU3UyGL3YyhZ3XBsYFEw2ccRm1ktwZEky+k6AUQLdg5wmNne
	lQAa9ZP5d7r5yeW0LqAz9hM4SIV4HC5qA+HryifpF5NmkKZJqlq53nxwZ6UIsMQv
	d7IfZg==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a45b42pkh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 03:00:11 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b6ce7f76617so2960089a12.2
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 20:00:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761879610; x=1762484410; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aIoImiVEY38ckPGZxJxA/BLNldACaExF3yFcJOYBzxs=;
        b=TVy/qw79ZE6Encu1hdYqO50QGDM91xW49cKHOceYMbawUB8Jmn9HOAeCUCR8GzTw+n
         vvSDkr9NisvJRVGvp7JDiE3+VYoDr55ilu0DTZpc6BS1IKlKbFPSOCiAVisaHZhPZdyZ
         iXwWWxrS3OPXSoxPaeGNM+TDZaFAiW0vba1JDpOhAHJXQ6ik1iQU2tfnEMqeFybCRQit
         BxNqToNZuX6o68Un1qQDgtWGNKhhLGMzjENWSPm66YSMheBGkwv1bzPs+EF+M1HKBUKL
         uesCCiu8yu8YQ0VO6lWvJ2GatbHPgcXzM3GfSkE6xUTJt5NSASjG8biXzTyHSWojvuqF
         y2iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761879610; x=1762484410;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aIoImiVEY38ckPGZxJxA/BLNldACaExF3yFcJOYBzxs=;
        b=YYmcL7PGkc6u30/oJ4cHAG7N9iXXpIEczSUFp9fAl1qpPgOcwmY3PWZFlk7YnXQ8yk
         5thnqefZ8c+pIKLimDvyyhJvsh6BmPeZ5Xjb//RWo6+NXBL28QH6YoNpXvHzaknfmd+C
         r0QX2iukywlgBsR1kGkG/fOZcbO8v+Pb9CdaXXTa60LjAfZ1F9NO+Nm6H9NdQ3CHggDJ
         yhLUsIXaPcodzC0XUq98qN/RJaCjJxsNl8CWboTEMRRqXDYk2QEpuAO9Z6r1cEnRA+ER
         SRrTzHJpL9748BFbHPRtAqs1Wt5lB15aU4dD5cQg+R2uUeQGnzxTdd8WsRqTIKWN54A1
         38vQ==
X-Forwarded-Encrypted: i=1; AJvYcCUsgutRgQGzbOT1ff+2FB75OxKePhdYYcJg3503auS19yYlllu9u0CjRxJyWF1Ju81j7co5swWAxKAt@vger.kernel.org
X-Gm-Message-State: AOJu0YwHPmzDwKKBqaQtcTu8AjfCnOdonXZSDJ4WmXvyRu0lYDK4l+PK
	XEseMRaKTCCSlLH+pTkEDPDCVr7c+8svdQoh5mJgHgDOGoDCA1AiaQo+QBRqdTOnPkBRjcxGlGA
	4AjRQZR0/2j4coAx90rhbEiD8SLVt9Ya+AWGMlalVnvYrbJvdBkaucif1CG2fM8AV
X-Gm-Gg: ASbGncvj5y22fdB6DxPE3IJa3cAxSRsOceqHfUMk4xczfjuxByB2DsCdJmyRF2eGqzw
	QnXDu5iFO8GkQ2nMSEwtyRIFRzkaevDakVAZPzt5XvX0DmRnBvQnqzC4nXFxPfpaPODRKWlS2LP
	c7vSJyimbu9tFayKs2yk8dMlxs6DcbsyUtm3tv0jKywXLo6M4EYr1oOO92dagj3JSOnQGu+IXg1
	WDyunV14p7JlA+7HNRDu/9Fk0gKAX6Xbzz9JBDno0Ws/OBoUPPL1gFyuXYLwnNMx5RXNzH28V2I
	8UL6AVk7VWIN1jBqltWb4P0ubSq3eK+2NxcuOvgsWUyK9bXJPIfo+/GudazgG1EcMndMVUSgQ6C
	DzSSYqjJiBfEyLUKfftRorTvEdfbKxywbmk71V2s780aeEX0BYQ6xRg==
X-Received: by 2002:a05:6a20:2449:b0:331:e662:c97e with SMTP id adf61e73a8af0-348cc8e5d4bmr2851796637.37.1761879610112;
        Thu, 30 Oct 2025 20:00:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHKb2m9Wf2AZlvxL1iP5wTLbiSr7QNBNEp0qYaiCO8kZl4RTjx9EDnWQGDRlbTih2Bp2qox6A==
X-Received: by 2002:a05:6a20:2449:b0:331:e662:c97e with SMTP id adf61e73a8af0-348cc8e5d4bmr2851716637.37.1761879609421;
        Thu, 30 Oct 2025 20:00:09 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a7db67cbdfsm352570b3a.49.2025.10.30.20.00.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Oct 2025 20:00:09 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Thu, 30 Oct 2025 19:59:48 -0700
Subject: [PATCH v5 1/6] dt-bindings: i2c: qcom-cci: Document Kaanapali
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251030-add-support-for-camss-on-kaanapali-v5-1-f8e12bea3d02@oss.qualcomm.com>
References: <20251030-add-support-for-camss-on-kaanapali-v5-0-f8e12bea3d02@oss.qualcomm.com>
In-Reply-To: <20251030-add-support-for-camss-on-kaanapali-v5-0-f8e12bea3d02@oss.qualcomm.com>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Atiya Kailany <atiya.kailany@oss.qualcomm.com>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMxMDAyNSBTYWx0ZWRfX/qn5YJBkfWiY
 MWMMW7Mv5mpuYERsb2BgJ22i8pOU1ij5XtvL0MFbyaXOUP0u6UXxONuzMuFePjtk+H58aplkGlf
 2GDLQHvPrx9h7FlgxYZ9tBpPgTNqPay9DPsyOivKwn/gYdOIJG0n3Q2Mc/D8V33orvEbf8wRMh1
 KAjeTlds4bHdboZG0CsBc2CdLqWvTxJkksDwbdznwa2ymZldnShJmbayEmkUJEs3fRCOjBJCATp
 MkiUNQ2xNPOxfRWfjYdN/mlDUMpuPpEdbytwB3LFYJ336S8k2ul6lKtLjxyCWC7zhpJ7Xb+f2s/
 WwDybPeblhXpPgyt/d99+WrLl9VYekOiM2DmwK5T85qWgy1gO50myrW7XN9sXGAtYAu9EXXZJAN
 RVKc/EA6HldVBBGNKgQc9usBSYz0JA==
X-Authority-Analysis: v=2.4 cv=KePfcAYD c=1 sm=1 tr=0 ts=6904263b cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=AartCDbB9JJyHY4DVtoA:9 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: wVkX0vEFZxkZUOUPIQALK-H_iX-Z_rBW
X-Proofpoint-GUID: wVkX0vEFZxkZUOUPIQALK-H_iX-Z_rBW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-30_08,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 impostorscore=0 priorityscore=1501 bulkscore=0 adultscore=0
 lowpriorityscore=0 clxscore=1015 phishscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510310025

Add Kaanapali compatible consistent with CAMSS CCI interfaces.

Reviewed-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
index 9bc99d736343..9b83ec63e124 100644
--- a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
+++ b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
@@ -25,6 +25,7 @@ properties:
 
       - items:
           - enum:
+              - qcom,kaanapali-cci
               - qcom,qcm2290-cci
               - qcom,sa8775p-cci
               - qcom,sc7280-cci
@@ -128,6 +129,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,kaanapali-cci
               - qcom,qcm2290-cci
     then:
       properties:

-- 
2.34.1


