Return-Path: <devicetree+bounces-238462-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F058DC5B7DF
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 07:16:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 28DBE3B71C0
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 06:16:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F5E42F28E9;
	Fri, 14 Nov 2025 06:16:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hDx8yi/h";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YntjBLMW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99E9A2EA47E
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 06:16:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763100980; cv=none; b=Fx8msJfCJxlsNDbpQQFI2iTqqDDjdHWAOgSx6GqoD3i4lUKZHw578qgKXBmmCPvId+TdEqsrLLIBxiMMvX2zXdlTrQaSUJ6e/z46VyVQWW2HcKdUEBFwZi+2RPCEYHLkv8xskkCgowBNPb33xOmkebSaVNBS6q82mE61NWhu2TM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763100980; c=relaxed/simple;
	bh=jYRt3RTxaODqx71JYbGheOlerlryIEhNrU+GahhAiQE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=hxrG5ANAA7Qo2pZ3DLifOpDZAzsgOVGhoTbOnM/UgdKLIsZCka27bb2yA3nAE5QQsndBE5g7zd46wnZqJhNK7OzC0LxUOboHc+AlaK0QmSn8ZrgZi3QVdGRy8VKiVDRu30G2HQeZAjBPBv7teufBJlgEy4GRwCdCEKYkoByLv0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hDx8yi/h; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YntjBLMW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ADMbAvL1595897
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 06:16:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=4iIICB4zD+7
	WIbFzn9PEigXRrYfFWYcsGOio1bFbTNg=; b=hDx8yi/h1x/OgDJWFFcCeCwz5gD
	jV1syf+cQ2BcYH5gY7Mvds3LcBluTXmW2j+FwHuee+dwbwDW4mXxrsRsHWmIS8wB
	abcOUEseck4Of4pKjhDbNPUaYwa3AwAu5z01UeRZ8EoEcUNYZ7AENYyK1/n8DkKE
	u2FmrN+kuw7/DHoRoGA+d6+M2iSj0NcIbAomonzApSSFs8fHSgLEKybTasDDYdpV
	PXBY7eEI0/spSOQyUyh+FxBT0Vxc9P43NHeYteM0cpqCDC1xl6/tjoKH008vbL9i
	C3S11svUmx2DUd24jd9pA6vfrFAnqL0//YiSK+UTiLmLUC6jOmb2mWLaT3A==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4adr9fs2jd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 06:16:17 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-7b9321b9312so3699539b3a.1
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 22:16:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763100976; x=1763705776; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4iIICB4zD+7WIbFzn9PEigXRrYfFWYcsGOio1bFbTNg=;
        b=YntjBLMW0iiJkCtdk/TUSs3Fj16fMErPm/lyacmz+qHImmTEo98714QtVrQ3MylGPn
         C8hRvtyIV8JkpMUXI/k+oajlhObcG1/c944tmX5fVgt76FCrkrRndbHS8rmMCwA/YAUq
         FXruRgenHoLqWFXIlVLkPYf8LP4kVZf1G+b5u7YcxgqwHhFYmpQLNVoX9V632VpVJ0V8
         VYDTOLAiDVubkoMju4yx6jxeKTO2P/KThwtYskZ/4JZT4C7RknVdUaa1PXabInsbCI/U
         8fm4RoKafcfB2KrJ7A9GKEoWvg+FkrVra749Fle5sxCtSJY4mEa8EIow/1mAqoOrvzT4
         h6WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763100976; x=1763705776;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=4iIICB4zD+7WIbFzn9PEigXRrYfFWYcsGOio1bFbTNg=;
        b=T1hZ6JrO2o5klbmJ1sQSEIjisHkQeoPd12ZWcf9zfv3fKlH2kWE+tFFEIswHsVLNFC
         cENRe68P1diGcnfRNzQeSzFp4CsOHMO3KiYD+MkTrFMw7TSVdi4FyScfMfyUbPrMI5nn
         e9fXqcCGtUH0QMYeI9Q8yUDqoUGT2YDaQeCrhej3p26Eg4+BUclS4943dpG12WGb+Eqe
         UmMLXsRygvYwFqqEe6dp3cc0LpVhrs+TcUPBRJCNtbQgLKFfp+QA+f5TfR7NAbkDV285
         /YBkXwtj4FQUjJh1XULiPK1yeywyAjT/l7+8ljjN8JSvXreOwuvKdlrKb7bRijrbrHKE
         3qLw==
X-Forwarded-Encrypted: i=1; AJvYcCWJNF1/fIrJyt2EN30M9VI9sTIOwSELGn2XlPgtZZOoSwZcoEu7fRIQucXYIAQNoJ+lE6l6xEvrXhd/@vger.kernel.org
X-Gm-Message-State: AOJu0YwdoW+0WRWvs9sxcSGWDh1R7Oi0hzs66eIbERmcSzkvzHzy/5E2
	LNMojKVbPzeCqtiRHt4MG5nHLKoMK9P906dwwLGDI57sZJi4A9qMMiml64DaJKynrf0nDI4NPDZ
	qJuzDykfrxtcGqvpK2YJfAfOS9VYzFOlIJK4Hh3VzYf3OsRwxnThcOGouDWBQe4Yw
X-Gm-Gg: ASbGnctSmuZKjFvutC8HsFu6qT8n6+d8LWrJyjb7WSsVCCr6/p226ECkfdLBJuPc5Bp
	HQ4pfsUkYh1kNApF41l1Y98nisa8gImpACk2jQtOmg/jStqGIi+0F58PqPnUKNtuuzZiu/EfSYh
	R/A36ZAVNmJxGriP0ltCYm17BafwwDqfTf2mljeDYGAiQHWvhxpfC1xO4aGdh1DXi/L8ubIE+zl
	w1g6tfOdizYlNq18C0qG7/BcmuFBr6OpZMS2Um3KAvNA0Fn3VQbCprTfJggdEcZMNr8fIZObAKl
	iXsVIEApsp7PKv9MKtw7rvEfz9R/7QNhp/S1CIvUSQDJvWr4prUE/zIjxzGW3xONNylQmTrm79g
	fxkbvgDzG1P99M5LQSGWg15yY29KEO8q0Fd3r
X-Received: by 2002:a05:6a00:2d87:b0:7b8:6a99:f795 with SMTP id d2e1a72fcca58-7ba3c2725a3mr3423552b3a.32.1763100976458;
        Thu, 13 Nov 2025 22:16:16 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGRX6azT93c8/2PdjDOhuMO5luLCeGrLQdtXVamXYD5TxuoI0SWsY/+LKcrYuTj52EqYgEx7A==
X-Received: by 2002:a05:6a00:2d87:b0:7b8:6a99:f795 with SMTP id d2e1a72fcca58-7ba3c2725a3mr3423517b3a.32.1763100975972;
        Thu, 13 Nov 2025 22:16:15 -0800 (PST)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7b927c22b1bsm4021223b3a.66.2025.11.13.22.16.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Nov 2025 22:16:15 -0800 (PST)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH v2 2/2] arm64: dts: qcom: sdx75: Add missing usb-role-switch property
Date: Fri, 14 Nov 2025 11:45:53 +0530
Message-Id: <20251114061553.512441-3-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251114061553.512441-1-krishna.kurapati@oss.qualcomm.com>
References: <20251114061553.512441-1-krishna.kurapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=SdD6t/Ru c=1 sm=1 tr=0 ts=6916c931 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=iNHPuiuMtRvPBLkl12UA:9 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-GUID: Fivv3KYMxvkkaq2jha27vP_5MzLZMoXt
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE0MDA0NyBTYWx0ZWRfX9t763ovCWdqh
 Tt7mXo5SAoNJ5CZD47Jx58sLXFy0BTtm282MnqaBg/MQKkUhMDjm8OSEEGH1/Es0eY5wZJ/umnj
 VtwRHHQVR+tw2cingaKFOXkVSWi9JQc1UdGMkd5byF04EtUNnlMH2MGZKDV5mbFCtimPO2Alcv0
 HxB0dlyeInobeTkvnNsD4WNZ7ckJsGFTEoSYGm4p8iZ5NLMhMJNjpdntLVGX9Yc73ghckCTeiwQ
 Fj0Kh3vr+Cd2T0Tpw8NqPh93pHYDpVHRGzxKhgMWXTAzOpg9uJE7FtnHQqpTX9bXOcdzTzQMX3H
 jkHSAaxrlMX5HE0RrjjLPRRZC49M5MhA5uO59plaC1fIWMCTqtGhzKDwx899f1E5nCNjR4tEoob
 EPLPBJBD1iFtcSy8+D9doxg/FxEAww==
X-Proofpoint-ORIG-GUID: Fivv3KYMxvkkaq2jha27vP_5MzLZMoXt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-14_01,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 priorityscore=1501 spamscore=0 bulkscore=0
 impostorscore=0 phishscore=0 adultscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511140047

Add missing usb-role-switch property to usb controller node.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sdx75.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/qcom/sdx75.dtsi b/arch/arm64/boot/dts/qcom/sdx75.dtsi
index e586b55c155b..6e7695146ff8 100644
--- a/arch/arm64/boot/dts/qcom/sdx75.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdx75.dtsi
@@ -1074,6 +1074,7 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
 			interconnect-names = "usb-ddr",
 					     "apps-usb";
 
+			usb-role-switch;
 			status = "disabled";
 
 			ports {
-- 
2.34.1


