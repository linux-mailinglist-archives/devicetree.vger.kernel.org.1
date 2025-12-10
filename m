Return-Path: <devicetree+bounces-245660-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C823ECB3D1C
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 20:06:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B502730F650C
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 19:02:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 373F330F819;
	Wed, 10 Dec 2025 19:02:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EIgfIURR";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="AYzioQcl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2EED301704
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 19:02:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765393378; cv=none; b=PTOKhetWNTDGLnIF88XBzCxUjgOPl5TCBLKweRkJUrwhnGC621doQvdGJAA/DHf2HqFxNe9Y7hVj7tK5l6Uu+YEWDuC7bQHYVdDJaVITXANEMehUh3tVls/P2bv/mrwvKtp/L8OQBLmK6vfoWbNtVwW5pe+7FdNYgiz2VBphrGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765393378; c=relaxed/simple;
	bh=lChiW1a6U3BB5XgRYnYEeSZLMq0ITbCm0HCC6UPZihg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=KYQ5DTRLVfamJOXqXeiWZYheq64ilbhT+oGqwA1476v5AeS2xB5BM5/GPPpDK6MWSmc0dBUWNhbkQEtb1TRlsUra+OOjDbEjDXF6vQ5aJMiuqeSd9W1gcWDDUlrPRx41ZuPFdyKDMVsoYsqw4XYH9Y5togkp3wXTIGpNriSLVqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EIgfIURR; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=AYzioQcl; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BAIRGFj4034681
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 19:02:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Hb4EsWW0/h3RMSQQrgnPTKdMKeo05EFp6vUsqX6QaJU=; b=EIgfIURREzxa4HPc
	vpOmucNKwW7FdUHGWQ5MntQR+dL0qswkX8HchNjVeOMgsLA9Qd3AzMkHPkwlMZV0
	hob/O4fL4matPAtToNkEtDo3IM+woMaSkar/X9px75BBOYzacnsOv2uxU2sXPQVs
	LhGZxeTt0mctbQI6M3LEWICd/QrzlvoE6qA1ul4js2CZD+DSasTy5ctbjCNYeab1
	JdAiQvx53hiRJhTfymAAOoULbJR9M7mNkBu7PBfjKZUEj7X5PNSnSVE5hBB/q2jG
	7btSSW5cR8y4lq8Tg49mkZwcSxDMiaMGjD9N712kbx4NOQa1mfqClBS4Z5ivi/3j
	iM7ovg==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ay63fsuc6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 19:02:55 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2955f0b8895so11702925ad.0
        for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 11:02:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765393374; x=1765998174; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Hb4EsWW0/h3RMSQQrgnPTKdMKeo05EFp6vUsqX6QaJU=;
        b=AYzioQclvglFg8NMqXURfaZoopSITgpLXx/5fc+OQm3byI36M8aI+hjq51Q6C3i1W0
         xO1J91AdXcNTj9V2+6zQclqdYk/tZeRMjE9h7l3GI4SzPUO6Z4J7pIE6ub2XbYn41hh3
         7dPp0zPl/nfPLP1u5UBjPdXqQLQDKoDcip2o4WkKdr08oMoKtDLSa7pAZ/xneWXBlOQs
         wQBTg0cR+2/9b97etuJbkKT9JvdOfDFLkQJDcovtFRrv++VkcTqZQr8g1okdF3mqzCwQ
         3vvMoZ+pQBhY4RQy33bU0VSo0iFWPqvbN9xsXm+RZ2TFkUryQM6Dk7G9T7sUhVnpWzt8
         2LCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765393374; x=1765998174;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Hb4EsWW0/h3RMSQQrgnPTKdMKeo05EFp6vUsqX6QaJU=;
        b=Bn8k9apMMmGsifL7BX1o9OQRuQi3WCh0zll6z5So0byrQ/S6vcpW7bBAXS/X3/zr0e
         Dx5uYuRuIpPDt74ZIRx31ESWOBGrm2eWkov/PG5AkdR4xQec0s98ZVZ0gzvGfbAWk+RK
         fO5wqBq7gDb5W8oQgrhvnDftn/omyIrQuK0+LNQuAKq5msjRrb1bnipKB6Ddrb3G1V7x
         RcjxteLYdlrRP3M1SW9Cp7TxwyP6lJqdCK19hSuDaJzd3qxuV69vo5P7TBy+B8u4I85l
         V41VZeKcAfeqMkCXEYrRVGEVROzheHIKjnDlK6eQMj95Xlu0Tl+O/HONOHXuX6S9tPWa
         5g4w==
X-Forwarded-Encrypted: i=1; AJvYcCXs18tEbo42RlwK+Q6i6hB8G0gc5rRI8123wmYrcq4aDOt5Wn7WpJNxR4BCWUQLycB5+50lWaCe7rts@vger.kernel.org
X-Gm-Message-State: AOJu0YxZlmnLwKBCf3THZqDnaeZm1asyXWMW+xOjqDItx5XDtJX0CuQg
	KIjHIxD18croZ9Om5X76k+rT5HseOEV8OXtTWke7sjUzggHaNmO+q6lSSa8uITD9fR5ABQ8XjTT
	5BYMUYuoqxGEEzC+lSoOicKVKHgyoAH5ae4SYQZ1p9quGjxfQarjhWrjrlpYvIZf8qulJ3Dmu
X-Gm-Gg: AY/fxX5xNeKrbZwJig/ddFdqfOX088H/q2l7wRktLYdzreJHmQbF/xmfx1KdTOGOYw2
	NQpg/qi3Y6+hXts2fwW029HEDalVlzMVSD7paLchiSvHD0fLXhlzatw3vFwhpH37d8j8gHPD7vP
	x4aNu/jWjRkWK/+rDrS1B1sJsngSr1TWiiqUp+SFP8RaiTUY+1JTky62NL4I5MQBwBrtrYvTT1f
	RMY4Ovws9N23vcVkS2rz6OhixHNDEqZ/zHuVXmu8LEZXQDPzGZyZGCVycPEIS18AziNX/YFI2sC
	PUWLh7bVFC/EaXLDJp+am6Y3jb2XBN1pYsinZ7YMOowSfmIoWoJSs+oq4ABiJbDxiYTJUQLgcHF
	h/9/jvT/dXCcbjG9+9hXlzF32XJLqNYKjpCusUtcj
X-Received: by 2002:a17:902:d50d:b0:294:f6e5:b91a with SMTP id d9443c01a7336-29ee743dbbbmr4588335ad.13.1765393374175;
        Wed, 10 Dec 2025 11:02:54 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFi05bdY95Qgg7/zaaQ61UnLDB/gvZsB0EaBdqVxLcljU5uU00nMp1vzHKveXmnFafJsoV0qw==
X-Received: by 2002:a17:902:d50d:b0:294:f6e5:b91a with SMTP id d9443c01a7336-29ee743dbbbmr4587925ad.13.1765393373610;
        Wed, 10 Dec 2025 11:02:53 -0800 (PST)
Received: from hu-jkona-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29eea06b49csm888225ad.95.2025.12.10.11.02.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Dec 2025 11:02:52 -0800 (PST)
From: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
Date: Thu, 11 Dec 2025 00:32:23 +0530
Subject: [PATCH 1/2] dt-bindings: mailbox: qcom: Document SM8750 CPUCP
 mailbox controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251211-sm8750-cpufreq-v1-1-394609e8d624@oss.qualcomm.com>
References: <20251211-sm8750-cpufreq-v1-0-394609e8d624@oss.qualcomm.com>
In-Reply-To: <20251211-sm8750-cpufreq-v1-0-394609e8d624@oss.qualcomm.com>
To: Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Jassi Brar <jassisinghbrar@gmail.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Proofpoint-GUID: ZdTW1PzG4qUGbqVEV7fteOGYlL78Rk5Y
X-Authority-Analysis: v=2.4 cv=Y6P1cxeN c=1 sm=1 tr=0 ts=6939c3df cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=2W43ROp3UQJYyoXdSKgA:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-ORIG-GUID: ZdTW1PzG4qUGbqVEV7fteOGYlL78Rk5Y
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjEwMDE1NiBTYWx0ZWRfXxfEAWdOuqwF6
 K4bJ4NsNkqAHcrbMqNYk22kMX96KKGGdZwvi+eD8iIYlIxAAB108RigleA9qT8yEXEdABOLHHJ5
 NRyFeoowAB4SWOqJ50AFqC74FisF5vCA4wSRIpluFs0Jd5AJU3Th9wedrur6/QuMXQubunEcIo9
 9qP1VddiJy1hga1ua5Veknn8yGDnNIrm8PZhsc+wMf5U0nd+6UMzjksmL2Ttao1yYn2EZrGODhK
 NrYnDoWXd7HgOLTquSEQs0Jux377kuwT/6/7MxKn6LyjSZzq/APjCuRqdZ2Ctlqti5/SqF5ZzYn
 S1Tf+X2dbjOhOT0OglL9LdwN+9W0uTzPgUH/M3GbBWgUP1Po9X6FuQ/xS1JExKUhgPYx+60XKod
 lL6VM5JGO7Mu94pVkyRpb5nQ32OwZQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-10_02,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 adultscore=0 spamscore=0 lowpriorityscore=0
 suspectscore=0 clxscore=1015 phishscore=0 bulkscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512100156

Document CPU Control Processor (CPUCP) mailbox controller for Qualcomm
SM8750 SoCs. It is software compatible with X1E80100 CPUCP mailbox
controller hence fallback to it.

Signed-off-by: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/mailbox/qcom,cpucp-mbox.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mailbox/qcom,cpucp-mbox.yaml b/Documentation/devicetree/bindings/mailbox/qcom,cpucp-mbox.yaml
index 9122c3d2dc30fade96eaf54aee41f890327deb6c..9d99af46e531aec615f91f1c139ce4fa482e41c3 100644
--- a/Documentation/devicetree/bindings/mailbox/qcom,cpucp-mbox.yaml
+++ b/Documentation/devicetree/bindings/mailbox/qcom,cpucp-mbox.yaml
@@ -19,6 +19,7 @@ properties:
       - items:
           - enum:
               - qcom,glymur-cpucp-mbox
+              - qcom,sm8750-cpucp-mbox
           - const: qcom,x1e80100-cpucp-mbox
       - enum:
           - qcom,x1e80100-cpucp-mbox

-- 
2.34.1


