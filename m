Return-Path: <devicetree+bounces-309544-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id JakzBKMhKWq/RAMAu9opvQ
	(envelope-from <devicetree+bounces-309544-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 10:34:43 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A3651667392
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 10:34:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=BLs94N5X;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=B0hGMiqQ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309544-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309544-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 90A1430F1D61
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 08:32:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E0223AFCE1;
	Wed, 10 Jun 2026 08:32:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFFF73AF666
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 08:32:22 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781080344; cv=none; b=UBJCjKtdf6D8xOsAvxr7OIfr0MSjG/TH+Ss4KxF4U1BhuJPB4KN5TDrDb38qN5ryja7ztynAHYKSVX6bySBEqLML6V6LWDL4+L7WHBH/jvrO0DYVOfoqaDeHYAn0fwBGMOPXeRNfhYfMtUTPGC1xf0OHjGjrCqWvv+3ea4ZLpWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781080344; c=relaxed/simple;
	bh=YBxDxpnUN0g1cyHe3+apDyMUfCheZu4o+Z6kfRRqcBM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uoy7+beGjCoXWk8UCg9uUPg49yieNTIiRacplrdU97X6xyO3W5BekuTwBS6MUOH6tssGlbwpoU8c1VB7/ilg5M1sTs/5AWp6+hJPtJ4gEBNeyqww2aovCpqOkYI+QuqYQhOAilOX85bjtiFDvGyw+XVVmTJvv1wOMvh/UcBaDiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BLs94N5X; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=B0hGMiqQ; arc=none smtp.client-ip=205.220.180.131
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65A7iROo867243
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 08:32:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	c/yPWsrppuRTjv7KKH5PGwEYFWvJR5egD5gH9LtEMeY=; b=BLs94N5XMv/G+8L3
	X4nxNyk+lqKA6+DJ6oHvhpE/Y31jDGshbwY63J1uW0dDCsBvRfGzgsxIMA1ufled
	AMNUynN4SMtQM8YhqUuDpoGQudtp6fslebkY8VxE75AkVGLhwLtMjTiTVhbv31xD
	b7DTZjO5Ce4y6lFSNma2cci3Rd78ovfiR1BHWXxwMnjF0VBI5oD6p+PoCYdTubtH
	rEOT60+gB/J1hCUUTLgWH20QAk9mIKqfCzus3V9ccnhlApqoCLV45T5gwM2WqaR3
	Zf0PZdp8fiD86/AW87gviPH0dkRaSE3mziTh6RnQycAiWhfDPXJQsO4r8CAYw8Fc
	bnzUPw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eq0kd8ws3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 08:32:21 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-517dadd84f8so9588311cf.0
        for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 01:32:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781080341; x=1781685141; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=c/yPWsrppuRTjv7KKH5PGwEYFWvJR5egD5gH9LtEMeY=;
        b=B0hGMiqQfZpVWkSlv+iVdTIoS+sgisybbdb/DWBnyHKaXemoLcG1y16+LaG0rwoy5e
         TFktxxfAzmdlyNqErLxBuf9ovvosRLBcs8i83fYyr46QwdWYP5Co+m5zK9IUyEZNC8UW
         3MXdqSDNd+2ZihUWHABVBLEvJ/IaF1zDpVyKOl+g2hFKAMZrGj6be1/mkIvgy9DbpGxl
         KiEMI6KMGwFjhRTGCN6VdpU5l8bKolSYomeBOr5chZRrUdebUf2bZICMvBPcrg8ZxLVg
         qbQniylrEUZLhgkFtTQJULIjUU/RW4f/++POdDtzd8j6F6NqwLxLhySlBcMSUupbVl+5
         6fwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781080341; x=1781685141;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=c/yPWsrppuRTjv7KKH5PGwEYFWvJR5egD5gH9LtEMeY=;
        b=U8zFD6q00vcI4lIxcN6Gl/9vVmtz1AJJScVJPS4O96p+FBzkofq38oP9vaXeE1l85R
         B2ilLGKcjYDNgRfeBJJtls4N+UVZguexrx23vw2FdIOMV1CQV9v69nOdIYNc32sCxp4/
         U5/LoQ4oCdkilXRhFaHzKMRLMbbCjxACTgB1GyQtMusFS1sX3m+xIltALMK4f4G4PrS2
         2D9S+MYBCQIaLDVBFj53PbGpE8XKAcfwrTpOxH0okkbxFlwnwcPto9Ph6EG3QC6M5MIU
         2PacUlw6okBWsdtTUF3ZwGdrXF5DJFWI7KVrtjA8OuBrxTS3teNVT0JDEFUYPQd0sc/W
         IMjg==
X-Forwarded-Encrypted: i=1; AFNElJ+r48yQspeRPnsQhaSc8NszpuYyGBbTZ57wGab1GF3s7ENhJl74IFs4XnAwpEZRzf9bsmJHxNLjEdOE@vger.kernel.org
X-Gm-Message-State: AOJu0Yyk6AKXecqc9QtqLcKlPeTO2rmEXvKbCyMFDQpc30/khAN57Vv5
	HQhUyRIRX2gvswv6vohqQ/ijLblkw/0KVdYWbsEoLd/u+3DQzy6dIrPPmrSmNuwMd1BdQRmT9M0
	0nLxnlC+hSYt1vgptVJItlyDGesModO6W/EJIlrv08BvqgbSO8L/+D1cTI/m1Gt1d
X-Gm-Gg: Acq92OFvZqm2fnMdf/V181Y4XJSSBNxCJJM/yZOBesuZhoWPWWbD4Bf6NOxtY9wd4lF
	xdZn4nG02sYrZ33kKLgvs+rRl/9bSdk8p1fqc7NuOlQ2RE7/ui2MWku6MFW4jVhitYKjXVoIq74
	8AnNNsCJnWTutrzvlNqvxhGayhJ8DfTwSmfF7OFYJ/HMIwyqFlEKTZfM6nT7LhpYHCvFZZHKutI
	Rhs6UAX9z2wTm1/4zGKYFCa3MWAia+87vSQuoBNl1WQ6JgJNi4zHJNH6YpeBB3oS1ov1zZRPGqK
	PanO01QAli/s6eX5d+75RZ8z23aBxm4la+GH4RxnTtbjSEhXQ3Dtjx0BNlsfHgIY1TtV0+EZAjW
	PPcf8I+Eee4Wd0p1ynfqbgDr57Y6feoy39NuOCy/CVGYZes/0UeP57BjJJC7zTuFNJ5QV3DXSIk
	WaF+zzDD2mDTtWaPdNl3e7zDvdSs8B8ylsMNaxeRD1JTwvCzWdL9TIy/b/2j7ijGDqlbxyLZ3HN
	LQqqBMQ0nk5
X-Received: by 2002:a05:622a:1e8b:b0:517:6c6f:8ee6 with SMTP id d75a77b69052e-517ca517512mr93433071cf.6.1781080341115;
        Wed, 10 Jun 2026 01:32:21 -0700 (PDT)
X-Received: by 2002:a05:622a:1e8b:b0:517:6c6f:8ee6 with SMTP id d75a77b69052e-517ca517512mr93432831cf.6.1781080340709;
        Wed, 10 Jun 2026 01:32:20 -0700 (PDT)
Received: from QCOM-eG0v1AUPpu.na.qualcomm.com ([2a01:e0a:830:450:cc96:22ae:323b:9eff])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-68e6585154dsm9516218a12.15.2026.06.10.01.32.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jun 2026 01:32:19 -0700 (PDT)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Wed, 10 Jun 2026 10:32:14 +0200
Subject: [PATCH 2/3] hwmon: ina2xx: support ina232
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260610-monza-ina232-v1-2-925b0d12771b@oss.qualcomm.com>
References: <20260610-monza-ina232-v1-0-925b0d12771b@oss.qualcomm.com>
In-Reply-To: <20260610-monza-ina232-v1-0-925b0d12771b@oss.qualcomm.com>
To: Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, linux-hwmon@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Martino Facchin <m.facchin@arduino.cc>
X-Mailer: b4 0.14.2
X-Authority-Analysis: v=2.4 cv=TeamcxQh c=1 sm=1 tr=0 ts=6a292115 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=EUspDBNiAAAA:8
 a=4d72ej-57Oz9oLBfKlAA:9 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: nNw5wlGgHKeF2BydGKgUGjeKqkTy3T_X
X-Proofpoint-ORIG-GUID: nNw5wlGgHKeF2BydGKgUGjeKqkTy3T_X
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjEwMDA3OCBTYWx0ZWRfX0TvWXIkiaRZ/
 XLl4Bd2rK+ahKUUD+esRm1tCJVgpDghoP65GXZemr9QK+zlbenyWS39IV4ZZN8K3YmngjnOqSsq
 skBIXCBXWya/TwKpdRaUDiD8jZzMUGQoF0f0oLBoAhO7Y35JYr3HSVehH9VyJAVismWz0jslK3z
 e42ZVNXRbhwdnLy6oMZKpab9M/Gri6FoS8PfDljYrR4G6NUETXcGLuV6Xxo9lqhPprlOrHwuTTS
 bzrBHgPNfhg2kag4Fpa1vtVCXttHx7WgO4mGpKnkk4BDEneUD2t2iUxpVCnteO5cJp8S8+3kkmJ
 P3cxI3D2tbdAUcQ69WWSckjxWz0P3DIE9/LjpWF0A+C+bbg//h59DUpwa36ZDBGkKFHXHPsBBug
 AOuA8yznMrK1C+YzU7zHkOcSJ3hh0cU6DUVMfl1nvC0bD99u0Pb9Wl8+H4yjxLol6UAnQss33sj
 jmNnP0T0cw6gz2ZPSRA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-10_02,2026-06-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 malwarescore=0 phishscore=0 spamscore=0
 impostorscore=0 clxscore=1015 priorityscore=1501 bulkscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606100078
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-309544-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:from_mime,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,arduino.cc:email];
	FORGED_SENDER(0.00)[loic.poulain@oss.qualcomm.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_RECIPIENTS(0.00)[m:linux@roeck-us.net,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:andersson@kernel.org,m:konradybcio@kernel.org,m:krzk@kernel.org,m:linux-hwmon@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-msm@vger.kernel.org,m:loic.poulain@oss.qualcomm.com,m:m.facchin@arduino.cc,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[loic.poulain@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A3651667392

From: Martino Facchin <m.facchin@arduino.cc>

The INA232 is a current/power monitor. It shares the same register
layout as the INA2xx and uses the INA226 default configuration, but
differs in its electrical characteristics:

Signed-off-by: Martino Facchin <m.facchin@arduino.cc>
Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
---
 drivers/hwmon/ina2xx.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/hwmon/ina2xx.c b/drivers/hwmon/ina2xx.c
index 613ffb622b7c42b8b6090d3b4ec7b2fa412e24a4..122e7aa4fdfffb5bac3d15ff0496fa862147f443 100644
--- a/drivers/hwmon/ina2xx.c
+++ b/drivers/hwmon/ina2xx.c
@@ -122,6 +122,7 @@ static const struct regmap_config ina2xx_regmap_config = {
 enum ina2xx_ids {
 	ina219,
 	ina226,
+	ina232,
 	ina234,
 	ina260,
 	sy24655
@@ -196,6 +197,17 @@ static const struct ina2xx_config ina2xx_config[] = {
 		.current_shift = 4,
 		.has_update_interval = true,
 	},
+	[ina232] = {
+		.config_default = INA226_CONFIG_DEFAULT,
+		.calibration_value = 2048,
+		.shunt_div = 400,
+		.bus_voltage_shift = 0,
+		.bus_voltage_lsb = 1600,
+		.power_lsb_factor = 32,
+		.has_alerts = true,
+		.has_ishunt = false,
+		.has_power_average = false,
+	},
 	[ina260] = {
 		.config_default = INA260_CONFIG_DEFAULT,
 		.shunt_div = 400,
@@ -1005,6 +1017,7 @@ static const struct i2c_device_id ina2xx_id[] = {
 	{ "ina226", ina226 },
 	{ "ina230", ina226 },
 	{ "ina231", ina226 },
+	{ "ina232", ina232 },
 	{ "ina234", ina234 },
 	{ "ina260", ina260 },
 	{ "sy24655", sy24655 },
@@ -1037,6 +1050,10 @@ static const struct of_device_id __maybe_unused ina2xx_of_match[] = {
 		.compatible = "ti,ina231",
 		.data = (void *)ina226
 	},
+	{
+		.compatible = "ti,ina232",
+		.data = (void *)ina232
+	},
 	{
 		.compatible = "ti,ina234",
 		.data = (void *)ina234

-- 
2.34.1


