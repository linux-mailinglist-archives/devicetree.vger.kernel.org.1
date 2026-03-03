Return-Path: <devicetree+bounces-270353-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YPDPB6eYpmltRgAAu9opvQ
	(envelope-from <devicetree+bounces-270353-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 09:15:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 93B0B1EAA96
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 09:15:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B98A530C7BE9
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 08:08:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B6C0388394;
	Tue,  3 Mar 2026 08:08:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZMUjOLPH";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gblEP0sy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D00B7388365
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 08:08:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772525282; cv=none; b=dJL+j0OHlIvoxM6P9coaZb3QqOC4ZHzDq2lXvg2nJliCDeBi48lHSkBapULqxSeO+WWVSiUSvNLyq3GOEzib5fY11/K7FjG3st+M1Qpl0Xr41H8ezDtPk8k130Ueq7ERiDK7btoQVY8jIEw4TN/MagOdlXwRRr3xWcecsUI/n+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772525282; c=relaxed/simple;
	bh=BnCAui6Ioo2mipHq/n6w9/7hXXUXw5JsFLTTwkZj89o=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=dDO9pt2auxJmVGxoswx/jZPnKZdI9BKAsQWin8ji8llL211npgpPUp+PyEszk2auHR4XRdgtbD462QeLasC0Iy7Ele8uoUYV0OaGlLrlOksVXu7JHZ1GGCcjNELBpwXTUK2HAcpxiMD25XJjh11xGpI7YGYv+pIvhpfAHGxnyts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZMUjOLPH; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gblEP0sy; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6233shNC3862877
	for <devicetree@vger.kernel.org>; Tue, 3 Mar 2026 08:08:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=uDb8jY1w54z
	dMrAJYkowRoqpBXmh+IfOvP7lxQOzp9E=; b=ZMUjOLPHUWAylxy6RuqJouSW/kG
	jXe8asCojzvMZzVjTZny2Dy+hAX/9BYpkqiUWCi2Z8/0IH6WBkTwU8LmOc00ZiHB
	cKDxJrK7ZpFXA6OdRzwXHa+S/z7hV6DtlppjkTgXT2LXHe3vo6GkvosavI+x9e+x
	nC/igOq4qJPqBAHq8C8Mzvip/PDTovK7lvGEN85Al4xS0H6wh1ahIoG4bITbaGiw
	9RbcgHPPRUhaHNZdS12tHG3BxR6idcfl6v0rwBGb41EhiX++iy33wsBfWyKIvjfK
	SK+APIJ5oNPVhiwmGin928PfX5TTEecZgQ1MQHVLvOzVIVDyS47a/ZKhx3A==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cn9bjkuad-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 08:07:59 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-3598d3e3bc7so1751613a91.3
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 00:07:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772525279; x=1773130079; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uDb8jY1w54zdMrAJYkowRoqpBXmh+IfOvP7lxQOzp9E=;
        b=gblEP0syQNoxZW+0h1XW8JkHCe3fstc89er3F7k1+k1Ia702W6pvaIn/pqID6j2akW
         VOOr4tS1UEVg+iaAIBry244XzfN2ZFuFR7bWEgpRhABX3WfZlxQfbsv1bSnnqybfCc3U
         P/Xm1ILCs2WUu69uvehcP890cRFQ4vAQ1zvKI/5B58b8VVB1y8VDu4Mh11NDSkVJsk+a
         zeeR/r8U5lBHtlFrkDEBCbvrvnEHVpUpnx7lnWlbRePTxCX1Y6hyVHWBFERBzcS1doyp
         KgNbNzu81pPLkmMEA2ngJusNKmE9hHqJkdPoD9U+DdEK4Sm9Rcz9PYkE7Chl/hNKHa3v
         EXjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772525279; x=1773130079;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=uDb8jY1w54zdMrAJYkowRoqpBXmh+IfOvP7lxQOzp9E=;
        b=XLmD9ZBxS56wsczv/7QzMDBUdzxq66Q8envG8jY0XxoT6BCnvKz1cQ/uGexGgJetv6
         DDkcEzEjwCXBWsqYTlp9aIV3G9AO9ecA5jx1TZbwBaLedVchKLGzXmTg+xEOWN6D1t6D
         fMk4XSKC51JYimPuXuZLTaT36vXzZzl+Q2hFbjJ+KEVcIVUdPQSbGhKjJ7t9WEuEPKVZ
         +ybkYzmP80GVJnVmfWgjsP4BNcnOpWFt0rV+E/jBPm3ybx4Ptt+99uywNQqzubabDZQE
         v9MBGhkfcZGn/tMpmoh5Dyoev1fPFIQcyjopawlI9qVoICPu2SXlXvpP7Gvf2ZrtkZ/k
         Zvtw==
X-Forwarded-Encrypted: i=1; AJvYcCUedr4SLDDrHOQ64q2w3ye70RQZQfwqx0euC/3iV/V1IdzmbRAeSlGUNH7hf6Ge7m1HME1Z/q4ZxNbQ@vger.kernel.org
X-Gm-Message-State: AOJu0YzaEgxA8hIEU+6+ou6R+IUky/afc59RMYaPr3Uyv65KeF1EDZDV
	S1uWJyUvQZJyqKWnvCs+3Qzi5efQa0oFrpZKt7QSdEEVEdy5GF9lhYSaI5PF+k/XcrAq39epqaI
	TqCTUDzRqjlEy+k30A4iHcS792Me0brednPvv+UIlOe4h5DT9/W9JnXFxUtWehfjV
X-Gm-Gg: ATEYQzyTJvRk28SJYSbNhGXE7qK8BkUOHo1vXSSenmfi6HzSN5IKL05MFoHMJx2O1ax
	rHLfUn58vyJERVKCxAoIMTAhHx79DQ3ild2E43vahRaRLtvPgZ4pnrqe38j23DlXs1hGq1SjK4Z
	7/6bQmfoPJ9Ysz49rxVObp2I29KOtwJoeqf4543eDe+oA/3xmUWXP7bmLo6aEglFEQLGSfguSXd
	H0q4TNCa4o/nr+gxzwZtRQtZ3O6vgLFziqNOxhZ40CeeZ6iaJug+/3Y3wMXui/xGRKbZIZITlwY
	by7eFeX92LSvppqgqAMErvynuNkYacvykKw4MqCoHbfwjJZ1WW748ZFF7D+NQ0cpKA50VJ2CyeP
	RXHiMb3uCZivCv9UrD1tj3RYZjfrPyjyH86EcJVlb3RPXbALR7Ls1A7U=
X-Received: by 2002:a17:90b:35c1:b0:354:bfb7:db13 with SMTP id 98e67ed59e1d1-35965d1d6ebmr12388770a91.35.1772525278557;
        Tue, 03 Mar 2026 00:07:58 -0800 (PST)
X-Received: by 2002:a17:90b:35c1:b0:354:bfb7:db13 with SMTP id 98e67ed59e1d1-35965d1d6ebmr12388747a91.35.1772525278049;
        Tue, 03 Mar 2026 00:07:58 -0800 (PST)
Received: from hu-swatagar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3599c3acea3sm1445883a91.16.2026.03.03.00.07.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 00:07:57 -0800 (PST)
From: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Swati Agarwal <swati.agarwal@oss.qualcomm.com>
Subject: [PATCH v5 4/4] arm64: dts: qcom: lemans-evk: Rename vbus regulator for Primary USB controller
Date: Tue,  3 Mar 2026 13:37:28 +0530
Message-Id: <20260303080728.479557-5-swati.agarwal@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260303080728.479557-1-swati.agarwal@oss.qualcomm.com>
References: <20260303080728.479557-1-swati.agarwal@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=Pe7yRyhd c=1 sm=1 tr=0 ts=69a696df cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=EUspDBNiAAAA:8
 a=3B0ugXEi2WB0otU2hYkA:9 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-ORIG-GUID: SZUX3i9ngr75Ropm1XzwXxcFNMyX3GNb
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDA1OCBTYWx0ZWRfXwYQqtJyQ9B+h
 tOib6+lVbKsab9WpNbhZwtUjGxPT4HEKdCnckB2D8t8J67lidpa4ovhEZNgWw0MLueMe3aB+U9h
 UDuJCoKFViAc3ekm2yZkr3yp7+7kXzaA/uwcUHe8l7iSIMsFyevzgNbRVuiZmchx3IkvMIYJkjR
 lhSPbwsQ/rjQe9nZMmlhl8IkolhVrzW2YkKFlJykT0ZKDFENVTore0blfrYhUw+Kh5QUbY0NqiE
 LIuoLWi2G6QweuVWCLHKsVj0D63FOQF13TKCGxJuCumtX7eeXsABdf6eBhU92AlqlmJWWQ90B+w
 D7UfWgWOb9ePtT4WJtnvbrJFTucLwC4SrhWIhUNGJLVMUkli2Xx9OQCaf5KEFir8VhoxYVtYjZt
 irpHyX3eXBqZYG0370kDz/lyown3J2sM74q9EBqYxSJq+lO7L2U/oslEbBzUErtqtv2vAhwE5YD
 r5W+XG2cmGzRCYgHo0g==
X-Proofpoint-GUID: SZUX3i9ngr75Ropm1XzwXxcFNMyX3GNb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_05,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 impostorscore=0 priorityscore=1501 spamscore=0
 adultscore=0 bulkscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603030058
X-Rspamd-Queue-Id: 93B0B1EAA96
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270353-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[swati.agarwal@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Rename vbus regulator for Primary USB controller as per Lemans EVK
schematics and in sync with tertiary USB controller vbus regulator name.

Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans-evk.dts | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
index 2203967c7d51..a1ef4eba2a20 100644
--- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
+++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
@@ -44,7 +44,7 @@ connector-0 {
 		data-role = "dual";
 		power-role = "dual";
 
-		vbus-supply = <&vbus_supply_regulator_0>;
+		vbus-supply = <&usb0_vbus>;
 
 		ports {
 			#address-cells = <1>;
@@ -151,19 +151,19 @@ platform {
 		};
 	};
 
-	usb2_vbus: regulator-usb2-vbus {
+	usb0_vbus: regulator-usb0-vbus {
 		compatible = "regulator-fixed";
-		regulator-name = "usb2_vbus";
-		gpio = <&pmm8654au_1_gpios 9 GPIO_ACTIVE_HIGH>;
+		regulator-name = "usb0_vbus";
+		gpio = <&expander1 2 GPIO_ACTIVE_HIGH>;
 		regulator-min-microvolt = <5000000>;
 		regulator-max-microvolt = <5000000>;
 		enable-active-high;
 	};
 
-	vbus_supply_regulator_0: regulator-vbus-supply-0 {
+	usb2_vbus: regulator-usb2-vbus {
 		compatible = "regulator-fixed";
-		regulator-name = "vbus_supply_0";
-		gpio = <&expander1 2 GPIO_ACTIVE_HIGH>;
+		regulator-name = "usb2_vbus";
+		gpio = <&pmm8654au_1_gpios 9 GPIO_ACTIVE_HIGH>;
 		regulator-min-microvolt = <5000000>;
 		regulator-max-microvolt = <5000000>;
 		enable-active-high;
-- 
2.34.1


