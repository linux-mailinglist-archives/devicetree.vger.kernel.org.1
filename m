Return-Path: <devicetree+bounces-269559-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kOJLMjjpomlG8AQAu9opvQ
	(envelope-from <devicetree+bounces-269559-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 14:10:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F0381C3251
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 14:10:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E48873119596
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 13:08:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DFBC292B2E;
	Sat, 28 Feb 2026 13:08:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WgsI8cnD";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ViiaeHgP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B7D943E483
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 13:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772284104; cv=none; b=SwDcjrjnXmIpfHYgyBjacMPaeErumiMp5ziw45KNHm5/YraTT4hejjo9TtuknVYKRMKuO0aRRzXD6sQzS7kc9Ywg0jAxaOqit/sFYN6KW1EXPl/kwjsf4N4fydocHenOA919UoJK9etAKw9pTEImDQHP206bo27srBS1QvzEM/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772284104; c=relaxed/simple;
	bh=vWk8EE0CgMkZpYhxzYKRo2wadVosBsQ675/AQnbrT7w=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Knf+b/0v84Xd8DmLt5vpij2deiraNVxuQ1Xj8SPucGDE0nPnoFoRzYesmyIRLXJEhio9uFjEyOCsoaLr+Cf28zj1D9wIsTdn72d5tdnj9Es3ApIeZ7HVZRbnazfKa1A3VBiwkezGGmkrDfUx/CO/Cz7S4KOxA5ZH6jtOAOaXl4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WgsI8cnD; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ViiaeHgP; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61S90N7A3859695
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 13:08:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hLvzVJ46a4+7e7RSTfQ8fmEYz7sY1ZV+usD7sQf0qpc=; b=WgsI8cnDRTOTof2K
	OMPXxEw22iUCgkV6iFMh74O3x42Lx/CDp4yd+wCOWCVxZuZpKUjPNycNSAZhfmHD
	bEevF0gd7NA1NhAwQxll4H7SHkiQisLURYnmkdT+URTNB8xHul7Zb0uDaSKQzKvS
	H58901dY3QeuA0ulsQbMGOfeRzBK3Os4Rx+xcU2RSg67fw3t05O1OkNUaHN5HFRU
	WmW43iwujd4jrY0L1mCFdVRGSstOf5j+Evg75Rqq8DIJ/3wEyf/WWHcCXcaqMWEt
	WYuijt0UF8UiZm9kyR0nd7Ar/eRP2KXLfatDEu8GtO89iEsRXqQZ478rsvh/T5iv
	7D/r4A==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cksf6gw47-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 13:08:22 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2ad7e454f38so188743595ad.0
        for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 05:08:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772284101; x=1772888901; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hLvzVJ46a4+7e7RSTfQ8fmEYz7sY1ZV+usD7sQf0qpc=;
        b=ViiaeHgPYnTrc2pH8oyYr6+1cKZa9fjYrh5wgfwXdxjCudMab6fGrKs2X3TvZdMjOL
         V84tO1jGXKbwl3hMTp6p/BGSvt0W4UjfRaZA2vyqZ+Wo1NBWtuT2qqT5yz1qN5CyBqn7
         POeBb3mifK3tXLxj1xabcm/xvPV5td/D70NM2gv2GFsTidGf8aMcq3WPDjJAKTxZ2aay
         WDJO3Xb7QNcjokquwdir00MspZnU5pG3MCNKvVqWVMrfTC/SpgxaL1hx5P9fX5T7VtH3
         myq8uhs6Upot47wzz4WVh4nG2aSNYoXiL0DXU6pydAIVry4VHTa9Hw/ny7pUhiUT+x4/
         tL+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772284101; x=1772888901;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=hLvzVJ46a4+7e7RSTfQ8fmEYz7sY1ZV+usD7sQf0qpc=;
        b=MhARmURwSfEIyJgBGVM1kvXXS0aukavV/Orp7hbKgnNJzFaakZ6BbtQs2CpNPXWpI2
         boWaNFNu5itOIuhXIal5nJpDujMFST09/V+dzaO48Evc+WESkoYa2g/rVvTXyFJRgNnG
         Kk7htKIYAE0uBTVc8qUBg2Q1MQOTNTTcxGA+fliLwffGdSuLwlT+fyDpC5N6bXX8OUx4
         N4S9tEy55m5Ezwv9X6pqTGcWSEm2W0bTdVcFffduAupxIztpSuEMeC0K8mzUpsh1Hrb/
         nP7/Zx1N3kxJfne0YVWnsUVWf1cLGomXBL+hkfnWFSYQ3YlBkButnBXqExvlvmNF38jI
         WtaA==
X-Gm-Message-State: AOJu0YzxPABOUbW+TcATTD17lPyms4wsywcnICI6dFJ/ZjltxAAHBeyc
	teNrwW3MiuzcR93b0RxSSvtv+HbM2StpQVI7XEjYAsEG3VW45DVhDo8XEcPigiXWmBLjoBoeMKJ
	kHU3ADCzpsXBwEGkoDKUJ/pJ446CUK/APOeTJyyZ6kTtj/YQH+I/ATCw+KUS2fzvY
X-Gm-Gg: ATEYQzycLKpGvQ10YCXEqxHIAw3hc2dc2E76u0BeOivZGUcmxycHAQvQEWT2fNIw0H7
	jSN1b1xOIUlKi1c8ohsNNU0wdlhoecWgBdk+ZMlQEM8nTsx5KrbKefnD7LWx3BlhT2s1uiqlutg
	O5GOgTfu3xNS3+qwzNOuRGqxN7mw20cwz0Cf9X4S4VLR+UjCbigQcWp35WcMZkO5m34xY8Xzaes
	4nZ/CAxyl0mhion7+RaJi5LQjv5gc35oi5+njAl/b/s4EdHX+LdfTNigX+8fVPBkMbnzp5Cnja4
	evQEmeJs22vg+Up1Pl7BAx2VGOIgYTUmuISpMvqDxng0vQ/HQAfZ37Gwu7ZJaOrjuS9xf30bp8V
	wZAG3AS090MxNWOBiKinj5wNgR25GIP7gEKdhZqDWxC/XN/N8pjMPYiqiA1GbEw5FnmG7FHBeAb
	OB8Vi55sj6uwhC2lrNT3PKnphzTrWEg+o7fOw+tIpdMn+pmurjNDQSf33x
X-Received: by 2002:a17:902:d4cb:b0:2a0:d629:9035 with SMTP id d9443c01a7336-2ae2e3cca53mr78424165ad.3.1772284101185;
        Sat, 28 Feb 2026 05:08:21 -0800 (PST)
X-Received: by 2002:a17:902:d4cb:b0:2a0:d629:9035 with SMTP id d9443c01a7336-2ae2e3cca53mr78423915ad.3.1772284100722;
        Sat, 28 Feb 2026 05:08:20 -0800 (PST)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2adfb69f996sm83947035ad.50.2026.02.28.05.08.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Feb 2026 05:08:20 -0800 (PST)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Date: Sat, 28 Feb 2026 18:38:03 +0530
Subject: [PATCH v3 4/6] arm64: dts: qcom: ipq5018: Add the IMEM node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260228-imem-v3-4-20fbcc1a9404@oss.qualcomm.com>
References: <20260228-imem-v3-0-20fbcc1a9404@oss.qualcomm.com>
In-Reply-To: <20260228-imem-v3-0-20fbcc1a9404@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772284083; l=1186;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=vWk8EE0CgMkZpYhxzYKRo2wadVosBsQ675/AQnbrT7w=;
 b=FSycVpICloTXfawHdGB5GOka3wxP+i4+aeuQNs54Q7yWOPaG1YUxirMyzUc6q59fua4TgqrLw
 q0Rf/e6ysJhCWfBQiHW19xJaUNwh8gU/Kg64s1NFdTquWt/LExxkoPb
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Proofpoint-ORIG-GUID: aTVsmcZDEcjJOEnJE2CrmCVKEitcszRJ
X-Authority-Analysis: v=2.4 cv=JoL8bc4C c=1 sm=1 tr=0 ts=69a2e8c6 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=g_gtcTFTaut2jdyMrvoA:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI4MDEyMSBTYWx0ZWRfX9Z7Su2gRmmxy
 KrRWKWy9H7/jUMKjQmv/OSHwNzQ9+JLSwFz3fsD+LkS4fGAj1cVXy2hSaISpIdmWnSW1rScWdJ2
 hZPMwEKgDc8voQPHnpYyuNe6/37/DnIv7V2jRWoYMzIR1hUixOsHHSHOcIEr7uwMDV8vtLm3GoC
 jy2K1xq7P+K+6Ie2Tr+KI/7u41ba9Z78MpVWAwvhyzhYv0vW7h+ZE58XTuzGUUH0LdR/Vo5dxzq
 gU5i3qbewpQQAo7uWznovAP3tgORaQJFMDIEh6Y4T8q8HdoafxIbJFialGxC/kqk2HItU4fs6d/
 3+RC0SppxYy8/R+BOLi8uypeRLniT9x6JrcpoXXFuCv0oBckgbU7CWQvtRMIw4HhT5yJZ4GMqXY
 CeV+9Rl43NOJ2tEpsCei2O60uc+SMVus5RC9AwA3+uvgvEID+f+XHAAShlF43qIfR8CkLDoJUFh
 b8fVXqF+HecOsC3Qo7g==
X-Proofpoint-GUID: aTVsmcZDEcjJOEnJE2CrmCVKEitcszRJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-28_04,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 malwarescore=0 priorityscore=1501
 adultscore=0 bulkscore=0 clxscore=1015 impostorscore=0 spamscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602280121
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,0.131.57.192:email,8af8800:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,79b0000:email];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269559-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[kathiravan.thirumoorthy@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 2F0381C3251
X-Rspamd-Action: no action

Add the IMEM node to the device tree to extract debugging information
like system restart reason, which is populated via IMEM. Define the
IMEM region to enable this functionality.

As described, overall IMEM region is 80KB but only initial 4KB is
accessible by all masters in the SoC.

Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/ipq5018.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/ipq5018.dtsi b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
index 6f8004a22a1ffdb6da0be410b772be5fe0473eef..591adae3918322f97a5dcd8b191be1b50344e3d1 100644
--- a/arch/arm64/boot/dts/qcom/ipq5018.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
@@ -567,6 +567,17 @@ qpic_nand: spi@79b0000 {
 			status = "disabled";
 		};
 
+		sram@8600000 {
+			compatible = "qcom,ipq5018-imem", "mmio-sram";
+			reg = <0x08600000 0x14000>;
+			ranges = <0 0x08600000 0x14000>;
+
+			no-memory-wc;
+
+			#address-cells = <1>;
+			#size-cells = <1>;
+		};
+
 		usb: usb@8af8800 {
 			compatible = "qcom,ipq5018-dwc3", "qcom,dwc3";
 			reg = <0x08af8800 0x400>;

-- 
2.34.1


