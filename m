Return-Path: <devicetree+bounces-221184-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C2D72B9DAA1
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 08:37:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7F10E3A8418
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 06:37:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA7EA2EC09F;
	Thu, 25 Sep 2025 06:33:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mtBbMGOI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 555672EBDF0
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:33:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758782022; cv=none; b=lSEWUW5qWtNat1Sn9EhwKuGW3as5fggfm1juauizRbIFZnNyeEjuyOS0s+wR2VORG76Is53LuLkR/Vr94Ji1Jt/3b2+RmK5lIIQ/OwZ+MTiqsyDPaLuepEMTDif/h80Zlp+CXUFsBqGgdw6q9fPdE+cS0k+J501hP5OnxYchu08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758782022; c=relaxed/simple;
	bh=D3joMpRcaeR3gLLXU5PCwDBHjh3jgbSRLlNslB9/hYs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mmUCX107MaDBBexapPnN9BG19ZDUobw1I3iNl7GyYnE1A6S8PlT/VP5B91L0IPYftrpfTcLuMMXvx+jBBKJ2a9pJ+fNNyj9bgHeedcoXJHAuihDGV4rckV63mQZoYuY7orxoQI/orhTtwtz9ReG+LLjjKe7qolaXfxo6PIFOe9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mtBbMGOI; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P1493S003945
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:33:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4p33NgPxej04es67Nsx769+T5sIjjSqFb0zB/Kwm1+U=; b=mtBbMGOIfkJgAr9D
	haLftSO5c95Rgo9Op2MNtfZdUhDI906WbgxGjjP7fSwSyR5aCrv9IzavVGtgvkqo
	C0mhf5jkBKkXDH8H6Sa8rF+baFxfPgdg3vUZw2U/5039TMq1vZiVzrQm/VsgnBC5
	ixkgGm9ZrLTkdq82gRcurIgybL/J5/zrWZjN1CpTGOFJnF5f70b4BuM9Apd60dbx
	g299PER+d7dQZFORsctT7mWeX+/38lTsT8vISzTbZ0ed+fQ0k7rGg5XcucrNTmfC
	mjcOX/JIF50+X+0WZRRzx5HBemKYKnCAQeyOQF/1YCfk2U7NvkHfRjDHriB83iiE
	CxmDnQ==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bajf1jqr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:33:40 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b5529da7771so436527a12.0
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:33:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758782019; x=1759386819;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4p33NgPxej04es67Nsx769+T5sIjjSqFb0zB/Kwm1+U=;
        b=CpeKYVtXZobFu/YQBvuTVMcivsedPHi8JcQHmHqIyfnChYd+6QBrdOudFffXGRim8n
         nLljHBdPnD+4nyaSyuktKhQ8XYrx9Cg9swO0kQWbfM+UwTUVt4uZbFnTkUiIiVnYjJ7X
         OzI5uJ8dQTkxZT+aJZzhDGwuLodeP31M6kUL/DRrPjgycPQBJfKu0qCeB/XnV3iuKlpr
         89xFCau+UbETdOOxe5rwndgb2g8D1g76q04gAuu3uXAicOzwSOgCFJc+QwMuk7nPJNbL
         ij0HP40t71Cfs7ShHuFhEBW0otsqaLGy/9SiYqx3+j47jY3V9zejvdpi+wm0GCYbh6Xf
         O8UA==
X-Forwarded-Encrypted: i=1; AJvYcCVuF7VPG3RYm3fDir/1xPcGirdgepxWhWjsYrPVSBuX4kKTYwImXm+BSXRoJw1OSQK/SuvlBiguFgEY@vger.kernel.org
X-Gm-Message-State: AOJu0YwzrOvsHbb4YcemNXzeXmGHc+cLn+8AAWm6cI1pE00z01F1BZ9b
	+oE96hb+Eb0WWVdOTP1LqqZfoeiIMXzsqdJ957fSfrwg4dAoIeKITg+rfBJCUs/9ri6Blli8gKM
	/dnsGzG/6WfQzO1K9XeEFE0ridLbLjMvQ/edwYfRnhJw4LvUGthQ2WQytbh5uaIaG
X-Gm-Gg: ASbGncuefyaqcMSD9/4+6mViEzO41S1eH9ilxPPhXxX2Y3iy0G2kYOLKY75r0YFoATL
	rPWdluB1N6KmQkXsmHeDmT6Flz4E+2Wok46v3LrlpscszvfWSHIztZojj0tPr7++aXU+yi6Yika
	Y7PeJ7D4AEPHfC1aMCWLJD1+GQhfNbLldei70CuGPGVb6MgTpPv0fPUPa+si4577mavQsRPS34E
	CafnWWQGR3o9dcFPffyIrbrnpMSDzJ2vLFal/V+gbHIoLcDR9sU3amRDkQq59TpoTeNhQR5WB45
	otPT2zPUQAGgg18fRqpWF5xCld5+oIVO2siQjiTT4JBVL+9Vad+BxMpsZ0v7FWPbMPXyNiBuNCP
	2o6GfCeOAME9Mb0IV23fb9MZBHdWL1EwTXzQ3xSf5QE4qsClwDhI8mfAO2zGj
X-Received: by 2002:a17:903:37ce:b0:275:6dc5:a288 with SMTP id d9443c01a7336-27ed4a92b0emr22691035ad.45.1758782019555;
        Wed, 24 Sep 2025 23:33:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IERBBtNIkEadVPyIyV0MU16VoZZQXNC0U1MspK5LG8JkNkvmuyDKOHUl6BMSuFkRok5bef9qQ==
X-Received: by 2002:a17:903:37ce:b0:275:6dc5:a288 with SMTP id d9443c01a7336-27ed4a92b0emr22690855ad.45.1758782019144;
        Wed, 24 Sep 2025 23:33:39 -0700 (PDT)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed671732asm13793515ad.49.2025.09.24.23.33.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 23:33:38 -0700 (PDT)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 12:02:14 +0530
Subject: [PATCH 06/24] arm64: dts: qcom: glymur: Enable pdp0 mailbox
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250925-v3_glymur_introduction-v1-6-24b601bbecc0@oss.qualcomm.com>
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
In-Reply-To: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Proofpoint-GUID: Dn38_94g6ZmkIluS-EfRltBIgm-pHNUs
X-Authority-Analysis: v=2.4 cv=fY2ty1QF c=1 sm=1 tr=0 ts=68d4e244 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=nkVSH_9X_D7H38LkyDMA:9
 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDE2OCBTYWx0ZWRfX0c5KV0Fy9Fv/
 qAfHl8YNPiVGLp/9BeM+0ovtsJY3u7CJXMn7xjnEjabxh9c3r1MJNWy+h8rRuNIBHMpEPfcQ4Yg
 ufjPD62QqKbH82YowZ0tt0n09yc75ZMRfMMlK6Nxvh95B1ifuU3UVTHHqg9cifkBTZ0j+yN8vEh
 Y3KFK2pwUWDdXq+rbenRlAE43TCdiOk4FxM4HakX31Jr74FnVZHpq6vR0aADbb7IYHkmdUwug8+
 HHbl1ri8gDWQQP8o+THXC4fXXHb8eFtQpcNrY89WXtw0C770fOH80vBPMpKdLn9OH7jrag+ZSmz
 2gi+16BxRRXDF+UjYRO01TXIk6c74vk4vD9W802ceLtAury086AS3OmPzVemkL96QqDuCOk8ogI
 KLBJZAyh
X-Proofpoint-ORIG-GUID: Dn38_94g6ZmkIluS-EfRltBIgm-pHNUs
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 spamscore=0 adultscore=0 impostorscore=0
 phishscore=0 bulkscore=0 priorityscore=1501 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220168

From: Sibi Sankar <sibi.sankar@oss.qualcomm.com>

Enable pdp0 mailbox node on Glymur SoCs.

Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/glymur.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/glymur.dtsi b/arch/arm64/boot/dts/qcom/glymur.dtsi
index 66a548400c720474cde8a8b82ee686be507a795f..ae013c64e096b7c90c0aa4cfc50f078a85518acb 100644
--- a/arch/arm64/boot/dts/qcom/glymur.dtsi
+++ b/arch/arm64/boot/dts/qcom/glymur.dtsi
@@ -4065,6 +4065,14 @@ watchdog@17600000 {
 			interrupts = <GIC_SPI 0 IRQ_TYPE_EDGE_RISING>;
 		};
 
+		pdp0_mbox: mailbox@17610000 {
+			compatible = "qcom,glymur-cpucp-mbox", "qcom,x1e80100-cpucp-mbox";
+			reg = <0 0x17610000 0 0x8000>, <0 0x19980000 0 0x8000>;
+			interrupts = <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>;
+			#mbox-cells = <1>;
+			qcom,rx-chans = <0x7>;
+		};
+
 		timer@17810000 {
 			compatible = "arm,armv7-timer-mem";
 			reg = <0x0 0x17810000 0x0 0x1000>;

-- 
2.34.1


