Return-Path: <devicetree+bounces-166229-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E42DA86A3E
	for <lists+devicetree@lfdr.de>; Sat, 12 Apr 2025 03:52:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C5D908C66ED
	for <lists+devicetree@lfdr.de>; Sat, 12 Apr 2025 01:51:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B541126BF1;
	Sat, 12 Apr 2025 01:51:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Qj92Yo8e"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEB7F5BAF0
	for <devicetree@vger.kernel.org>; Sat, 12 Apr 2025 01:51:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744422672; cv=none; b=cj/l5xDEEFZlB1Dep/dlDqZ60cm8ug5szS2Tk42/tNl/ms14Qp1awRreDxrsQ2/00xhL57+15me+9bk7mvra8y+XbnAM/a0R1tcAIkAA8zbmkRm48aRiydlwtYLvI9OQqFBm3kpAqN3BEe5wLEzQD4iP/RjOLTH2bcZ2i/VdrHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744422672; c=relaxed/simple;
	bh=Oaw5BYsMpa1UPPlpLdEixtK2JB8A6yxRcZwiYYqmxCw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GfINPzsc6mwUxxW+EjmKs9NHvEz87U5cGrtEMl5Y3lCsVaopHy4mfVlHJjGPNuuH8+8y2M5idxLbN7gm+V4vsFZqWmSluhlQrE7TGTn0J1bTWoRa6BAZgf+HB/ITvPQr28x4BzgcJ76iyyQzNCFJbit2VHeHI+ojkd+oSmX2AIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Qj92Yo8e; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53C1pAfg006723
	for <devicetree@vger.kernel.org>; Sat, 12 Apr 2025 01:51:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wXDjDnI/vwlLbmgczBFD5lMgP76iqExSvHFDjdjU4aQ=; b=Qj92Yo8e/+N91FRy
	/T5/wDDpZPvwR8QhdIIph/NCtA/cH4Fa9SHTXJZA05QG1Ot1HfDc5pFtcY8p45Pc
	NDQQE2MuMYAxsKR3F82AykN0reKjWA5i2tA8Oq8LVlyUqhY6i0zJ1zGyPtfkolog
	Eb//UkK07m8D1bsc7ZiPwLvPdeWnM9a1Nmf4McTVJc2vS//gq7obAisgmkAhg6Fz
	Lt7rczteIiiEZTFCCXgj6gv2poHVCZ6XZztyAYJWF/uOkYFcuhmn2/YDG5n5ahWZ
	ol0OrncIWSw66v5v7q4Tz6enwNYVbi6X3nhfWRVtWClnBUQv6QWgd9bZEOhoEe51
	1pFqQg==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twd34205-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 12 Apr 2025 01:51:10 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-7395095a505so2016122b3a.1
        for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 18:51:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744422666; x=1745027466;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wXDjDnI/vwlLbmgczBFD5lMgP76iqExSvHFDjdjU4aQ=;
        b=YJ4rsk74leXTH8HLtZS/w32y0XIzbL5rlU6pr04YCTKg3cy4/THpjW8pbd5/QOaHqY
         nZKFHoSNQ/lQa4zDmYnXW/ilfSc4f1KGTM3P504WntcKfCDtHvZ81ApI0zRPWoOd+Mbn
         R9KQcn14Yu9L29my9R1ewzmuhPLIxYlaP+p6pvqeTGYr1GohrvKHkrzqBjTk5nKTDTyI
         SV2cO8RUNUHLYm8FbQmXaCV7MJsgTjsivhvZeMP2qZWJ+NoQh7xgWrjE9OraDEiDvX4+
         ftR/EJwX/TzGsyNG4w3lMEM/vx92rA5a31x9hriN2cIVg7sfGBjbpa6yp+onOQlMkDcU
         to1Q==
X-Forwarded-Encrypted: i=1; AJvYcCU1PM4gg5lyOr+kCtS5H4z8gZuhDaAd/oxew3Plf7UMROXDp/0oj8TLyz7TAutx0BO/AWEE2V7ORD0G@vger.kernel.org
X-Gm-Message-State: AOJu0YwtO28dxxDKHZwDXNPfpeqXkUqAszMkn/EY3uoiEDXdj3fjtSP5
	sbBfR4fMdFSkkFajDqWCDuwnl+Cj3BSZYZmvF4SanEJ9fixw3qSV5yBL/HS6vITtNtdLNrr4HwO
	fc6lrP8msLlG+/3C++LTYXP74ZMsGcskBefusUrCEGB2kLaPQd9l12kYZZ+Sm
X-Gm-Gg: ASbGncv8BOnOc4YJ0gS95oifa7gF4Yng3REnVENCgj7HpuNo91OtfPswpCr3JW4Vzmm
	sW2SutVaMJyKgFj5eOJaSAyPybrFoyj2TSO2kl8ElQvUldNFlCH8ktLaWCDwzM2kMAv3/832fKl
	L0pYKtNmqroYwni69hMizFZytXxvPUOGLkqoYRiQ5KvxZKh8B/jR8F2yjg2EAmgW90C4M2oX9/R
	VS9+AZK9xwxqS0WsHqH16Eb0CEONK2X+wzwGr+qbxWyniBk6rdQ6tr9ESbW7D8INQPHsQzMdk+d
	Qv0oFi8uvMD5/qLKsbuNfw88R+opN9eAvVG6rlJgBtJFxtY=
X-Received: by 2002:a05:6a21:1346:b0:1f5:63f9:9ea1 with SMTP id adf61e73a8af0-201797a2f99mr7734239637.13.1744422666152;
        Fri, 11 Apr 2025 18:51:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGhQZCbkxSI6PDwHyqW4ekFZNhMWVyKXBuUhJd4fpDyIEb/nfuhTQtDM0Fm4R/yM1QyukaHVA==
X-Received: by 2002:a05:6a21:1346:b0:1f5:63f9:9ea1 with SMTP id adf61e73a8af0-201797a2f99mr7734204637.13.1744422665819;
        Fri, 11 Apr 2025 18:51:05 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b02a3221832sm5516825a12.70.2025.04.11.18.51.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Apr 2025 18:51:05 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Sat, 12 Apr 2025 07:19:58 +0530
Subject: [PATCH v5 9/9] arm64: defconfig: Enable TC9563 PWRCTL driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250412-qps615_v4_1-v5-9-5b6a06132fec@oss.qualcomm.com>
References: <20250412-qps615_v4_1-v5-0-5b6a06132fec@oss.qualcomm.com>
In-Reply-To: <20250412-qps615_v4_1-v5-0-5b6a06132fec@oss.qualcomm.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        chaitanya chundru <quic_krichai@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Jingoo Han <jingoohan1@gmail.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>
Cc: quic_vbadigan@quicnic.com, amitk@kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, jorge.ramirez@oss.qualcomm.com,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1744422605; l=898;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=Oaw5BYsMpa1UPPlpLdEixtK2JB8A6yxRcZwiYYqmxCw=;
 b=JL52Wfo8pw6/UQa9GHkETh5g5ITH7gQC8LdiDoKxamZX6i+6eyllC8XztRV8oSG5TFAo1JJWZ
 wIqXMoNPmYOAbk0D/dg0FiI8ZOyVMCK0Y/WT2UnCaiux3Sxz3X94WtI
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-ORIG-GUID: bm-PAGSp5KmI7hnoYUNXYM9-Gb1nQMeQ
X-Proofpoint-GUID: bm-PAGSp5KmI7hnoYUNXYM9-Gb1nQMeQ
X-Authority-Analysis: v=2.4 cv=NaLm13D4 c=1 sm=1 tr=0 ts=67f9c70e cx=c_pps a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=5PcvmwL3LSb495PBagkA:9 a=QEXdDO2ut3YA:10
 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-12_01,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 impostorscore=0
 priorityscore=1501 adultscore=0 malwarescore=0 suspectscore=0
 lowpriorityscore=0 bulkscore=0 mlxlogscore=848 clxscore=1015 phishscore=0
 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504120012

Enable TC9563 PCIe switch pwrctl driver by default. This is needed
to power the PCIe switch which is present in Qualcomm RB3gen2 platform.
Without this the switch will not powered up and we can't use the
endpoints connected to the switch.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 5bb8f09422a22116781169611482179b10798c14..b974098910d5b3656404bb839176baadd059ae9e 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -245,6 +245,7 @@ CONFIG_PCIE_LAYERSCAPE_GEN4=y
 CONFIG_PCI_ENDPOINT=y
 CONFIG_PCI_ENDPOINT_CONFIGFS=y
 CONFIG_PCI_EPF_TEST=m
+CONFIG_PCI_PWRCTRL_TC9563=m
 CONFIG_DEVTMPFS=y
 CONFIG_DEVTMPFS_MOUNT=y
 CONFIG_FW_LOADER_USER_HELPER=y

-- 
2.34.1


