Return-Path: <devicetree+bounces-172999-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 613D2AA7334
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 15:18:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8B9D89811BB
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 13:18:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBC04255243;
	Fri,  2 May 2025 13:18:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hX6FvctS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EDF3255228
	for <devicetree@vger.kernel.org>; Fri,  2 May 2025 13:18:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746191895; cv=none; b=QuiYCqTER9oPebyx/1RUyF7ILRI8m229VSueHY65DWco2W9y6ZwsvnSprpoQt7ZSERQ4b8UBA6RZ5Oyk3a7Yhgw8wMDG5LzIzqUzfpgeex5kjRfSKIHVwUU4nqRxSbrUsfMR4iaxpn8WV+NXBUllPMhlAD7W06y+4q3PRTJwTi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746191895; c=relaxed/simple;
	bh=kuc3nwD+lVGfX59PAIq28QGYc+7HorB/Mg6Kws2foiI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=t5oZmHOUw7m1j1fWiFupd+OW368FLFF5H8SslG+w/DZOTY+vBQ3i8KKeIy7TDcPaKhqnzEN4wh61p0NrwII0RtLDl4Cpbwc4ce2cFEg5ZVijzaVAPDCGQEKcbyac+rFQzOgmQpyAmOs8KjobA5QucoEQRx4xTDk88RFB/WjC4OE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hX6FvctS; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5421P1eL018815
	for <devicetree@vger.kernel.org>; Fri, 2 May 2025 13:18:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TfFYMVQSeb9gxCMqpC9gyzIMAiB8t0Jg4Tc03ZwPL/4=; b=hX6FvctSasNVQeC+
	lxcAGA6/d9Gt/YUfsyatXcCFxanOPNSakQ/CNzfQF3y1jbF4gpPUR+16HcENIv8W
	8eee+JyBFaw8AjtFfckxKLflTUiOmpjlwVOVUgwzJnFn2gExI7tB6cHwbYTwYIzH
	W/z23wkQkQSflDGClIc9nZx8eVmahhK9VJ+S78NtnGpeSW8B6PMEqRCutMBK8mgL
	M1+cAusyS9pTmsZiuRPE9gkAXiHLKANvSLptbi4BGn8+xWrpsu2Nug91Dah77MUP
	svb+sFsE3zMnj6YVdlC47xMFeequpgQC+9rjG2+cToK5bsuiDUuzeXq6IpOPzf8v
	4OIBUA==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46b6u4gepe-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 02 May 2025 13:18:13 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-736c7df9b6cso2964276b3a.3
        for <devicetree@vger.kernel.org>; Fri, 02 May 2025 06:18:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746191893; x=1746796693;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TfFYMVQSeb9gxCMqpC9gyzIMAiB8t0Jg4Tc03ZwPL/4=;
        b=rFEIjVZ41WykjhaKNIK6x4jpm1o014qmngbU7aUrp2XyKaQUfxKL1CgR4Yk5Z0F0XX
         xWrcNxJZEMPKIlKkOcpcXzK3jbq/ZWSWOX/wHDOMASM9wb9dqxMjyCqGNoDRh4dpBp6z
         +me+mmwmBtTywTIaRZX8+KKRAsKvcvS3Pv1YlPnWQ1AND9TA1VndQQt6RzcjaU6aJ6uw
         xiAyQBHLl0YWQJ6dhhRXslttYSPpG4Jo98jSR5gYxgMAeVN2DQFcIegFK+5G8H4rA5ID
         pjMjyFtMv4lavL69RFfOlm08dJteArDdzCRF9EvF2xnhnzM6RZRnJn8oJUhz5ZKYiYYH
         xWvQ==
X-Forwarded-Encrypted: i=1; AJvYcCVkjPHx5i2yZ3JGDfBedq5NQOc2a2Eh/B1NEzjdwd8uTr1MfopleZXJe54XbfUW20KHL7GccaLuCb3u@vger.kernel.org
X-Gm-Message-State: AOJu0YzwwxeaXwjep8GPHyH75QDrC1Lu48ffSxVtEVqfnQKcOchDFsEU
	9mzpLRUCPqt0QC1tes4W6JrH8u6SNfgsJBW9GJj5VjhsQ6eixu6XLZaEAT4aCObztWR2xeAti5p
	DI/w63iJotUenj+hDptKo/QP7iT0I+HHDpaf5VUvNjES3GcWDBlponxRbOs0a
X-Gm-Gg: ASbGncu8mZu2Qj2owJ9TgSqyl35O3K+QVhm5TbT2wV9vIXuL2+183ZFN1SxN7HYpKNP
	1IqcCidzmMqYe+/6CwnYtfnu9kj/l0/mD42ixK0sGJnNJhGd6RcgQ6u3jjJTHCZezSC28akKqRF
	ogEX9tvkkGNPYUkSUX5ch3Aifs8PqhQHjiFJ9Hg3IMdT6eJvNGxq16fic3Nt/cbYm4o/QUaybU5
	qf1OvrGS0YDdVJRrtJ2C6awEVz3dycM7JdkAdGzFFwNIwzx0xV68w5EplLWL8MCdgKB1+0zxOmT
	y8gIUeslKL78h18dwh8HviNvaGM6DHTSKpu1xmEZVCdGa4x9+Dp4VOIpznpmo1qjyfy/biqEDpW
	7uW/xeMGrGzfG7HOOHql2Z07oJUPY7nhqtWiljT5kjY8CneI=
X-Received: by 2002:a05:6a20:9e46:b0:201:b65:81ab with SMTP id adf61e73a8af0-20cdee3caf9mr4468315637.23.1746191892771;
        Fri, 02 May 2025 06:18:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHfmJNczsGnet4Gkz0D0Mrc+1uQYNYpgTJdD3D/OrH8RLj2AReOWrjWS6ngfsAJXui1vi/DFg==
X-Received: by 2002:a05:6a20:9e46:b0:201:b65:81ab with SMTP id adf61e73a8af0-20cdee3caf9mr4468279637.23.1746191892405;
        Fri, 02 May 2025 06:18:12 -0700 (PDT)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-74058dbb939sm1525886b3a.61.2025.05.02.06.18.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 May 2025 06:18:11 -0700 (PDT)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Date: Fri, 02 May 2025 18:47:49 +0530
Subject: [PATCH v3 1/4] dt-bindings: sram: qcom,imem: Document IPQ5424
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250502-wdt_reset_reason-v3-1-b2dc7ace38ca@oss.qualcomm.com>
References: <20250502-wdt_reset_reason-v3-0-b2dc7ace38ca@oss.qualcomm.com>
In-Reply-To: <20250502-wdt_reset_reason-v3-0-b2dc7ace38ca@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>, bod.linux@nxsw.ie
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1746191883; l=904;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=kuc3nwD+lVGfX59PAIq28QGYc+7HorB/Mg6Kws2foiI=;
 b=/sHHOupQearhAFVBllGVOZfEFzBNF22HDoTAgH7WYVaI4fX3X44JA5y5wxWgp6h3W6sUcd+l9
 uOliBBckz3YA/anqCFFTVYGYMufOfv/Wf1ruq4/P7npCMWEPH+SR3Vc
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Proofpoint-ORIG-GUID: Cql5S_x_0YXoVMsouy0F7xCXUpM0L3Ri
X-Authority-Analysis: v=2.4 cv=Yaq95xRf c=1 sm=1 tr=0 ts=6814c615 cx=c_pps a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=7sp3e_VSdAcdU5CosJ0A:9 a=QEXdDO2ut3YA:10
 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTAyMDEwNSBTYWx0ZWRfX4CU1hvTWDgoB Au4KXfcBLnVGOFDycpI/eOv1qrbeWd+sxj1YmHZwbbyqIcrkun+WycRD1kbz5EWSTDJZ/lEEgDa 3cRBmHoayISok/XXJEbl/95U1h4hQe45DtDbo3HMCnWHRg+ZQITalircR6KqpFvIA9MqjbET+Rj
 64Uoq9pitM+z/SPP21ijC/NGE7x6F+relav45qFFibMJc9E/c7meyiBtssGmn9Hao7RB1nKlLpv UeHtRzCcWpt8w9HIB0aVEksmdzNIJDZjvcupaL8N7xHGukNDIwiB7cYA6mVc3CClLcTpABSMfI8 owD4PX3yjUvgXyuYcf83xmE0L64FbT6w+dEUe9a6BJvXtBoBUtDBPS1LS5cMJnuUnO8mH6c+HM0
 +VgMvBi5nPermEKrU9L840yYv/RNDOtmQ6+1GZLwKrLg2ctixxDEyJC5/TpVpDcj2hLqZTNR
X-Proofpoint-GUID: Cql5S_x_0YXoVMsouy0F7xCXUpM0L3Ri
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-02_01,2025-04-30_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 phishscore=0
 clxscore=1015 suspectscore=0 bulkscore=0 mlxlogscore=920 malwarescore=0
 mlxscore=0 priorityscore=1501 spamscore=0 lowpriorityscore=0 adultscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505020105

Add compatible for Qualcomm's IPQ5424 IMEM.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
Changes in v3:
	- Picked up the A-b tag
---
 Documentation/devicetree/bindings/sram/qcom,imem.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/sram/qcom,imem.yaml b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
index 2711f90d9664b70fcd1e2f7e2dfd3386ed5c1952..dec1b1ee924cf1386f559eb262ea864f2788c165 100644
--- a/Documentation/devicetree/bindings/sram/qcom,imem.yaml
+++ b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
@@ -18,6 +18,7 @@ properties:
     items:
       - enum:
           - qcom,apq8064-imem
+          - qcom,ipq5424-imem
           - qcom,msm8226-imem
           - qcom,msm8974-imem
           - qcom,msm8976-imem

-- 
2.34.1


