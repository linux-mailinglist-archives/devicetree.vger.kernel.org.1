Return-Path: <devicetree+bounces-241540-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CE55BC7F9DF
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 10:27:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C50B43A269F
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 09:27:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97D472F6919;
	Mon, 24 Nov 2025 09:26:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Vv/txK6M";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="IGjZ5j4J"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 025AA2F692D
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 09:26:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763976377; cv=none; b=ty/cAtk4xf2pFeq7x/7668ohRcjgPVjalXCeMiIsUqMWC9WD+GrvMBJjTYmCOE8nZNJEWy4xLFIUjU3QxtKWM0UX48uAtHKzT8PKOBphvXBa5eTqJ0GgN3epE67O8aSdFHWdx/vD4kv8phKtABaSQyaRT2/38NaTbxCtlY49evw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763976377; c=relaxed/simple;
	bh=M6p6cNqOJLrr1VimkDtNrDv8+UuwLLTpopmoQFLxJNw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=IY9aLMiKitXI0+hCUBu8i2QR//CXIgY35gbP3PwJdxvjFJMCco7hd5NN9hmI4CSfCxhfCTEsFZAvXROjQT12BHpiLlDVXFIL5zRFtCs0wmNn9Yyg8890sOTqoQmhjluqpkTgz1pB2FHOP2k+/X+HX7n11e8i4de8l4he2zmk1GQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Vv/txK6M; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=IGjZ5j4J; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AO8Rp172669862
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 09:26:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Y/hIBToIJ10S/2pRwkHZfrpd6jd+9L2vzWQxkETTh+s=; b=Vv/txK6M6C5UwjFy
	LZLoqOEfi0Taveo/ty65iwbjv1SZZdKchBV1+G5DHegaAxrrKtF4l++XS5AIjsEh
	Bxm+P1uT5U4AoungOPeovusRgIPjYiGycCkAHyuwbuwpHYtJX5DpG7VH+LlY2nka
	Bio1S79UkPXF900AiOPXl69WjBFAAZIc4lP/rR09axXoloy6r3zYR5M1u4djlgef
	ayorcy0PAy7DvKDLJTZaRmwsH2qAWdb/ziQhLAtbNqcmGT9giD75jWtBbADOLRqA
	Hck+uSKNCuw+xAZ99rja+2zCVqUfIhJTljbDL2apZz6Kux18x08wiZ6zswtaroBl
	fbEbrw==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ak6ffcejm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 09:26:14 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2982dec5ccbso93013545ad.3
        for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 01:26:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763976374; x=1764581174; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Y/hIBToIJ10S/2pRwkHZfrpd6jd+9L2vzWQxkETTh+s=;
        b=IGjZ5j4JtEo71yPsPklGFt8mbxIUdlsxqGP764tUy0hl7rgABpu8VdnBfNtlqmqOMB
         +fM/NUmvOx8W/GiTCWfTUevQ7nTkuSVG1eJXCo4/oj9RW3bndlRNpGJhOBi20eBPtoj6
         qbMu6+AnkqpCrIyJjICni+WVJClwVDp3RPTVc4wOAKQpRKuTdwSxL4BTqqyqDua0ar2B
         mUo5S13l7OhvTZlFfBT+8O2zbDb0t4BGMk9BucrAHbBwACEIOYc4nHJLGBGsBDTM7TNP
         sSeJx4n2YXLG1xwltevLA8ZjfpcyKXqNTofEksKdoxyQqxm8Tr+eQw4nxUnq2SMsqUze
         UlMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763976374; x=1764581174;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Y/hIBToIJ10S/2pRwkHZfrpd6jd+9L2vzWQxkETTh+s=;
        b=rLJoANgGTMZkIiLYAcVNzATzDklAaFg+ABkJEknoFEApU8Heg8cJcIFAk/Wbt3T6pa
         nzfNmc9Nnbv6u3k34N1QJNObgRY9tfx46HBXK6wUtQO/RYFBiEnrtRZdVz29rtBgrsda
         zSc2J2nK/WK1tWwQ61hiaJrLJXSRK6cen1YZNl5o4iDaTgkQugovMSaahNqUYPXev3RU
         89qxYC127/qirOd33FbUf/UTlPcbtG8405yc4ABMwuHb//LJz/ST74BZT4HdcmJDyRnq
         lD4lz+bmdiOWtJwPDejrs9Ov8+Rej+F9fHaYCElBXYPm3jLZDWSfG1oAmnEZqD1w0DWE
         xfxQ==
X-Forwarded-Encrypted: i=1; AJvYcCWdAC34UraGi5jCbT3ZclL7YjD+uNB9r4C0VSUELbEJ1W4ryA9+odX1mA8O1xcTN6nYLaEnh85UiH09@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1WfXMnBUeWq8JLyQHgEe8GxKNrQxdnaX22jZ4b0Oj8Kf9WOj8
	IRnNEF3t6PiAp6T7FFaW4U7A+tAV+osp7BYiGSvByen3EoCl4z5cdqdNYzz3afcYeZB9RWmTOyB
	8/R+LCRcQ2yLvZWCiqCfraPoXAW1QuJ8KWap6wJ2zaCSCoZkwWCTWl8t9pSrcbHBz
X-Gm-Gg: ASbGnct/KZFX6EjbmqHCdgo+hFke/WRHiYnjlS/IbOGKOBAt7lLra3K9TaTZANdd61Z
	JRBGKsLgDXt4PukIs6zFd0tpPpOSwE6PZGoZwTMOSKNSa0pnoirid6b5wQBMJkvAi4LOTAnnGaD
	dSJfKihlslBUOqLsG4wqcW4qcpXljHPvsOE27SfqYErG9fA5+xDH6Attq0TYbR7bpO/EMBC7JNH
	5MZlsjAzlaYMAIREHPhq/OD1qhAmXbYLASbTlArDqiY7d5PWgBJY7ma4P+mkunzGArX1Bxw+oE4
	fP3zETjpNelxgiGUwTVXfrcgryLaIiLYDobC/qkv7uAtThUhN2zLfX7PEMiI8ETm9LgTtJ3h5r6
	6/gaIOR3F3KcFVGzp+eys++LJXkvBP0MRuzdtkFA=
X-Received: by 2002:a17:903:234e:b0:293:e5f:85b7 with SMTP id d9443c01a7336-29b6c3dc272mr120304345ad.11.1763976373712;
        Mon, 24 Nov 2025 01:26:13 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF83DvZtzUF2+LIhnF8mSIq0TCnnj3RVGPicq3PMTG0lN+c/9Z2H5Zds8h40mT+RIhlKcdvlg==
X-Received: by 2002:a17:903:234e:b0:293:e5f:85b7 with SMTP id d9443c01a7336-29b6c3dc272mr120304025ad.11.1763976373198;
        Mon, 24 Nov 2025 01:26:13 -0800 (PST)
Received: from hu-mohdayaa-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29b5b29b1c2sm128444675ad.81.2025.11.24.01.26.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Nov 2025 01:26:12 -0800 (PST)
From: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
Date: Mon, 24 Nov 2025 14:55:20 +0530
Subject: [PATCH 4/6] arm64: dts: qcom: monaco-evk: fix the SerDes PHY
 regulators
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251124-sgmiieth_serdes_regulator-v1-4-73ae8f9cbe2a@oss.qualcomm.com>
References: <20251124-sgmiieth_serdes_regulator-v1-0-73ae8f9cbe2a@oss.qualcomm.com>
In-Reply-To: <20251124-sgmiieth_serdes_regulator-v1-0-73ae8f9cbe2a@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wasim Nazir <wasim.nazir@oss.qualcomm.com>,
        Mohd Ayaan Anwar <quic_mohdayaa@quicinc.com>,
        Yijie Yang <quic_yijiyang@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763976350; l=932;
 i=mohd.anwar@oss.qualcomm.com; s=20250907; h=from:subject:message-id;
 bh=M6p6cNqOJLrr1VimkDtNrDv8+UuwLLTpopmoQFLxJNw=;
 b=aMaz5TVZP9VflQn25Wp2hNniu2DvfKxHzuvGVoNv7g1d5Wpw/XiNyG1S8PIrZ//iCtAUiTdHu
 XWUuDEpgKg8CadsIS+aEyOLn7Oiujr+tTGZYC0wDoAI07BbbbZqgAV6
X-Developer-Key: i=mohd.anwar@oss.qualcomm.com; a=ed25519;
 pk=7JNY72mz7r6hQstsamPYlUbLhQ5+W64pY4LgfSh9DJU=
X-Proofpoint-GUID: 9MBfnNbtoHKlQRIASckhYV9NigXSquGl
X-Proofpoint-ORIG-GUID: 9MBfnNbtoHKlQRIASckhYV9NigXSquGl
X-Authority-Analysis: v=2.4 cv=OsxCCi/t c=1 sm=1 tr=0 ts=692424b6 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=E-7DmkMnb8j6TIe6XkUA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI0MDA4MiBTYWx0ZWRfX97wv3qJdD/g0
 b4GfuGAjhrIaqleIL3P/sqt9cy1qT5jScQgGgIrHraNlvsRj1J+tmOcTWkxepM/YMkJKTr3vlL2
 +Sk0BMh0CKXzqkiC4QZx+m3sI0IiBkzQQXqiKIFwGcWNRzNmc9V4Q52UTkRyCWTNGy2ya0t+mSb
 PlcDZgZR3HTmlcipVatFnTRblh7AZ8vf1KwcgRz58VTdNk5EnMJvYnK6RID4vf9uKVDX2HIi2zX
 iE0ivEsVGvus2DkW1Aowyo5zAvAAtvTYM9BQFJEQJntooCzbVnxqc2FDKfLi3TFTZla2w/7/TXC
 O90laMGqT2lLdSCwp8M99AbzDZ4d4iueeDguSkujRPsPNqDelxnpErye1KQ1u62/hCF8wjy1/7b
 OYLZvc2cMP14I8uJukkexBbbIna6kg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-24_04,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1011 suspectscore=0 adultscore=0 bulkscore=0
 malwarescore=0 phishscore=0 lowpriorityscore=0 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511240082

The Qualcomm SerDes PHY, present on multiple boards, has two regulators
providing supplies of 1.2V (L5A) and 0.9V (L4A). Update the node to
reflect the same instead of incorrectly voting for only L4A.

Fixes: 117d6bc9326b ("arm64: dts: qcom: qcs8300: Add Monaco EVK board")
Signed-off-by: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/monaco-evk.dts | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/monaco-evk.dts b/arch/arm64/boot/dts/qcom/monaco-evk.dts
index bb35893da73d141465a325dcfb5542fc032c95a1..4b51a73cb5e95ab09deb9c94b4cdf06bf4c09a7b 100644
--- a/arch/arm64/boot/dts/qcom/monaco-evk.dts
+++ b/arch/arm64/boot/dts/qcom/monaco-evk.dts
@@ -429,7 +429,8 @@ &remoteproc_gpdsp {
 };
 
 &serdes0 {
-	phy-supply = <&vreg_l4a>;
+	phy-supply = <&vreg_l5a>;
+	vdda-0p9-supply = <&vreg_l4a>;
 
 	status = "okay";
 };

-- 
2.34.1


