Return-Path: <devicetree+bounces-239833-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 71D0DC69DAC
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 15:13:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id A69B82E337
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 14:04:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC1443570B8;
	Tue, 18 Nov 2025 14:04:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BKiOybET";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="STujOl7r"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3E3C33E348
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 14:04:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763474662; cv=none; b=TpyDo4Mq8bMyxJLyCpbSXFGiXGDATNYr1XvhBbiNsbKdANWx+qbJEggyKL3AvN78z376tjlia8iu5rTasuctIVsuvIzOvD8fgGfAs/ZMV5P7lr5ips7/mlXZykxXyf1ibxD0zjwL+Iz/R6mRPpWq5pK3Q1lDDvZhC/e4+rZw0oM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763474662; c=relaxed/simple;
	bh=58W4drVpq4sxNIxo4fhPSh45zjrOjXY8sQwqZo4rI/k=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=vFlk8chGutaXJmYVjlOFa8RgGYZOSCq19fzqOoROMo3pw6f3xyYoPRje0H9gRNnwv3NMYzySS53EsjheqCWEbBodaSY0dDaQjQhLKN+lZqGaxo1FLlOnyXP8BRO7mEnzJtUlAE9p/FuIyao+iSjTIypfudvXD3f3wB7DPNQuizM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BKiOybET; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=STujOl7r; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AIDvSTu384611
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 14:04:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=9lrAM7xXdDO
	V6c49KXuyewJT40PoW+o/goEI9xR1gZs=; b=BKiOybETwFyANiPKN5iQJXtbEpU
	RtrQm/PJLAlnViG7bu8r3JtGp9J22RpezC1cm25q/m1U00+G1RJNjj19PbRzsfAd
	+odvljfHd0lwa6gV7AzPsnel4EWjjw4W/MRDb8Z6+fVjviDDk8I25teE6o3GH9wB
	TV1lUpKk8Q53XCwKhiYiFOw2H2L/k4X4DWuehIGeoayBDl3GXxtaxtozCVG9mQ5R
	xm99V7eacEnsUe2XzQ1a9LqE94t3TjyPCD47INU5u/F8seWz35eyqjNLFq/bcwOf
	OPlbSj6D+wotNzukSUbRCsHRsURZvLn1xPtn16pEqDfn4k4lKsuX9u9iPjg==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4agag8jny5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 14:04:19 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-297d46768a0so17362635ad.0
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 06:04:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763474659; x=1764079459; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9lrAM7xXdDOV6c49KXuyewJT40PoW+o/goEI9xR1gZs=;
        b=STujOl7rq55Zvl40fah+Ymske/5bZf6hK0L3AC7DTHdPrzXggx+fsGnxkpzZJwBjyU
         0IQio2cPGcw2Ew/ei/k+Q0EWuydzKyKYf+7WBN9wi2qHdDAlrBQMYcGOkWRMmU7YWNoI
         bwbJNnAkDCWAoU4bCHwcvsFJ3ftIeTw67IhBTeOugGT1EYlrH93XGWBVA+fAQwG0+Ei4
         +Tr1BcAacYKwpT1r0ZA+/ci+DUGBpJ6JUcQaFXvSDfoHA9NSKQR5h+lof8T727xAr+QV
         vm/vZQ066YRUkSWCTRQGe6Ywct7QM9L4BIvY+3CS30iU4Zm8ss6iPX4HLhGpqSQV7wbR
         zltQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763474659; x=1764079459;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=9lrAM7xXdDOV6c49KXuyewJT40PoW+o/goEI9xR1gZs=;
        b=J684k1F/y080NtkiRchInNR3kK6jiUyqQvlTMfOocnzIH0M0DPO8zHdUbgchF4UoGB
         uUaCCHf7Q7CUj1WgHTHSbzXC8lDFl0xtCbNBP2wezrkxydgd9tdM1EUFRTbKAHm3AqB5
         41thZj/btR8VrF4MlUNUgFMP4vfoWzFmcEuwdAnwUW/iLOucL5zWtZyc7E+YwhslBCQX
         Yb0ohixAxUebecb5JMP9nF//bvREb4WnQs/StiC2LHNGu6sQ3cAdgTYWp4Kzj7X63mvE
         qFdziyHf+U+DfxNchc3eR9egn8EziSVGF5hwAtUmWB8VbNipyIN0FXQIlOJoA7ouSNY7
         bURA==
X-Forwarded-Encrypted: i=1; AJvYcCVBYXcnO4UgJYDdboSE5oWLa85eSdh7/k/WUvMtbQbdmugCW0m5tAqOPyDgK9fF0joBA3wDgTR65/O/@vger.kernel.org
X-Gm-Message-State: AOJu0YyPlQdgaDAsfTQxfhQ657z4Eg+sq8vB3aRuqDBkR7hHKRChhpjx
	6BhHBOsP1I8vqTovBT76oJaGEwv1b01NLY6HGphuqBfo7B98/E+XzdiuFM9PrSU+grziwZbSUIy
	YnSVpyckXvQdB6EEgI7fEAaS50JiYB/dB/1eOH80b9GIKc3k//jFRAeLMJ33lF6Sw
X-Gm-Gg: ASbGnctgD4CgbDqummE0sRfVAPH/CXICr9uTcCseAGAB2cCgOAv5g05NN0PrKjwbbid
	gkqQMAVwv7SFZ2auu0EXps0HCiwU3cwGalX5SfMI9Ve7NbO4HEz45dj+bo29BfueqGUv20Xy4/H
	+yoWRlKdD6kfc/nszTHTMStSelFwAbh7PvFYJdxSRucsmdQOCkYay5dI6r1/eYT3BxsWd5nKrGU
	ZbIIEAzgdtQ8BslLeW3vXR4vfOXQCZgk0340/si14nnsFJToRuo1dr7VpFDlANVwpaiVa1L2PKz
	r3CaJxpoVe5wleCgYAxe4ePM2FFbirpuWCjc7gWzl1TF5rvfjMbcun0w5NLfT0Q7yE6dfxvemgA
	pE/to309xHfYrZ7EUPnUArsJrKYniaLaG
X-Received: by 2002:a17:903:2350:b0:297:df7c:ed32 with SMTP id d9443c01a7336-299f641a54fmr21484655ad.0.1763474658532;
        Tue, 18 Nov 2025 06:04:18 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHOP7F7VRre0B4GU4GD1NcI89R7ec3DLibcn7RiLGcPvNDRnFETmmrhYAeGOnSNnTVMBj5I/g==
X-Received: by 2002:a17:903:2350:b0:297:df7c:ed32 with SMTP id d9443c01a7336-299f641a54fmr21484375ad.0.1763474657928;
        Tue, 18 Nov 2025 06:04:17 -0800 (PST)
Received: from hu-weiden-sha.qualcomm.com ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2986a60b116sm142957695ad.79.2025.11.18.06.04.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Nov 2025 06:04:17 -0800 (PST)
From: Wei Deng <wei.deng@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-bluetooth@vger.kernel.org,
        cheng.jiang@oss.qualcomm.com, quic_jiaymao@quicinc.com,
        quic_chezhou@quicinc.com, quic_shuaz@quicinc.com
Subject: [PATCH V2 1/1] arm64: dts: qcom: qcs8300-ride: Enable Bluetooth support
Date: Tue, 18 Nov 2025 19:34:06 +0530
Message-Id: <20251118140406.1551669-2-wei.deng@oss.qualcomm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20251118140406.1551669-1-wei.deng@oss.qualcomm.com>
References: <20251118140406.1551669-1-wei.deng@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: RmdQ_AhzyhEhih3485D0NPmrwlrVcfRM
X-Proofpoint-ORIG-GUID: RmdQ_AhzyhEhih3485D0NPmrwlrVcfRM
X-Authority-Analysis: v=2.4 cv=G6sR0tk5 c=1 sm=1 tr=0 ts=691c7ce3 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=vfj0strxkez5rotHyDAA:9 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE4MDExMyBTYWx0ZWRfX4l85flthccSt
 RuP9BDKuRPzdDk2tBnijxy6nutA12JyzwxudiatUxi9Qp0CKYFsrVSsQSB6prJYIRq1e5VM0xYA
 uuLpLU/aMrd+fz1po/hevSldwlpNiw7qmMKxXNTq4RiZdxxFx6Ly3prq0nm8Dfhp3q0o4ez7DwY
 gUKetBOtWFwZVDstjHVnXanqRnkTCu2nfm9VkEi1OqSgNqbvL348fuEv0AsBqsdM8vO5UuDny3G
 y5nngeM2sUnGRba1qf2yhDag34e7t6YXNPKmpl/b5IwCHEVDA15td0hf1cjZp2rqOSRP03J6D5+
 kYZItxGMEup3mDUFPpxu1TcEX/5xsHcKO/lp50YqGMLI3JGw/gsUYoGsa8erp6es3jEtfVhK3bv
 nEGeEg1GvQtavMwxcaUrfTaQlTntuw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-18_01,2025-11-18_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 impostorscore=0 lowpriorityscore=0
 clxscore=1015 bulkscore=0 malwarescore=0 adultscore=0 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511180113

Enable BT on qcs8300-ride by adding a BT device tree node.

Since the platform uses the QCA6698 Bluetooth chip. While
the QCA6698 shares the same IP core as the WCN6855, it has
different RF components and RAM sizes, requiring new firmware
files. Use the firmware-name property to specify the NVM and
rampatch firmware to load.

Signed-off-by: Wei Deng <wei.deng@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcs8300-ride.dts | 28 +++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
index cd8800a59700..08b705fe4eea 100644
--- a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
+++ b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
@@ -18,6 +18,7 @@ / {
 	aliases {
 		serial0 = &uart7;
 		mmc0 = &sdhc_1;
+		serial1 = &uart2;
 	};
 
 	chosen {
@@ -71,6 +72,7 @@ wcn6855-pmu {
 		vddpcie1p3-supply = <&vreg_conn_pa>;
 		vddpcie1p9-supply = <&vreg_conn_1p8>;
 
+		bt-enable-gpios = <&tlmm 55 GPIO_ACTIVE_HIGH>;
 		wlan-enable-gpios = <&tlmm 54 GPIO_ACTIVE_HIGH>;
 
 		regulators {
@@ -501,6 +503,13 @@ &sdhc_1 {
 };
 
 &tlmm {
+	bt_en_state: bt-en-state {
+		pins = "gpio55";
+		function = "gpio";
+		bias-pull-down;
+		output-low;
+	};
+
 	ethernet0_default: ethernet0-default-state {
 		ethernet0_mdc: ethernet0-mdc-pins {
 			pins = "gpio5";
@@ -571,6 +580,25 @@ wlan_en_state: wlan-en-state {
 	};
 };
 
+&uart2 {
+	status = "okay";
+
+	bluetooth: bluetooth {
+		compatible = "qcom,wcn6855-bt";
+		firmware-name = "QCA6698/hpnv21", "QCA6698/hpbtfw21.tlv";
+		max-speed = <3200000>;
+
+		vddrfacmn-supply = <&vreg_pmu_rfa_cmn>;
+		vddaon-supply = <&vreg_pmu_aon_0p59>;
+		vddwlcx-supply = <&vreg_pmu_wlcx_0p8>;
+		vddwlmx-supply = <&vreg_pmu_wlmx_0p85>;
+		vddbtcmx-supply = <&vreg_pmu_btcmx_0p85>;
+		vddrfa0p8-supply = <&vreg_pmu_rfa_0p8>;
+		vddrfa1p2-supply = <&vreg_pmu_rfa_1p2>;
+		vddrfa1p8-supply = <&vreg_pmu_rfa_1p7>;
+	};
+};
+
 &uart7 {
 	status = "okay";
 };
-- 
2.25.1


