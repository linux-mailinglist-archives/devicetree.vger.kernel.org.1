Return-Path: <devicetree+bounces-197326-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C635BB08D6C
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 14:49:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3F83BA6651C
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 12:48:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E431C2D8790;
	Thu, 17 Jul 2025 12:48:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LGbiqt2X"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 585A42D5A08
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 12:48:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752756516; cv=none; b=Xihl/XACCIvkVcZwqAiLQMPl4nLD0kGhyt7OaNZ6wiRLCnYTvC+S9RKk4rCMAm0/UtoN5nwoygehLXv7lkYh9tZ2Eqvhux2xnYmh4/JTinecZU/k9ltsWKxICCR0IdPuSKnrFf05t9gySdnANsQDd30+UemWj0ld+YLmpfjuxJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752756516; c=relaxed/simple;
	bh=wwP0wgs37G7SIgdBXKyajalMO8uencXdkJwBMyqMQK4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Y53w4zmdab9pzxYnmTvETzdTJm35ULvLnYIjJLIErbTJBVka0fLUpTWqY3FzLuHPenTqDKMt8T3inrktgBoB8Q3ODFfjcZimGk+mXSsJa0W2Y/Zp1dAwUs97Y//wou52/clRynLAVoMMocbhrWq2igLL0P8S7ykValtvXo/0uno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LGbiqt2X; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56HBOGAM030415
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 12:48:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	751t52RdbCcwhdqGfw2MHgsiZQ8ax24R2DVj0BioALo=; b=LGbiqt2X17LP031m
	pxacikIzoEWgrYhQvwMNhiCNOL59xdHJz5aL1u+U+aKHOGrsfuM2B/805zmzKG9w
	J7szGKPuWi/Np7FiRfqbkiO8jm7bB8R9TCO2vKpGPZaZ9DlSYGSJ0yN8QMcT5K/m
	WWOmbPDp4S09DONkrVAxOCktNlcBwZs+Hm7Bwd7VLT8q7o98tcHb4PwNAvmywWJQ
	QE2sts5wQyk8tcxpRnv4kwsP9m5E/2tNk0gKZb4zpdvRmteqHSdQicpjfyLYmPpO
	3Ei06IQj2d7V1sgDzYx6ZjNMlQDuvBfC+CudPkBveTUC0xUZTtwOBAKvHtzm2+3Y
	OTm1iw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47x8x7mgn4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 12:48:34 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-235e3f93687so14741185ad.2
        for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 05:48:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752756512; x=1753361312;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=751t52RdbCcwhdqGfw2MHgsiZQ8ax24R2DVj0BioALo=;
        b=Xm82BJrMXggvw2lO6HeoLRxWv8g6GAYSE7zc7sFk1XWBWhsQC3wTJTYGF+48cXvNb4
         jjLG1cpo9IUID+It6PfbC55aDMRghZ/8mBrZOsPDeLwN+iwnB3gtq+TWWZ8pZRuuFrDM
         Ytfmr4/wLv3UFFhJ2lHcSFwOM5FIVKYoK8K5hTluTlu5nvlds9OHCOWRoLpnf7Ymjxu7
         kZXggw7/3QsQgEkhBEencJkN5Ysintbj3C8z2KQvFEhx1YFfbZjzwO00T8BcV+mssUAJ
         nxbIgwK24VC9jjDQx0NIvAmULyLQ+lvuF3k6gKmq6uVzpz9xKn6ZB98XjICzZCp+FmBV
         pJiw==
X-Forwarded-Encrypted: i=1; AJvYcCWBIgzefP/OsxZo+GKHgF3lGsdhcdy9/3c8ShLqpaR1JotpIl303fQjidVME10KFdZZ2nYjgQnWljz4@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6JqEYKiD6PyYleiGtAW2R91QizqlpMMxoMb30NnpDLuv8iTMu
	DLKspEtAy1VFq3i5Jt0XZn1qPJDG9HlzK0n8TACITjafsdMOFX8IgUuUS5kN6Z1YHyQJS+VUy4m
	dpO5QFQgu5pgCXsSMUngKVTxbIOWJZFxgBxJp/XOgFkzZxdXLU6YtgTGxBui7v4aY
X-Gm-Gg: ASbGncveASGWlGXHl5DPQfrkpWJPtJi8yHCg4qai8olCkSXLKu+4d+ovFq8SJirasEZ
	w98XwmrHvCJ8EdSz2g1G/H9LC6ej6gzRKPuxIGfLz/4/sNIhYiZQkyi+XB8Po743HhsklRuxT5s
	9lz/oOzPcmsFDtrvLUOc7XXc7ZkNkbrvtgjfLoYSmM/ryjKJEYYIWBPIyUR2clrluqJ+OQLiZ8O
	EPHUQImQzgXXTvYeG2q51HyPmt1eq8t/mR+AwGjobZYd4IIGW+H1NPeQJvxk/pgAST6hU5rdEwl
	RK8rnfSAaROsx3w7Y5qYfOi3IcezgUgqna5IxkqvAz53tWTKXqBNfvj/b46fs3fWFD6qkpETJ54
	c
X-Received: by 2002:a17:903:230b:b0:23d:ddf0:c93b with SMTP id d9443c01a7336-23e257435e3mr88941315ad.37.1752756512230;
        Thu, 17 Jul 2025 05:48:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE8DUsFwY4tYypfpmfxBilLBUvP2Z+g2tucXJh7Sk3ZEP6OFjznFBKFx5xkkD6zUVMZmlHT7w==
X-Received: by 2002:a17:903:230b:b0:23d:ddf0:c93b with SMTP id d9443c01a7336-23e257435e3mr88940755ad.37.1752756511748;
        Thu, 17 Jul 2025 05:48:31 -0700 (PDT)
Received: from hu-spratap-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31caf828a0esm1505283a91.42.2025.07.17.05.48.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Jul 2025 05:48:31 -0700 (PDT)
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
Date: Thu, 17 Jul 2025 18:16:52 +0530
Subject: [PATCH v11 6/8] arm64: dts: qcom: qcs6490-rb3gen2: Add PSCI
 SYSTEM_RESET2 types
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250717-arm-psci-system_reset2-vendor-reboots-v11-6-df3e2b2183c3@oss.qualcomm.com>
References: <20250717-arm-psci-system_reset2-vendor-reboots-v11-0-df3e2b2183c3@oss.qualcomm.com>
In-Reply-To: <20250717-arm-psci-system_reset2-vendor-reboots-v11-0-df3e2b2183c3@oss.qualcomm.com>
To: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Souvik Chakravarty <Souvik.Chakravarty@arm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Andy Yan <andy.yan@rock-chips.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Arnd Bergmann <arnd@arndb.de>, Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Vinod Koul <vkoul@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Florian Fainelli <florian.fainelli@broadcom.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Andre Draszik <andre.draszik@linaro.org>, linux-pm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        Elliot Berman <quic_eberman@quicinc.com>,
        Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>,
        Srinivas Kandagatla <srini@kernel.org>,
        Elliot Berman <elliot.berman@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752756455; l=1185;
 i=shivendra.pratap@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=rmo18nL+UB7XAtgXRRqne0fPUU/Z0j3760cEPwsemB8=;
 b=ppLcpvC8rVl1IEadr9ZLl9ZareIhC7diBss7JmDD0pOFm/RzNVRac0cIFzMaJsT3pSWLwEtkk
 xwfXL7h/RO3DNbgHkoFJAo3qHKOrXDxQ7WVxfN1TuspSeNiFGreIQFp
X-Developer-Key: i=shivendra.pratap@oss.qualcomm.com; a=ed25519;
 pk=CpsuL7yZ8NReDPhGgq6Xn/SRoa59mAvzWOW0QZoo4gw=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE3MDExMSBTYWx0ZWRfX6xuVNPUffhtT
 5hLnGI4Ugi0OlUF9RWhajrlyuVCRk67gjo6KzDGe0nrKyXk8qRlr6VXlPesORmDe+bicCkBLAUt
 vDZ+d8mDSI2Uy95yraWdc+Mlq68SnC8wQv4B8ZkWdnsXcq+YWkuGw+gjAbZfBl9U3RYQ15UR0/q
 QTscxDjUCfOH1fqtSEdO2Tqju4uDLEgSQ616UxAFMPwVECfVgqw7Xketo9mMROHAVfWPQye5SI8
 tqr6btPYJq4R9eOLIorXkERhRDj/S79/NsxVc2SKPxKXNBZyG5cldxHhA5jDsrkoA/1N6PZzNd+
 GFICZTBGIbM8MCJ/LQKTRSav8Zgmp1QCsvCHvLRDQwj1vIbBCGuE0Ucz944z/Ci7ve6kunMkueh
 Ps+EFTO089tpbiYRVpFnQFVL+7ev1UgxJPL6iaHR8H5fDJBSs0qoRAhxdiCUK4s+gVpCBG5n
X-Proofpoint-GUID: lTOMfPZAW-ALLyZ41e3faMRuVoY9TSXe
X-Proofpoint-ORIG-GUID: lTOMfPZAW-ALLyZ41e3faMRuVoY9TSXe
X-Authority-Analysis: v=2.4 cv=N9YpF39B c=1 sm=1 tr=0 ts=6878f122 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=w06kbW2hXDg5FjFnD0gA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-17_01,2025-07-17_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 mlxlogscore=999 bulkscore=0 adultscore=0
 priorityscore=1501 clxscore=1015 mlxscore=0 suspectscore=0 impostorscore=0
 phishscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507170111

From: Elliot Berman <elliot.berman@oss.qualcomm.com>

Add support for SYSTEM_RESET2 vendor-specific resets in
qcs6490-rb3gen2 as reboot-modes.  Describe the resets:
"bootloader" will cause device to reboot and stop in the
bootloader's fastboot mode. "edl" will cause device to reboot
into "emergency download mode", which permits loading images via
the Firehose protocol.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Elliot Berman <elliot.berman@oss.qualcomm.com>
Signed-off-by: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
index 5fbcd48f2e2d839835fa464a8d5682f00557f82e..8cf289a3cfc4ac7014885494c27fb003a7258519 100644
--- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
+++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
@@ -966,6 +966,13 @@ &pon_resin {
 	status = "okay";
 };
 
+&psci {
+	reboot-mode {
+		mode-bootloader = <0x10001 0x2>;
+		mode-edl = <0 0x1>;
+	};
+};
+
 &qup_uart7_cts {
 	/*
 	 * Configure a bias-bus-hold on CTS to lower power

-- 
2.34.1


