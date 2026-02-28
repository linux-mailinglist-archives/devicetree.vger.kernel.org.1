Return-Path: <devicetree+bounces-269494-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YBFmN2CSommX4AQAu9opvQ
	(envelope-from <devicetree+bounces-269494-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 07:59:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 586371C0B66
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 07:59:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 839053077517
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 06:59:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97FB234574B;
	Sat, 28 Feb 2026 06:59:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Sdzj3bSv";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WfAAGJH8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E780314B95
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 06:59:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772261961; cv=none; b=qnOvuzujIjIstktjNPGKkQ8qHU77jrMCiyvGwbnrYQdtUVKczEYYgUaPM5M1V6qGe4Pdg3+D8dKLnVLGbK3/qcS4Q4pOUSLZP8NDiY1PZc4ceRm0j85EeDFuqelPNM3pxYBVsbUONcZrQEcPKdpxZ5Gnz/j17EPAj+4JagYyrOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772261961; c=relaxed/simple;
	bh=QlprUY8gvQUShXRLIGLozJ5UErpq8srPm+K+1urO4EQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=Qd2dL1M6feVMIjoGkNjMzIM0Yu2boJTyAsmMA4cK1wI21Gzj/txaa3aMP6r1N+XzaI49CFb9vsAYMuAf46mIL5qCubefE1HmQWcU8gIpiXXDcxR6NZrs0/PHY5fFxAIF+2pIer9xBQVcE6KOghMNJGyUsUv3lx3viFk/V4rXK2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Sdzj3bSv; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WfAAGJH8; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61S6WKEb3590683
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 06:59:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=J2juoCfwNIa5zjlbN0yZsO
	/YGKy/XP8IUS67H+9X2+s=; b=Sdzj3bSvSR1PNoXiUlna7PfVuzCDXzCcR3odVo
	t3yPOqIsM77/GVG0tB2bvCs9BDtcsHeu1tVGpKWIEuAYDTGrHlcczexPkCVwxj7N
	q1qXsejAmcOwo3lyEnx5QKb0IMuX1RPL/TtHKVUz/iNOHFnltK7P3KPqIeyDfrX7
	AzGq3xqogboYjdw3Q/Wn6+DIFkRSNoruCiC4IgTRLnRTsdGNqqOfE7ZEp2CSlyCb
	DQKDdgZMfztt018s1Ny92XD0amyS+XuxPtSVpemyZCENprHrXP08tbR2qgRA3kz9
	rYT4M/NvriE8X9xDKgP072doeDtQADMvgE1BBtsxUvAdxn6Q==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cksf6gb19-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 06:59:19 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-354be1b25c3so1348134a91.1
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 22:59:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772261958; x=1772866758; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=J2juoCfwNIa5zjlbN0yZsO/YGKy/XP8IUS67H+9X2+s=;
        b=WfAAGJH8UtcVZ/Py9gzDust57Urk595hiJQAYLqTAfyeDP1iclxppYpAl3Y/dc4bPC
         3v6qtoOU6/tUNFAncnQxB775Xo8ByXksireftSp3gGnsxoZlzbzD9uP13dGeYjLPODfJ
         KNLLxlkrZhZ7WjWYXjFCekaab+bCBFEWTqWmAvZqDGs6EpUQC/We9BaqJQhUeL8pmODL
         SXASWG7KtXINtMsIk4OuN8T8heA+9eDG+TXGlFakJiFEUg2yx1itTCLTSiZh7Rdiutoa
         qUF+swHESezGDw+eoK0o1EAbvhDZMOCuGvUzGHZ8SH4/2XflN6A19zaoSIqQ6xHqZ3BD
         In/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772261958; x=1772866758;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J2juoCfwNIa5zjlbN0yZsO/YGKy/XP8IUS67H+9X2+s=;
        b=aV1bN/yJQviawvqirRXB+tVNrHQYNdH+PNcuicaPF63wi7UrAlz3dUzrxL0rHCSD4d
         kAUli4GlmFC+hggJqdDfgnosOjheFUpY7mRF9dDFvuOd+AAC3AhYA48vCrV5yJ43y9tl
         dMMzDzVlBbzsNJklYk1IcLdioHme/Q/LwIuIHbozGvyZWxpjEYMUAUXAlmHhlsPlxyq4
         w+CqPQqICUwcYI4rZCt8sarN0k5Zc+R+PHf96jjtZGroQ9xk2qOduRIaR83rK34ns7bg
         zp1x/cKaK4xf+aqZDpBichla8uEJ4s8kZ/r+lx5tgV86yzSfboVR5kYZimTEy+bJ3DFM
         BvaA==
X-Forwarded-Encrypted: i=1; AJvYcCXhv2drRiUkf/kvXQPTZIwAREArvM4TeJPO3tChzehhltd60ZQ1+2+H84gyYCVYmmXM6QM7JEWkM6Sr@vger.kernel.org
X-Gm-Message-State: AOJu0YzF5KUgIhTCBu4d2e3Vh6e+y/6EoX/HuaE/jn7XXY9Z7x7sMU68
	cPSD+r5q4gvy4lJPeZ4/adUY2v489f8th83FoWrG9VHrRf/ezzzh1Sf+KSWVovD6mFuyhtaJ0tb
	5ZnSBgfzeWHEEzQY0r9x0BVCiUK6+ymaq7GPazx2R74Bx5TtlHTTg4o2HokK5RPGI
X-Gm-Gg: ATEYQzwyinFV7oNYsyKMiAMybEInTGKAZvPiy2xjt69WxYd9ldUDSqvtCSbCKMx/JZ9
	tianyEAaetn35AY8vFPt3pqhQUb62JJS35fdz13W48/G08orzP6zLKkH09blrDXFKDv6ilOehkb
	c+kOGh9p5vQfApOyd+Ww5Il8TF6Sh0tlhLsKMVNcY4vIM2u1VzSCCmu0rwufyxuVtA9NsiddHYK
	Z5aOI3S4P54vojI29SDA/Ksyt+CXRVkL3Yw6Rocbynl9VacaU9hPVWrfpuWYXBO/JN9biNTyns8
	tfQolnVKDUr4mbMwJZ3wAKk2uxsWuNc7iczc9/usgEWAdkUss/iU64qf8X8rja8RAhI5PVsRvpL
	XDv7PbFVvueDTzHMaMOaptPwmezdUfQ2dEmCFbOGP9BpQgrPU5ucl/yOSrEba9+6WHMOrnQo+io
	kFr0EO2plAoVhryDRd8ULUVSaurMKzdW+ZGR7jYDcZMA==
X-Received: by 2002:a17:90a:51e2:b0:359:7b9a:2cff with SMTP id 98e67ed59e1d1-3597b9a2e25mr405060a91.0.1772261958049;
        Fri, 27 Feb 2026 22:59:18 -0800 (PST)
X-Received: by 2002:a17:90a:51e2:b0:359:7b9a:2cff with SMTP id 98e67ed59e1d1-3597b9a2e25mr405051a91.0.1772261957594;
        Fri, 27 Feb 2026 22:59:17 -0800 (PST)
Received: from hu-vishsain-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3597dfea2e7sm613795a91.12.2026.02.27.22.59.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 22:59:17 -0800 (PST)
From: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
Date: Sat, 28 Feb 2026 12:29:05 +0530
Subject: [PATCH] arm64: dts: qcom: qcs6490-rb3gen2: use DP controller
 native HPD
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260228-edp_hpd_rb3_gen2_for_next-v1-1-aebc047eddc1@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIADiSomkC/x3MQQqDMBBA0avIrBuIo2m1VykymGais4lhIkUQ7
 27o8i3+P6GwChd4Nyco/6TIliraRwPfdU4LGwnVgBafFtEZDpnWHEh9RwsnpLgpJT5242zsh8H
 3OL4Qap+Voxz/92e6rhtIm75BawAAAA==
X-Change-ID: 20260225-edp_hpd_rb3_gen2_for_next-50f488b42972
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, prahlad.valluru@oss.qualcomm.com,
        Vishnu Saini <vishnu.saini@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772261953; l=1459;
 i=vishnu.saini@oss.qualcomm.com; s=20251113; h=from:subject:message-id;
 bh=QlprUY8gvQUShXRLIGLozJ5UErpq8srPm+K+1urO4EQ=;
 b=sY0+m++cubva957HJfYE5+OFgB0LgScoIxCKU2rUAO07ygxlIwWXeW9DJPaddux5X1Vcddomb
 2BeNYdnj9v0BGYxNAspzd7Sq528kgI2lJCQGom8pDMbSEmuf32/M69h
X-Developer-Key: i=vishnu.saini@oss.qualcomm.com; a=ed25519;
 pk=8hlXlF8j/3GeOaDK3w2LYhkv9FanCQru0c7kRH/It7k=
X-Proofpoint-ORIG-GUID: sLBiF9HsFqOT30tYRDND1Xi531Rqby_U
X-Authority-Analysis: v=2.4 cv=JoL8bc4C c=1 sm=1 tr=0 ts=69a29247 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=3BiFoSQRMAqDAi_AUNQA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI4MDA2MyBTYWx0ZWRfX7wn6RHQ0hFQv
 WFBgagqLD8vi5q38AFuaHlMHtlETpgWHZhKrGxuxl/ksRzoND0XasQYYP9UTbrgwR3IcWIY90k2
 NGATFnyaILNfYHYYyeylH+RbCcERNUW6zOa/u7FVF5D7fkgZa698eBuP+vshLYVfbhcfUf/dNjQ
 LTYR/snL2tq11GvQ9w7DwNqUyj0muaisZHePlR02+/bby/+m3VZ1G0dLcdmf/2eulLwBiKIBJM0
 Ovo+nA2cNLcHpqyP/enVIjeev42QXfLs7SRJ9JSi+4qcV5rh/xiSn+9mWeHJN/XVoRykQ/TOsPz
 /bCgqT3AGRBhD5V4rWF4rMbO+y6UhVK5Ed6Mx12brtcllrzMi9dT9qkBVgNX1KIk6NE92LF38ps
 2nfb0U9rgT06zM6rTpI+GvI030rzJYOeybfkRgAThKqTE4KnOFHnj9N/189CwiKcHZAtPUq1XI6
 c9Zgd2EgFbpcCywvVvA==
X-Proofpoint-GUID: sLBiF9HsFqOT30tYRDND1Xi531Rqby_U
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-28_02,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 malwarescore=0 priorityscore=1501
 adultscore=0 bulkscore=0 clxscore=1015 impostorscore=0 spamscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602280063
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269494-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[vishnu.saini@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 586371C0B66
X-Rspamd-Action: no action

The base device tree configures the edp_hot_plug_det pin using the
"edp_hot" function on GPIO 60. However, on qcs6490-rb3gen2 this external
HPD GPIO does not generate a connect event when a display is already
connected at boot, causing the DP/eDP display to remain disabled.

The DP controller’s native HPD correctly detects the connected sink
in this scenario, so continue using the DP controller native HPD
on the qcs6490-rb3gen2 platform instead of the external HPD GPIO.

Signed-off-by: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
index e3d2f01881ae..df678d7dba10 100644
--- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
+++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
@@ -49,8 +49,6 @@ dp-connector {
 		label = "DP";
 		type = "mini";
 
-		hpd-gpios = <&tlmm 60 GPIO_ACTIVE_HIGH>;
-
 		port {
 			dp_connector_in: endpoint {
 				remote-endpoint = <&mdss_edp_out>;
@@ -1373,7 +1371,6 @@ &wifi {
 /* PINCTRL - ADDITIONS TO NODES IN PARENT DEVICE TREE FILES */
 
 &edp_hot_plug_det {
-	function = "gpio";
 	bias-disable;
 };
 

---
base-commit: 8a63a422ab10f387989bcdbb0cc01e24b7dddd53
change-id: 20260225-edp_hpd_rb3_gen2_for_next-50f488b42972

Best regards,
-- 
Vishnu Saini <vishnu.saini@oss.qualcomm.com>


