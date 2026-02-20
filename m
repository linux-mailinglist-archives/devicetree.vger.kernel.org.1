Return-Path: <devicetree+bounces-266813-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ODSLIcgAmGmV/AIAu9opvQ
	(envelope-from <devicetree+bounces-266813-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 07:35:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 0049C164FDB
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 07:35:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6AD633013A6C
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 06:35:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3D6A314D0D;
	Fri, 20 Feb 2026 06:35:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gUlclLqS";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="czHynYSI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF95E2D130C
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 06:35:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771569349; cv=none; b=WHG6bwNZnR6hgyni8BYuYulj99ZiKh2XokavWDrJPdtEGDNBSDFN0vwQC0DygYR15ZPN0b5wP+vhBZBZOdigUSZ38VOcINAeuDnLu2QideiNFGb4Olaye9NS4+hBYZtOZn/5HuAtBjEEY9+XmHTK9mPvmIkbGcvcRefxTDybHQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771569349; c=relaxed/simple;
	bh=ETE1iRFn/nOkdnuOe4LzLAldiFP6Ocvot+ogJuwjfkM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=BNxIgYHL2+WcV6zjgtb08+zJ5zKPIoydE4qXm6LJkNW9BW/AcWYNiuHO19s+fYrt3/PQ4mzW7trISK+AfaVfh2uNjg7ZBEm/LDEieUJBZtmph/nEgg0/jj59q5OYOov9zZ7WIPdIL9eZoxMmYv5UFzO4XkBiAUdWdv8uQw/eBb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gUlclLqS; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=czHynYSI; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61K5S8tj3337648
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 06:35:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=g1Fse1WZpEHE7IT9q8Iv5h
	C3QeM6SeiW1fcQGxL0Ms4=; b=gUlclLqS47/EhNIRGEemWdbxEqPV9KNFGzWi8o
	w7AjOzHng+Dv1/161IF5L/qyi0CwSIu8AOpJbClDyWUrSDUL0pb3wSLYxJdNesrI
	YrIA+XUHZDVvMoyQdGzAHAPsyLYIx/SXAQtCT7bmaaj3XHdjQr9t8q4NBfHQfmLK
	z4+II1YWd9U4eI3KOfczWl5Dg3AcFvF3j+lwUtFV1evTozMtv70hLjCzT1ZSQFxB
	xOixWO96m8fPzT7EVfQAfKQmhcyXglOWAY7M9BtQJiySB7rNKOmUCx93/O+GMh21
	zFoXRjGG8IOBoseu5LtsXN0adx0IbuQrW60EAmhDvDvUfVGg==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cedp6gq67-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 06:35:46 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-35621cea097so1092713a91.1
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 22:35:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771569346; x=1772174146; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=g1Fse1WZpEHE7IT9q8Iv5hC3QeM6SeiW1fcQGxL0Ms4=;
        b=czHynYSIfjsS7Z0omv008JLMCX8LvE6zWoN2mQ/9ueL161a0G5ubKmJH0EsNp2ai4P
         YT6mIjFnM8DxYd8j63rQnzbmqLLNgMs8/1xM1JDpR1BG2LD+tRN8YAZnh5yMynsNroh2
         9T3OwR7hDL0pevhuBm9jnSrDaZWpt+ugB79DmMjbREh/vlhBLKm6EeDqJ4FSbsrO0VXx
         sVwNvZkQxnfXDJncneXf0QY5yiZl8/KVn2j85mV4tceTwOvZoUks6w7ddQ/5MdBi+RAo
         yygSvxk8orUiNEs+TiFv38kMOkE6+VqNgEBSv8go7ZIJ9O6knWP0DKI9OHDNXtsksQIe
         SjJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771569346; x=1772174146;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g1Fse1WZpEHE7IT9q8Iv5hC3QeM6SeiW1fcQGxL0Ms4=;
        b=JaoDIGoCNs+QVeK9jSAdiOALKZgA80Lo7kr75snvK66L9ih0+b2XQ3nOhMkfTIEMH6
         rDCY6MB64r0MWm3Bc45SfZY0ug0DAplmJ1K8UQa7D9deKDEQSpC2QGce1a5ATOfCGT+G
         S8rzOmAwVU3RpDAVs1I4/M4Lh4VAN2rqIbaN76B2NPG7GMlUrD1zfWIpK5IowFoDGne3
         4fmn1zT2i7UpKCSG/AJZ8J+wj0vglhxyelI5lRfu4ARVal0x2hTpGne8mAZZ0RUHRMBQ
         h/iGl9EcSKGsNV6dBstnz+TXtULoEMoSzlydNTMO20iy9b7EZKgx+eGxFs4zwa7wG4Bl
         /68g==
X-Forwarded-Encrypted: i=1; AJvYcCU3bLRmr3EZTH9tlmP4dV4TXwLhUypJMEw7FAO7PGWsZPdXggOoLV1mDYvdkkRHocX56HPjFOu11QEa@vger.kernel.org
X-Gm-Message-State: AOJu0YzqIucBudQ365Bt5Ks8KjwxyJQpFXLiUZTYKj5le9rRrJUVL74S
	pV5n4TFlXUwlPOii2HU+YfxuLcj5wBWCs2+9H589byoj8vOtntQ5W3iZstHutWUqeFnbiPtisXM
	qOCvU69L/OT/88bUF60WG/Wpg8UUtkpenSBKqggdGGeb0Km1fabuuXs8jQSwtl4Lc
X-Gm-Gg: AZuq6aJc1NE9l9tM9bz32SVMOgQyIfZw4+EzBS++Fqw+3Y/w56ThwnpQjP9eK1CLshN
	8MFqkSG4SzlAwXs+Wd75tAlWtKqierpw2/LLxzr9C+tEBjDueLpqNxkloxtGqU1K20RsVZj8yMV
	yyfEcP3B60hJMMg/1biZQdcQyJtgOA+M9ZCORJ9kILHT0Vrz3EtytYf8zBovP5r2BWU8pXBznFT
	F6xtgUOg28HXx4GoCh1J2QgZX7v5Nuh8HBAn9ypLRyOYpEoqNnwUZNcSoGssiv2xxsXuSB9Y1Cf
	B1kZ+OAVQPTaUZ9pCsEa6BKNJxhCvyYG3h85VETgCqoZh/gbC9J16A1nJgQ0JWydYMBnjRa1Mre
	CYHcqddC7id/7QssE0f/s1UtcdiyiHQNW0gnFfsmNRMGsBT9xsab27HD34QN56w==
X-Received: by 2002:a17:90b:4c48:b0:349:3fe8:e7de with SMTP id 98e67ed59e1d1-35844fc089dmr15301829a91.28.1771569346229;
        Thu, 19 Feb 2026 22:35:46 -0800 (PST)
X-Received: by 2002:a17:90b:4c48:b0:349:3fe8:e7de with SMTP id 98e67ed59e1d1-35844fc089dmr15301817a91.28.1771569345718;
        Thu, 19 Feb 2026 22:35:45 -0800 (PST)
Received: from hu-botlagun-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3589d83096dsm2007728a91.9.2026.02.19.22.35.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Feb 2026 22:35:45 -0800 (PST)
From: Gopi Botlagunta <venkata.botlagunta@oss.qualcomm.com>
Date: Fri, 20 Feb 2026 12:05:26 +0530
Subject: [PATCH] arm64: dts: qcom: Enable lvds panel-DV215FHM-R01 for
 monaco-evk Mezzanine
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260220-enable_rb4_lvds-v1-1-c6296ef9ccdb@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAK0AmGkC/3WQzW6DMBCEXyXyuUb2AjbOKe9RRWht1sUtPw0G1
 Cri3WtIe0svK81K+83O3FmkKVBk59OdTbSGGMYhCflyYq7F4Y14aJJmIEAJkIbTgLajerJF3a1
 N5I123oDNhS2RpavPiXz4Ooiv14ee6LYk8PxYsp5ixAN8Pv1ihRR5BTIrpDIc+NIn58y1LTV4G
 WPMbgt2buz7LI3d5AlCCyNMWWZQFKrQgkueTF2NPX604R0vuwqD+yNYjMR3ZJhTWhQVGAMavfW
 kysKpHMgCaW085tD4CkorFNsDtSHO4/R9NLbKI9G/5awy/QHCSyeN0co8SXPdtu0HpX/i8IYBA
 AA=
X-Change-ID: 20260219-enable_rb4_lvds-d7cf92b30b5a
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, venkata.valluru@oss.qualcomm.com,
        jessica.zhang@oss.qualcomm.com,
        Gopi Botlagunta <venkata.botlagunta@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771569342; l=3865;
 i=venkata.botlagunta@oss.qualcomm.com; s=20251110; h=from:subject:message-id;
 bh=ETE1iRFn/nOkdnuOe4LzLAldiFP6Ocvot+ogJuwjfkM=;
 b=mUbJFjVcN4so2jpe9DS1JWuikwCxrmRI/91FxMrjwbYr3Q8GfU65zx/BdOlUxqjbjn/E2uykG
 wM4X+d/6md6ATyUo7iEblM0bY7ZDGAnDzIP2dDaBNUgeeMNME1Wf+41
X-Developer-Key: i=venkata.botlagunta@oss.qualcomm.com; a=ed25519;
 pk=/SnYBwlkTzDCLnHFgEY0qFwPgKIV+aQWRbc3naiLzrk=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIwMDA1NSBTYWx0ZWRfX43G6ke+SKpjF
 OvvoBBaQx+QrkxcahqfR0xoCZEIgfsN8CjTTk0vw/hpfX23iesgDLPU5GEL3JWAj2kQjdNb5+3u
 Yx1v4j1qwjbt+y2KGGORzrdlCjen1kFJJRdzdmEtL17MLKbVGPCrlOier4nVB9w5RwyWH6ZZ875
 IgyeOvLxhIKDzNANZ6rNZgaLSVra1ARzmSlfe7WEo+vvlXGxZLpVM6JbFD7ozqBTNqsqe23Tv56
 CltpMWYvfF2nJzy8dDvJNDKRjBrchAPAz3NCSLx8XkgsYSQ7gAFwUp/zTH4dNFURE4C+hUdaksC
 kafZLCZaGJNs8/okfZs9xG5tQKO7CNj2mpc2BWmCmUBGc4kSQ0Xet8UymdIH7Cuhz8JVI7qyG6R
 k3j/TGxowz8FgCzUHrXV4z64EN4ljloiMdvnAr9V6iuohwMOoONk4AeGNp5YaIgtm3y/Qm/DQgO
 I83S7b6OwwzUVxYA3qg==
X-Proofpoint-ORIG-GUID: xS7Oj5A3S8OwecH4d2Nq6ccH9r6buKv-
X-Authority-Analysis: v=2.4 cv=Vuouwu2n c=1 sm=1 tr=0 ts=699800c2 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=rdqHvrnF-JzFVNgyrzEA:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: xS7Oj5A3S8OwecH4d2Nq6ccH9r6buKv-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-19_06,2026-02-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 adultscore=0 bulkscore=0 impostorscore=0
 suspectscore=0 clxscore=1015 lowpriorityscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602200055
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,0.0.0.3:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.0.0.2:email,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,quicinc.com:email];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266813-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[venkata.botlagunta@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 0049C164FDB
X-Rspamd-Action: no action

LT9211c bridge and lvds panel node.
LT9211c is powered by default with reset gpio connected to 66.

Signed-off-by: Gopi Botlagunta <venkata.botlagunta@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/monaco-evk-mezzanine.dtso | 117 +++++++++++++++++++++
 1 file changed, 117 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/monaco-evk-mezzanine.dtso b/arch/arm64/boot/dts/qcom/monaco-evk-mezzanine.dtso
index 701494d4dd7f..2512bdfbadbf 100644
--- a/arch/arm64/boot/dts/qcom/monaco-evk-mezzanine.dtso
+++ b/arch/arm64/boot/dts/qcom/monaco-evk-mezzanine.dtso
@@ -11,6 +11,58 @@
 &{/} {
 	model = "Qualcomm Technologies, Inc. Monaco-EVK Mezzanine";
 
+	panel_lvds: panel-lvds@0 {
+		compatible = "panel-lvds";
+		data-mapping = "vesa-24";
+		width-mm = <476>;
+		height-mm = <268>;
+
+		status = "okay";
+
+		panel-timing {
+			clock-frequency = <148500000>;
+			hactive = <1920>;
+			vactive = <1080>;
+			hfront-porch = <88>;
+			hback-porch = <148>;
+			hsync-len = <44>;
+			vfront-porch = <4>;
+			vback-porch = <36>;
+			vsync-len = <5>;
+			de-active = <1>;
+		};
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+				dual-lvds-odd-pixels;
+				panel_in_lvds_odd: endpoint {
+					remote-endpoint = <&lt9211c_out_odd>;
+				};
+			};
+
+			port@1 {
+				reg = <1>;
+				dual-lvds-even-pixels;
+				panel_in_lvds_even: endpoint {
+					remote-endpoint = <&lt9211c_out_even>;
+				};
+			};
+		};
+	};
+
+	lcd_disp_bias: regulator-lcd-disp-bias {
+		compatible = "regulator-fixed";
+		regulator-name = "lcd_disp_bias";
+		regulator-min-microvolt = <5500000>;
+		regulator-max-microvolt = <5500000>;
+		gpio = <&expander3 1 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
+
 	vreg_0p9: regulator-vreg-0p9 {
 		compatible = "regulator-fixed";
 		regulator-name = "VREG_0P9";
@@ -70,6 +122,51 @@ vreg_sys_pwr: regulator-vreg-sys-pwr {
 	};
 };
 
+&i2c8 {
+	qcom,load-firmware;
+	qcom,xfer-mode = <1>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&qup_i2c8_data_clk>;
+
+	status = "okay";
+
+	lt9211c_codec: lvds-bridge@2d {
+		compatible = "lontium,lt9211c";
+		reg = <0x2d>;
+		reset-gpios = <&tlmm 66 GPIO_ACTIVE_HIGH>;
+		vcc-supply = <&vreg_l5a>;
+
+		status = "okay";
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+				lt9211c_in: endpoint {
+					data-lanes = <0 1 2 3>;
+					remote-endpoint = <&mdss_dsi0_out>;
+				};
+			};
+
+			port@2 {
+				reg = <2>;
+				lt9211c_out_odd: endpoint {
+					remote-endpoint = <&panel_in_lvds_odd>;
+				};
+			};
+
+			port@3 {
+				reg = <3>;
+				lt9211c_out_even: endpoint {
+					remote-endpoint = <&panel_in_lvds_even>;
+				};
+			};
+		};
+	};
+};
+
 &i2c15 {
 	#address-cells = <1>;
 	#size-cells = <0>;
@@ -89,6 +186,26 @@ nvmem-layout {
 	};
 };
 
+&mdss {
+	status = "okay";
+};
+
+&mdss_dsi0 {
+	vdda-supply = <&vreg_l5a>;
+	power-supply = <&lcd_disp_bias>;
+	status = "okay";
+};
+
+&mdss_dsi0_out {
+	data-lanes = <0 1 2 3>;
+	remote-endpoint = <&lt9211c_in>;
+};
+
+&mdss_dsi0_phy {
+	vdds-supply = <&vreg_l4a>;
+	status = "okay";
+};
+
 &pcie0 {
 	iommu-map = <0x0   &pcie_smmu 0x0 0x1>,
 		    <0x100 &pcie_smmu 0x1 0x1>,

---
base-commit: 1a0829927afbfe654c632eb2e779fa32df825b06
change-id: 20260219-enable_rb4_lvds-d7cf92b30b5a
prerequisite-message-id: 20260210103821.4169-2-umang.chheda@oss.qualcomm.com
prerequisite-patch-id: c38266562544ebe10eb4e6d771665c66fd319cab
prerequisite-message-id: 20260217090955.2446470-1-quic_amakhija@quicinc.com
prerequisite-patch-id: a50422285e837760143af6bdfcc6f64d38525752
prerequisite-patch-id: 7bd948199c6ff8d6feec941e2dd4f4266e5ab39b

Best regards,
-- 
Gopi Botlagunta <venkata.botlagunta@oss.qualcomm.com>


