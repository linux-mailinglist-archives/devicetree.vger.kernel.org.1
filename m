Return-Path: <devicetree+bounces-232551-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F9A7C18DED
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 09:10:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A0DE44EC92F
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 08:07:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E890A315D4E;
	Wed, 29 Oct 2025 08:05:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GUOFph9W";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="I5uTtXS9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2FF3314B72
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761725155; cv=none; b=Tm/kQbyK1/W6lSj7rM0YMuZdcK6PnorlwI1Pu8kzARe/Y9DEn4KnrLCSjsSu/HfIJO+1asoZltOyaLkT51HjrPerrhkRaiGcVXB6aQZGE4go8AVaZvWQ0qWl0zlrTCsQLi7n5f89WN1WtCBazvljD5JYlarUW6eKhP9BpbexHj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761725155; c=relaxed/simple;
	bh=CKt8Skmgsmi0xiNgmGVCB0ByG4/WRoa7PomttZXz7T8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WObpplEs+bn7S4UGQMm0E8J3oI5oAjfhZXsmoR6cmZTqD5608eQREWo02WY+O1S0J1uVrGPVYxU1eWmVZKvsi7weO4QgClkFBkOQxDf3Mai3J84yDCHTEUAMqczLwJq9uKEVqSXqiCvxqe22vunqCqeeq+67XMNfo3/mtbGTXlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GUOFph9W; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=I5uTtXS9; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59T4uodL3757466
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 08:05:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9NX5wX2YhjlH69BNTyfzdigy0bOKooGYLfSt5kediBY=; b=GUOFph9WbtWcfYcn
	dWH9N+oLNxurnVngya+Plj1u7SIm/5vW1dtefqT7xFXud7iV6WGLhiHf3LUdwRTp
	ZpqCKYEd1K/8tjaY5JbIy7LWbV57TU4LqAMFOuBO/z4izQcPy5wdk6jktSOfT4Ia
	aq/b1R5+kZbIsIv7Pf0c0IFLwh77BJy+xYNOsWEt3+Le6OsyWJlJd/fPytZqNnLy
	4YPLRzlW5uwiBG4LzDP2uJh+v3hC9uoESw9/up321gb+5XrIh//8JWUG+aAqRMg8
	yj6IAUGEqpAIEbiUiyKJeUY0pQUn8/tLZSmIrGuf/QK6echwdgx2TS5JdLc7wfcr
	pqRnGQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a349y1qdq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 08:05:52 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2904e9e0ef9so129391605ad.3
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 01:05:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761725152; x=1762329952; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9NX5wX2YhjlH69BNTyfzdigy0bOKooGYLfSt5kediBY=;
        b=I5uTtXS9qNV0QVHGVKpkG9fwvDr3yp9oxJA2eRkkGSgkh9UjiUF8fsfFs+HLUpOEdZ
         GglU/fozFWicOm4OI8CUHJntfcOnLsRZhRxpB+Vudc6fyu9b44gH+xmjdj8urZtQgBGo
         /abc7RPczlOsZUQqZ7HR29bs7GaYXdB9Fna25y2A0utfrGohfDROHS1Zxrxq3yeWDP/7
         195MiEziePaGY+8FxALJSvm609DDjLNKmIuW/Ux6Z8H9vQzDLFZylLMPdyIYIdZvom4Z
         c5jXR1H04G8aIRvyMMqtzQPwJrxwDa42fjHsmBzSmMHY+isCcf2muC0cG5wXQwui6nOV
         7x5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761725152; x=1762329952;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9NX5wX2YhjlH69BNTyfzdigy0bOKooGYLfSt5kediBY=;
        b=wd065EsJz8epArV+8bEHfpkOa0NkbmWcP14kJOB8fxXPBVqDj4uPy+cuhFIZZbulYS
         vaOMrxnq+BHFUCXTpf+ucHm+Ea21GRUuq2rqLXGhoWOgEba29V6MUR5vsomwT91F11mF
         mXCRGlbPuc4D3rziLuGP1ls8/q7MiCJYwFxdTtD9z6iWYebNU9Jti1zBD8QoUE1IizAr
         B9/I5iL0RASZsFRwUhjSxa+PtA4l2zBL8Vv/ysmJS98g6MqhzmTmRdAU41Hx7EBcjeVP
         ChFiCGhUE7lBg7uf1wVP895itVhu23Z0E1ZLfrT4gQXeZtxyCMA6KQqc8uTBwK6IseE9
         NIRw==
X-Forwarded-Encrypted: i=1; AJvYcCVXtjbMSHy1adDAXqgL0U1lwsCd+W8L50yz1inayxiDJKEQk2S8mxhmGxNaQ0I4EjiMWilJFTQX3JdZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yz27OBozoUa3IRkW2WiHF9uCQeFvNunLzQGEPade+IbHE+199GU
	awhzZcOA85BG6Hvlnv/n53RNoGAMhRa3f3Cl8hH1PlpTVxAQywmKjMI+nVKb8vfPM6Kz8USgTYE
	UWPOoZP0u2NB91SzoMyYMWIR2nf/sqGLaSGzxKsMnQlTaw17V4EFXICPKiMA7sKCE
X-Gm-Gg: ASbGnct6uPB5Q6B2CrRXP5E4ZIHzysEKbAzxVo8wcOmgPQgl6IlDOK/k90jc6jnEfFX
	9LCRyuhGGvZPl9+OZFyDwh7EA+l5POjMAllAWQ3mjnCU0UUxcffi23Hs85fmgjrDxyleKe9hys2
	gtOF9XwXCcSgGt948zxrpELQR/3LfSSOOa8gFGFrbo6oiqTLtyikM3SP7UMAu2s55uNF5RW6hlg
	7ttYTLgo9lp8pilGL0lywEsR6NNZtZ9p1NFQbQemoWP9GYSYK7B+MJWEuFzDzUXEZj8Hz5t58+C
	zvaY3ZzIIp7k2EGdGeaAE6ViHGXCl3KOJhhz85E+PVd8s2YDH1BRFZ2c783gq60jzx4GQlBdpqc
	kj/RsbU6x2bF/6f1EJh6pQ2i5ILTkNQAGub4pINuqHr/JQmhW3Q==
X-Received: by 2002:a17:902:c411:b0:26b:da03:60db with SMTP id d9443c01a7336-294dedf453bmr24761515ad.13.1761725152059;
        Wed, 29 Oct 2025 01:05:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFpC4Yaz06BQLmNZjQOHk+DUr2aZgqq8Ytc//6fK2f6hDjcm6LdFNuXkxUgm3UGJLFIDbAaGw==
X-Received: by 2002:a17:902:c411:b0:26b:da03:60db with SMTP id d9443c01a7336-294dedf453bmr24761145ad.13.1761725151516;
        Wed, 29 Oct 2025 01:05:51 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498f0be0esm141754705ad.96.2025.10.29.01.05.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 01:05:51 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 29 Oct 2025 01:05:43 -0700
Subject: [PATCH v2 5/7] remoteproc: qcom_q6v5_pas: Add SoCCP node on
 Kaanapali
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251029-knp-remoteproc-v2-5-6c81993b52ea@oss.qualcomm.com>
References: <20251029-knp-remoteproc-v2-0-6c81993b52ea@oss.qualcomm.com>
In-Reply-To: <20251029-knp-remoteproc-v2-0-6c81993b52ea@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761725143; l=1580;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=CKt8Skmgsmi0xiNgmGVCB0ByG4/WRoa7PomttZXz7T8=;
 b=zraglLPDxf1FKILsB9DgQV6I1xCTmrtSZ7BHX/DHCEQ7LWe2ccah/FiVFuUGYjOFWgT4OaEzJ
 xFTNEcPE+NuBfoVVlXVkPoj7L5kbV6xN+1sm6wPn9uVHEhpZn2C+FVk
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Authority-Analysis: v=2.4 cv=D8RK6/Rj c=1 sm=1 tr=0 ts=6901cae0 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=-54vo4t_4OUFHp6kYXwA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: gxIjnFmkYNBFgE35w-b2s5CaHgWCKixf
X-Proofpoint-ORIG-GUID: gxIjnFmkYNBFgE35w-b2s5CaHgWCKixf
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI5MDA1OCBTYWx0ZWRfX3DYw5B5AlN2r
 kQLag3W3oJkdClvODSYRE3ZKIny4hob4kepy7XmaGosaLlpCfP0ZhQIdKZIGFXXSS6RC611bCdb
 rtUbv5gsU1m4hmcUQcofsbVTSMQIwgvDMFxl/xA1bGdJmeFjfjLLjKi1DaIdD0+TP+7mB4upjIg
 IxeiM6bAU8zlggIFIAUAEZ3iArflFfmaUuVEmdyNfi+0pCs0Y7RSdO7U71LO/QLA9atcB4mHTlp
 lN9RBQ6abfVykTyLJEhVx52OilHNr38QUDu3Scx5Q0UXmDBpBfzwCQrniY00b7/xgMKhxHd8WR2
 XIsKd2XM/sMnWQHWWU1E+AKVRgoo+tahPiyWrWw4cEw6Xja09ydnQtEDQUrzaJiRMWmhajc6Dwe
 vjJ4VItG6dYemRiYa0uR1FvNAdOlkQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-29_03,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 adultscore=0 impostorscore=0 bulkscore=0
 clxscore=1015 malwarescore=0 lowpriorityscore=0 suspectscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2510290058

The SoC Control Processor (SoCCP) is small RISC-V MCU that controls
USB Type-C, battery charging and various other functions on Qualcomm SoCs.
It provides a solution for control-plane processing, reducing per-subsystem
microcontroller reinvention. Add support for SoCCP PAS loader on Kaanapali
platform.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 drivers/remoteproc/qcom_q6v5_pas.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/remoteproc/qcom_q6v5_pas.c b/drivers/remoteproc/qcom_q6v5_pas.c
index b667c11aadb5..c470b139afd1 100644
--- a/drivers/remoteproc/qcom_q6v5_pas.c
+++ b/drivers/remoteproc/qcom_q6v5_pas.c
@@ -1515,7 +1515,25 @@ static const struct qcom_pas_data sm8750_mpss_resource = {
 	.region_assign_vmid = QCOM_SCM_VMID_MSS_MSA,
 };
 
+static const struct qcom_pas_data kaanapali_soccp_resource = {
+	.crash_reason_smem = 656,
+	.firmware_name = "soccp.mbn",
+	.dtb_firmware_name = "soccp_dtb.mbn",
+	.pas_id = 51,
+	.dtb_pas_id = 0x41,
+	.proxy_pd_names = (char*[]){
+		"cx",
+		"mx",
+		NULL
+	},
+	.ssr_name = "soccp",
+	.sysmon_name = "soccp",
+	.auto_boot = true,
+	.early_boot = true,
+};
+
 static const struct of_device_id qcom_pas_of_match[] = {
+	{ .compatible = "qcom,kaanapali-soccp-pas", .data = &kaanapali_soccp_resource},
 	{ .compatible = "qcom,milos-adsp-pas", .data = &sm8550_adsp_resource},
 	{ .compatible = "qcom,milos-cdsp-pas", .data = &milos_cdsp_resource},
 	{ .compatible = "qcom,milos-mpss-pas", .data = &sm8450_mpss_resource},

-- 
2.25.1


