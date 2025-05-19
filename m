Return-Path: <devicetree+bounces-178348-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 03B5DABB7A6
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 10:45:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 887453B0166
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 08:42:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1737B2797A6;
	Mon, 19 May 2025 08:34:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PPPwF1kx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E09027978C
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 08:34:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747643685; cv=none; b=Q2AH2jtmWDer73wt4Toj5XtqvIvBM9R9aWlAfHF3BPvG4bTC8nWt1j3IuzqwUmhXRI8Tk1EqMLXPEJ5oQY0xakNQVvd4XJJ24EO2tvgxvYsg9KLxpxYh4S3yRO3DVyJDT2yc1FEQG/QaYFBURpMeyzA7OUger32yjIaquP9MXHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747643685; c=relaxed/simple;
	bh=fZC5iEDyN1WRoOmVWJh9DWv+C3+DDRc/1OmPFIpcscw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ZZg8ao3SvVOi13h3OuFNIi1xv6FzxxaYPw+FQXU+pYGno+f4cuH9i6FvqG68RUeLwfWmHNCXh2/61FHVd5MsTVP4uabKvwk1qg63ZvjkNo4L3Y9KuU7UbY1IBh43PpVtaxKHq7abYhCpaqeFJCUP/V1oczMiqujba08nj5aLmh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PPPwF1kx; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54IMtCIo026158
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 08:34:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/5b1D60mKVscDIbFquf4+neBMATt7Zc0JngQlFyNTPM=; b=PPPwF1kxcpXFaOyM
	bGk5xZqzz0LD6y1Yds15ogk5dQIPwXPh/M7Sf/Xp6/zGj5AxMdZbFQwwB8i/Ajxy
	GhQv6llV+ckJ9tFK5p50mrX3mPz1zmpSejKoiaoWUg2zhjr12wzZqOIjMf9J3/17
	Ngc2dZoglecWKEU9A8WSGJqBoyfFGgZnDE9DoGMUyw6tAKTstLAttrVOkkrw1H/d
	e+3J2TubvdxC5d4/1BT1D9kaTVgJyJlUK34zeJqWb/jLOke3kXt3pGNTIOrhtSx6
	AroQnHTYp3x6Oq9oPHoJhMSnDnBBw1yusv+iwhj4FRglsQKOnYjPkdAjcANBsawh
	ms3pUQ==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46pju7bmm8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 08:34:42 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7375e2642b4so3055927b3a.2
        for <devicetree@vger.kernel.org>; Mon, 19 May 2025 01:34:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747643681; x=1748248481;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/5b1D60mKVscDIbFquf4+neBMATt7Zc0JngQlFyNTPM=;
        b=CFWJIXBQiO9rvkKvxwLxP+5BPF/dPFLWDef21FNA92FhwaVSlhydU2FnPxOSyQyUn6
         3IsOSfzoC6vLiMq5k8sP85IZ7giMWlPwyIOfpPvNZ7zWpV277pqrXlCK4iufQWzWAVe1
         KO8B18afNyT0WrzO14sfmgG8ZBQz7YiykNX4YlCTTqrWe+X/tdW63Mdi9jJqFxx5+kbP
         KjWjnareVdcQ5DI4UP+j122ByKYPyCnvH3vEtqwu1ynMxPqVyspiTxsSu7mLA1K65uLZ
         dRRlcQiO9uMmeyBa7giVhIGfaVXWGl8snprGM8gmehJIz9nuBVe6P+QEPChKLaMnTXmc
         3mjA==
X-Forwarded-Encrypted: i=1; AJvYcCWUax945vHVkyQ6UbB+rQUNZoMqwzzFpg4pgStMOi2CcVhGdpE5U0UsnwUzj+TFUEX8TFUVuV2Jq1K9@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8UwF7xI3mZf/QS4V0/G/JDN4QsSd0bsEcnNHJdXHVaqgrBe2w
	IMmKutwN+ocjgHqb44WALjdr5IVeEBTcdm9PK/nWDSVztQAVv7C9foTEUAjuww6wGNfyOfuDo7A
	RAkoUew8KoGFumq6UT0KmpK+MfuSWMLVyQbPm/D41Bghg4Gi7SJ5NOwufBdkDibva
X-Gm-Gg: ASbGncsq8iv0eEnQ7bKYUksttKb/9TjRu/q4nbqC0RVQfzkTd6CLVLfy6//SaXIoTYb
	p4Y3x6SviV3HR8Ww9yl+q7MsC46908Ulsi9EBQihBIVa5lGZPAKpDQ7FXH4YATc91oc+v9cSxQn
	1C/Etftc6xrYc5+NMQwGm7CKsF/7n27zMLjRAUQASda8w9/kR1hY71hsiAR1DJAbWZxBuYqjFj9
	f1A3+8qC9LPeerw6cfFcTkvoiHpY1LbfgFj/uur6sUqdwNEAOOkiEvv7Mrggu3aoNoZbSneNYJw
	xIV45zicFk1x4mHTdTZTj/Bqf3MwEhwFH1BzbTFZqYmprBakNeNiCUHqqs2AdE0ZofuPtlGohsk
	+FL3uA5NDBP87/YL2MLSsCmSp2GZ3WB2ofbTuUrim0JqmQDk=
X-Received: by 2002:a05:6a20:6a2b:b0:215:d38f:11d1 with SMTP id adf61e73a8af0-216219bd5aemr15696611637.29.1747643681049;
        Mon, 19 May 2025 01:34:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH1QQZg5f/JnejbZmIH8vrFWqCqoHDMyJqtadf6lkZXSiF2OLDv4iZwOSQm+b4Pz7CIeVQoLw==
X-Received: by 2002:a05:6a20:6a2b:b0:215:d38f:11d1 with SMTP id adf61e73a8af0-216219bd5aemr15696571637.29.1747643680645;
        Mon, 19 May 2025 01:34:40 -0700 (PDT)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b26eaf5a2cesm5705475a12.9.2025.05.19.01.34.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 May 2025 01:34:40 -0700 (PDT)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Date: Mon, 19 May 2025 14:04:05 +0530
Subject: [PATCH v4 5/5] arm64: dts: qcom: ipq5424: add support to get
 watchdog bootstatus from IMEM
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250519-wdt_reset_reason-v4-5-d59d21275c75@oss.qualcomm.com>
References: <20250519-wdt_reset_reason-v4-0-d59d21275c75@oss.qualcomm.com>
In-Reply-To: <20250519-wdt_reset_reason-v4-0-d59d21275c75@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1747643657; l=1279;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=fZC5iEDyN1WRoOmVWJh9DWv+C3+DDRc/1OmPFIpcscw=;
 b=Bgjf2iHKk0lwDDhpu/9ynKhNsCD/0q5OQzljDVtG5yvVk6VDs60hLeVXDG/tF7epQZdd44u/i
 Wq+/YSHPFBdBu9zvRIhcplEw6J2GplK3Zb9uArZwi0gFTqLWXFjUixn
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Authority-Analysis: v=2.4 cv=XKEwSRhE c=1 sm=1 tr=0 ts=682aed22 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=WbeaI0-OC7IQdSlKmUMA:9
 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-ORIG-GUID: eNt98A-x6Tj85J4PuoMT6fmHjsyyHHOF
X-Proofpoint-GUID: eNt98A-x6Tj85J4PuoMT6fmHjsyyHHOF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE5MDA4MSBTYWx0ZWRfX9+g3lNkNVj6F
 3Gpph5fGQSMF89M42gDxNZdoMx6IeDvKBOe5Jo+hxjPTHJnLnTJsK71J4vwWLhyXUZXPlX8mQfb
 vJG0sVNIyv5y+55yQLmIXwtHjpZI5JySQ3VwG2w6PJYZuUQKxxItqz0D2gp0Dx+MGUumjnW0SFO
 KAHLf9WupZL9WpuZvN+uedY3YWfLxAq/1eCeBfU3kEP1pSdj9CEYCHN7rkwJ4noxRqmKQjCBPlr
 kzwGLUl+yRGvmuyfb3WPEtGhohxuRwDE1LswARCsAYztol5CkI4XFKRdnvv3wKdKLxe58g/OUrc
 GZaL4+WoJRovtsVzfVw8ni/eKv2vY+slSuV83BAIC5cnCXawSErInQ4zwCeZzlJTeplIYYB5jss
 0FsOZgoVVcf2F/eImH1pfskUi0pluUTpaf3GKScyGWcWJIVyvfTWv+A++mMssILt9xAW4R2X
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-19_03,2025-05-16_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 impostorscore=0 clxscore=1015
 spamscore=0 suspectscore=0 malwarescore=0 adultscore=0 mlxscore=0
 mlxlogscore=888 phishscore=0 bulkscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505070000 definitions=main-2505190081

Add the "qcom,imem" property to the watchdog device node to enable
retrieval of the system restart reason from IMEM, populated by XBL.
Parse this information in the watchdog driver and update the bootstatus
sysFS if the restart was triggered by a watchdog timeout.

Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
Changes in v4:
	- New patch
---
 arch/arm64/boot/dts/qcom/ipq5424.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq5424.dtsi b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
index 4f18ea79502738c2b9cb4b13e8eb4ac4ddd89adf..8952d769dad4ec4635759d6eae8344aaf1d8a79e 100644
--- a/arch/arm64/boot/dts/qcom/ipq5424.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
@@ -380,6 +380,7 @@ watchdog@f410000 {
 			reg = <0 0x0f410000 0 0x1000>;
 			interrupts = <GIC_SPI 0 IRQ_TYPE_EDGE_RISING>;
 			clocks = <&sleep_clk>;
+			qcom,imem = <&imem 0x7b0 0x5>;
 		};
 
 		qusb_phy_1: phy@71000 {
@@ -486,7 +487,7 @@ ssphy_0: phy@7d000 {
 			status = "disabled";
 		};
 
-		sram@8600000 {
+		imem: sram@8600000 {
 			compatible = "qcom,ipq5424-imem", "syscon", "simple-mfd";
 			reg = <0 0x08600000 0 0x1c000>;
 			ranges = <0 0 0x08600000 0x1c000>;

-- 
2.34.1


