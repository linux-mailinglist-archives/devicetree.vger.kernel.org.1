Return-Path: <devicetree+bounces-256278-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F2490D388C3
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 22:44:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AC044300F9DE
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 21:44:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D3033064A2;
	Fri, 16 Jan 2026 21:44:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AkcZ82cN";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="XyY1vUSm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD8CF30275F
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 21:44:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768599850; cv=none; b=gBVIVUL1FU0b0L1mcldW8Bhg/PBqaotACqzWbXnUBdrWp8jain4yZgflbwfbV+ZOnmxJ6U+H20zxCNb/mfp2BvxhLnUKZGj/WkIEGOJzXI51YKCfOSc4UKM901WLht93LiD4QH6SafxJ5RQcC6JyIbvzbFCrgiaHxLdKKstoTz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768599850; c=relaxed/simple;
	bh=1J6bmU6eirA/+KNMMJTtt+K/c1lFfYNvywUQL7ovwSE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=CK7wg4bLzLxjxe06HoFVzslfkLLxF3cM3KQtW9iQy1DqG+LZ3Irk1XWuWHKpJzmaMqsXcYZGi+44+BKEHKOIzhZOg63oHYwjXXWbljPLy8OGqBb9a/p91ozqQBVeYaTvYMLxJzKfSUL7Ko4WvCfwzWsLK95XIHrjYWJYOjmrwZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AkcZ82cN; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=XyY1vUSm; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60GKb5pJ1631192
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 21:44:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=21tAcIenGBL
	sBPQ6P0gIMpjO9CMX7p5MUBcg5SPhEcY=; b=AkcZ82cNkOLSaWv9ogcDw5CFNI2
	2ajreYFzDVAUHB+VzigV/TDzs70Bng0HGSxbJjroNvKSvtUvGahhmHRmQrtSi1Ao
	Srp7qF18HxWgdp27n3kq3huoC01SWDuvxtGBo6GxQKFUwxAcEWueAD+lIvx1dCVP
	lf61TjW+lblIkiIoINphr1sV9fiP08EnNGBQF1nYk9WoElocREKJZRZ9qt7k78Zl
	TQ6/vBoSEGrO2S9s0mowRy+RMXBBgdWLqS3ktI4VVPOiYb83nqNuRfXb1csAENX7
	OaC2hntyHNZFVpzUk+4jGzrkgzIUEfgLPS5FnMUNdV4+WY2DJCHfMaQWxsQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bqvh7r4g7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 21:44:07 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8bc4493d315so721317085a.1
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 13:44:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768599847; x=1769204647; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=21tAcIenGBLsBPQ6P0gIMpjO9CMX7p5MUBcg5SPhEcY=;
        b=XyY1vUSmKMl8N2aEufU+vmnJWm0B4WI71SwPXcj62efY79+66e9a5rH442/nUhxn7r
         KYcgJ12NOyCPHDV6b6a/EGbGsuAgdsw8TrZ+Q/VtRNVqTzrpFzY3nNxmXOd8Uj79njXY
         jV24fMpnf/67YdfJ0ZKy7/KyJ98IIklyazXFbi1HPUPL0Ut0zQKJKhRVuEV1nUYIiJsq
         EOMUuHhBiR9AktrGzCh7goXCQRZO0OpKsQda4fnnlA7byRUEBV/ZpLctvqm1PuUBFxDX
         ng4EL41CLdReVG4g1PRxY4egBEF6sRF3LluayORsN81KzzuBNDJ3JLSzR4VUO1Qp3XKq
         HSxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768599847; x=1769204647;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=21tAcIenGBLsBPQ6P0gIMpjO9CMX7p5MUBcg5SPhEcY=;
        b=U6k7SF6HZYc6VFBwDPsa6ESsGMy9sg0XhQC0fpLl2w5SdchIauNEqlbao1Hn45wTYs
         GHM92DUMvIqQMOxGuDKe8b8mNtH019PH1alYqcHyZsCBr07i41+HCiH6vCgccOhIHU8G
         XIIg3T7+e4FIEnjrzXaGP3ge8ndQJ5BMg2Wboba/J82B2DREAn3lJnfe43VbmTo4wmpP
         4ZPlN11M8ox2ZxC3D+xNKHsOMAPjNGOyGUhD1R2U6s+7UN8rWZmBZj/a0ZAqug1uv00m
         IhZM5Y06xsesRpaIb3o2GZzCeRB/NYqbH38eCFyeiC46qDSouQy1WyV27GQZIQmcOGjF
         tcJw==
X-Forwarded-Encrypted: i=1; AJvYcCWE6EAVbjNAY3DjIhYzFfB5K5hU+DOO0zr7zAQC0uPJyRSXJnPmG1KWqxC+a0nJYqRMUAJzHArsjbTp@vger.kernel.org
X-Gm-Message-State: AOJu0Ywo0bd67XscFd/HXBvO1InFWQa3IQTgKavmgDCE5GgCPCAUQcmn
	CB9ccNCvhAuUIljj89slGwNbjg1YMtfIY+p6q12ac81A3faqcj/6JKFFJouuGKP6ec3SnbrM9JZ
	5PBC+XvFMPLnsg65chs/++pA/N01ZeuPZDqdfXFrhD/76jknBGnwIJfBJQ6pzQpOS
X-Gm-Gg: AY/fxX7yZ3uoYkNnX+d3BUksTTK0Dw2ayXCQaMBZzMFwilVD+5CEq/NoC71OYNpUFOe
	nucUdXWhmEhwgDsR2eFVS3Hx0gi9q2xKQJuFtCBrtiXFHz6/v0YyLJTn3DCilkMmb2fD/5VjMZc
	kWftMaeYukodJ8p2zMvFzbLccstYkN9KIQTkVMAKeynmvK+AKr10utOV5meaODcfejvabxGKAPz
	wvylVtHI3Qj/shHzDijlRTv/81JluP2yZc2vwTjnDNBPLDVfeKPvokFBBZGBMo8jFUSSGgBcpO3
	qBsumKzaTrfj8yqcrEWuOeAtQfuH5cW5vLoGu33FGfFoUYHi6B6lQPaPq8WeuDt4U1KEu5NjPmV
	50t0ur44y7AU/bK8gUyqkH0a0QFJN8dBCxoiUE6XKF+UaS0jC9WFEWFATfvXqE4gvHy69Q4ldi9
	qY
X-Received: by 2002:a05:620a:470a:b0:8ba:2b0e:fa36 with SMTP id af79cd13be357-8c6a68d8ec4mr505995485a.24.1768599847147;
        Fri, 16 Jan 2026 13:44:07 -0800 (PST)
X-Received: by 2002:a05:620a:470a:b0:8ba:2b0e:fa36 with SMTP id af79cd13be357-8c6a68d8ec4mr505993785a.24.1768599846684;
        Fri, 16 Jan 2026 13:44:06 -0800 (PST)
Received: from QCOM-eG0v1AUPpu.qualcomm.com ([2a01:e0a:82c:5f0:910f:b77e:d7fd:93ac])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65452bce433sm3479743a12.3.2026.01.16.13.44.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 13:44:05 -0800 (PST)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        dmitry.baryshkov@oss.qualcomm.com,
        srinivas.kandagatla@oss.qualcomm.com,
        Loic Poulain <loic.poulain@oss.qualcomm.com>
Subject: [PATCH 2/2] arm64: dts: qcom: monaco-evk: Enable SDHC1 for eMMC
Date: Fri, 16 Jan 2026 22:43:54 +0100
Message-Id: <20260116214354.256878-3-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260116214354.256878-1-loic.poulain@oss.qualcomm.com>
References: <20260116214354.256878-1-loic.poulain@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE2MDE2MiBTYWx0ZWRfX8GKExVpzoe+E
 bNQk980mAlYT2cv45QUL0OH2VILdg8jZxDWRuRSsez+I+unNe+Lu2uhrUT5JDSkQCWMJ8bLWM9Z
 NT7L2uVUDYswIolzECYLyI29w/hpmH40f9dChb96+gUy/aPPu4Df/3WbB1T8buuaoad50LvJ4kB
 mHSFHkLIABoB5nvaNJfm7wCtvaOTA2Vq2QlzTEWPPFPl1Rs1C2G+04HesxVZ5lax+u6y+WJ9H/A
 Orh3L17cDU0dpadLtLCKqFRMIV3YclAEXafHpEcgFSPsb85a7a3/kt0Ddr1Y4B1IT7QnTQuNc4P
 GyIsUTS7RqkV6Mg/4xcCXIH9+8g1iyh8s4eKpNCDeKRJKip0xbzDBr5tFwBM6dasp59wIe4Wnhh
 84trbi76+XUvFHv8ZJHLmlAds8iXcuSF2TL1fC5e0OGlU8wOontkCtUrggW3ipfwiZHAfiz5COw
 JVJoWq2zYkuz6PZmiyw==
X-Authority-Analysis: v=2.4 cv=Q/nfIo2a c=1 sm=1 tr=0 ts=696ab127 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=vUbySO9Y5rIA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=zPoHXmT0fkef3cW368YA:9 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: WiFoVbRMxisJmpLvHsVmMLS8pCWUP3cm
X-Proofpoint-GUID: WiFoVbRMxisJmpLvHsVmMLS8pCWUP3cm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-16_08,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 clxscore=1015 priorityscore=1501 adultscore=0
 lowpriorityscore=0 spamscore=0 phishscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601160162

Monaco EVK has onboard eMMC, that can be used either as primary
boot storage or as secondary storage when booting from UFS.

Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/monaco-evk.dts | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/monaco-evk.dts b/arch/arm64/boot/dts/qcom/monaco-evk.dts
index bb35893da73d..c272d7db80e2 100644
--- a/arch/arm64/boot/dts/qcom/monaco-evk.dts
+++ b/arch/arm64/boot/dts/qcom/monaco-evk.dts
@@ -76,6 +76,15 @@ platform {
 			};
 		};
 	};
+
+	/* This comes from a PMIC handled within the SAIL domain */
+	vreg_s2s: vreg-s2s {
+		compatible = "regulator-fixed";
+		regulator-name = "vreg_s2s";
+
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+	};
 };
 
 &apps_rsc {
@@ -428,6 +437,17 @@ &remoteproc_gpdsp {
 	status = "okay";
 };
 
+&sdhc_1 {
+	vmmc-supply = <&vreg_l8a>;
+	vqmmc-supply = <&vreg_s2s>;
+
+	no-sd;
+	no-sdio;
+	non-removable;
+
+	status = "okay";
+};
+
 &serdes0 {
 	phy-supply = <&vreg_l4a>;
 
-- 
2.34.1


