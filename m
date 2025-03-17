Return-Path: <devicetree+bounces-158168-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BC44A64F42
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 13:39:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A72EB3AF900
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 12:38:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6A8A23A9AA;
	Mon, 17 Mar 2025 12:39:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iLDBHDrg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C58123A9BE
	for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 12:38:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742215141; cv=none; b=ft+DFmmZqveM+nI3/o6tQknyVJuqjbscRuI5u0vIx0mg2ZKnudIEif6E8InNAS7jnjgjTAJF+8b+D1JgoTUb+oHXxJS8LN2aOioAWDWSnH/vK5i84XnvmMPx+TXdrYQ2muH+GGH/HXwoHMjVfZOI4Ss/cUpo/SqI87u0cqvtsQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742215141; c=relaxed/simple;
	bh=/hxF+PEemszqvjTSxb9E/nvqVqQPHkD9b6GWzowCc2M=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=RjW3rxgTAB5wZssOheYqGL2X/Kvq6CoDqR4b/y5M+eZ8+ONmd8hLfhR6GMlprJHMs/KVTLhVtH3kNnSbOZFjQPghuHSOU38lqV93X6dPRTPzV6w2zJD2GuzwPhwP8vQ3LwS0Cwq+G/ahKXxueYXbU22Bzxej6imkmKdv9Fs+gqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iLDBHDrg; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52HAjQiB003154
	for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 12:38:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=5O/HC5QkEwB/sgub+YeiIq
	IBm/Db37yAGEHWZ6B6amE=; b=iLDBHDrgkkVOdcd03giavkO3H/mCXLhP1dkGu0
	ZbBUSsTae7CIzuYnLL3j4LhaNkW8+VdG59Tt/Dre3MiLFc56sdEQtWTdfUFCaODR
	sJOgGExdANEXmw44IpxTfruCLPXuGHhKRQJeOI8qIy6uVIP5H9u8lsDizGUyEHWv
	XDq2xqaAi1LzHGyDWszHkpQAtULqzT3hai6/JoQin3KR8O6fa/ZB2uObr14rxHyV
	6zJIPnygZ4qsF7dDRGzfCfBL+KeeKEthKn/NOepyQkgfaL9Nj+RXHHPnI+pyre+m
	+Sx4PSCLajWu8okAFQJzg9Dg2KCUFyINGsnu2Ysaoz1lWChA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45d2qm4m33-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 12:38:58 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2235a1f8aadso67655975ad.2
        for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 05:38:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742215138; x=1742819938;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5O/HC5QkEwB/sgub+YeiIqIBm/Db37yAGEHWZ6B6amE=;
        b=BWaZq4/XBN4cQwm/pDklouuXjG4O6eCGrIlxrPhX5o1Bl+utsj1OAG6kHJTJKcOEOu
         sdWl5dYWxjtucA+/kZZx1unDpfV6XCbVUK6ChjC7BXWgdfzs6jkO5NJE0tulxJ7csubp
         cEDck9WTS4MHsIbwn6zOKeANfsqzDEMf6qD3xzVyAz+5qgEPmJH5KM42mOLl4sMidc4d
         +vxIGwKTVEHJxM/B9wD6Zwj+r/UaUUCusBkptkE/YXifRW4Br0hGUiGEIybLiXTzfAAB
         xNZNdc1EuCxk5mozU7qVn8+rb/RJRmyQA7fE+jlSiDoA63fkfTYMYUFhhfAWec6sGlwM
         BZhg==
X-Forwarded-Encrypted: i=1; AJvYcCXt6Vy8hxnImRw6xBQUPcgk8WIP9lgZlLhocXu8CJIFyuNjO+0jzH+wZ43ccfsWCfRG9M8lHz/MqvBK@vger.kernel.org
X-Gm-Message-State: AOJu0YzPUDA05wCW6RCC8dUPRrfPmuQ1OO6erX9T5hjcLm8iL85jKqTz
	M2m+9XZ2bytQatf5drsgg4Aka1vyYoJZ8NQx4yLNgeU6rdn+mC1NgrAijcYo797XN2ILOmAWEbV
	JyBqlgbM6mZ2uweuB+XKTbuUJ1zK8QxOBuTB2GwIHsTdSeGlNCnFg93Swof88
X-Gm-Gg: ASbGncuqhaIgJIYdz4eOzooFhj08uq7FYaFTI28BUMqYAGWu9K8XLGOLfvfTirReJj0
	UzM9vRlecN5FCi3HIR5QZEoZm3rf4K5J6e7Luy8ypojoUaBqAaOKEFkTBbOn7SNbJHfFvSToJyO
	oVmJ+OMUoceUvM4ogUmzk+coLOVwqiWPlPllh+7hFRTy88AeRINx63GUX+gUEBTCeY25QpWM2Rm
	YmA8US9hiF2+Wwgmj+5KSGpKQxAfhAfpsnmnEnxTYewKQPryTkm2E19ffmQL8T/ChAtgSVHPLuj
	/GLbiySqt5sEnIN6hvz7u11ECz7+ww==
X-Received: by 2002:a17:903:2a86:b0:220:e924:99dd with SMTP id d9443c01a7336-225e0afb7c8mr177068025ad.34.1742215137838;
        Mon, 17 Mar 2025 05:38:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH4/yCRYwOwoAwMt7RTrFKhfYHdnSIaSN5evYwfdr8Bx5AnBOwhQ+5deFWmfGIJynOjD7eqrA==
X-Received: by 2002:a17:903:2a86:b0:220:e924:99dd with SMTP id d9443c01a7336-225e0afb7c8mr177067775ad.34.1742215137496;
        Mon, 17 Mar 2025 05:38:57 -0700 (PDT)
Received: from [10.213.103.17] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-225c6bd4da0sm73665165ad.222.2025.03.17.05.38.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Mar 2025 05:38:57 -0700 (PDT)
From: Maulik Shah <maulik.shah@oss.qualcomm.com>
Date: Mon, 17 Mar 2025 18:08:41 +0530
Subject: [PATCH] arm64: dts: qcom: qcs8300: Add RPMh sleep stats
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250317-add_qcom_stats-v1-1-016ae05ac4b0@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIANEX2GcC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDY0Nz3cSUlPjC5Pzc+OKSxJJi3WSjRANTM5Mky8TERCWgpoKi1LTMCrC
 B0bG1tQDQj/p+YAAAAA==
X-Change-ID: 20250317-add_qcom_stats-c2a0564b9aaa
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Maulik Shah <maulik.shah@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1742215134; l=998;
 i=maulik.shah@oss.qualcomm.com; s=20240109; h=from:subject:message-id;
 bh=/hxF+PEemszqvjTSxb9E/nvqVqQPHkD9b6GWzowCc2M=;
 b=ApMoYnW2DQV1NW+U+vWoQ5oTv6C65GgCV7GpBXOInpSuvH1UYme9IF0ESNY7tMH6xCZTGsdbt
 VB+xtAkISSxBg1E8phnEycIJ4ilasWGDWOpcW1GLHx5zG2O5Pz3A1pL
X-Developer-Key: i=maulik.shah@oss.qualcomm.com; a=ed25519;
 pk=bd9h5FIIliUddIk8p3BlQWBlzKEQ/YW5V+fe759hTWQ=
X-Proofpoint-ORIG-GUID: n3mcFG33oXUaP-XOna3xwhKeGM_bvoN9
X-Proofpoint-GUID: n3mcFG33oXUaP-XOna3xwhKeGM_bvoN9
X-Authority-Analysis: v=2.4 cv=DLWP4zNb c=1 sm=1 tr=0 ts=67d817e2 cx=c_pps a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=ILUfUccxcQ_60TC8cKoA:9 a=QEXdDO2ut3YA:10
 a=MJ4Y7Fliwi6_CFRlaTST:22 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-17_05,2025-03-17_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501 mlxscore=0
 impostorscore=0 adultscore=0 malwarescore=0 suspectscore=0 spamscore=0
 lowpriorityscore=0 clxscore=1015 mlxlogscore=827 phishscore=0 bulkscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503170093

Add RPMh stats to read low power statistics for various subsystem
and SoC sleep modes.

Signed-off-by: Maulik Shah <maulik.shah@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcs8300.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs8300.dtsi b/arch/arm64/boot/dts/qcom/qcs8300.dtsi
index cdd412706b5b7bd2a953d20bfa9562043b20a18d..35b202a6b323de525aa8c4cad7595a8eee43326b 100644
--- a/arch/arm64/boot/dts/qcom/qcs8300.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcs8300.dtsi
@@ -4262,6 +4262,11 @@ IPCC_MPROC_SIGNAL_GLINK_QMP
 			#clock-cells = <0>;
 		};
 
+		sram@c3f0000 {
+			compatible = "qcom,rpmh-stats";
+			reg = <0x0 0x0c3f0000 0x0 0x400>;
+		};
+
 		spmi_bus: spmi@c440000 {
 			compatible = "qcom,spmi-pmic-arb";
 			reg = <0x0 0x0c440000 0x0 0x1100>,

---
base-commit: da920b7df701770e006928053672147075587fb2
change-id: 20250317-add_qcom_stats-c2a0564b9aaa

Best regards,
-- 
Maulik Shah <maulik.shah@oss.qualcomm.com>


