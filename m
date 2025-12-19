Return-Path: <devicetree+bounces-248157-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 66C62CCF43A
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 11:03:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D12B5308A96D
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 10:01:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A69F301489;
	Fri, 19 Dec 2025 10:00:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dNfwareQ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YGlGLAAO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B07D92FFFB2
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 10:00:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766138454; cv=none; b=EJLc0EwRRBMVnrXD9OuFRnD/us5bVqijS+MDg02DjWsafZHkMAWdTxqQToKL6a8Htz5Y07pNVVhYARWdmPQviRQ13XqFvxP3h0wA0GWAclssFie4TAkPPV1c64CQ9DGjAw6BTQHrkyVDGs4rYuCtxISc+qrEySJ6//wBrc6vP6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766138454; c=relaxed/simple;
	bh=X/woPCCKj0zzfDXr6Vqiu9G2o8zrcx+qNe6f+/NweL8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=O1hUxwvUXAHcPAe+BhnWSJGARrcNTPzLn3azCZkdepLg/SRrZwm+yicFxzcDI38jnL21kJZyHwda+jwW3FAL+llM1yOstRIaed9FaXdIuod48OiEt3Qvf8dBYFETbGE5c5GydcEW85Unr8xCHY+nLiSZ3VsKw2x+K8LGossbqIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dNfwareQ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YGlGLAAO; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BJ4cCag4145520
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 10:00:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	v8LW1j9iesRUHCUhlLvWVOAbu0RGV4koVYlCPBTb+pY=; b=dNfwareQzEL3gJem
	oYWI6y5VkxyHjyZqxkhsErleMBja5kOsu5YrzlIkxYd1kK5QAlPHhoK6q2KMsCld
	pf3kjUBWnFd4SH5oi0hjuCVrFYHkNLgKDD8vfIGz/0yuPX3BYU2NkTR6VLqprjpr
	MCC2Bt3Ic6pbp/mI73tQDjoVev1GZeKOXgoxCOhEhC3PluZAWeLrIJ7TKssEUfq/
	lxGoc+/wdxDLWGIp9JgCAGxmJXJseu/7qAdD0ATc9qyIA1AXuHS+y9i1VDQczTqY
	hCDhy5wTDxhIV9wr+Vu3CMWFcTDyzGZ9Hh23cR6hnevHzWesCnLi2BpCS3FPiiIx
	PEDiDw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b4r2dt81p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 10:00:51 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8b6a9c80038so146377085a.2
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 02:00:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766138451; x=1766743251; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=v8LW1j9iesRUHCUhlLvWVOAbu0RGV4koVYlCPBTb+pY=;
        b=YGlGLAAOp7O8WirXZ6fvOV/BOshl1WPefCV0xQjvDXW8YlCbr2x/7z7QtooM0iTWbJ
         3pCW+34+0eNvyzasZ5QyaVHJCw0j0Z3xgVKF5+nhV6WoCwdJbBo3lNQme1GtAm6brhUX
         wADl/foQiJpMT2hZMEY5H4iSc/vlhfNDHoI8g0qniECKmpMISun9iMC50vEERfnkJsNX
         rKJQkk5XWjKkTYrE8EzsW9oQdgKhaIk+vZ4gXkz49Gl/adrg3+UyvaD/r1nU+/2uLIBc
         DiU5ZgECdefTvUXs0vTaqY//UgC6PqDToucjskOXyMQK2slvbS8qukB8HXS/oNITWxB0
         nZ5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766138451; x=1766743251;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=v8LW1j9iesRUHCUhlLvWVOAbu0RGV4koVYlCPBTb+pY=;
        b=Ov4iItEgnAh6NcQ1URfzfE+F3/B6MTF+AYyhtRDtB5leEte5XWWQ92xNRxef4s6n5t
         KM792YjPW4H9+sKRRcpEpMQ7vL3LrV1z8L423g77tJtBsPg4mpd5Afht4JNREDKSm/GF
         A3gStxdPBNHJGbc2jqrbXlbjLTp03bJkRyr1pif+3RFolBkQIIYl/Bvv8vVMe6KrHesC
         dkWSVeriUIIXuacLaL5pTHUYz9ixzQxxFuFzfPcHQ6p647kmVP7R+SJar6SqS9K5Xl47
         Z1sAPWyqidlkWErkPcGL2XhPGOFhVa6VlR1crw8vzNLb9uZBSu9nqZAaDxsujGFJ2T5h
         r90A==
X-Forwarded-Encrypted: i=1; AJvYcCVQlGulBjQvglye8ZE7lXn1NffuAm9xE1CvMjZTvlUdj2VNWUvP3OPwvI+MlZM6vE6NeaRhzKQU3G9l@vger.kernel.org
X-Gm-Message-State: AOJu0Yxrob173N/FHIxCwFnusIkE+VyJdi9u2cy5PGy/kgsiOaZbhF8h
	Pd8uwDPkpVt2ffk0cierl5QPYWzZnJxuWn3oH8EdjcRjrza5DCXeH9ifLOKl1e2H1tMyFETkhhj
	B+pgasIUldWI6ySIwEd2QB/RXEmSipDu+l/Nz5DUgdMEDISHVLSL66I1jkovL6mnQ
X-Gm-Gg: AY/fxX7Ay58G4deSILkwW87qTFZTy297TqaW8WGtq//h2Hy30hG1THnmHvFfB9+BouM
	eRn2fFKxtixBOwgSROuHjhDVOVugQYmhIWHxcFTX7ZXXn1mqKb9uEOxAsNacf56FKtvy4fOOLoX
	Sezo1trsbfhSuGmkIKuUZ7Odt2N1nX1iBmgUya2Fg+FN4A7ablTYFYmYNsGuzfJmWtHqY9QmWzB
	YIC6SFhVIlSvmzWEq9wflBpjpUlyN+xrPKqJzdvkdsirF24od3g/zuQcIv6MU+pn9YnwU0c8ee3
	4LoqbbbyM9AlRiC/EihWYNq9cNejolo5QVHfvB+EVg3wBUmqsGvBrYntiPelc/uFfeAIiQWBFVd
	qLlDblKZZlCJOtms=
X-Received: by 2002:a05:622a:259b:b0:4ed:e595:bc85 with SMTP id d75a77b69052e-4f4abd621b7mr34432981cf.46.1766138450905;
        Fri, 19 Dec 2025 02:00:50 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHd1P3AYYLyroZawKvkw081eWEd1n9aeDbLa5HMuOmQKwC5w0ebW3tjanqSJ8iP6s7bHqoQNQ==
X-Received: by 2002:a05:622a:259b:b0:4ed:e595:bc85 with SMTP id d75a77b69052e-4f4abd621b7mr34431941cf.46.1766138450136;
        Fri, 19 Dec 2025 02:00:50 -0800 (PST)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4324ea830f3sm4106563f8f.22.2025.12.19.02.00.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 02:00:48 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Fri, 19 Dec 2025 12:00:30 +0200
Subject: [PATCH v2 3/3] arm64: dts: qcom: x1-el2: Enable the APSS watchdog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251219-arm64-dts-qcom-x1e80100-el2-add-apss-wdt-v2-3-fdfc6ba663e6@oss.qualcomm.com>
References: <20251219-arm64-dts-qcom-x1e80100-el2-add-apss-wdt-v2-0-fdfc6ba663e6@oss.qualcomm.com>
In-Reply-To: <20251219-arm64-dts-qcom-x1e80100-el2-add-apss-wdt-v2-0-fdfc6ba663e6@oss.qualcomm.com>
To: Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Stephan Gerhold <stephan.gerhold@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-watchdog@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=681;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=X/woPCCKj0zzfDXr6Vqiu9G2o8zrcx+qNe6f+/NweL8=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpRSJJGRcAyeolWf17sx1zLCEE+2t9MlBQSXOQ5
 9BCU0HPBIeJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaUUiSQAKCRAbX0TJAJUV
 VrU/EAC3O+fosmwh5uoUiTIPEBrhutRcj4sjgauVbAbUIMmFvw3M+7eghwF5hh4YBpYwcBQ4yKi
 mA1i9tCWOvTfdbs01ZahI/je2Cqb5HUGHOA1aBco1N7Wh0I5bH2Wr/ErP7addK1gtne0xoGo+tx
 S06pN4rcuptXOwy/VXAsdf58opjt/MJ/qxRO+EY025w8Ct+aYWKbSujyhL2GgphzhuZIkcNLPCG
 aQQZAx9bw3q2Snx1sti+gB95F68AxZVcokrLRvni4ZAsNkiYWDn7taApYhk2rvA4sD3uIjDegdt
 83Q3QEsn9FHjQLjlvy3OKpH6m/YRPS5yYGumcJzUgfU2JFWef0iLwlig8eoBFq5QT3SAb9N19OU
 HRPvgmroSyYz4SnP3ZzHM1ySxVhOA8h8vKUUNz99oETVxwZf8bbnFExN6oPzwqCiJaA/fBbHEt9
 kyPNZ/pvBkYtwIjuVf5snRk9Cm8AdX1HLThQ87G1aKURVeUn9OtAE41jrqcRlpYUwcpaUmlkA3e
 rXW6vd3DkvKV0ca3SaJE7sI3ZZTQsh6a5UanbeZpqu0urvRjQcQjM0afzeuRoaDfsl3TND+G7Yy
 b8CepvzYraZsLdlmVUkX/LrFHEzYRwSuoeOPPpEO9cECjVSw4wyh0/GKZzTFdkQzeKWLshTFP6Y
 CyP3vT8H4KHi/Cw==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-ORIG-GUID: CDxlYwjqMgJdWz1Dj_dHG4vJOyWUMWBM
X-Authority-Analysis: v=2.4 cv=A7ph/qWG c=1 sm=1 tr=0 ts=69452253 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=FZ1xxrKGKg_zhwGc0gQA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: CDxlYwjqMgJdWz1Dj_dHG4vJOyWUMWBM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE5MDA4MiBTYWx0ZWRfX+/HT15L3dpeD
 XklI+8L/4ccMfEWmQWbsBcQ8SBwQyb1U517HjgslmgdoqPpceuZKoZ/UyeThBhx7RND777F/YEw
 HL6CpPaj13a5K8uLCe+pR50N6tnbG8ss+fd9h1ABZR2bC/CEM6DGn3lrJP+IEOYZh0rkgoN7xTo
 4Qi90pQ4RTSbP6O7BVxPI4gq7Vt0sUtVeVj1YVmThKDslHBIlvhsvQt5eE/MyiHe2r6F4jqs9hE
 iRX1Vpj96AvPlR4g8DVYsMITi6lgaWN+Y0+de+KBqyOR5EHmv8SCm+o6L69oY/Y8hm5lEzPJjvH
 ZTXpANtcV+2qfATLI5o4xS5uSUcjBvvHmwisXJEdVxoeDE3hnq21L+vIS2FPDWe1kHKyCaUGDj2
 WipfGJI/KU5u5oDWiM4qT+mjBTspbuz9pqqq62bNxTs2y+kfuL98ivN53lRYYAlA/KXu/oNW02M
 tEHilx/HhoF13MqRcHQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-19_03,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 lowpriorityscore=0 impostorscore=0 spamscore=0
 phishscore=0 suspectscore=0 malwarescore=0 clxscore=1015 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512190082

In EL2, the APSS watchdog is available. So enable it in the overlay.

Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/x1-el2.dtso | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1-el2.dtso b/arch/arm64/boot/dts/qcom/x1-el2.dtso
index 2d1c9151cf1b..175679be01eb 100644
--- a/arch/arm64/boot/dts/qcom/x1-el2.dtso
+++ b/arch/arm64/boot/dts/qcom/x1-el2.dtso
@@ -7,6 +7,10 @@
 /dts-v1/;
 /plugin/;
 
+&apss_watchdog {
+	status = "okay";
+};
+
 /* We can't and don't need to use zap shader in EL2 as linux can zap the gpu on it's own. */
 &gpu_zap_shader {
 	status = "disabled";

-- 
2.48.1


