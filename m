Return-Path: <devicetree+bounces-268241-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IMWfOb3DnmkuXQQAu9opvQ
	(envelope-from <devicetree+bounces-268241-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 10:41:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A29C1952C5
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 10:41:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D74773177F13
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 09:32:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8041038F241;
	Wed, 25 Feb 2026 09:32:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mi7D9bpy";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Q7Mwpgfy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61EC231C57B
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 09:32:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772011935; cv=none; b=pTEL/l+FwnBo9PC+gWhhCoQF1z9MsOWq3oz9FWTxvqQ3Lcga4tfZEFN4+uz6fbehRL3/BQIndSwRVr5hr8hsKBR7YipUarGQlmg6pDiGewCGk2jYV4+E3YTUx4XzVT4Z9BDs1jJG2k4yt2p0Ab0HJk9jLzToiJTJWXw6NAhLV6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772011935; c=relaxed/simple;
	bh=U/+o9nUyHx9+NniGBEPDco+IrEvQ+QM95H+jvPThMMU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=iutGYprKZD06D9ljKOJ6M4FDvq/H4A+BkgG6Kp/YX3c6GLAk1HwgjhIVwGph7W+j78nLzRL4Y2jtJJUwp6lntC5Vf+zqFh1ddYAG/MF5t/zWpMT6zKTVLaHZpoRAPbWylJfITen/L9sTHmCxIhdt2fcn2ByKZQ4RwH+Lx/ZiKcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mi7D9bpy; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Q7Mwpgfy; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61P9TBua2365343
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 09:32:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=xX0+lOMCotS
	XXElNvJDICNejpp715IbQXMgUxEtPFus=; b=mi7D9bpyJ4q2/X7kgspKwoBv4DE
	Hux7+SPm+eFj8xy8Stu0XPH/2ZonhdOh7vvcK7sdQTVjhrWEz8D3dF5QIwba76ML
	8df8LqmSsFmcm5H2qRlA0t42iaKE2I42pSrUME8CD20Ko7PPOt01K96daJoJIeyV
	93tbIpASKrSR8TfOE9jcy9U1R0GgOSdU+vtDtyoXqBcePNZyY7pAPh/yk+kPEH5w
	LX9R2WmeifA6NfOj+mGjJGyTxn3yCNi4rlfCpDwz6zWGO8GMG5OWouGsV4VhMjVk
	KJjPQbHCNA7tNmDpeYiPZJky8+IInNwVmZBj0WqKq6Ktp+hU1Of/yBWSDkA==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cherjb2bb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 09:32:13 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-c70ea91bfe1so300009a12.1
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 01:32:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772011933; x=1772616733; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xX0+lOMCotSXXElNvJDICNejpp715IbQXMgUxEtPFus=;
        b=Q7MwpgfybotvhXqHdqPxFtQaPSHXGEhzujXmyBntei6Pig89jPGqDdmGKOv84fVdij
         jNxTIW1f0it7f77yJsB+OEeCncqO9/rQDd4nyVELYnXvmadcu/7JKzqMCYVJhuJUofGq
         Qyrq+LPxGd5I3QidZDfBPZqtezqNsoGAizp01osWQPzAGkCDzDSrS/JR/7h6npi5zoe2
         xVo73sVIsgVQdPQ8zq5v7BlnBBfWcbdQ7575NPYdeoxnWAJ1B2DuAfINT/Tn3DYHyGos
         gl24ZGfmkezx+n+9naN6HJuuAFLP4BelXptCyS3Fa0n4tul/fIQxp1N9gP3hQkqtCjPJ
         w31g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772011933; x=1772616733;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xX0+lOMCotSXXElNvJDICNejpp715IbQXMgUxEtPFus=;
        b=Dlp4V3xOCVW6F1bHD8W/VQGETGp6BKl3lDCgWGXfvcD/FCrjiRKmGz4iq9kWEv65IL
         WDHJopsdO7f1nEIH26ICkSi987QP3PeBNuS0LEUwTIQI9W5C7m8V7eKeiPq7Urgb0Pyz
         bw9eKupJcrbCx0WjqB02fB2/yYDmdi/9fAV6VKKaEB2aY1pFKsB/D8QY9UbxWdZigeni
         LCwMZEJgVceWJCtO44OoLM5RKMhQV/q7NFgzEdIl8CFoBKgmgWn3RrpUvjRvOmAMMpqL
         9cel+KqxOMwbps6Dkj0wr5PMDVeoN5vHICnGyRSivwyvDn5+gERJj6qsEHaBfRT9VOWo
         Nlvg==
X-Forwarded-Encrypted: i=1; AJvYcCVkn+xWJhOyUIpAANRFS+UKxt33iTBY0RfY6nNfgp12WblmvR6r+5jDu/sgUre71c3em7eEIfl9qsPZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yxnfk93pa5rVleEDvIjX88oicsXZW/uObT2lvUJIAAvSp/ZCX5y
	8mibItI9XWjrkzqt0MZ3ZBglfm5Joeh9YV8GBhXJ2WtSRtFv4s8VZAWckcG6DYt9Xj1XpWM/76T
	dUehKliB5ufDl0I8kTmFxMHiAmswVtQQHjoIIlBf2SxQ59KY/GPAfNfECz9FOLZ0FClU9CPtE
X-Gm-Gg: ATEYQzzA0AD3jXH2R9rk3zvtRiaA5h28xHJSws7s44+VesUPWvlvBUv3AirS5ra5F4v
	Q9O1cy9gc+UBT2cJ/usoYY7tYbNiAJXy1S/+2Q7wHMstF5AbLxiVvn79RqRcguwFFR2JPwjciL9
	9+IPsIXOMZyrfn3ZA10LJcgVV1EBI7m6eBL620e7q/d3CxdIKP2SDfi6H2VTMXzQUhRCn0a3WMG
	bPSlNR7M11HVHWl5SMRsWvp3BUjfLZofZ7N2+GUr4bz8VNBqf3Lf7Jmibu89bwEQ9/FmA0KVyUM
	JAXxJTSmcV7TEghuddCFEFr6qk/SGWOGznFyypfmioNJv2Oo52RZy9qRlpNaXEIccFcdJqtQ2qq
	aHK5DRVMM4jmk4BPA65yq+/nPW54mO2pv4jDuhOL/SX8ht/sigYZbWmk=
X-Received: by 2002:a05:6a20:1591:b0:35f:4e9d:d28b with SMTP id adf61e73a8af0-39545e5bd48mr12550023637.18.1772011932802;
        Wed, 25 Feb 2026 01:32:12 -0800 (PST)
X-Received: by 2002:a05:6a20:1591:b0:35f:4e9d:d28b with SMTP id adf61e73a8af0-39545e5bd48mr12550007637.18.1772011932332;
        Wed, 25 Feb 2026 01:32:12 -0800 (PST)
Received: from hu-swatagar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-826dd688aa7sm13628098b3a.14.2026.02.25.01.32.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 01:32:11 -0800 (PST)
From: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Swati Agarwal <swati.agarwal@oss.qualcomm.com>
Subject: [PATCH v3 2/3] arm64: dts: qcom: lemans: Add role-switch support and HS endpoint for tertiary USB controller
Date: Wed, 25 Feb 2026 15:01:54 +0530
Message-Id: <20260225093155.4162177-3-swati.agarwal@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260225093155.4162177-1-swati.agarwal@oss.qualcomm.com>
References: <20260225093155.4162177-1-swati.agarwal@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI1MDA5MiBTYWx0ZWRfX2JWLTuMiJsNn
 +U0d27kI57UPUyYChRjUwPUkV3AzNKw0o5RdxVSwKtYQKkaDkNL19XW5Fpc3UOs6kqz1UMMhfcw
 Q1qf0v20vAPS/EZPBsGhTTEABPLY67Gx7iLRvOFWz5UgLijZ2oWCUilve6ojwZjfmCrbcWtW5Yc
 eiJCiPtVfX96f8N4M/ZDgX2KGp2Rhzmd7FCWe2aQu+Qe4UXLPDQP0Njzb3hiAvvh1jm8sh+fmbL
 ejShqohkLwN/1kn9RRiQUI+5wbQm8jlSyNgYh5e+hsmkBsZF63SPLD1G4KfP4ymF8WlSdSBP1AI
 yNT9Sa+zqgEB/8X6UOJLXT1onmpAeTfzncelxjG1NiANj47bnHzq7u0/9J1e7PGagqSXuFK6IE3
 yjD4r/u2KNvR2lqsghwE9UWqQ35nAORGh8C/hTJef3D+gbc7LWbQGdHAxKiode8oPVgrBKP1deP
 5ZxUGYJMlKbvZS+m6Kw==
X-Proofpoint-GUID: 1IO3v532zlEJymxnvkW7-fGGL6iXH8P6
X-Proofpoint-ORIG-GUID: 1IO3v532zlEJymxnvkW7-fGGL6iXH8P6
X-Authority-Analysis: v=2.4 cv=NeDrFmD4 c=1 sm=1 tr=0 ts=699ec19d cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=EUspDBNiAAAA:8
 a=ZrvUoS1E-TgtW8Atug8A:9 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-24_03,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 adultscore=0 spamscore=0 priorityscore=1501
 suspectscore=0 lowpriorityscore=0 phishscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602250092
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268241-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[swati.agarwal@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,1f40000:email];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 6A29C1952C5
X-Rspamd-Action: no action

Enable usb-role-switch for the tertiary USB controller on Lemans.

Additionally, add a port node with an HS endpoint so the controller can be
linked through the DT graph to the corresponding connector.

Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
index 808827b83553..d0e63336be6b 100644
--- a/arch/arm64/boot/dts/qcom/lemans.dtsi
+++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
@@ -4270,7 +4270,14 @@ usb_2: usb@a400000 {
 			snps,dis-u1-entry-quirk;
 			snps,dis-u2-entry-quirk;
 
+			usb-role-switch;
+
 			status = "disabled";
+
+			port {
+				usb_2_dwc3_hs: endpoint {
+				};
+			};
 		};
 
 		tcsr_mutex: hwlock@1f40000 {
-- 
2.34.1


