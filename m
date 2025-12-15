Return-Path: <devicetree+bounces-246482-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 013C8CBD267
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 10:22:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1D9DC3027E0F
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 09:16:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7891932E72A;
	Mon, 15 Dec 2025 09:07:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GAI/H4tJ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="D/j5ZPbH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3ECE32C921
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 09:07:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765789659; cv=none; b=PCYmWCY9VimCgHWj2CTVXgsGFHO9QTZUPQyhgOWEcvCBpBGgQXrUu5m6jivZlHMDt/csYPnLXm+aQNOQI67c5co+yTh7TcgQehXMUO1sg2asFpyLmQkZtoxpMh/a1UWWjWei6HaBGY69LfN4WeeUjgrRNJzDOlKOAFTmEWv01jg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765789659; c=relaxed/simple;
	bh=r83eusqR2roDC5ces5D91u/7vu6Pc14lBlXGa4+CLUI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=sq7rfh8OiNJYtPsXY2XmLE/bTQRKnnZ6gLrcqIsL1OA2MkdPSA4KFEb9AAdpV7MghkwwVXAsj05zD3zrTifY4Jwgc1lxKUNVdDVNEIGPDlrh787ofuNkGkfwiwzWtvfvqDfhhtTpjH1tuZagc68mVP+0mNOCeBwwchS1mGCdXYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GAI/H4tJ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=D/j5ZPbH; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BF0CDVD2996649
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 09:07:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kuIT/LVwPNX56n8wKBXqlMwPT/oSIl74l2z1+i9AfRA=; b=GAI/H4tJxIGxMMHq
	FOUstm3gR32xVeiudwBkllDt/EF3aEfQx+7A9grWdFbatY/KwaTBZjfcmSRVYwTb
	6mPq+JU1v/TFS8IUFjbovjrjAOYL7fEzGcZ7zBfX00M51EgAt71kxrJQ433VrN+y
	z8ZMie1PEXg+HdR6kJGRPhn9hTJGS6rYPlEsrtoptACZyP6gsJ3CaoxA1MrSI+ed
	z9NnUD3OJZuWEUOcLZEQgWzXpbs/h32hYMJR+Sqr3UqlefO21GmubX4GklDi0eZR
	fNIGsgzkz/lVBR8H9jcrp1C+6s9V6YH5Exesb6aqOIrqHOR4tN+WNGmWlA2fnKu7
	21yW4g==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b11c6kxcs-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 09:07:37 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-2ac387300f4so3151969eec.0
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 01:07:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765789656; x=1766394456; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kuIT/LVwPNX56n8wKBXqlMwPT/oSIl74l2z1+i9AfRA=;
        b=D/j5ZPbHcihDIFFSBLLwrtIdUDn+LtbnkMbFUN2+YjD9pb+LDffY3v3d1k43c7Ui9s
         WdqPAgK+EO/gK8OgbXsyuBtQUPsvMeVGrpVMPinE0GSCZF/L1B4UvcK3Fvhzhr9/ptUJ
         KjX+a80azrvlTQdoNHsjElXeH8I1aJY6K6WMB50PLhWWtFrKBXdbjpoe1/XwkZZFgIU/
         EkIeeIx7ddzUd6fQhksW8abIcpUNTRIAw5nnEzRIQrwR2va0Tk6+uJHFCKLfwGeD48ZQ
         VQC7pvEx6PQM2JykNu5Bo9pvx8U6vEMQiEie5o+YXpttd9A/yeszVYnB8mQc3SG2IuID
         0QwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765789656; x=1766394456;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=kuIT/LVwPNX56n8wKBXqlMwPT/oSIl74l2z1+i9AfRA=;
        b=DbDBJAtZt78MiUAQK05sryVwtE3/l/MH6ioLfCvhn58q5ppkgB0abZ7tU7ndMNpI7X
         2/K/Gz4VzjcNUoI0HPSMAv7tADyNLcJHN/xOfkWFvA2D81NbRBoxU7x7vD9M/ekI62W7
         xGoHuW/jxt6drJf3iyZ+/WGac52ol4Kw8IXBk3mOFLALKjpEor9fJCclI6QLHC0LDYRV
         ZidZZd9TKaMILpOjea7lMDEA+CtT1DqX7fLiYn3YbHlRFeupWvxtIpqgzn6H8ltCrOvm
         UkRCGhILYxz1Jek0Qp7zME27QYQXqpuBlKqkMdnytb9z8LIcvORZL/hYtwAoxFtsSlo0
         DZ7g==
X-Forwarded-Encrypted: i=1; AJvYcCVqlnY6MOHCKZWDdKkGNnRGMp7XUzuzssl62YIQu8NCKznl8f/7enLytY3kDfF65MUh/mJSka/CSuEf@vger.kernel.org
X-Gm-Message-State: AOJu0YwfRJLHrRptyv1eSK/0u6oVdE5Dc7tfhbvwkS8gzHHkyJfPZmZS
	0WpDEhU2pjrW+IYXAK+86k4i+E0vx3yWRovbaSua8x03UGiZLlgaIdVkrp5y6xpWvDC/yC2YG/2
	Qt5PRMt/MhxR/koxgwxq5PE3FhWzdZf5NKRkgad3jeUMj9KZULyt4RQLKOCUj/Y8B
X-Gm-Gg: AY/fxX5UOszOODsrZyopA3QlDOo8wh7sGUnn0DzVGiSSXudfi7sFZFWNDM9n4Ow0ViU
	teel6q7pzesxeDxl0AFJjfbHJFFqzU3CNDRttHiTiMrHIOmI488gaG+DhwEb5oLWVQDbt4deVCj
	z9LAE1BHJD2DeYPBbtKXSc3cn4CzrSPylHa2mB8WButRPdSowT2oBv9C/XcKyLcuuc8yvziSuws
	y8Nm4rQ9sGmFoyI3yoL+qAo892vWoa5IaY1EdMUfxPFL/bygj8E6XCGsHAULZiriZxWXg+aDBIF
	EIigwLKibEI3rNW+RAdy5Qta9zN29AhZhAM1WjDhEdibN6ENxakWOoYPi1v08O8ltSDVEREJJc5
	3jPKGfEmKNplZYYZ66PnatpS2yhiymthA9BXRaHb1I9gIk06vZHxmoiRWCJyO
X-Received: by 2002:a05:7301:460e:b0:2ac:2f90:8e03 with SMTP id 5a478bee46e88-2ac2f9092ecmr5511739eec.7.1765789656402;
        Mon, 15 Dec 2025 01:07:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHTyroMxEynLzVS+0CXN/FB/vBPiJn6PlPiWcRSCFchGyzMxy3o5FR90joJm4h2tTW/2DPLmg==
X-Received: by 2002:a05:7301:460e:b0:2ac:2f90:8e03 with SMTP id 5a478bee46e88-2ac2f9092ecmr5511711eec.7.1765789655815;
        Mon, 15 Dec 2025 01:07:35 -0800 (PST)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2ac3c13d60bsm15439671eec.0.2025.12.15.01.07.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 01:07:34 -0800 (PST)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Mon, 15 Dec 2025 01:07:22 -0800
Subject: [PATCH v4 2/5] arm64: defconfig: enable clocks, interconnect and
 pinctrl for Qualcomm Kaanapali
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251215-knp-dts-v4-2-1541bebeb89f@oss.qualcomm.com>
References: <20251215-knp-dts-v4-0-1541bebeb89f@oss.qualcomm.com>
In-Reply-To: <20251215-knp-dts-v4-0-1541bebeb89f@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765789652; l=1631;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=r83eusqR2roDC5ces5D91u/7vu6Pc14lBlXGa4+CLUI=;
 b=9C9GrnHXiw+/1rAD3P1qJ3giYkZitz6j5DjsKcOIsFinWX43YMuyDay4mbxMazDTplQ67dV2Y
 K+aIurA3zuqA0VJ3ZUAbGczTyV69JoRyjMKqkCtOk9zPNjv1j+OyZJG
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Authority-Analysis: v=2.4 cv=actsXBot c=1 sm=1 tr=0 ts=693fcfd9 cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=agaryqCksHM5hhZjhYUA:9
 a=QEXdDO2ut3YA:10 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-ORIG-GUID: kQExoyyg7CQvTlJY8oN-odr4yJb41_bn
X-Proofpoint-GUID: kQExoyyg7CQvTlJY8oN-odr4yJb41_bn
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE1MDA3NiBTYWx0ZWRfXyVb4ntk+7YAN
 oCFuDhnzD/cOdwIBd6SGvLrAsBM1KDjqoPURd3u/K3LydvhYRsxan8hUyyAJfLhnqfhPzW80E5U
 hk8gseitc82lrcsC6n1nnPvv79gf/97eJ+9djdibCe7qwPZ1LsrWjh/ZkMSYqiUnhtzArdHkp7J
 FErWzGpTQ3NSajzq8L2k4BAd8I6pQnzhpCMR3hBUohTjEEkahTOy7Shh/Kl2u4udS5skV+xg7Nv
 yN5hYepX92H2YVONf0Q6G5L60kpy36Xj+TgAHvArR/qxXrzHGjLl6aFR1ya/zq+jjHc7oVX8EUb
 l9tVPRTU+khxBqsVbGFgXSS9bxEtXHRyIvP26T0Xz/UJegobk8r4tsoi5zPw3uFw7hqNuyOOhGx
 qVym13w05QzusasMozGlWtSI58eIug==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-15_01,2025-12-15_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 spamscore=0 phishscore=0 lowpriorityscore=0
 impostorscore=0 suspectscore=0 bulkscore=0 malwarescore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512150076

Enable necessary drivers for booting Qualcomm Kaanapali QRD and MTP
boards. The serial engine must be properly setup before kernel reach
"init", so UART driver and its dependencies needs to be built in, enable
its dependency GCC, interconnect and pinctrl as built-in meanwhile enable
TCSRCC as module.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 arch/arm64/configs/defconfig | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index cdb7d69e3b24..5aac8878f676 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -642,6 +642,7 @@ CONFIG_PINCTRL_IPQ5424=y
 CONFIG_PINCTRL_IPQ8074=y
 CONFIG_PINCTRL_IPQ6018=y
 CONFIG_PINCTRL_IPQ9574=y
+CONFIG_PINCTRL_KAANAPALI=y
 CONFIG_PINCTRL_MSM8916=y
 CONFIG_PINCTRL_MSM8953=y
 CONFIG_PINCTRL_MSM8976=y
@@ -1425,6 +1426,8 @@ CONFIG_COMMON_CLK_MT8192_SCP_ADSP=y
 CONFIG_COMMON_CLK_MT8192_VDECSYS=y
 CONFIG_COMMON_CLK_MT8192_VENCSYS=y
 CONFIG_COMMON_CLK_QCOM=y
+CONFIG_CLK_KAANAPALI_GCC=y
+CONFIG_CLK_KAANAPALI_TCSRCC=m
 CONFIG_CLK_X1E80100_CAMCC=m
 CONFIG_CLK_X1E80100_DISPCC=m
 CONFIG_CLK_X1E80100_GCC=y
@@ -1801,6 +1804,7 @@ CONFIG_INTERCONNECT_IMX8MN=m
 CONFIG_INTERCONNECT_IMX8MQ=m
 CONFIG_INTERCONNECT_IMX8MP=y
 CONFIG_INTERCONNECT_QCOM=y
+CONFIG_INTERCONNECT_QCOM_KAANAPALI=y
 CONFIG_INTERCONNECT_QCOM_MSM8916=m
 CONFIG_INTERCONNECT_QCOM_MSM8953=y
 CONFIG_INTERCONNECT_QCOM_MSM8996=y

-- 
2.25.1


