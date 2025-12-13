Return-Path: <devicetree+bounces-246245-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 54369CBA797
	for <lists+devicetree@lfdr.de>; Sat, 13 Dec 2025 10:28:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8A6E730CE0CA
	for <lists+devicetree@lfdr.de>; Sat, 13 Dec 2025 09:28:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDFA02D738B;
	Sat, 13 Dec 2025 09:28:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WkHw8nsv";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZMCuD3ff"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CE312D5935
	for <devicetree@vger.kernel.org>; Sat, 13 Dec 2025 09:28:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765618088; cv=none; b=CJS4Awfi5JE/iBnjaAEuqX3/X5QAAmtjINDtPQFGs/Wi6f8VGa2E/jZDJtEXZ+ConjwSfgTBfYoIhFzT7FGz08kmt1pcYskO61EyVxGk9fAomCqUeI5CoQl1bBVHtqAmumOYszdJxPWbVqV+ZDlwPrUXU5wtsOtVSBQiZPtyIwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765618088; c=relaxed/simple;
	bh=Q75hkTxRHlQoFHZT9VQHr0IXAqQLFYv+Z2XFiMz0eDU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=VQk4epSu20zsVDBgIeAioGea+rsanVsgZUTMn+/1posYoEnGxk6apNeO5rKN0Dobj/voiVkD87UnvenzMcBURgvQ73uBRYu5b88ATJZSgK0sI/uMHzKyqmME80s7x38v4qcpKBTGB8gRYn3/FhrOLPXBSzyR4HzuKVMNkxXrqWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WkHw8nsv; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZMCuD3ff; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BD7hwMb2024989
	for <devicetree@vger.kernel.org>; Sat, 13 Dec 2025 09:28:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6FB9n99JrAMtAXD3HgO1fQtc9vkczcZgKr3RYxZrrUo=; b=WkHw8nsvxES1179y
	o7tUSWzKN1LQjz5xUXix/J1vld8EmuIZtYiRxlRwkVqrkWjlrQPKuJMO/eQH+HCc
	yJSsywUWm0Nvq2zAeNI/P2xVnVvRa5Tcx2dWNhMT9IslTndD1RnfgenSSkOMU9Bj
	j2NiKIeIWuQ6DslgGOJsIp7TIuAVxzOJ5o+3Jcw+CTHrPyMHV1t9OR/li6xQoUDd
	GXodlgqLPD/TA9JC9xciNlRm2QJ0GXO/7Ee/QXd+tMeyoEmEXTp/ONFdtzfGBFlg
	GIZRsfeR+2aqCdui3C98N4h2qe1rAXhAcGCoRB7YcLb4ZTwkzn9IoXGCYN0AIO6Z
	NXQXmg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b11e7ra27-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 13 Dec 2025 09:28:06 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ee3296e984so32706741cf.0
        for <devicetree@vger.kernel.org>; Sat, 13 Dec 2025 01:28:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765618085; x=1766222885; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6FB9n99JrAMtAXD3HgO1fQtc9vkczcZgKr3RYxZrrUo=;
        b=ZMCuD3ffRHhAs0SSLf1V1fjAHx1kL32tREs5eSUvqvJaLOpw5lfiNKxloWMQQjtIPm
         /Xxi2n+ESclz+j1A2dKjuK1t044YL4pv5M4LU+CutXmeD4eP8KXQ2mOrz3yQVCExxVF8
         CTprv8MmhPF/4OUbgZUPIDPlwtCKCdPdKO2TrsDwFaf2UNPQ0gxM+d68/EzUiqHvanqn
         fxAvAa0UqBS0JRBLlrt0yQV8BwT6IlDNuhdWWumvRk2Y/tuB386zS/Qdqhfgrii8LReG
         oBBUjFxmbQxzLxHoj30D/LkkTJFACG0iewRVE4lkkEUJdPR0tf6TthLA70a82Ox6RcDF
         BcWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765618085; x=1766222885;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=6FB9n99JrAMtAXD3HgO1fQtc9vkczcZgKr3RYxZrrUo=;
        b=oAsBzhQRVztqR3kl0HktKB7U82bVU4fOGesmum/DFA3oauqKzsDx8PEu0RiDleUOng
         Vv2bH3IpVEqo0Ji0DfokqsjklAnZ/lEHNOTLhTIGRYWTUluhoc6romITPQT7TGPa1N8n
         ssx8LcBKQTh2Kqf9i8gY2SymNiebCBtn8XSWzpJhUca9Kc/ef1RMzKq9s8GvP4OG9RpB
         bRPpZyb0JtBzaEuplXr9Mwg9gyGFrtC87j28zd04iO1/VVBzFdA4q2UKxWG/UsW8CWst
         avgQEH7fiec4OJrNqt3TmYA60hKCHF7QkT25I+SXnHV9s4+wuhcmXp1uOtvqxWRbnupO
         CkLg==
X-Forwarded-Encrypted: i=1; AJvYcCWM5XNDvxWPT27lDc3m/Ai7uUgcxbOLf6qw5C9LvF0+DWd7HCQf3CLNJwOLY8Tb/LjncVPjfhZbvZ/4@vger.kernel.org
X-Gm-Message-State: AOJu0YwOsabL6iHyHrwW+SRub8iXax4vBRUFt172d+XxpuS5yNV4pAD7
	WIE5GtfSkxTL9mBZOECf6YWJy08ookHL52xfXUKjJwthEtUE6238SU99t40W/w3SH452nsrvH4Z
	Lhbtnc6LLpVfQ8sbL8MaR7gJ1PCxV3byX+f47MDM/yAWacCBOgksLeyYu4ccnWoVuqqON7qwj
X-Gm-Gg: AY/fxX5mXwOPBv72Pfp9eDLbqZhJQ37LsZwHJKGsybIxtM+fhhAhd167YzpMAHmenjZ
	4tVh9FeC9Pfq3c+sGbzPrMEzjDIHXIeq9H5ddNcX4ew4007U06jcAgK8ipWvg8jR4+r7BMnqMeS
	DFI8Px6v+vxW+GuTimLORwptISucfe1+YneXc8XrR7t1bN7OfAiNspFK49iklTDfAuZZnTq9quo
	e276D4JsDd/HNuV7X3UUi9Lzswyd3BajHuZF+iBO5vhL7AuB1mumNUlcRUkTt6AGTlX5wYVYnm6
	vATz+d4i4ULlmjTVv0TQvV0DjDUWp712DnyK4lz/EaU0f9S7cmYef77mZGhZxA/nHfySu61/x1Z
	2SrttduBdGdsIbgX78GRxmBPWEL++X2bZ56hsKnaTalby2ddnS3ljV7z12XcySg8WqHvCW7iZI6
	K8zf7o2dZznkl6xsaG3zdiQvI=
X-Received: by 2002:ac8:6f1b:0:b0:4ed:3e3e:a287 with SMTP id d75a77b69052e-4f1d04f963emr72665791cf.24.1765618084913;
        Sat, 13 Dec 2025 01:28:04 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGwLXeyVnU6X7D2UI442nfNfVVzaKbiz94Q0JLj0Dp4PTnlpFt+wxqVuVNqKf68uNzNaOndyg==
X-Received: by 2002:ac8:6f1b:0:b0:4ed:3e3e:a287 with SMTP id d75a77b69052e-4f1d04f963emr72665621cf.24.1765618084502;
        Sat, 13 Dec 2025 01:28:04 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-598f3199388sm2882037e87.90.2025.12.13.01.28.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Dec 2025 01:28:03 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sat, 13 Dec 2025 11:28:00 +0200
Subject: [PATCH 1/2] arm64: dts: qcom: sm8150-hdk,mtp: specify ZAP firmware
 name
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251213-zap-names-v1-1-c889af173911@oss.qualcomm.com>
References: <20251213-zap-names-v1-0-c889af173911@oss.qualcomm.com>
In-Reply-To: <20251213-zap-names-v1-0-c889af173911@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Jonathan Marek <jonathan@marek.ca>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1353;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=Q75hkTxRHlQoFHZT9VQHr0IXAqQLFYv+Z2XFiMz0eDU=;
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQ6at4YKUl73u9e7bsnLSzd3tf/iEpz7u6VkpUrz83P826
 2uCWv6djMYsDIxcDLJiiiw+BS1TYzYlh33YMbUeZhArE8gUBi5OAZhIvCn7f4c13nPMLPdUr6/4
 rW7hIvaeSVD6bfu8xSZhHKrXw/32HVuvW2md/qSottBly6WtCVYi9+6YH2g2P2/panRVLkpywbx
 6ztNbjfVW+7pNiwpZ+6+hJNFJROuLe9lc6/tZj6OjnAKn7VU0Kzd3KIiq+XmCT086z6ubOVrJzc
 pXqclVq1hgxoP5YfuXLjnhujPHY1f1eZlg5aNBCxRPLzJkyVlTtvNUyCkFoZUzdv4QeF6Tns+64
 uDseWIVWwyOBz5qmqHXIv+xXVD29W2v/ZmJ/a+swo94y6dxKHAosE6Oaiv1a4jk5Ak88vZ3nZ/o
 goVtMsGzWPrKW709qhMOFc62ZZuVymAm0b9m/cbHLgA=
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjEzMDA4MCBTYWx0ZWRfX2Mb3O87rnjDV
 tg+8hY6gtdvsQMvxCWfElb5ZYaUVvVCn1NxNOhstzOVAEUQNf5mWgxe3C01/kWEPwX0obEfogSr
 KT/CpVrImrd81YJIT7MX5YqS6wCmCHTDGfavjtmDIrzf4rTZOir1UlgKI3uOBBsKxaZr29n9FtT
 Ind2kHxW4jYXGVZwMMcesjo7jLtLao4BvR3Xz4lDlNn9TbsKU1JJpuuBkh/hIDf6iYkNO95KiHF
 VLSTWdjne3kTaidWqel5++TZVMpn5IpXfZZWooaRy9j7TrzX/Zi+IMsQ/jLmbguipbwyFg6npzH
 IuqyVsRO27LOLKSxxq87HoYdFzbFyxXnjACbMjHePNalftcDO1Bkr96LEQplNDspLRQkw9v8zQM
 +B5Uyri0N9lbeZ1jMc82EScl7R9JvA==
X-Authority-Analysis: v=2.4 cv=aqy/yCZV c=1 sm=1 tr=0 ts=693d31a6 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=mAWmAUWToQKPzkGbk5IA:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: RqnnWdQDR2fkIkZg28vTOyMVSaxXcmx6
X-Proofpoint-ORIG-GUID: RqnnWdQDR2fkIkZg28vTOyMVSaxXcmx6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-13_02,2025-12-11_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 spamscore=0 phishscore=0 impostorscore=0
 lowpriorityscore=0 priorityscore=1501 suspectscore=0 malwarescore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512130080

The DT file has GPU node enabled, but doesn't specify the file name of
the ZAP firmware, which means using a default file name. Specify the
name to the ZAP shader firmware, pointing to the file in the
linux-firmware repo.

Fixes: f30ac26def18 ("arm64: dts: qcom: add sm8150 GPU nodes")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8150-hdk.dts | 4 ++++
 arch/arm64/boot/dts/qcom/sm8150-mtp.dts | 4 ++++
 2 files changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8150-hdk.dts b/arch/arm64/boot/dts/qcom/sm8150-hdk.dts
index 0339a572f34d..1eea9c5c6684 100644
--- a/arch/arm64/boot/dts/qcom/sm8150-hdk.dts
+++ b/arch/arm64/boot/dts/qcom/sm8150-hdk.dts
@@ -387,6 +387,10 @@ &gpu {
 	status = "okay";
 };
 
+&gpu_zap_shader {
+	firmware-name = "qcom/sm8150/a640_zap.mbn";
+};
+
 &i2c4 {
 	clock-frequency = <100000>;
 
diff --git a/arch/arm64/boot/dts/qcom/sm8150-mtp.dts b/arch/arm64/boot/dts/qcom/sm8150-mtp.dts
index 12e8e1ada6d8..0f2d511624a8 100644
--- a/arch/arm64/boot/dts/qcom/sm8150-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8150-mtp.dts
@@ -358,6 +358,10 @@ &gpu {
 	status = "okay";
 };
 
+&gpu_zap_shader {
+	firmware-name = "qcom/sm8150/a640_zap.mbn";
+};
+
 &pon {
 	mode-bootloader = <0x2>;
 	mode-recovery = <0x1>;

-- 
2.47.3


