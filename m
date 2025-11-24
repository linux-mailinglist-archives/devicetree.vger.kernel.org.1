Return-Path: <devicetree+bounces-241541-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C7307C7FA09
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 10:28:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 0B9164E5A5A
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 09:27:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6EDDC2F7AD0;
	Mon, 24 Nov 2025 09:26:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Hy9jf2wG";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="D6DAlhqg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E39502F7ACA
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 09:26:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763976381; cv=none; b=KtnVJZFDkJF50DmrVL4/YILL7tmCYUROPt/4hJyDus9zEVDsvOgVghOhGZRkDO6alHans0J+n0Z2xqmhUK+kCXopY5FR0bRBIPTG+aUuHbPfgBV1Q33Z5UxKRt+tHt4lgtqQOfQ1nVLdgDkHiggR8CJV1UDggPclUFEc9RI0IOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763976381; c=relaxed/simple;
	bh=H+Z0+XjWbKBcB+TNCtzvlAUmuPti/CbVgPsapvzJ370=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rGkFgjn5Y6sfKjXdvq543A2mZvMaZqGEtKNBYk0VLgHMGarBZjJ0ckWy2/1OCnip+4QJEeEQOIk2ImeRe6+dR1leF5SUcxHvBL6IwGe2zlo+kZ2qSgEHh0Cd3pnRQ51GNYb6U15aJX3D6ZXLeVcvCjVLvIVC1U1pl/6ICpLWu7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Hy9jf2wG; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=D6DAlhqg; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AO8EWA11997363
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 09:26:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	nxFrJT9IxR5RgsmEq2Yv201BcOfg3J4fzJCqGDcE4U4=; b=Hy9jf2wGb0qKqWgh
	nYAbQUiz5AhXOR01OtTBDp6k5fQL/P18betTdm/rZv7pRToOnl+7idyrZhKUMakg
	p8p8JljUP0DZg7xvZOyo8ZU+LLkJOdPrhvSOhTuUUtNyu/R6qKk7sUcI6ag5wvCM
	fr2d/f2tcwPstd8PuGRTSwkEZb9l4AP9NctUQLo7s5qyqcsbkbOq91aZXDPuRwtV
	P/MUERNCKiQMFNee3WR5tkl/PnsU22gByY+oZjF9dSDSa4BPmaEh1G2nJa1MGYr6
	qCD06ZomqMpjgwG+aM20eFu2lKqhITDiTNn+baxUR2qPyvB94X25kAQUSSYZ/roA
	thkJUw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ama099fcu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 09:26:19 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-297f3710070so102078875ad.2
        for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 01:26:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763976378; x=1764581178; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nxFrJT9IxR5RgsmEq2Yv201BcOfg3J4fzJCqGDcE4U4=;
        b=D6DAlhqgyE0Rv/2OcAkmrWURrh4hs+ksot4p8mN/V8wZIo1+ggttKjGuuuuiT7I/Me
         89/d4QaFrRykreW6lzfGkCXXfhjdovv5ZQ6qXFmzXSjLIp7vYlFBUKBWkY37upYmrIoR
         YLECmOsUQDTrAvHUHtR3EvPpxViovNqTBP+kswiSlUSVkdAE8nyLv2bSo6kUsh+WSYxh
         V3bIi8mlnRJ5yCu2LRbN9xkXT+becb08CKz5qMty9MIjLXC9SPXwSxcZtHkjVi4g4jpI
         sDcQ3Qd/VQZo0JKnTK3KJ6OHubETahbiTSXj0Q0Jjo4VpRS1PP4j91uGul269AeHKCic
         X8Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763976378; x=1764581178;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=nxFrJT9IxR5RgsmEq2Yv201BcOfg3J4fzJCqGDcE4U4=;
        b=kxK9k2C9ZYUGZSFKyHIarw1v/qgka3+kZ5UDCy/Jykhj5YI8UBH5TMVqsAspEnA1uU
         AmmLNXdklOC8o2tXkXombLMhGQBfrxRDfOlSuAXwj2epi3nqjVWGendwjfpA65hSez6B
         ri7XZMKTt5LDgDyRFmLSHJ1snaDkYpCW84fc/ODPw2atGi5djZH2gua/yAgFsZQScsf9
         SY+imMhR49X8+xLxABFi2NdeY2q/GkSjkxipUyj6+2vKLcbE3xjEIyBnoW7aDBACT9aW
         suITe6K2gDGC95CEIuzrGVXbvSqZfC0altqQlvbPqcaX3oTryjMxpQLPY3fYWiXymq+j
         U0yA==
X-Forwarded-Encrypted: i=1; AJvYcCX+ZwVUpMA4oYMmC7qo05qg6BEJLD1wIyTEAgj6ONBsSj1/PfsPQHWD1vPQBbVsIOcsgWKNrK0O1b38@vger.kernel.org
X-Gm-Message-State: AOJu0YwOPOyRIDfm+Kj1GAYSVU4F0bzis6JZ0zgDY0Fr4+hJuz3mO8vg
	2fxMIXKD5zNxcE2tlel4qMkSTpFukNc/T09vqdz3438TSP1Zd46FnopGZNvdAOxJ/3d8oVU56yG
	DUPonvcwQqI4Tzz8wiRHEtTLGqpXSHgeo9GAY4bk1ql+LrGmrA0ExRSUnTSNIHkSw
X-Gm-Gg: ASbGncvu41t2ZzcQuRDixhM75e84cPTuQPJoFyQyVzpEddWL3jeQkeUZY8asHKS0TKa
	WDQgpn/4EeaczVih7XPvh+7qPDprnkboZO29OJAHcN9cSJvmd/cXZRRxjdcZS3SRP7iWex3q/kO
	dHkpfFc9pD9A84ppgi0BWyIniR/t1/fZs8jxPYGaESsCaMnkNvnqVO9sdCIYXRVfiVmRhFnDHNn
	e5+3fKnntQe55vBC1IExnN9SEGIWiHUUTUr4F7P6z0lsjRqW8nVMguBtTZOffjxhgbIt7aAkUJ4
	8R0rwoOKq77+U3ajhzNotZCB9nOZL3Y9D/iqqSUicjhub1sTWmUubBldc3ufErp6cMLBvyNtkFK
	rhZdq4OkLiVHBFamT5tYhRVk7PLs29IfGhEx4z2s=
X-Received: by 2002:a17:903:2f8f:b0:299:f838:a279 with SMTP id d9443c01a7336-29b6c3dbdb9mr125084545ad.2.1763976378462;
        Mon, 24 Nov 2025 01:26:18 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHVKS47CYaCpVeev64lH6ypse6CZ4vQkWVZ0fpEA6mOPicVdZZ5978MvuPZlcDcCwpDpE7AEQ==
X-Received: by 2002:a17:903:2f8f:b0:299:f838:a279 with SMTP id d9443c01a7336-29b6c3dbdb9mr125084215ad.2.1763976377875;
        Mon, 24 Nov 2025 01:26:17 -0800 (PST)
Received: from hu-mohdayaa-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29b5b29b1c2sm128444675ad.81.2025.11.24.01.26.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Nov 2025 01:26:17 -0800 (PST)
From: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
Date: Mon, 24 Nov 2025 14:55:21 +0530
Subject: [PATCH 5/6] arm64: dts: qcom: qcs8300-ride: add additional SerDes
 PHY regulator
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251124-sgmiieth_serdes_regulator-v1-5-73ae8f9cbe2a@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763976350; l=756;
 i=mohd.anwar@oss.qualcomm.com; s=20250907; h=from:subject:message-id;
 bh=H+Z0+XjWbKBcB+TNCtzvlAUmuPti/CbVgPsapvzJ370=;
 b=tylKaLunFc7025Ni3KNZ/q3cvr2PLeisWqLHA1cFzR7039Ufd9vmR8TEti62QsKAMCAZt7sTi
 emWMCWhb6xqBEZF+cfJa5GpR8fubgaMrDDr1D0ptQWYLnRN1lkU3mGK
X-Developer-Key: i=mohd.anwar@oss.qualcomm.com; a=ed25519;
 pk=7JNY72mz7r6hQstsamPYlUbLhQ5+W64pY4LgfSh9DJU=
X-Proofpoint-ORIG-GUID: WDNsWht2IZuUYFZHb6k7MnJ_kNLBW6uT
X-Authority-Analysis: v=2.4 cv=PdHyRyhd c=1 sm=1 tr=0 ts=692424bb cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=9SjQZKpPHDDCJ_mzltMA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI0MDA4MiBTYWx0ZWRfX7PQ/otYn4b63
 frvMdTgmWff8ebWpzvUlIL4vVrVhSBDN93zoiUHz+424XciCCSOjNhkfa9Dqe5JvrB01y7nKQSP
 oyS1AMik0yhJVBDZu7GjayYciIODwKMxWAI7WsBo4813PLHnSBkSbagMPvGZKb2eBX97BTVgyqg
 VcEtZ15J0ncy/Lkd3ix22lOyDweu3EARykqWA+QqHt9a548ge4EdHF9T7mkbkbO8oop6E2U1rjA
 e5wys360G8CATDKgqcch7rUy03S6Ek5MDGKuoxuxDHHc3drlvmxbiANDT9DjeVtn6ZnXAzaHjVv
 4cFqSJQkNQH/aIDImFNh3k6AsO5e/m3eqJztITA/Rr/FTwcI1/S2TggSuP0IzFyK+05FMmJPyV2
 0Zkr28TueNdYaaFIuLsa4Im75C0lWA==
X-Proofpoint-GUID: WDNsWht2IZuUYFZHb6k7MnJ_kNLBW6uT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-24_04,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 spamscore=0 suspectscore=0 malwarescore=0
 clxscore=1015 priorityscore=1501 phishscore=0 lowpriorityscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511240082

Add the additional 0.9V regulator for the Qualcomm SerDes PHY.

Fixes: 787cb3b4c434 ("arm64: dts: qcom: qcs8300-ride: enable ethernet0")
Signed-off-by: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcs8300-ride.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
index 9bcb869dd270603a34221b905f0946e8af028433..66f60146a7498a86dfa2cfc0a75e3dbc540d9684 100644
--- a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
+++ b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
@@ -338,6 +338,8 @@ &remoteproc_gpdsp {
 
 &serdes0 {
 	phy-supply = <&vreg_l5a>;
+	vdda-0p9-supply = <&vreg_l4a>;
+
 	status = "okay";
 };
 

-- 
2.34.1


