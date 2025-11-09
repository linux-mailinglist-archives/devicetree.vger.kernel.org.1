Return-Path: <devicetree+bounces-236413-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A789FC440DF
	for <lists+devicetree@lfdr.de>; Sun, 09 Nov 2025 15:40:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 254F23B2C07
	for <lists+devicetree@lfdr.de>; Sun,  9 Nov 2025 14:40:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31B5C2FFF95;
	Sun,  9 Nov 2025 14:39:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Qulzs5RI";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jZgiIy2o"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E2682FF16C
	for <devicetree@vger.kernel.org>; Sun,  9 Nov 2025 14:39:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762699167; cv=none; b=iawdIiHXso11mhnhHQokcpGqRGAxOZObPITytDm/Gf5DvpVJ8eJHDZKZHjCBb3Qptzao+l1H+EOxkZC+oE23uSEszWYUn1BmAhF/x+EydBtQzhZPkcP5Mspf+r++ZWiuvzK8zX6RreI0eu7158W+cnp3dgN+4m7hcpcDeVASTKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762699167; c=relaxed/simple;
	bh=L5z7An1rQfRgBI3aAbZ9RvjHkAJiYPaDq4L3GKStdk0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=p1g61RODKECyqd67TdJ6ZF3FOEZ7dHWOqs9i+dME/hbiW/guHXJHPAKTfazK1d7/7v+Rw6LkfLnDJhSxba3DqaHKVDEGMLFjilMOVhI65UocA5vU3MbZrymQMQhG8RP3LUuFt3IG86vtSgBP3eg+lhR9N4qadx3yRh0HpA0TkrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Qulzs5RI; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jZgiIy2o; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A9C0prk558023
	for <devicetree@vger.kernel.org>; Sun, 9 Nov 2025 14:39:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kca6TC9CdzvVOcI/VsKM/bsiay1QMyWDYIKPAfu3ShE=; b=Qulzs5RIIcnCNQvw
	3YASa0XskvbnqqKy9Et5ewjLMICObYe5WyY4Dp9KLZDrt1fKTRPPJEVoF+hKdhnt
	1nVtb5sLIeeEsMQQs+OWfbBzB2L8tzmb9g3O+ega2uaFOsQq/GL0G0CrXp0NUdmE
	CU0hQj4rvUY69jpAJzSa14a5JbXYJt909h1ZPYHQTz0Lmb52KCiToZkj8gG/6ufp
	ueLmRn13RSa+g6vU/HD72oV0TCUjkXUWnjkwQPTU2PgtKwVJUKmTAGO7gVmtgkHe
	H0wZejM89vC7pojazs4Rq8swLhC/zCNkrxchus3j37ug7KIgNnp3YLDsW57qCyr+
	Ij4Iqw==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a9xuej7wn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 09 Nov 2025 14:39:24 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-3418ad76023so5629309a91.0
        for <devicetree@vger.kernel.org>; Sun, 09 Nov 2025 06:39:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762699163; x=1763303963; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kca6TC9CdzvVOcI/VsKM/bsiay1QMyWDYIKPAfu3ShE=;
        b=jZgiIy2oAs2ilqRqsJYytbJsNvkw0Q9vCB+5tDijCJxacGoDk+8u2+mK6upMG1fXRv
         DUxLHp/iug9IihWlmd3dNMHVHHDd7XMVO+A1nEZ0Qd2Bahiutb2zQ4Fr/AkamhvyhCpa
         0r1Fv7P1P4UUwBoyhdp9YMrSH5TdiPCAvUl8l6ZgN/AVuVx9mt5ZURSnBkz/QKuqm8F5
         7M/9kryJsOej60g7FLDP91onY75cg4cSPLOYsBzYPxQK7XgP6X8INUWI5Wc7IVHGbrdd
         1dlV8yQVRt/NXW2iLVHIrj+U/u2G415OV0+gXdGKPoX6tpvbIh3O03CbWH8yxjGp2zNz
         W6iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762699163; x=1763303963;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=kca6TC9CdzvVOcI/VsKM/bsiay1QMyWDYIKPAfu3ShE=;
        b=QKS1HL/TSXnGW7TX1Ny58//bt9z8AxYWFTGRP1iGpC0Ji93yrNn9punpjFuO1o7LV4
         JW8C35XfMVB447k4biYGEQ4k3jIy/8IeFmVaNIUEBkA/OkpLVnZLLo8g0KzYEUF5azQx
         5ewnrVWFvV/gUPTjfUqjFQ441sH2mkiOrcK7r5LxuoYT+/90ltDWTs75T2Vzb9d1Vbhx
         9qA1v4HEV6fF3WwOV5Rv691n2hOxSxI9y9VIZ30LBtoVeAzh0aaWlUwRvAIOg/WYsDMd
         wFisENv3Bu4A8ZG0hxtYUHPD398i1Vt3Mgm9HcTaLGf2niyUCaDoX85WkR9/veEG4c8s
         4JIw==
X-Forwarded-Encrypted: i=1; AJvYcCVLfHNoCO2Xet3vqY+djXuRLRcvhzrb3lEFUCOwM4lFq7T2hw80Wlc+rquHoSdEHKfEqwi0ZTbZdyA0@vger.kernel.org
X-Gm-Message-State: AOJu0YxJM7jgE7sqne4dpcOdPtlQAlmBArOzU/Kx+1QfjtJj2AJVcOtg
	0OXN8j4UwwCWVGO3n2raMr5vSSsGeMtXh28m1OuGjmBvBN1ByGRQ82ZNoLA24W2ShaB1zo1SZ5i
	sBJe5bWQcXFbTGa0k2vpwswEXq0dOYmmz7Q3T0VnYcbpojKgToHYNAEb0XKxrIYIz
X-Gm-Gg: ASbGncvFlvvYoLZs0gq8YtjEGGY4MSjv2Jmo77stZ8Cab983QPfYzOmf6kjkyQRsL5r
	SmUUV9f+GTwKvlNZl6LKPgsxsJLGakSVZMx41I2JeW+KPgXHNr58EJ0P9Xs/OBPjvj90hEPIZHR
	fQiaUexMJjCAUS1ckX4tnEHcloIQXuQ2VzcUJ6QF4zjAvldZEYG1ZQIawBCrLTRCSHlwzW1sF10
	rY3H24JBKLltpEc46t5faGlP3w7cBE94WLh1fJyUZZC+9Mj45ZL/fZcJsJA+gWUn6lUjJmUC3pN
	E8GnHLwvYX9j7xQATlSKry8tMo12LjJcNfBsPSTCqHQ9pT30XCwKORDFk3U7QLgFpWa7juGBy1U
	549yUetTI6dYKs3k78VhIcG1+Ys2uZAAKo4E=
X-Received: by 2002:a17:90a:e7ca:b0:343:66e2:5f9b with SMTP id 98e67ed59e1d1-3436ccfa18amr6671651a91.24.1762699163443;
        Sun, 09 Nov 2025 06:39:23 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHVvyQ7Ie5qv51GMyMWvjT+5IIfkhTgU5ORFWh8Z2JxruCZKThIUurXvRJ2KKFN2TNS6U0/pA==
X-Received: by 2002:a17:90a:e7ca:b0:343:66e2:5f9b with SMTP id 98e67ed59e1d1-3436ccfa18amr6671612a91.24.1762699162859;
        Sun, 09 Nov 2025 06:39:22 -0800 (PST)
Received: from hu-spratap-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-341a68a68e6sm14845401a91.4.2025.11.09.06.39.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 Nov 2025 06:39:22 -0800 (PST)
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
Date: Sun, 09 Nov 2025 20:07:22 +0530
Subject: [PATCH v17 09/12] arm64: dts: qcom: qcs6490-rb3gen2: Add PSCI
 SYSTEM_RESET2 types
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251109-arm-psci-system_reset2-vendor-reboots-v17-9-46e085bca4cc@oss.qualcomm.com>
References: <20251109-arm-psci-system_reset2-vendor-reboots-v17-0-46e085bca4cc@oss.qualcomm.com>
In-Reply-To: <20251109-arm-psci-system_reset2-vendor-reboots-v17-0-46e085bca4cc@oss.qualcomm.com>
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
        Florian Fainelli <florian.fainelli@broadcom.com>,
        Moritz Fischer <moritz.fischer@ettus.com>,
        John Stultz <john.stultz@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Krzysztof Kozlowski <krzk@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Andre Draszik <andre.draszik@linaro.org>,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org,
        Elliot Berman <quic_eberman@quicinc.com>,
        Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>,
        Xin Liu <xin.liu@oss.qualcomm.com>,
        Srinivas Kandagatla <srini@kernel.org>,
        Elliot Berman <elliot.berman@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762699073; l=1185;
 i=shivendra.pratap@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=aXB/ZtnzKwJgS2fh5ZS7UmEMWdC2tYWUu81bgPi7sZA=;
 b=cGRfGGTemz5mYMnHzcIsN7x+3Xmr9GhPgiiKRvGsHEkgcZwXovPN8MabUz5/JPID3VZvw/NR1
 ZRO8BE+Wor7ATT2oXZpYWQAGPs+8aDB6Tz4FhHXDk06RqE5h7lgvJnC
X-Developer-Key: i=shivendra.pratap@oss.qualcomm.com; a=ed25519;
 pk=CpsuL7yZ8NReDPhGgq6Xn/SRoa59mAvzWOW0QZoo4gw=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA5MDEyOSBTYWx0ZWRfX5KZmc7xLde59
 jsbCNb/lOmtMprHWzuV0kDsE9xu9OpDzi9UzCCnYLHufE+meqFKiGYhJTrsGLsCMc96ZUBWpVYl
 qOl+ttCfWaKCmW07qeGYWmZ1drBwjLWNWHuId8cJ+iO0cPxXxz9WdfALr68qRioKFPWztbqo7uo
 CXgcYehck949Qx6t2rP6j/2/TwBfs3VmSKI4WKFBNL13hyI6WfmNDYS557j0tvyyppktBTZHSP+
 bOqWtxJXLhhdb0B1rRwTboIQhCkuE9B3OwQGQJzscP7d377Rg+LzRQOyPPcuwDhSs0bTSM3T3rY
 5W2kTrLA2EoYhIUIf90XKJlDfH20sN43ZhikmtTX01eLxIyAxAXit7u8JMPaz/8A0TFlUj5yf/z
 ortMc2RTynHLlvv9XSHuyAJpdrxJAg==
X-Proofpoint-GUID: Mqpe5RGLqx4HcpOgrQXiPUYjBjR6TsHo
X-Proofpoint-ORIG-GUID: Mqpe5RGLqx4HcpOgrQXiPUYjBjR6TsHo
X-Authority-Analysis: v=2.4 cv=BOK+bVQG c=1 sm=1 tr=0 ts=6910a79c cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=w06kbW2hXDg5FjFnD0gA:9
 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-09_06,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 adultscore=0 clxscore=1015 suspectscore=0
 priorityscore=1501 spamscore=0 malwarescore=0 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511090129

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
index 721a26d49ccaeb1429e2cc1c3a5c8d9517da3be6..cebdedd5d614b9efb6dfbee91dd67f3c3e322a38 100644
--- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
+++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
@@ -935,6 +935,13 @@ &pon_resin {
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


