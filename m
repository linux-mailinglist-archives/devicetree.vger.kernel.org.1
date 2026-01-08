Return-Path: <devicetree+bounces-252824-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 24ABDD03009
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 14:26:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1AA8A32F2891
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 12:59:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 942EA482D1D;
	Thu,  8 Jan 2026 12:52:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nSrtlj2S";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="RJ4w3e7d"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10FE0480DE0
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 12:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767876744; cv=none; b=uLXKQZffxJVqWiS7hHcanhKabMa6V6NmMHd14LgWalkg2HSFqTKmTALmf7TIhCGF3DwC9IwiUQyiwHKeh5Ua3oTU5vCrGLpdGS56qVNQIRbw+AlccS2/NmMRoGrcUsSw4V5xv+YD244JwnDu4OctXXeXkrSRMZWb6JMxDe2Lw7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767876744; c=relaxed/simple;
	bh=XlRMvPPKlAymX2hcc4TzJppfzzrPdib+qTdDXUHtTAo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=bScR2463PxawAGY4j5Jdz7IHSUHfipLJEAS1dqgXCdeEeR2SLhXs03FLdBohjmN57khOSLvvAXqxQHJLFXo6cHjFW9+fTbe1h3ovi+z9vGoM0wnZw/fF3Q7WgIQXzPr1zX9mnlu530YZBlq4Bxg7Kl3alINMi95QFfNl8P9ezwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nSrtlj2S; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=RJ4w3e7d; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 608B2nQN1970139
	for <devicetree@vger.kernel.org>; Thu, 8 Jan 2026 12:52:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dqYeC64NCQvvq3+TQC/yLoL6U7dsEsommPyssm+Mo0A=; b=nSrtlj2SGTn/oJjV
	l132+tO5pym+vjxdim2eZasRecvHTJ/XZWHfRQXoX+QQ2dBvw8tlLWFAX4645QSi
	nplGN3/ZLNSCxresQ89Fo2jxfYYjrg6AHOGGFR1HZofzMkIr3Fymjm/CQLRs16ak
	rbcpCpkXf9yiBVfqsWWBQCWjIbc8mR2/kxO5oq0xkhn0XRpFsKUMtOOfFFRVcu1u
	N2oGHvlgxGXEiwo/qdHHaqWdSb8ckfk11IY0/zfrUgnQ4SRO55JIEpAbed9xxSfE
	MGiZURjOP423KcOssJdO3xZfBtLnIRuxv5sHjxCbS5c+uebhuP6BvdkzbBu0QnQ8
	XWvb4g==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bjbc4r9hd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 12:52:22 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-7fc82eff4adso1805842b3a.1
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 04:52:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767876742; x=1768481542; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dqYeC64NCQvvq3+TQC/yLoL6U7dsEsommPyssm+Mo0A=;
        b=RJ4w3e7dDVzgJ1kwOZG2Jzvi+Oq0JScQsVnrZPH7bpZiOS4LV8WCRPt7ijONn/gEfZ
         AepBtrq9xgeXwj5zbGA10TgFeoGXDtfhuIbfsD5OHfOd5rNEfkhK9v6yNc9jWc498Ql+
         ukVdinRpg9Z0kznTAnuMlkv+noCSSBpy4x6voEmDkFu8iSbaAdRlm6w+Le6WhAc+MCCb
         faqbUufzJCg2wDW9Lme8xGfz5Vuj51Mlkad5dqmc97EdDVTEkkfnDjCPsf3K5igI0wUZ
         GYmvDUe6k1NRBHrPXMwesXDc4FypmafcLZyeSiMpBbF+TgWL5Jfb7uhwP2pAGv7pO0Al
         Ksug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767876742; x=1768481542;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=dqYeC64NCQvvq3+TQC/yLoL6U7dsEsommPyssm+Mo0A=;
        b=i81MuoNqkbRn5m5v+a8888+DPK+rBHWpsE5Tm/KiPmG+/VhIn8sLtCLYJFjyRZsOPa
         aijorh5czmx7M/TMIbcdwQSEo5RS0pjYCQJLb4JtrpRqKUaUAL7Pz9n2BIRHGWOo862c
         +3aGgAgHTS9fHWQTJ5iJJSQpOoGcc/SUV62RzCacj4IICxFZe6F/jwWbbNO4IkINxACd
         M6OOYuQMjvJD0Wrsiw7CCCMk8sE2bupgqr/nOGy9avobz+j1veHZQMUkDyAf4Rf6KvQ3
         6vTw4bRniM9T4orpSRoXLP2/2K+s1c2C9/3TBCvLdLHxgR4RXGGx3Gs2oSX4IdjjVOOC
         rhWA==
X-Forwarded-Encrypted: i=1; AJvYcCV2WBykb+/e+wP+2i6zcDubrIfltEZviJtScVy4vNaf49G3LNoQIUGsYYc0eH2GEVoXJhgMN3iBf8J4@vger.kernel.org
X-Gm-Message-State: AOJu0YxlhIHoygkbVu1O97rs/InyVaF0GmmPaF2InJRSUq2sxtT60wTW
	rc/OKrnGQYqwafJjD9HoAx7yxherMrqpTjIyEVWLc6afgbOOYa/Vm8J6EtFly0qosr5oKUHf1Nl
	mrnOBTjezPaZDj0KcLHNAC+kwhh4ReC7ZgffDq6wPRLNSQXYXBSxaflDQo1/OcXJW
X-Gm-Gg: AY/fxX67h18z5KRt2/SQ3oNGSsuAR63tE99FKzxot4rdbSnTgr9mHl+lEZPHjZmVOLS
	5sGlQOX5X0crcnp2sWiIo2H7elk21Z3dnxaVbA/k0Q2nmY1zxfjf6Vuif+OW2cYjbaPZ7Uz2Q3p
	WPcXspvwd2bUXaq49W12s4dpqfyCEf9viKjCHkVxpjSbLds/zbQ9wZd8z7j8Tw3OubtgIRunMzm
	gXx9E1RS7ifX51Eb8+K+7iPxEdQx3QmAnJt4DaEiTdKGqWLL8TF4NhBfOkCRWmoj6dRvFu9v/1p
	WdbRcuFtt0G0IX5FwZSYAHElmvsy8hmMwYKOpBqexqdwS0OIPDAZUuS/AdaAIgF5tokSx9YtadG
	DgeTQVc/HSKhs5zmtJBXGxDZ3s2jCxZKswzrjvV3aGAPCOQ==
X-Received: by 2002:aa7:869a:0:b0:7e8:3fcb:9b01 with SMTP id d2e1a72fcca58-8194e130c64mr5945323b3a.23.1767876741690;
        Thu, 08 Jan 2026 04:52:21 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH7fJWcSWnWEsA+4ccIsBSJbS+iZbKv78WluDAaYqqjbFF8xPa4rUh8bOAxTSVBtf4OiWxTCw==
X-Received: by 2002:aa7:869a:0:b0:7e8:3fcb:9b01 with SMTP id d2e1a72fcca58-8194e130c64mr5945293b3a.23.1767876741179;
        Thu, 08 Jan 2026 04:52:21 -0800 (PST)
Received: from hu-vdadhani-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-81dab89f2a5sm253302b3a.56.2026.01.08.04.52.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 04:52:20 -0800 (PST)
From: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
To: mkl@pengutronix.de, mani@kernel.org, thomas.kopp@microchip.com,
        mailhol@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        linux-can@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Cc: mukesh.savaliya@oss.qualcomm.com, anup.kulkarni@oss.qualcomm.com,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
Subject: [PATCH v1 2/2] arm64: dts: qcom: qcs6490-rb3gen2: Enable CAN bus controller
Date: Thu,  8 Jan 2026 18:22:00 +0530
Message-Id: <20260108125200.2803112-3-viken.dadhaniya@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260108125200.2803112-1-viken.dadhaniya@oss.qualcomm.com>
References: <20260108125200.2803112-1-viken.dadhaniya@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-ORIG-GUID: S1B91DtBWlDmcUYn7YRcKQZniu41KBNW
X-Proofpoint-GUID: S1B91DtBWlDmcUYn7YRcKQZniu41KBNW
X-Authority-Analysis: v=2.4 cv=fdegCkQF c=1 sm=1 tr=0 ts=695fa886 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=XYn_8lXowKPdo-AIkF0A:9
 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA4MDA5MSBTYWx0ZWRfX/Li9hyNuhAIx
 aMp+eDgOGFgFdgLd2wrADt279rM0QwLCsJIlxStaPhMqtftHb1JPRo307pcRLTeUf1w37l0608K
 fD5G+8lXiG4dAnoG3PQAE4vqpXNbq00bJRIFMuab/EGUR8QsWk1RZJ41BzvABCTr25v3c22y5aj
 CJhX8Cwpk+F7Uh+qAnuRz8aer/sidBXVHeFN8e5hgkEs5JaiJUgiILi8uzjAiwXTerhTNqhGKkl
 yqwDuW6Dtpn3vJQ22Dl1XPIVn5hY7xjMttqcgDedL6ZF2Aw2ShxWQBb3HHYwVilmS7FFpShI7RZ
 d5w88gePRjoGArtR6YrXsace0D81nr3HdBrmRx1flVvQxsFRLc+Krvch6y8b8Q6Vic7Z+uF34YQ
 28y/TiMjR6sUfS86tZ2S1IRmgXz9ROy2RDT9cmQgnsf1X8jl+sIcw8TJX0+UGnbxDDusZ7XtXqk
 fqBRwO4fJazR7hD4yTA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-08_02,2026-01-07_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 suspectscore=0 spamscore=0 adultscore=0
 impostorscore=0 clxscore=1015 phishscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601080091

Enable the MCP2518FD CAN controller on the QCS6490 RB3 Gen2 platform.
The controller is connected via SPI3 and uses a 40=E2=80=AFMHz oscillator.
A GPIO hog for GPIO0 is included to configure the CAN transceiver in
Normal mode during boot.

Signed-off-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 30 ++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot=
/dts/qcom/qcs6490-rb3gen2.dts
index e3d2f01881ae..f2f2925e645a 100644
--- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
+++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
@@ -44,6 +44,14 @@ chosen {
 		stdout-path =3D "serial0:115200n8";
 	};
=20
+	clocks {
+		mcp2518fd_osc: can-clk {
+			compatible =3D "fixed-clock";
+			clock-frequency =3D <40000000>;
+			#clock-cells =3D <0>;
+		};
+	};
+
 	dp-connector {
 		compatible =3D "dp-connector";
 		label =3D "DP";
@@ -1151,6 +1159,28 @@ platform {
 	};
 };
=20
+&spi3 {
+	status =3D "okay";
+
+	can@0 {
+		compatible =3D "microchip,mcp2518fd";
+		reg =3D <0>;
+		interrupts-extended =3D <&tlmm 7 IRQ_TYPE_LEVEL_LOW>;
+		clocks =3D <&mcp2518fd_osc>;
+		spi-max-frequency =3D <10000000>;
+		vdd-supply =3D <&vreg_l11c_2p8>;
+		gpio-controller;
+		#gpio-cells =3D <2>;
+
+		gpio0-hog {
+			gpio-hog;
+			gpios =3D <0 GPIO_ACTIVE_LOW>;
+			output-high;
+			line-name =3D "mcp251xfd-gpio0";
+		};
+	};
+};
+
 &swr2 {
 	status =3D "okay";
=20
--=20
2.34.1


