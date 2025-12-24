Return-Path: <devicetree+bounces-249493-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B3491CDC15E
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 12:11:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BAF28303EF7D
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 11:11:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF51132695C;
	Wed, 24 Dec 2025 11:11:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Y8yfyBHE";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="U6lVRwrA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13475326929
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 11:11:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766574666; cv=none; b=EOa/HLi88nac0FVzRrKZai/hVbCYmLriGCVdmUTv5HBDtc/F6DcEF0SWTJve9FeFgN4cMJuFrY/JY46EIBbBxrSLT4LQn7/DbWp3JBZCQ5cMZLdzVNCZLRLJ6FvdmFtcyyf2X77Mp+mDOuQ+7jL/pSPh1ik401EGm+SUL5x5Mrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766574666; c=relaxed/simple;
	bh=GimUc2ePlZuvy1QOu7c/n8QletDRsYsWJFcZcb67Pjk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=HRyA0RAdkvLeYu4Kl45DwzJo8JUBlhjPlOOQ0iUQf2LtSDfASUf6KY+vxkW53XOX18A0R8/jO2rNZOx/EseRPnNA4tvn6jvhWp6EcTjVw7ff8l86f8+CTm3Gd27MCGSna7HyDY2lyJrs4pnXenTQQYezx8PzsRPz/hZKgeACip0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Y8yfyBHE; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=U6lVRwrA; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BO26WBu461408
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 11:11:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	S1DTJQec/NgKiKVFzzWxTq2KpPf2b+8dzldrl/QCfts=; b=Y8yfyBHE3JQTP3Pd
	x/EHpMWJmriwTxDXUAnSJIMHmObGVNFvQWtzPffwA+1BOMJAgXDQ+X37XxjZrIAa
	NNEys71qt909bq8wXYU7DJwoau3mBrSxs65qowA8dVlT2x6eHFtSK+iBSv4KmIZq
	TJh9UJ9Wly+uDD1O391CGzrIJ/kLzuyCWakpgZ8gYzZW1HvdXPuu3qhAnWpiTMof
	+UeBQ+IZIp2xjVIDOvj+IYpqoTMJ9uKJm8Q1a9YnEOZ5hO/7T/HVeHnRci9s42fb
	rzHe9PPHzFcqzjvYDQjC3x56wr5ySbmpYqdSinbG53fNw1sljbnnw3icgIpp73aB
	gbmD0A==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7w8fu0v4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 11:11:04 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4f183e4cc7bso104433711cf.0
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 03:11:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766574663; x=1767179463; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S1DTJQec/NgKiKVFzzWxTq2KpPf2b+8dzldrl/QCfts=;
        b=U6lVRwrAuklYEV1NHJJBGP9bF0JhlUgZZiak+pyWyuqD/8RC3nVDt5oxPAsBrSGYjA
         A1RnH9H6Mwtk5mYI+Sjht+YzeiKq45ewfJEq6ZRBLuUpmohbdUCIDghox52uW1RXvk2q
         uFwhGD0bxF/XSK1k7Z5RkWKL1vxjDXWBm0f8nxGowl9LVFttH2Jj5TK9lMAsoBRVH9TN
         7OptSbhTDFdwertgeDTIoex4wBXPiO7wboxugEGZKxm7Y76bWK6xHAL/fCrNpHl5v9fo
         fv1bUl8n3cijn/iFQ9EdOkm/Y72N/Jd2OyMoz+cJC3r9DoiOiJ1TudQPM5iJCWn4gg06
         c5gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766574663; x=1767179463;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=S1DTJQec/NgKiKVFzzWxTq2KpPf2b+8dzldrl/QCfts=;
        b=OXrhAh3UID8gal0Q6ZbCQn68oaBZv0K/byykfdrRxlUWv27YZo+uqNbw7Ji3P4B0bZ
         Tk7MOnklcmfXg/GxvGYfJ+tAXXwlCtc1l2ve6fSdC0Pp/6g+jg4U8kiEX+QouoN3tnbz
         H+904QX12B4f+rAA+lSBd1BpX/17fFCRCn6JmDK+WFLKCzhrK2vNLOkCQHe6Mwl56ceS
         KIqLDYydW88OH4R5JC8Sls1CubF8Cm3MeU1GtWNc4cQ2/bkpTejsFnuluMGSgNTq/yq3
         0+0Sw0L6a6kxztoecHqqbjbXz+a1tOdeq8TtHXY3eW1NfX4lnq9QAkOPV4rFn3Dx4xR0
         yzjg==
X-Forwarded-Encrypted: i=1; AJvYcCVf85i2eks4oFNOEsmrHCCz6FMsVblCSy6gvmialjrxH4RuGrSqRTpSDOE/Q8Z8ezu/CyDnpZAEn59Q@vger.kernel.org
X-Gm-Message-State: AOJu0YyX4t3cKlmiGCV+ca8Jzo7uo/Y6X2ovgtEhCb8xhZd6+9PQhvRd
	pN/AQmzQZs/VBzRsoTX2KxcGoUHyiEOfcopMs8eYanMt/iTTdzUlkoAYkNISD8oead45kjPdB4v
	Hk1NRxOoZzX4lDZ8EoWIekw4FZm9nVDGZ5q7+wvoaVM2Ie2PP/Olo7/AvMZVhRFjl
X-Gm-Gg: AY/fxX4KPoZ5X8+YydFU+rGDdCsOTlVwy3HGdqYnbr1R6gI5b+e1S7bIhTO2T6l7kiA
	l/eAFAv+Zx46z+7VqTM+Pq+mFaEWm9dTFiH5bizmWwXwGwl9l4gimKU9mb3DGccr2w/0FclEB7N
	Bx6ASuZLo7Sjbhnn7ijRlUkTMr2CS+QloIEofyXhNUHMhoLBtewE97B+xseeWgKLEqiCRMChAQY
	dWO5/pnQYBZZrypLQ2qAc0UsxBMzB2JYZP3V2IDHvm9oYYpnJqp83qARRH8XBLI5AIW7v67a+7R
	MycigqO8EfrKujuonovvvaaJ5Wt7+OStGJh21a0tq3bDlMwWNgkUKtlc4a7n71Lbm+WCpAMK+3V
	eK1oBqovDjdVAtg8=
X-Received: by 2002:ac8:6f06:0:b0:4ee:ccd:722f with SMTP id d75a77b69052e-4f4abbc439fmr228550461cf.0.1766574663006;
        Wed, 24 Dec 2025 03:11:03 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFp6T0cq0IwXg65lmLse6KWTr5gLnTsngg0jk3QiZdkZ2HJDZGO3aC7R7s+OTrW6dGzXVqefA==
X-Received: by 2002:ac8:6f06:0:b0:4ee:ccd:722f with SMTP id d75a77b69052e-4f4abbc439fmr228550071cf.0.1766574662490;
        Wed, 24 Dec 2025 03:11:02 -0800 (PST)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b916adc61sm16799036a12.31.2025.12.24.03.11.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 03:11:01 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Wed, 24 Dec 2025 13:10:44 +0200
Subject: [PATCH RESEND v6 1/4] dt-bindings: phy: Add DP PHY compatible for
 Glymur
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251224-phy-qcom-edp-add-glymur-support-v6-1-4fcba75a6fa9@oss.qualcomm.com>
References: <20251224-phy-qcom-edp-add-glymur-support-v6-0-4fcba75a6fa9@oss.qualcomm.com>
In-Reply-To: <20251224-phy-qcom-edp-add-glymur-support-v6-0-4fcba75a6fa9@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=1166;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=UjT3XNaICZQxaI2rtQkKLAQyo6ogQ8qaT0RvJnH3+s4=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpS8o7PORmYzF/km5uvscLA0AvVKwfdAGnmiBT+
 eEQkafS/3WJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaUvKOwAKCRAbX0TJAJUV
 VjhzD/92UbVaCUYdY4NkedGwfjPbWPB09EV8FLIG9aU3SUpLwVj1yA2DWlnDSqr4XfUjmGR+346
 p6LcqlIGLMp6iMfsSEv9BH5OBRf/+WkWt3DSuwxBErjr3kIv+xv3mzDTd890i7WB5iiqlQb9jkQ
 Uu43Ooh+/RK7RAv6MTFgiBLG9oho3NRzaAMqHf7rQ8TJbzwsz10jLhV4W9fQztY2II42BhxwGfl
 r8vuyC3VQprO5b3DBpvBb3mwBx6JHFLBUlw530LpcGKK3xpTroEsGzg5Bq5JPWhgSnqkEugvl8b
 nwalR1sT1sTsuB3JJqWuix45qNsx7xlXn6dDAD6s6mUH83NRc/gLnxfUzEFkGjgciG0VpG/NIPm
 i3QUG7F/q3ffsZvVPOifacYhe41+rulE4rD8o10b82JTOxRcxn944+MCd+CHJRgX8aTVe5Qnx7W
 fpTLI5tMLcYrZ+rlAMN6dDACc8lrBgrT1488/HeStVFyIEq1ihUMLM7BWzuWn1xbFB9x8x+khVA
 mq7oOZayTf+pQ89Zl6fS9A+8hYnKJs/PTLhTMSYhEe1UgeBK97SqAkRgz9VwU6oAAwfb0ZaUhYu
 JDbHi0Ejf9v53An7ELP7LO3TProq/xiKixCuZwS0cfvHVStdyeCP5kZDp0QcQRRDHhHsOzAHQde
 6wZ/UIPA6EY5f4A==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-GUID: LVR7rS_nizGs-tC0mM2HMr0MQ_V_4K41
X-Proofpoint-ORIG-GUID: LVR7rS_nizGs-tC0mM2HMr0MQ_V_4K41
X-Authority-Analysis: v=2.4 cv=QutTHFyd c=1 sm=1 tr=0 ts=694bca48 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=adPXzabyy6ZLveKXoAMA:9 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDA5NyBTYWx0ZWRfXxSeNBMoYA3Ss
 vloBSzz1CbMiJy/KwsLX+RNbt56OhoTlMcf1btvp86b6rIZ6nASDB/d2hlx0l59XpScv5oeQ3ZA
 k2AaMgj0JGweYak4NKiz9nwUuVVHNzxz0NLc3maB7/x6MrkvawPMYXCkNurChbpPsypv0H6K70C
 WsKx1S0gdEirAstIU/nvbvnay/mmKLzL9rYTwFaL02yWdF1WRKPhb5SEJzcvupg/PMhTRFhmTG6
 V9fue7f6BAj2WskqaNPeNheeo5P7CFdYbQlw7s4XO65+QMEzcDig+vbI6pC3In/49bPoJ0G8PA3
 c9KW70j7/aIjs0drpIn+Bdu+d18cwqq6CsyGzi6qa3R2V+qDea0jKSPWD5CdaDDLmCFskvSZp5A
 3qEGOqdHh3PugRGaqaqcW/lqZq3ooqPFp7TkjTid0ETuPs+SDToKkNc3Wd2/DQJGxsv9n6gsX4c
 pssKuWRU1t0g8oIfd+A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-24_03,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 bulkscore=0 impostorscore=0 spamscore=0
 malwarescore=0 clxscore=1015 lowpriorityscore=0 priorityscore=1501
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512240097

From: Abel Vesa <abel.vesa@linaro.org>

The Glymur platform is the first one to use the eDP PHY version 8.
This makes it incompatible with any of the earlier platforms and therefore
requires a dedicated compatible. So document it.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
index bfc4d75f50ff..4a1daae3d8d4 100644
--- a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
@@ -18,6 +18,7 @@ properties:
   compatible:
     oneOf:
       - enum:
+          - qcom,glymur-dp-phy
           - qcom,sa8775p-edp-phy
           - qcom,sc7280-edp-phy
           - qcom,sc8180x-edp-phy
@@ -72,6 +73,7 @@ allOf:
       properties:
         compatible:
           enum:
+            - qcom,glymur-dp-phy
             - qcom,x1e80100-dp-phy
     then:
       properties:

-- 
2.48.1


