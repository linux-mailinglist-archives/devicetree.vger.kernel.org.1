Return-Path: <devicetree+bounces-275116-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +Bf5Gc3os2nZcwAAu9opvQ
	(envelope-from <devicetree+bounces-275116-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 11:37:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 121122818F2
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 11:37:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7A7F43282578
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 10:31:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1283034EEE6;
	Fri, 13 Mar 2026 10:31:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SyLJzQ75";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JIWkrUly"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9749B3328FA
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 10:31:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773397918; cv=none; b=uD+50Aj/vQkkNywHFWd74d7+GSazbpNDB+fXh3FBqPTa4Qp7l6sVMO/0W8xnk7H28A336iZGmagL2pcBHDMtSqxzHRsGLKxZrMLCDzzTpQcdzxOdqeGif1BBqpsjCPNZOq4PzojUvh+RWslHbGN36DajIWn28/q/FHv9fS6V2OQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773397918; c=relaxed/simple;
	bh=0gCStdfi90J1zLoNtjQkeV5b9HZ470QUaFZu2d3u/MU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ukfJ8lA9oDa1UnfZJI6aqIWzW1XRtxXDJ4YW1zeaUr7YVervVYCciOegZg4BgDH2w1AQTt+E7LnPUVA+7aFlxztbtEa47KEuQi46pCx6Pw67KPTCRErhhPSC45ksVRd/alM7Vf1UTlDdikClib++huyA5+czhYOlCXuK3f9UH1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SyLJzQ75; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JIWkrUly; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62D5tkj93342956
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 10:31:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	G1sM8vUnMjs/6i3/VG+5tMcUkWBVpAHwFVnLhbHyrhA=; b=SyLJzQ75N9vv376X
	Vm05qVy8QrVP1Lgftu2Sxg4jvLtPD+vgx2P3gp/0Lhzbjp4905e3bI/vQCfwtyVd
	ih19WTUMO+ClgasaHn456GF0uAUYCmzkjUO8Zl/+zMJC7Xx/zmawjR5Sxv+L2++I
	NK5lvzoDFxNkTs50xxf+LR3CdnM4cfrPgF3tp7FhYeHAXyv55ctNCHlut7eWOvsc
	auz3Kur0hiVvunnkAFLdc8vxwfG/SqbY+At5IAtuPXVdHiw83PyNoB+qkctdx5Rr
	EFndXyVthBIybpDb8tSnsb6gC73Tpbw+uzwUwc+PE2iObOJ6PeVVoVMs2GmqXEtV
	qHHuMw==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cus9w4d7x-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 10:31:55 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-358df8fbd1cso2083951a91.0
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 03:31:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773397914; x=1774002714; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G1sM8vUnMjs/6i3/VG+5tMcUkWBVpAHwFVnLhbHyrhA=;
        b=JIWkrUly33bfkQm5sM4VmgbeEQjYUdLGtOtuRaM5aI/YdDXIRt1T2v9s65J0xMeciz
         sYSIp+nLsAILSNvT8jiCWkuL53+Hrg2fLbprA98U6q+xOz2OGTEXIO3bU8q4Q0kuclL5
         yAf4fBXDHTeT7R2F/w1NJJGApo/v8qOknutPkZOn+EPUhcDQpjBu9bM5PHk55r9sT/Ms
         LUMmoKFZwNaM7xG4beDTqS2vN+dmpim4Wr9TmB8BT6GYY+Q6EHmX6sFivnAu58SUJPd9
         Iuobv+Au2X4md65rc04WXEV9Fa3VJRmZ+xPf8uw7JMiOOmP9BEQcP2CVUNdcnWpGrcj3
         P6sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773397914; x=1774002714;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=G1sM8vUnMjs/6i3/VG+5tMcUkWBVpAHwFVnLhbHyrhA=;
        b=Vxj0SGxYlV9TWJYI2FQxr94kBUyyhUM74fm1KTFn0/buwVPDZlBDbSUgpRL9oxMhAV
         eIW35+D4NsDiziPAQUvlS9MeQzrj+exkG7NVDIV9hYdOviVZpkt9QJBmVa85Zqvt+2rt
         d7XYqnVqlxn5H0GskklUWyJI5F8rvqFVDa8G5/7h+LTjmNpZQJEdmykBbQqgZsr6S+z2
         YFe2T8x0FBNTONdWPhQkjbRgUiTC9nOKdMOURDk5pCC3UwHpevG6p4GcwfvL3dlx2Tnl
         m8cKro2He/MCUoWsPw9bJdou+6S3l/IrKY7tWXBxyolTSw06PVDz1Sw9b3zcPr4LiWN+
         n9NA==
X-Forwarded-Encrypted: i=1; AJvYcCXHNtk1+72SVn23QoJyANot9fhsyK60l7+ukDJ70QekeoQ/pNQBr3zq3nySDB7Q0NEtQS/tNg+qbyJ0@vger.kernel.org
X-Gm-Message-State: AOJu0YyWJ7zPhb6aAer5xkNjsAKK0ynDxJNjWZoRITdyNFoSdQPM9zK4
	vXja4IijLIeZ2VTVKugR7zfMk65FoUz3LrzDJDi0iw5Sm5WOw47LVUULQX/2Xio5cfd25suDn+L
	SL+T0UIg/xZJXUFTb1s8NfoMgKMs1Nva5hSMw2VaJiXqWxGzzR/l4EdScH1WUIzU/
X-Gm-Gg: ATEYQzx7X8qH30eZ5QbHESAJAnRLKO+pn6Z1Z5hc4lsihko1U8D7iBJeFLsxniu/kzM
	E87ML+MmVuc4jZ04sUMNwhlvVLo+GwGVVl7TTSeOWFdcSLkqLUxGodySDltAezyOprC0hACvV0e
	gVvkJm8W7vaNJju/SaT053u1ikLVvuGue43mq6ABQmGsU2G/PIAANE4Y3Wlw2LOd5cA5UF1pyxA
	lp4ADQBn9f6RDzObnMTZP+lbJ1NzbEh9KKXkEiv1/jlN5JOJ6eGBKNZjw9VqBFFPQiDEBkyW6Bk
	SaTEMJQvOJkBLEAx/pEBgzBcQTXJv+ifIC3HH+7DSaEpx7z+yNijcU2hb+qSEInj1viXbh5oR6v
	hHRXOUdxG4t/duH9t9XhlPFo5PMvMI9QDMQTMh5OvRQjpJHaBhjneZ/ltXNvPdqzXXD7yorBXOK
	26Y8DkmjaIy/Iw4ygq+m3sdA8EnfB3kSZ6yg==
X-Received: by 2002:a17:90b:3f85:b0:359:9083:3661 with SMTP id 98e67ed59e1d1-35a21ef110fmr2504044a91.15.1773397914397;
        Fri, 13 Mar 2026 03:31:54 -0700 (PDT)
X-Received: by 2002:a17:90b:3f85:b0:359:9083:3661 with SMTP id 98e67ed59e1d1-35a21ef110fmr2504010a91.15.1773397913946;
        Fri, 13 Mar 2026 03:31:53 -0700 (PDT)
Received: from hu-ajainp-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35a02fc9454sm8604577a91.12.2026.03.13.03.31.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 03:31:53 -0700 (PDT)
From: Anvesh Jain P <anvesh.p@oss.qualcomm.com>
Date: Fri, 13 Mar 2026 15:59:55 +0530
Subject: [PATCH v4 5/5] arm64: dts: qcom: hamoa-iot-evk: Add Embedded
 controller node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260313-v04-add-driver-for-ec-v4-5-ca9d0efd62aa@oss.qualcomm.com>
References: <20260313-v04-add-driver-for-ec-v4-0-ca9d0efd62aa@oss.qualcomm.com>
In-Reply-To: <20260313-v04-add-driver-for-ec-v4-0-ca9d0efd62aa@oss.qualcomm.com>
To: Sibi Sankar <sibi.sankar@oss.qualcomm.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Hans de Goede <hansg@kernel.org>,
        =?utf-8?q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, platform-driver-x86@vger.kernel.org,
        Anvesh Jain P <anvesh.p@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773397885; l=1383;
 i=anvesh.p@oss.qualcomm.com; s=20260313; h=from:subject:message-id;
 bh=koKZLgJJmkvuQ2/G2ERJ69WkW+ygNkTLSWIVLY+GMAQ=;
 b=mkDfQv7TN6sC9yKQkRfX1VHj36JLzGcZfXhroqENPftWosj0joaCcUq56nrCtg65b3Ouuj9yC
 f8ZdxNRK+r9DPu+oqOGGHT8xFpnP+mvNejHvJXCyzTmLgOfj21+B5aF
X-Developer-Key: i=anvesh.p@oss.qualcomm.com; a=ed25519;
 pk=8o9EG7gkPe2Er9y9UVCx8MTdcFCwU8Pa54hBZPuduXE=
X-Proofpoint-GUID: JjSbCEG-uVq7feGfnKmp5886uHaqp_5D
X-Authority-Analysis: v=2.4 cv=IIIPywvG c=1 sm=1 tr=0 ts=69b3e79b cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=um1wo07bdbQtbc5qrgwA:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDA4MiBTYWx0ZWRfX6gvP4aXyAvDS
 AcU0PBr8KHzKKU1FWnBpJsLBW+k64UNQdUEi1qGql9/5O+tTH3b1DTmbM//fo2S6M+vUdsjEwXY
 14wb5xQ46hE7yxUpGb2oPgYryYIpw6JBd49xtOjqLGg3KA0se45qdMiQuo8PLo/gAtKoXS2nxsx
 FqpIqkQNTAgTyD87U6RE8YH0bz2wEEpYQlTbTPCvV3xNwShOgXfqPkmrqqcDHL4NsrCEm88dK2t
 hXUs3WLDSHnG0sfWxne3tsICmDm6IlV6fzQc3pcBWIi4ff+yzLqv0MJQ5oV6rkc6bIgo76/xQyd
 OSosRmui3YXGd0289ZggI9T0MObSczv/gZjzxUkF4ecrHc+buZA3Cc5G3ITijmQBttS/4vFo16m
 BMEoRkWIwgpobeFbU1qScQTY2lyIT91A5ZJjWnH+7Zz4Vj53cCj8ERleAj/XaYIZPntvd0XJis0
 0HthS87rKIRExR0OzUw==
X-Proofpoint-ORIG-GUID: JjSbCEG-uVq7feGfnKmp5886uHaqp_5D
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_02,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0 lowpriorityscore=0
 clxscore=1011 adultscore=0 impostorscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130082
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275116-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,0.0.0.76:email,qualcomm.com:dkim,qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,4f:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[anvesh.p@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 121122818F2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Sibi Sankar <sibi.sankar@oss.qualcomm.com>

Add embedded controller node for Hamoa IOT EVK boards which adds fan
control, temperature sensors, access to EC internal state changes and
suspend entry/exit notifications to the EC.

Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
Co-developed-by: Anvesh Jain P <anvesh.p@oss.qualcomm.com>
Signed-off-by: Anvesh Jain P <anvesh.p@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
index 630642baa435..b3430424a052 100644
--- a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
+++ b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
@@ -799,6 +799,16 @@ eusb6_repeater: redriver@4f {
 		pinctrl-0 = <&eusb6_reset_n>;
 		pinctrl-names = "default";
 	};
+
+	embedded-controller@76 {
+		compatible = "qcom,hamoa-iot-evk-ec", "qcom,hamoa-crd-ec";
+		reg = <0x76>;
+
+		interrupts-extended = <&tlmm 66 IRQ_TYPE_EDGE_FALLING>;
+
+		pinctrl-0 = <&ec_int_n_default>;
+		pinctrl-names = "default";
+	};
 };
 
 &i2c7 {
@@ -1272,6 +1282,12 @@ right_tweeter: speaker@0,1 {
 };
 
 &tlmm {
+	ec_int_n_default: ec-int-n-state {
+		pins = "gpio66";
+		function = "gpio";
+		bias-disable;
+	};
+
 	edp_reg_en: edp-reg-en-state {
 		pins = "gpio70";
 		function = "gpio";

-- 
2.34.1


