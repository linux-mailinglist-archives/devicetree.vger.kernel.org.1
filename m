Return-Path: <devicetree+bounces-255738-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 38362D27CA6
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 19:51:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 20F1530812A4
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 18:49:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBAC23A7F5E;
	Thu, 15 Jan 2026 18:49:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PwrLEpT/";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HmdVMEVQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AF363BF314
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 18:49:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768502952; cv=none; b=Ce0JgRY4I/bMozIyf77UjaDlCFrMQMFTvm9wkEj99udYnvFhB9xoydmbgtfqi9IeYHRKww6nUZERqLqlAsqB3UHcoZT37TDfOhNJi2QhYmAIvXhTNaPCgqnRFBaS71fbOb468K5X3mlZ7QclYPpZD3a6rlvUVbyvULMrfLMfdkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768502952; c=relaxed/simple;
	bh=DY9hBCb5faJUt/NqJhKPR25mhD8mtT8COZDItt8PUvs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=elopCXYe1oy+eWe8Xr5m8VQonrNOUAYIwsad9okOmpPtqPowQd+Aorxla3mbwEHouna5vWiMjIsI3K+goPLSEGahRpmDcXLbu1Bs+I+UBStiLqEZIF0V4hg9/tlGJyP7b3jVkgbe/FknpxzhL88iiZ80mU6jO27uBYvAPqaFeXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PwrLEpT/; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HmdVMEVQ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60FFYDrw347756
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 18:49:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=NAtDEoHZn9OYnPtYADQPVu3NWijc5YTrvRP
	nj9XDSH8=; b=PwrLEpT/5DsRpJVYytaFYPMGnrmgwsCjcM4SjcWFzF2i581zXLj
	7GJ8QkppUslsGuEH5p+EPD3J/lsnn3l4bIMq0T9v0brCC/KQcyHaFIe+wz1JdsXS
	M7HD0oUIq4/n6dTfWN/TOwVIxyrAY3D1knBt/fjFW7oy5Kuj9rOYdWquPhz2d2V8
	uljK9LEc0q55PMzYidJuVdJy/MGZg0efJ1udgSmGffFbbbq3r4h/hP091STyy+0+
	a/SdGkJ/1iAYXtIlFrRdyY0k/YEXH/qxEnkavJITXUjPDavCO1dlxDKxWUn7m91E
	6/PxB3ACZP5EKWlqHO4wOZMmAoKJkOMVy2w==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bpy07sdme-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 18:49:05 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c2bcf21a58so371527085a.3
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 10:49:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768502944; x=1769107744; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=NAtDEoHZn9OYnPtYADQPVu3NWijc5YTrvRPnj9XDSH8=;
        b=HmdVMEVQLfyPX1dCKCG5+g6CN6/GlQoMqa4yGAbvdTUagBXxqzjOgqbZjPxyTHIeQz
         m4g6rNiGFGBTdOGgXCTpksuvSFth1LDggVWPfqM82ZxoXe/dzNl94pVh/9uFRuaZf253
         5sdNLCGCZB9n8M3iD4RyoRiUen6/Vz5QgL05Y1hFckFBEuUhnNeJiM2djpgmXOAdr8iX
         4t7BtcRFPjOYuAC1cZPKALUMw5uhlNEOQo4RlO7zGd862U+UP5FYmwkiczdLLhB3TSgQ
         OVkU3hkYtXfmt6gKCr0xk/EIICmgtnAGsJXgOz8vFVlzlKtsx24Js8Zx12rGN6R75i2z
         yTsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768502944; x=1769107744;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NAtDEoHZn9OYnPtYADQPVu3NWijc5YTrvRPnj9XDSH8=;
        b=TE90PixhB2TsL4v1SI+kuI24iGOoigQ1SmM0OGpATdGDQYi4ISvqC158q4PgaLFaqg
         LW2rwph4rVesuB3QvQOcwCVuE06ukyFOfQBmOU7dXAe8gkSRhc7NDLtBr8/SEXUeu9P8
         UkpNI+XfNIHdgbMI+oq0BgoJT+yRud8MwmG8iixSiMYogdDg2LtZdpA0mdMgJ/p56O47
         m88f+YHCx+7Y0I+65nV6RHSqFuvUYwSdMgWtLFibSNCPg+ymw7HiRQquSi4dx1QHONlM
         1v1SJZAVTpprmMLQGrRR1XUQMBv7PAexzuobsTHseTaN6nHZO0wtIyC+jH4ZODcNOeo5
         jcMQ==
X-Forwarded-Encrypted: i=1; AJvYcCUhLyjy3xx2IbbC5IXKzlWS0O8QwzvebsiBgaPQbN/8mBykc7Clc5V9C8tiV7+26DKpuKO1Fp5uzG1t@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7kYHzURAaujEmwGm0iEAxKq3ZsH1usFyFgz73r/zv9Y4Dcdng
	1Btol+BBGYyb8hNMJledu/+gGDRaSDKe8Qzk0NcotCzCBFscrZFROTNh6OX6BQI9XcpgxDNv92z
	13gny2QOKvTB8RWOU0LrfA6W1TntfFDkKb+ziTcP72oKST68bjOnT0fkOR6MsBmr8
X-Gm-Gg: AY/fxX6+Q1fUTYMVDHLziN7peT5Pb7EUuuNzreuDC8ciajPYiPGfXknGoh5JGmroZpQ
	8dk7vLXy5r/kpkO1o75sndIEQqZK4tstKHUT2Ydob8zd7G3e+9tqOrPexTh/q3pjYgtVfg9FsBO
	cbr4iEhGLMLT7zSZ1RvJZ9FhT2uuzMRlsJgcHNuYeBrGD7zZ7Dh/ON0XcpdEMZ/rfdZJv5NLu3F
	sTVZ46XsSZjt6lKy0vtBvA3v8L17mT4PJ7GPWmFR9OCqy4p0gV1qMehNF9Y8tfpNJW8xQY9NR7M
	2MG/uVp4XZx9G09W5KtH96Y0Fgdhw0R2a0VuJpPEkW+Kh427b4iZHPc4s8CnOkjbDyc8PiouX4T
	SFYclu8Xc7qj1pN/bJj4/vx6hXw==
X-Received: by 2002:a05:620a:2698:b0:8b5:5a03:36b4 with SMTP id af79cd13be357-8c6a677a8b0mr63461285a.71.1768502944045;
        Thu, 15 Jan 2026 10:49:04 -0800 (PST)
X-Received: by 2002:a05:620a:2698:b0:8b5:5a03:36b4 with SMTP id af79cd13be357-8c6a677a8b0mr63457785a.71.1768502943625;
        Thu, 15 Jan 2026 10:49:03 -0800 (PST)
Received: from quoll ([178.197.218.229])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8795168c6dsm14408166b.19.2026.01.15.10.49.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jan 2026 10:49:03 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Jonathan Hunter <jonathanh@nvidia.com>, devicetree@vger.kernel.org,
        linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH 1/5] arm64: tegra: Drop unneeded status=okay on Tegra186
Date: Thu, 15 Jan 2026 19:48:41 +0100
Message-ID: <20260115184840.310191-6-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1299; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=DY9hBCb5faJUt/NqJhKPR25mhD8mtT8COZDItt8PUvs=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpaTaIbfIIsgQATQBMAV8IgpIBxl63kwWWudj4s
 x8PAwgYriWJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaWk2iAAKCRDBN2bmhouD
 1yfaD/9UPkrxfrYmDxiA7ONlqfbdfXnGsl+G9q0fo8AHfqvb97rDM5LSlNmwgmMtaERBqD3aNCW
 9sPQN9OkguLOzwd/tnLnwryRFdJ2/0SzI4UJT6NKlxpWla7xagsHzk94vBd2hncoh6aE7OEVEeu
 2/IxFwOywd2ICnn2iGTeLBWw9657VDRjZ6rUqN/hgEARHhjI1FftQXfO0kjY+T0xupFPQom6HAm
 mHRsoYDU2kC3hTsIP62REv+up8iosXRhl+sJ706I1u5FevJ3PLUNGQjO8NsTzhS09skwB8XU6WO
 CwTA3I6hq/KH9r2hpssUhvizrFE+bCr86TCD/1usRvjZgrGsoTMq+D54+hpNVDYPzmqpE/i41zD
 DHX5avk8xRfwqFPB8g1WJrQcot8KKeuOQ5L3JsTN7mozsKs5WB1Qn9aeW5mBIFpRNVmB3YVFRXZ
 dIX9KRuXvcJf/M8nccFPitdbTmCN05XeUOkTg6nEQg8H+IwGDEwa8J6jOCKN3jjrxylh7J7Frta
 51g9ooLxgxQPDffnb2KaPI4qDXMGc4ynoQc04xv9lk0AVa9TTva3/ja6qDGKYBP5gFU62YFuqKR
 f1dfOaBFiOxdXmsxlFTj1HhAcBWp44YupYKq40aJKvg7OvkPOZ3BPAsYi5J1zRtMett6d1L6pJ8 UZFvvUJbZ8nrMEw==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: ncX_bckTHu-lIsAlLjI0MxuOd836RRg6
X-Authority-Analysis: v=2.4 cv=fMw0HJae c=1 sm=1 tr=0 ts=696936a1 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=Eb9f15NH/cHKzfGOmZSO4Q==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=ORx1dWHOHe_Yef9wL9oA:9 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: ncX_bckTHu-lIsAlLjI0MxuOd836RRg6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE1MDE0NCBTYWx0ZWRfX8C0Pl89ddDtO
 kWXCBPpcoj/lisoNmSgifaFEXA8GJDCrG5/fY0UqYp6FwUvX+pLl78B3PALqObvWDXckuLUlnir
 PisMWoUs4Jg6+5odLXh4Pz9Eg6tFxOUzNBns5FNbO2AxLYfVJLkD2YUzdl46g2cT8ythfLtmNi9
 XqxJsIW1JjOV73ryWHzL80R6vuaF2l9jCa7qc93hQRiBvavOL17t9nDmj+bg6GWTg+IQQXlY4aP
 CZo4r084zQwJmGrHTp71rXSKoK0FGYIxWFXyYKQFmAKCRof3v0KPIlIyHSFPoYO1s1IVfqlBLcz
 Cz7uIRDCqToUYNAwH5ffHrgU0N9h55pOEoaUQg24gxdJ/JM/3p/KtvgXADjbdzbotlRk3TG8rfk
 FlakM+zwytAuuYCKNpwXVGfQN9DK7WsPqugvAUUEazhZKMtoeN2EUj4IBPp9PJVF7I1QM5xMm6A
 JCfk3QUQpKt96P9CCRg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-15_05,2026-01-15_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 malwarescore=0 adultscore=0 lowpriorityscore=0
 phishscore=0 priorityscore=1501 suspectscore=0 bulkscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601150144

Device nodes are enabled by default and this DTSI file does not include
anything else, thus it is impossible that nodes were disabled before and
need to be re-enabled.  Adding redundant status=okay is just confusing
and suggests some other code flow.  Verified with dtx_diff.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

---

make dtbs, copy old and new and then:

for i in dts-old/*/*dtb dts-old/*/*/*dtb; do echo $i; scripts/dtc/dtx_diff ${i} dts-new/${i#dts-old/} ; done | grep -E '^\+'
---
 arch/arm64/boot/dts/nvidia/tegra186.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/nvidia/tegra186.dtsi b/arch/arm64/boot/dts/nvidia/tegra186.dtsi
index b00630451909..705af0373a09 100644
--- a/arch/arm64/boot/dts/nvidia/tegra186.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra186.dtsi
@@ -120,7 +120,6 @@ gpcdma: dma-controller@2600000 {
 		iommus = <&smmu TEGRA186_SID_GPCDMA_0>;
 		dma-coherent;
 		dma-channel-mask = <0xfffffffe>;
-		status = "okay";
 	};
 
 	aconnect@2900000 {
@@ -608,7 +607,6 @@ timer@3010000 {
 			     <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>,
 			     <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>,
 			     <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>;
-		status = "okay";
 	};
 
 	uarta: serial@3100000 {
-- 
2.51.0


