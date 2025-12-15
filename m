Return-Path: <devicetree+bounces-246529-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 982ADCBD744
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 12:11:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3BBA33015942
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 11:11:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E88AB330303;
	Mon, 15 Dec 2025 11:11:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cHKWjdkj";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GmPu/DRg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7B932FA16
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 11:11:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765797096; cv=none; b=Sb4mpKEFy2SHjU3++emFO4fB8hE+OGTSaCO2fRvnpFtjbCvGyfIv6yxeWm61dqyUDsuGzNu3VSqIDyuIV6AmvlP/Ma4Y5/uT5bQuW1241zBDAY9oE2Vq5vK4ADProXU1wVIURZ3pYNYlkinXUHjpVGMnCM0chj5RixaDrS8/PSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765797096; c=relaxed/simple;
	bh=DUs4wJC+VDe1QuwgJs0TQdGCZpxs4c2W//GgpczUYho=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=E0qNul2SPFCk6O2pN127QXf0Zfu6VbjIJkl22J+oCTKOsshIY/R6ChUGBWr42n5C0dvKzugX1wxP4XWfI+nQsEvJ68p7BGDT5CTMLmsAZXRw1s431Eg0H6rh3VeqkAv+9EfvwOw1kiDSKKvKu8CXscq6Df81lTgbt9CXwjajvHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cHKWjdkj; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GmPu/DRg; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BFANp1Q675957
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 11:11:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7ffG3VR+qlMIzXuQA/U6HHK8nmsBe+hFJK9dh88LIiI=; b=cHKWjdkjB7mQZ87d
	83A0etNMLzq8sKdPDGgGstDQQXOUdD65B62vL8j1tNaqhRSWFj0kvzWZ39STuyZ6
	50e4kL3/KjEkNRPw3JFFDpVWgcPkrhjA+VMhge1uUtv4Pe0g+dTns3Xtrh/gNk1n
	zUAVx6bIa9eluY5thx4znkhJ3cs5LTqVgNRUf/9ck4uJ1Cb9qabFBmdk03VUoVZG
	6A69pkHovjyya0v+pjSKvEQZwzYtWLUUnXMrewcefhrue5VsOiHbc3CKgionR4xR
	JRrZNY+xM26v6NIDV6GWU/bAxSPjPQ5OkGoZvAO7tJwIs4iwQrYnUDo9enMmHaTj
	Ehd1sg==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b11cyma64-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 11:11:34 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7bb2303fe94so3910665b3a.3
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 03:11:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765797093; x=1766401893; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7ffG3VR+qlMIzXuQA/U6HHK8nmsBe+hFJK9dh88LIiI=;
        b=GmPu/DRgfWUp+IAl5f1D8ndMPixB86AGOm7uQhS+dEHhWZun7CuM6cytZgrMv2WxkR
         GAOHAwlAkNAg55TnGyIWRyjaZsN1x3UxG/FhZH4bklCfrMFTHSWOt2jp4wfdhLKCC1pZ
         RXhg3QvcU9HCUyfGzrZdlo5oU3J+WlU89cESxCtPk43XsYSpb3s7gA9ZGwInmxcOMMPK
         QGVn8xBzwA8gb+BAFMOEhHRWWg57UqEpNS2v8UBE35k95RM/FlnfjseRroM5kyxFw//6
         OrJHURIqmderVVodNkPkA+sXSMxMIRJRxQQuPdPGoxPpJSjpLSeBYDTTy3b6fo1XBUNN
         v9Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765797093; x=1766401893;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=7ffG3VR+qlMIzXuQA/U6HHK8nmsBe+hFJK9dh88LIiI=;
        b=cOzY/KFMRbbSfUlzWYrD+uTHzDiLACRqf6Z+C4fIdO+j+0W6aYw+NYUa+mRKEj+75a
         mEGey/uakCcyecXV7s+alVGxLOiTY1HJKnxgjdC2xWgWBRQ+S7XnwDwkFz1thnguipjI
         mDTnGHdtg0j9ukkw93NBn85iT+7E0T6iYVtr+j4ZdqvaAPWj1PZoA4cHZrTdwHXiiAEh
         U1IC+tEVe6l+A4NHUcGgNDgUJ3Emk63QP5xMoVzuNAne+QSwo2+hf3ZzezjFi6VbzB8T
         6huRFTzHDqgZ2U7BU1PXW3O0oDze9FvIDoQeGuB5QUEWI6hDEvVdEDrGr+ShI/l1YrEx
         GwnQ==
X-Forwarded-Encrypted: i=1; AJvYcCVszrNgpsySRpIPgi8AvF0XoIsrIeuT5Mg/HJDpqYcrvdnxeHnd30ZTBeU98CIc5TyOnBiDLwgmqWql@vger.kernel.org
X-Gm-Message-State: AOJu0Ywo57XXrqttQ0z9IBGi8grgYs8JiGqv7pkLLKBEExBiqI6UuhzL
	+Lpop1JHGNMswu7mimSqi+x8H4+l7K405gTJYTF2B2YGW/eZ3LxAXa1jBY3QgZlWAeujBmg8oN/
	KASY+B/XGEI4xvZlpa4lI/ipGiYWUmXaOLe3hT0YXBUDDHkt08Jx5GjqhlW6P8RrS
X-Gm-Gg: AY/fxX6Nbx9OVKn324xwMlRSagHV5r1QHy3WNeEcbRVe4IJ/9tZ8wwLKG1CgNs+VjcI
	jw2NkLmWQt5+IrEExRxeUxUJLn6kwGithKqa2v1SK3z0oSaLj5XtavkEyxHTDNsdzRIfr8QcUqg
	ZT5H6VA3c4GyIzVeR28QefqvpPdHaGvqyBRtX9/9fU7keWGv4Chu7yCjomSIJM/+fk6o5a8wS+4
	3IC/BfNu/yH+z9u4TpPpkgU93eRUrPiYDCYcllCU6897jr8nGYC9KIiW/twqdRRYkzrZm0Z5t40
	NFbYi8qv+W0PmtRDPSD5jOI5h/USrczHnZQSsBoboYAxXqn2jQBQo/jPjfD4A1ICxoqLZpESyQQ
	gzHxWQeNtGUT9p1GiKwRVLUjsIWabnomCxQbAhEv9ua46
X-Received: by 2002:a05:6a00:420d:b0:7e8:4471:8d2 with SMTP id d2e1a72fcca58-7f669a9517fmr8364710b3a.51.1765797093010;
        Mon, 15 Dec 2025 03:11:33 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFMAG3FqJ3rO8O/F6vgV20Uh7A7qwd0IDUFCE4AJkIO6SxD7DJFPLNODUpHPj8MI4zg4KfsjA==
X-Received: by 2002:a05:6a00:420d:b0:7e8:4471:8d2 with SMTP id d2e1a72fcca58-7f669a9517fmr8364684b3a.51.1765797092519;
        Mon, 15 Dec 2025 03:11:32 -0800 (PST)
Received: from hu-jprakash-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7f4c2379e40sm12408918b3a.5.2025.12.15.03.11.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 03:11:32 -0800 (PST)
From: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
Date: Mon, 15 Dec 2025 16:41:05 +0530
Subject: [PATCH v3 2/2] dt-bindings: leds: qcom,spmi-flash-led: Add PMH0101
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251215-knp-pmic-leds-v3-2-5e583f68b0e5@oss.qualcomm.com>
References: <20251215-knp-pmic-leds-v3-0-5e583f68b0e5@oss.qualcomm.com>
In-Reply-To: <20251215-knp-pmic-leds-v3-0-5e583f68b0e5@oss.qualcomm.com>
To: Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Fenglin Wu <quic_fenglinw@quicinc.com>
Cc: linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>,
        aiqun.yu@oss.qualcomm.com, kamal.wadhwa@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, jingyi.wang@oss.qualcomm.com
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765797078; l=900;
 i=jishnu.prakash@oss.qualcomm.com; s=20251014; h=from:subject:message-id;
 bh=DUs4wJC+VDe1QuwgJs0TQdGCZpxs4c2W//GgpczUYho=;
 b=+fdqUtJl468HYmox3ssrVw9vp/3lRX056AtNh36u3Vy3N1dkxQWuS9TMo9IMZ6xkbB71AWhsl
 JHQj/nwLhH7A+blW7EL0r0WRqfU1WTBZRpIy7ZJSi1OiTKksuabu1DN
X-Developer-Key: i=jishnu.prakash@oss.qualcomm.com; a=ed25519;
 pk=g89pXdLVwRjdTeQ+uX1QzvBO346E3hQAc1N7fcTXgmk=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE1MDA5NiBTYWx0ZWRfXzVTqnriMRpzJ
 cBcYqOi1Gx/9n/kJXDxrn3dvFT3j+9zEmKlPb0zNxSaWNae4C/ZSVlInTNS18aRggznwQzjEUZM
 IGTgw5xdEvjslmbIRGVzIbO6aytIDDIuj55F+vAZFQH/e0Bt8RqxsEibChA5X1M/C8sebMEGv3a
 b7/JwaeQF4diHjqXxSP391wZ2nJLRPjXETfl3W107TaEKVsD8DFecKgLcqt35GGYEInjWqQ6xB4
 PMzlG7gI0pEEZ728CdsG3fYKgHrqOiqN0hPlR30ZVMMlqfpW0PuOjwj5iJACQdo/HI7C128j0Q2
 ok+Ew2NKjNLQFdBRi2feukOoj6tpALD/40LPqlr/Cvw0+0ipXcf5kubFt0aKqh+kdbXSAX76UfK
 VFD534MCvVleVqWmf3F/s//t9xrnlw==
X-Proofpoint-GUID: K4xlr0Q40zLdjWpjma4vmT0IlR6-ZmOP
X-Authority-Analysis: v=2.4 cv=Afq83nXG c=1 sm=1 tr=0 ts=693fece6 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=aS6jM6utL2cIvELFAl4A:9
 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-ORIG-GUID: K4xlr0Q40zLdjWpjma4vmT0IlR6-ZmOP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-15_02,2025-12-15_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 bulkscore=0 malwarescore=0 priorityscore=1501
 suspectscore=0 lowpriorityscore=0 clxscore=1015 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512150096

Document compatible for PMH0101 Torch and Flash LED controller.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Signed-off-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/leds/qcom,spmi-flash-led.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/leds/qcom,spmi-flash-led.yaml b/Documentation/devicetree/bindings/leds/qcom,spmi-flash-led.yaml
index 05250aefd385..3bfa24ff58cd 100644
--- a/Documentation/devicetree/bindings/leds/qcom,spmi-flash-led.yaml
+++ b/Documentation/devicetree/bindings/leds/qcom,spmi-flash-led.yaml
@@ -29,6 +29,7 @@ properties:
           - qcom,pm8150l-flash-led
           - qcom,pm8350c-flash-led
           - qcom,pm8550-flash-led
+          - qcom,pmh0101-flash-led
           - qcom,pmi8998-flash-led
       - const: qcom,spmi-flash-led
 

-- 
2.25.1


