Return-Path: <devicetree+bounces-246332-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 60FD5CBC024
	for <lists+devicetree@lfdr.de>; Sun, 14 Dec 2025 21:50:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 40874301274C
	for <lists+devicetree@lfdr.de>; Sun, 14 Dec 2025 20:50:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0E1A314A64;
	Sun, 14 Dec 2025 20:50:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lERWT+Pz";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="aG7auEgv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04B9530DD25
	for <devicetree@vger.kernel.org>; Sun, 14 Dec 2025 20:50:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765745416; cv=none; b=r9qPh0t5rpQlSvTjJ7oQZG1NpzSAPD/ugu1Y79TmjXofYXiw7R6Q9DWT2SuYNgHd8dBzMs8E3Y/rztl/PumEuynyLFk8VaP1MCQ+s09MuLOaPZdrXNvoa95oCnbDhPZ1eEyg8sG9st7sMfHjCiYi15atZ9eSyefhKLJiEOQXfEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765745416; c=relaxed/simple;
	bh=oOMh4OyXYGjUE696EX9XPgRxSeZI/QYVedwe5b1mA68=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=IhrrA9YPJ+kzIY4QxadEYUUpp8HHlPdOczL3ktS0NXMwP/zwptkXGLuGGniAS3zmCOf7X9aAx7spRp/5tyNyE4Ra06J+EeNyvH4Pql+9CLsUFZdKcJD9SXZBFfxB0iSPcJvQY51PHnMxLVQwZMujccosq5SWbGnnRGQCUkJGseU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lERWT+Pz; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=aG7auEgv; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BEKgwEa3131375
	for <devicetree@vger.kernel.org>; Sun, 14 Dec 2025 20:50:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UiZ4ZlTzc8e31vn9ZlGNAKJ5PRsPrggM7QZMINIoi9s=; b=lERWT+PzbHUO3q9+
	2eQgWQzp5oXhSnFCQI4HG57kMJxfJcma07U3VrRgfkDQdORb77VQKFqZoiOc4zmk
	q67UvA6mN7Y9usQbWBmKtLCMxPgrDn9sVeTS5tBZjt1QJXcbpMW/KaxSr/2nJgXl
	cX3faWJgpiBYC6OVq+rkuyiztgpry79mXNRflWndnWEnSckGGuE9vSCNPWd1dRUe
	gtM6jsD9VBjMS3h545AB8l0K9ukNh5o+FK7L0uS8vwnSI9F7XfOs3bxBoaLhEIvR
	yms3bbld9+smu4uErFToST6iyBCGJuANaaxelDkF1Wvs0eTZ22tEEZ+CwgEifv14
	dB9TXw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b11cyjfev-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 14 Dec 2025 20:50:13 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8b24383b680so1063456685a.0
        for <devicetree@vger.kernel.org>; Sun, 14 Dec 2025 12:50:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765745412; x=1766350212; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UiZ4ZlTzc8e31vn9ZlGNAKJ5PRsPrggM7QZMINIoi9s=;
        b=aG7auEgvkTpxFBXzTkhG2+Bf+AhePX784/rW0NCke8vxZLMFDpBZOmc9tLQXyZcqXD
         YM9saJs0CPHBZFXpzlOHqADnJCJexDbOSFYUSTlY1lcjia8oSj3GUDdt12GhzfC+isMd
         At3gttMmM4CuINNTbS6h5y/axC7t7a1pC2O95g232q4sPb6LtlMJ85xAdpJAJjImCRZM
         Tugnv+QmIYmtRo1V3eY6zzSfHkE7ZePmoqud7Raoso4KhoLyHHZ7L4Nd2Hbaf6alTZkY
         IMdd/Y3YxcDPJ1K4EGNg2PXmI9ablKMJALMbDYKibKQZnNTUuxSIGSx1eUwPfQHPKgzE
         4CtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765745412; x=1766350212;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=UiZ4ZlTzc8e31vn9ZlGNAKJ5PRsPrggM7QZMINIoi9s=;
        b=muPf4OYp75aDEZqQpTEqf5yF1LV+BjDlKu+BW5ddl0apXtwfMGZlxcvYQ0RdD2yEmg
         /aXehcbGUH2NihLP59bMqxQjIE8gVnIPHeu2JTysObO7O/hlZ6NSS8aG2vXHHv+L4sxT
         1fwEmqP0fqO3CTla4yyG+4pEUsuOB/CC4stqRelQigdlBeyKG0TlGRdPQ689GoPbNP33
         Np4MWG8Mhni90IGhzith1yESBq4jTdHVpaVetuZ8KSPS6jEUkr6HEPU3SSzFk70wfyKW
         1M6AUU+zB/k8j0NRU1AMIaW3kWLPf+l4nmiUzuiN1dVc+oq7yi6GMB3EWQcDjVjt9V2M
         mGDw==
X-Forwarded-Encrypted: i=1; AJvYcCVp3SpgP0+w//YTLt/APPzAP8CgQog5sP5ulcUbMoVvjpZQ5o4fOaaSQ8Q0tOjHj2p2N6JSgicy0XTy@vger.kernel.org
X-Gm-Message-State: AOJu0YxfRwrdC/Pr7bzNptC8YxW1ImcSGzXrgjVDWLlD7wB0UOS37SD5
	qY8nPp//ZupMQBaV2EycDxBbg5YFQjpOSjqpPzMZZlwttyBUe0uk/CukwNxf6pZoGs6tgrkV+1O
	wS7LHDvnZ1HDGa2BmBh1l/DiiiJ/bnaQXKEuLUJaw48RvGbUIhfPCuFuYt4BvcaiauNWiOaAr
X-Gm-Gg: AY/fxX5OYqOtpULiGFIew3NXqm8ubZ2UqVLv+/7NEc3BPqjgAi7GVMbUMi92NZcE/vq
	uuYEzmvEG8rEd88icX2FaxCK2aKXgtg/D19g4IoXGahxi9LGgaN0zoYifyE0g1AF+owXrGzlcFz
	2g0e++FZo/LgguuA895UeXYF6OPovoz7gmvSWL0r32IBNI5kP5HLzbBeHg3+moKZNatz01fmVhL
	pFn5/zV4tV+GSibxbkHHjafRXVT+AzQwlvb6YWUha1KwsqCz/1pzEuTQXn5P4H+mHiE4edYWKi/
	OA/hSMyD59sYD9WbqO+5zzvQO3Oh6nqUpV4ykm+FOwrvevkVL3Z9RdD45nwsBlnlTsSJo4Oim9J
	7w6OY9MHtToeswDQ=
X-Received: by 2002:a05:620a:46a7:b0:893:b99:7120 with SMTP id af79cd13be357-8bb3a38f6abmr1277317085a.80.1765745412475;
        Sun, 14 Dec 2025 12:50:12 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHnGzCsdTgvQPQuSCCUb5HDbghpBjQIKbS56h8BoWAzwSzndAO9vGC32uevwEc+zIM5YKtRpw==
X-Received: by 2002:a05:620a:46a7:b0:893:b99:7120 with SMTP id af79cd13be357-8bb3a38f6abmr1277314585a.80.1765745411892;
        Sun, 14 Dec 2025 12:50:11 -0800 (PST)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7cfa2ed80dsm1206316366b.16.2025.12.14.12.50.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Dec 2025 12:50:11 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Sun, 14 Dec 2025 22:49:58 +0200
Subject: [PATCH 1/2] dt-bindings: watchdog: Document X1E80100 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251214-arm64-dts-qcom-x1e80100-el2-add-apss-wdt-v1-1-94ee80b8cbe7@oss.qualcomm.com>
References: <20251214-arm64-dts-qcom-x1e80100-el2-add-apss-wdt-v1-0-94ee80b8cbe7@oss.qualcomm.com>
In-Reply-To: <20251214-arm64-dts-qcom-x1e80100-el2-add-apss-wdt-v1-0-94ee80b8cbe7@oss.qualcomm.com>
To: Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-watchdog@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=899;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=oOMh4OyXYGjUE696EX9XPgRxSeZI/QYVedwe5b1mA68=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpPyL+hKRBngv/xGSDGnYKgkRkqCIqy5brQDXOE
 R7z/d4uM8mJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaT8i/gAKCRAbX0TJAJUV
 VkHXD/9nnqBbTWy4LWahARK0bk5c8IfjuH3dd3gm+zOCV9xbCcTAy7q/SPLquCVlldX4+toz5t2
 pg3lJm9gFLXmgbnJwPZ0gr1SagIFvy+1PZY73lHovtZoZqGmsU5dX2KAYlGu07WPsWw75p1ttYZ
 Inr+Um+Ow3JILewNxixTjin/wPZZh7XSBMGrIcjXzcNRin/IIVMxU7dshVeGcVuVsEuBt5M7NtE
 8ol7KYnwkm1/JFfXXPuNI+YxCh/o096lXr1keh1d3RR1sioe5C7d28+B28tjoc+UV3VFNndT2o8
 MRTTXQotXnMcMe5vGtiJjoWMcyjWWHyZG3I/xfOKZuCB4rQcaYGZNPE55Kd/kW/wIu7ahzY43F7
 byZs7ZMqALkbrokPrfxME+4eoyOUIDy8NB1HbbfhtAiJarppkBmu2lL9hD4VhkhHYyu30MRWRvW
 WLECBqk9ryULxT4iJhxHteTSfieibpEdaUbb6Yeg775dD8RZnqSzTrhht+6Qatd0OYYD12cu7ye
 kLADOdoBx0ByR2MH0wW8nzZWQqdYhJDqUF1xg/xJhPXMcNDQd76T11Iaet79i/Ij/W3E0tcXOKB
 kckezDbTOJHsCstKfO/5fedmpeujZU3/n4BrGUZdckfhGIzcRKbAMMjAnBkxbVNr1DLJoK1qDcY
 3jNgSJ/j4oHzmsQ==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE0MDE5NCBTYWx0ZWRfX2ehW4n6zBYyn
 m+1+JqSSx6hnIVYa2/SBbdUe9QoJ4thON503oQojTr95o4mIIV9Jfia6wZgRCexOZanj1IZbmER
 HeRD4JznWMbFb1oeJUSl/0bZtRimUTJ5YRPTRQppspl89nf+fozsWjH82MCdkwdkWh6d8HtzF1e
 vSQ3NDvYrtm063Ih/bT4vPgopw7nZiUZHas/kfGlXKqxuBbjw14PNNI6sYG48MfvoF14FkXfXGM
 K6FtZiCv+8anZdQfFSCaMZ0WARyEeFEmNAq/E376Y1WDhbSrkT9Npw9H4K9HjesIqsGlsm1iqkN
 loPchMhCiFHx2+Z74WXM/coMMaGHl3xghVkLp62b7YahWPlNnDW7nnq0YkwBQcHdyebZO/6yOhR
 Ldc72crRoNnFktzs4KtCMBGBMo8j9w==
X-Proofpoint-GUID: 7MKhr_SBioD-IEvgxy8v2yjz2-DJ5oEX
X-Authority-Analysis: v=2.4 cv=Afq83nXG c=1 sm=1 tr=0 ts=693f2305 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=M593omIBZdqBa3o2AgMA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: 7MKhr_SBioD-IEvgxy8v2yjz2-DJ5oEX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-14_06,2025-12-11_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 bulkscore=0 malwarescore=0 priorityscore=1501
 suspectscore=0 lowpriorityscore=0 clxscore=1015 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512140194

Document the compatible for the X1E80100 platform to the Qualcomm watchdog
binding. The HW implementation is compatible with the KPSS WDT.

Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml b/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
index 54f5311ed016..f2c4bc900e5f 100644
--- a/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
+++ b/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
@@ -43,6 +43,7 @@ properties:
               - qcom,apss-wdt-sm6350
               - qcom,apss-wdt-sm8150
               - qcom,apss-wdt-sm8250
+              - qcom,apss-wdt-x1e80100
           - const: qcom,kpss-wdt
       - const: qcom,kpss-wdt
         deprecated: true

-- 
2.48.1


