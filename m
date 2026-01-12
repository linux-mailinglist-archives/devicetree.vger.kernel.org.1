Return-Path: <devicetree+bounces-253904-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E83F2D12883
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 13:24:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 42120308559B
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 12:23:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B06C134E75C;
	Mon, 12 Jan 2026 12:23:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="exGr57N0";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="UhOP11/j"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58B723570C8
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 12:23:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768220621; cv=none; b=L863P7tSCkQdq/RId+b+tpL1CeiGNgfkn17Y9B+jPJoCwnz2TVHplhwLPkwSt1Yt4nBMjdaPzkZ2mJb1v4J36OR7nUbySIeYj1mmjxGgHmPCD3UICDCHhcjBbTwDR5SkHaNOAUnVccdFQ2s74h+7zirL3dEU7WGwx9N9imdM1VA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768220621; c=relaxed/simple;
	bh=eoKoexpFeau1o3ktFqjEUKldFk1oyTp/UL4kxVHGhEw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MLbaeGtQTuk1yvk+9DneQzW67ELUQ3w5CHoH7ygF3Qols9Yb2JjWN0GEdr+lLfFdEuN3MHrn55kW/7lB4kFl9DmPkegLhn4wPUjSTPMcMm5OEUPUPevI7FycLdWkLD/jo4SHI/TsxiahWaZo1fNRbHc7cl9nn1OkMwQ3rmuPP30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=exGr57N0; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=UhOP11/j; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60CAEkMs1316017
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 12:23:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+5vy56J5RovTKKYXVVxWMW4+bSIPOFn3Ei/W3UmQA5M=; b=exGr57N0LNCwmuaF
	1ygg5q5iGKR8YqVlr8+e0ZSG/ZycV999UUFU7/h6y7FUV893QL67xGb3bF+WxJpi
	HoLVdqXHuStAg1mt1mqxUlEI8z3JoKqbL9ZvM3J0FzB/60ShYeve/5EJnmVx6iU9
	dlUSUFvZ8vIBbbjt9pqI5eWs51WTC2hEPkwqKpNF/8pCdtYn2AilIvAXBexRa8pT
	j1qf52aq3/fpshArTy5eTqFS3be59NsFqkRZ0oNfId9RQCCE1dNdtvUhaqL+cmYb
	mrLwWBlnjvFWzBUWHwxmMXSP8WcysBoEO+6J7Ulx2f2y66xcg1OSR/MR8LfX6KRE
	+Zco2w==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bmy1hgbba-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 12:23:36 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2a0a8c465c1so30594315ad.1
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 04:23:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768220616; x=1768825416; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+5vy56J5RovTKKYXVVxWMW4+bSIPOFn3Ei/W3UmQA5M=;
        b=UhOP11/j3bi/5EfxgP5uH2nD/pKmneNxxppSlkA0PGZJqH5zohTjoJ2/Di+QfqusEM
         PWRohEnBYd2jlk4KZSnEJ4/4wODj0SV9O4CVERKmi73liARXnINSntqvOa4fw3dFuQFU
         UVcOeDvR/1gT0Ic88ES1AvFsIN1rMvEX8XTdZDOLfKqUd5PWEGrgt4TBcjmGPvMASdie
         1eUuX5f5MbjagZPg7tEpIUVvMztprvZ2V33rbyPYhgNDCsQI05BvdZKdluq3RqICocr1
         VIvV5/uABaR2VPwRtmIRj8iy2yDMo4FhOxvMhXL3BpUrgFvB2BDCTpJZPKXORqndqp5E
         UI7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768220616; x=1768825416;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+5vy56J5RovTKKYXVVxWMW4+bSIPOFn3Ei/W3UmQA5M=;
        b=DrndAcn7cMG3DjbUTfk4enzogUX55/R6I3ODpEu6CcDqP6B0q7n/Jr2PrBg7OcHueM
         /fS8Xi5eSlruo+i9ErVmETCpRPw8htWaFUchcN+QZLAR6L9qnoKyLrWvtpCyft7b8Ier
         IkciWVGqham9sTWi8ff/xTLkIGWtCeXe5X421UrezN5Zk+O+XkQernxmnbiPU9Muwjc6
         JyXvOc92OpiTyHM6hUDNxSOdh1PiMDsBhDGEoKPQU3Sk+qLcZ0TDLM18nDAAGy9vr/9J
         skwngxUGcxJJCFt1PsKhZBOkkPwjrzAWRikNjOftAYNjJpDWcjfULyuFVLmsOOwUw9y5
         v/9A==
X-Forwarded-Encrypted: i=1; AJvYcCX1J9CoGqVbJeBEk/Sk7MipJyoxA/yZctdSYV0XrHqqSUiM92PAp8KMb6d82u2Tj4rJikIOv4SFnmOI@vger.kernel.org
X-Gm-Message-State: AOJu0Yyuy3JXe2jlW7DbHHBbad1W6hLyg04xG2ICNxLaK/GjlEf2911e
	dE7nRJ5BZKTtNKAbCTTD3Z2byDz6cp9U2yaWahDUPwNMzyB4wUhmfVno74WPq9v+pvGDjEOHkWb
	A4Tf7YsidA/h6Z6Eo8pbEJnjDJs4ctXdYA30VSX5StNClhNPd9PqoVqY1crKj0QUc
X-Gm-Gg: AY/fxX6OjE2Wr3Gi9WeC58gsNVkaDvNZnGXDWWTLt79P7hqeefGsdvIa939AcrIFgiG
	pXKZu8zUNC6KlGvlE8eH7MI3EI9iYwS2adZaKyPDmu9LFu9ABUR9UHUMVcCg2+cXep0TbhVGGHI
	fav89+b7BunrUpENYKXRduMW8LXfagNn89nO5WVWeMh1N94T0eSPxQYRQJhJ0NO10WTywRtuNhH
	VchV/9vtetW0f7DUUp+mzpzDhGajWxcKjKbFbi7KxTqcdoujS/i8o76JdgP3Lt1Tk0nXNmsIVzW
	68RZK03Lhfxcf3yktz2TePk7SG5wfAnilExSZgdYN+OsOYXxE6d7qvvLpzsJIknXgoXuzpxPqIJ
	15b4RB3o7d5/UxK2wkeL6YbRBRNOwYp6dA2GhbFWqjXnpVe/dPbyPtbgytnTIx7Sb6KBE0x/afA
	rSbO8C2RsNMy2yOHdx9RNcUUre5bVEdQ==
X-Received: by 2002:a17:902:e545:b0:298:639b:a64f with SMTP id d9443c01a7336-2a3edb0de06mr195250095ad.6.1768220615867;
        Mon, 12 Jan 2026 04:23:35 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG4wVoW1Q51lumbKTx/mzFfJQBdhLaaaVxhPv2rslcKMQMEOldQJyVxmdIRjln1rDvJRwz3tQ==
X-Received: by 2002:a17:902:e545:b0:298:639b:a64f with SMTP id d9443c01a7336-2a3edb0de06mr195249865ad.6.1768220615383;
        Mon, 12 Jan 2026 04:23:35 -0800 (PST)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3c47147sm170875665ad.22.2026.01.12.04.23.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 04:23:35 -0800 (PST)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Date: Mon, 12 Jan 2026 17:52:35 +0530
Subject: [PATCH v4 2/4] arm64: defconfig: Enable Glymur configs for boot to
 shell
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260112-upstream_v3_glymur_introduction-v4-2-8a0366210e02@oss.qualcomm.com>
References: <20260112-upstream_v3_glymur_introduction-v4-0-8a0366210e02@oss.qualcomm.com>
In-Reply-To: <20260112-upstream_v3_glymur_introduction-v4-0-8a0366210e02@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768220604; l=1542;
 i=pankaj.patil@oss.qualcomm.com; s=20251121; h=from:subject:message-id;
 bh=eoKoexpFeau1o3ktFqjEUKldFk1oyTp/UL4kxVHGhEw=;
 b=0h/xAvW04+fCqIvU19E+VISCbqHa4xX2Kgs+RKlz67b3i8VkNx/IuzdBWT4U+blo/FsDsnECd
 L1TTx2EGlkWAmBYybcI9Bx/V2lC2F0fl3JH7aovth/XAuPyfuTMMHpv
X-Developer-Key: i=pankaj.patil@oss.qualcomm.com; a=ed25519;
 pk=pWpEq/tlX6TaKH1UQolvxjRD+Vdib/sEkb8bH8AL6gc=
X-Proofpoint-GUID: qU4CgF6k4_ZE9P4go1MER740ZuNfANZQ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEyMDA5OSBTYWx0ZWRfX8lu4S/thV4qf
 Art5+Vg6qew5QBkB7YkvVGJ1uJOLkhHTOp6Lv5Wzc+nKymPkptEbTqkgb+Lhh5ETYo2rQYAahJQ
 TOW4GfdryGNtg9yE8vGgcMuXDuYPv9VoxEoj3Vf5NMZ5zM3z5Syap11srAcfg3vNTjBhOQeRXEP
 2NTZ+Uk6wv82ZjVB5m/bVT7olpkk4JjMlGeEZNLgAyIqv+1XOgISFr1hhk6YixqbRYTA4hkBRDr
 gLbe+kdMcC5tT595zTKugXaWtjKEjj/YGPmtInE6MLUyMklUA7AB/H+TOfTIPoo7eOehhFoF1UM
 JOti6iqaMI/K3PeZ90DIWyQ5MKHEH7T39zMpKehZ+Fch2AEnP9iZS0zy8hAemniuXGFVJnq0rAd
 Dr3V+oA5h4/SnNTSO7qfjO57AcrCwrA7TFR6dDrApwhT7hd/7UeqUNYwnhlgEw5r3PO7e3m/aRe
 49Na5BtuV2m150nQizg==
X-Proofpoint-ORIG-GUID: qU4CgF6k4_ZE9P4go1MER740ZuNfANZQ
X-Authority-Analysis: v=2.4 cv=EovfbCcA c=1 sm=1 tr=0 ts=6964e7c8 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=G4s3PgB1coGp2Q1p4bUA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-12_03,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 adultscore=0 lowpriorityscore=0
 impostorscore=0 clxscore=1015 suspectscore=0 malwarescore=0 phishscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601120099

The serial engine must be properly setup before kernel reaches
"init", so UART driver and its dependencies needs to be built in.
Enable its dependency clocks,interconnect and pinctrl as built-in
to boot Qualcomm's dev platform - Glymur CRD board to UART console with
rootfs on nvme storage.
DISPCC enabled as module, used for display.

Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
---
 arch/arm64/configs/defconfig | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index c43dcadabec4..807881932132 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -645,6 +645,7 @@ CONFIG_PINCTRL_IMX91=y
 CONFIG_PINCTRL_IMX93=y
 CONFIG_PINCTRL_IMX_SCMI=y
 CONFIG_PINCTRL_MSM=y
+CONFIG_PINCTRL_GLYMUR=y
 CONFIG_PINCTRL_IPQ5018=y
 CONFIG_PINCTRL_IPQ5332=y
 CONFIG_PINCTRL_IPQ5424=y
@@ -1452,6 +1453,9 @@ CONFIG_COMMON_CLK_MT8192_SCP_ADSP=y
 CONFIG_COMMON_CLK_MT8192_VDECSYS=y
 CONFIG_COMMON_CLK_MT8192_VENCSYS=y
 CONFIG_COMMON_CLK_QCOM=y
+CONFIG_CLK_GLYMUR_DISPCC=m
+CONFIG_CLK_GLYMUR_GCC=y
+CONFIG_CLK_GLYMUR_TCSRCC=m
 CONFIG_CLK_KAANAPALI_GCC=y
 CONFIG_CLK_KAANAPALI_TCSRCC=m
 CONFIG_CLK_X1E80100_CAMCC=m
@@ -1844,6 +1848,7 @@ CONFIG_INTERCONNECT_IMX8MN=m
 CONFIG_INTERCONNECT_IMX8MQ=m
 CONFIG_INTERCONNECT_IMX8MP=y
 CONFIG_INTERCONNECT_QCOM=y
+CONFIG_INTERCONNECT_QCOM_GLYMUR=y
 CONFIG_INTERCONNECT_QCOM_KAANAPALI=y
 CONFIG_INTERCONNECT_QCOM_MSM8916=m
 CONFIG_INTERCONNECT_QCOM_MSM8953=y

-- 
2.34.1


