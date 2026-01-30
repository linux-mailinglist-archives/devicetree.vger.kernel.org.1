Return-Path: <devicetree+bounces-261152-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IEzCOtSHfGmbNgIAu9opvQ
	(envelope-from <devicetree+bounces-261152-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 11:28:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E71EB95A4
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 11:28:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 253EE3037470
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 10:28:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8BF935E557;
	Fri, 30 Jan 2026 10:27:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Lxm76ICM";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ML3NrHs/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 782353451CE
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 10:27:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769768879; cv=none; b=tXtgH5sEsowquFRrpliH/C1eKYReNhE1LkaZNtrk5+YO02Nz9zWHKQZwYgovdw/zENetMsoYdH3PATae2bFkgwf6jYkQp1MP1u8rcfVAmj/FKROl14UqUa3cSpRdi2xt0Dqh0Ditv2/iKrhpQmCHcAP+eHr9Jtd3fk4a81tYB5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769768879; c=relaxed/simple;
	bh=kgCiE9eqpQ0sjnHTUQblclX4uyskcFsihoTe94hN9IE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=eXsGi9qx5bGQtyf69fk59rfZz/XSCAb4tfxzpWVa47axwUISmSQTY6uAibRWz8yqhpoEQoSHnHtAyOQY1nVYCHLZeQcOjcOyiEioiDRQC0z++s3enzWLDF4nAEIfbt2Y4UChY72M5eI4rRdp0SSIm3YwRmJg5VUOY/oYM/sp/8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Lxm76ICM; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ML3NrHs/; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60U3VrNn1022855
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 10:27:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yJ8eeQb8j21yN5uXTPw9Td001TkxoIHa7+I3NMOSrnk=; b=Lxm76ICM7UgL9L9m
	iOAp0aA5MrVIr1/BWo5YhWsVp2V2FBOj3aSPNblQwPszv2zcmeUkfLHTUx4qAN6i
	GUWKob3Fsu9Qgm72rQrg4N3iK0owAz9W8qnsybfxa1purHDtnojIVWnV3Jun/+E/
	/2Vemuxxc/DUnDUREpLugMkb7wHvcohX5idCweJvVWG9kiKMtKXwfRiJz9pHyxSN
	EWg6i9t7RrNR9WC4lQ5oiTTYwcbecB3HsopyJUT8MtZRL8Rj2wPQvFgX6EXXs8+h
	76PPKVJL0DsCQNbo0Uyq2zQ+h7go0ZLfFr57uoUch1YtFA+na51UTg+hMrjPs1m0
	6zxxgg==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c0e3ka7bs-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 10:27:57 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b630753cc38so3891913a12.1
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 02:27:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769768876; x=1770373676; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yJ8eeQb8j21yN5uXTPw9Td001TkxoIHa7+I3NMOSrnk=;
        b=ML3NrHs/wlcJLwqSgI2AUObvFAicaMZjCQU0EsYksRwGEcWKtpHB463x04bpudIXJH
         tXr2/V9xA10hbnExPUMgqZ0pp/68J+KUUe59MZPCQ6uhZblkHVWcmoPj6XEV0XbUp2bZ
         a6Kx/dt4HJgVxEUZzVLae2aP2VkyDCRwT9bhxeZZsu4k6d5m/WCaK8VPF13X/QV+xUx3
         7V0BliAZ34O5nid3l+NnAOVvF2bvHdTOX2E5Zs55BnxLXz5B2eFxxsbMk9MUU7e2YSq3
         njGelK4ZHPu/S0z0sP/BNY669Kgt+R5ec6fTvqeBwlLHNaw64XFtdrRMmdBGYMCOecS6
         bLDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769768876; x=1770373676;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yJ8eeQb8j21yN5uXTPw9Td001TkxoIHa7+I3NMOSrnk=;
        b=P+xtWuL1QqSi9GRrq+Tfe3JYPCyZPS1mtcB2mOPv07V1fiyVvNKCVC0jrdPHQKJZe7
         v/rM0B6lPJLCoZrA23MzK0j5kd3BclqQ9i2I7WaBbLQN/UuXSlLORxzZWcbOvq2fDv8b
         nh5szFvbwayNhs/Zb6jpQE/NKt8E/Q/wNeeh63r9b7gNJtZpFJm77uChAqWv0kb9JnSb
         FzWNFQHwkXVlKtzn8jJaAUN+117o0vLvzcy6kKnGNeqaRTHnUeFZIBB6vOrrQKFcBbeo
         cfvWG2NLV6FvgLgAqkkhQtEj5NHdcT5RH3zy9xh/eyBQAyZLPk8NEkOpA6noX49jt7Us
         vbaA==
X-Forwarded-Encrypted: i=1; AJvYcCWqifUZJ6uh8zb9FmpvoWUy4kvEkNL3Px6YTZYpLfkTSTxnq/RloxiNp2nfpEziTzno/bsnH1QEZgzp@vger.kernel.org
X-Gm-Message-State: AOJu0YzLaIyPruzJK4jBUHZnUwcjyEc7FnMaGHRS02Cpqlitt1NLNoYz
	4kZtUZvjyLQXE1XtwAKYRHGDFGb+afgiiaGlD2d4mZVYpOMzPN4JG4icrHttn6rBVidITr4tX0L
	hldrMJQpmMfC8Cu2pk6kjdSL/Fccv8/9fpSfM8Er51UYqwX8dlREnpXIZNPg0qR9Z
X-Gm-Gg: AZuq6aI9Fzl1XGU1S589gKpa+FUGbtP7GZ4tR9K2v6jiQLJBLcRqSmcR9loaTw0CUSL
	pL5VKxgdVRyfxMosWbld3ttw67RJhuc0R81EdFyQA7Xh73TqXDbRD41bugpcXJ9SAb9M+9Z4mm3
	70NwkZkkdQvAo6DGe67uLjYUS0uT9WNumnJyTCWGBwqDw5fuQiccSG1cD2qsbcrKG496oJJMEo6
	NpEdNGRXGbV98UheDVTjLvsf0jowr3Dt6xTopsXBcANECx27hLmmOfLY8ECKtT2xohW3/sX4WnN
	m9/iTxVn1TqNar5YiO2mFD1YDiGQJqiLy20WPmlWyIqktmteTqzZZfEGz+31QqwyxoF2UnZjwYC
	rzhemQXGB1b2ROPhbnBzozW8LNwwsorV+mwY5sgQ+WMH6qUqsig==
X-Received: by 2002:a05:6a20:748e:b0:38e:87b3:f0cc with SMTP id adf61e73a8af0-392e0198332mr2297824637.70.1769768876380;
        Fri, 30 Jan 2026 02:27:56 -0800 (PST)
X-Received: by 2002:a05:6a20:748e:b0:38e:87b3:f0cc with SMTP id adf61e73a8af0-392e0198332mr2297802637.70.1769768875920;
        Fri, 30 Jan 2026 02:27:55 -0800 (PST)
Received: from hu-botlagun-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b414071sm69884635ad.29.2026.01.30.02.27.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jan 2026 02:27:55 -0800 (PST)
From: Gopi Botlagunta <venkata.botlagunta@oss.qualcomm.com>
Date: Fri, 30 Jan 2026 15:57:25 +0530
Subject: [PATCH v2 1/2] arm64: dts: qcom: Enable lvds panel-DV215FHM-R01
 for rb3gen2 industrial mezzanine
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260130-add-lt9211c-bridge-for-rb3gen2-industrial-mezzanine-v2-1-a98714fa1531@oss.qualcomm.com>
References: <20260130-add-lt9211c-bridge-for-rb3gen2-industrial-mezzanine-v2-0-a98714fa1531@oss.qualcomm.com>
In-Reply-To: <20260130-add-lt9211c-bridge-for-rb3gen2-industrial-mezzanine-v2-0-a98714fa1531@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Gopi Botlagunta <venkata.botlagunta@oss.qualcomm.com>,
        venkata.valluru@oss.qualcomm.com, jessica.zhang@oss.qualcomm.com,
        Yi Zhang <zhanyi@qti.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769768867; l=3024;
 i=venkata.botlagunta@oss.qualcomm.com; s=20251110; h=from:subject:message-id;
 bh=kgCiE9eqpQ0sjnHTUQblclX4uyskcFsihoTe94hN9IE=;
 b=QnxW6uW98h/E8sBxGUk7ZmbemnWF572GZhwzwvyO2LEFbTpRhMm1C3ZgZPqm1Y6yV6aoGT8mY
 AmA+roj6XX2BDCm6XJ2gfMndhqtT1uLXaClUpnvFOqa/aJjeMYdM0fw
X-Developer-Key: i=venkata.botlagunta@oss.qualcomm.com; a=ed25519;
 pk=/SnYBwlkTzDCLnHFgEY0qFwPgKIV+aQWRbc3naiLzrk=
X-Authority-Analysis: v=2.4 cv=VI3QXtPX c=1 sm=1 tr=0 ts=697c87ad cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=zQPtESjVaFao4fvCMtoA:9
 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-GUID: tni98VTrtoKFIIAeF2sTyE9ER2Sy251A
X-Proofpoint-ORIG-GUID: tni98VTrtoKFIIAeF2sTyE9ER2Sy251A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTMwMDA4NCBTYWx0ZWRfX/x3/eKM0Tv6+
 5hS9zlXt0O0JQIkLkNBVfA1umRKI5nmusm8wmS7NgMwlerqDVFlVb4o9qmGoVZOrsqsi/GSd/m3
 QiniK0RFQSzwP/KrLS6KdD1srsgix5CfJ1VxhsPzPKT3w82uWRwePl28LxgVRcdfKeCZeOfnmyv
 PJ6sFdlv+geyYRIJrS+S8BBeXGZIKzHVy8sRpzjAuXb3yFLT1l2rO23/Lllp2jxYJdo9aR54aDT
 zi85DLj/Q7/0TXdtWkr8yqVW7plMnFhtFwe77F5uVbclJYN8ty9k5sxgx7bBJDL+7OTM0gKl1WY
 gh3OO9+tDD4r8w4te4HI5A3yww5oRcPA8IpiYI7WPvpj3Gbwh8iy1n6GW0ZFfgIl1fjU8cc2hiv
 rxGONfwCs8LJUnEXfSlnT7V+ldsE89BJCcPFIzMP2MpI0VnZ2QCFiUMm4L1DnXhhDfenJ1h/83d
 PzVe7j6O/acRqEFWd/g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-30_01,2026-01-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 phishscore=0 bulkscore=0 priorityscore=1501
 adultscore=0 clxscore=1015 lowpriorityscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601300084
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-261152-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.3:email,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,0.0.0.0:email,0.0.0.29:email,0.0.0.2:email,0.0.0.1:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[venkata.botlagunta@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 4E71EB95A4
X-Rspamd-Action: no action

Below is the routing diagram of dsi lanes from qcs6490 soc to
mezzanine.

DSI0 --> SW1403.4 --> LT9611uxc --> hdmi port
                 |
                  --> SW2700.1 --> dsi connector
                              |
                               --> LT9211c --> LVDS connector

Disable hdmi connector for industrial mezzanine and enable
LT9211c bridge and lvds panel node.
LT9211c is powered by default with reset gpio connected to 117.

Signed-off-by: Gopi Botlagunta <venkata.botlagunta@oss.qualcomm.com>
Co-developed-by: Yi Zhang <zhanyi@qti.qualcomm.com>
Signed-off-by: Yi Zhang <zhanyi@qti.qualcomm.com>
---
 .../qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso | 106 +++++++++++++++++++++
 1 file changed, 106 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso
index 619a42b5ef48..cc8ee1643167 100644
--- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso
+++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso
@@ -8,6 +8,112 @@
 #include <dt-bindings/clock/qcom,gcc-sc7280.h>
 #include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
 
+/ {
+
+	hdmi-connector {
+		status = "disabled";
+	};
+
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
+
+				dual-lvds-odd-pixels;
+				panel_in_lvds_odd: endpoint {
+					remote-endpoint = <&lt9211c_out_odd>;
+				};
+			};
+
+			port@1 {
+				reg = <1>;
+
+				dual-lvds-even-pixels;
+				panel_in_lvds_even: endpoint {
+					remote-endpoint = <&lt9211c_out_even>;
+				};
+
+			};
+		};
+	};
+
+};
+
+&i2c1 {
+	status = "okay";
+
+	lvds_bridge: lvds-bridge@29 {
+		compatible = "lontium,lt9211c";
+		reg = <0x29>;
+		reset-gpios = <&tlmm 117 1>;
+
+		status = "okay";
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+
+				lt9211c_in: endpoint {
+					data-lanes = <0 1 2 3>;
+					remote-endpoint = <&mdss_dsi0_out>;
+				};
+			};
+
+			port@2 {
+				reg = <2>;
+
+				lt9211c_out_odd: endpoint {
+					remote-endpoint = <&panel_in_lvds_odd>;
+				};
+			};
+
+			port@3 {
+				reg = <3>;
+
+				lt9211c_out_even: endpoint {
+					remote-endpoint = <&panel_in_lvds_even>;
+				};
+			};
+		};
+	};
+
+
+};
+
+&lt9611_codec {
+	status = "disabled";
+};
+
+&mdss_dsi0_out {
+	remote-endpoint = <&lt9211c_in>;
+};
+
 &spi11 {
 	#address-cells = <1>;
 	#size-cells = <0>;

-- 
2.34.1


