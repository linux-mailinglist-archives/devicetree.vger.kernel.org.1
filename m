Return-Path: <devicetree+bounces-276914-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CJUhChIlumk3SAIAu9opvQ
	(envelope-from <devicetree+bounces-276914-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 05:07:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DC272B5AEC
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 05:07:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 1E5943017AAF
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 04:07:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E49033B96A;
	Wed, 18 Mar 2026 04:07:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AS2tGkR1";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VmC2Rygz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3F8D1C3C1F
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 04:07:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773806859; cv=none; b=tJtrozVOQ1CUinC4+Mda/+GTcw+h55TGyY39ws0csHKWSIJp2fAx+oMBivyqWzhH6b4/YZF/EWVPwbqDkYDuvGQBDQnNrJ84tQUxyyKSdfbevJSEIMoMGqjZ3WsYtbQX79ksN6yPY7ZZe8VFcFVyN19L6UMBDw4Q4wqHQumJscU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773806859; c=relaxed/simple;
	bh=6DU4UQ9ScKhARkBm50wkN+b9dooeJgsguNKbBpvWJKI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=pVCN81ubWfrv5OGjNLnVCR0T5AaTEhwbpxQXNdMuJMesJaubEo9YKTOZ/tm+Kxar8GihElkc39GJ+HFgnkUEXtb0qMxU8CnP8plooAJxBk7ocr5zBEzaZ4OnGHIja01n3lsbOCJrOMAdytFyBYcx+UevrlLAnvYrZbG+/QwkXfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AS2tGkR1; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VmC2Rygz; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62I2u3Zn1632372
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 04:07:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MDx6sQmbBnt8wMQUZL8tdA9fS+H2euRnThvVHJhlQZE=; b=AS2tGkR1G5tgKOaj
	7YkfhhK/ihsop2/TmG8C5P0uwszdlvqYqfENHKXAC1pUmtKas5ugsuPuJdvuKVJR
	49v+TQ+Um3VlQKaUzu/3rMmRA2cSgUJK6bSuYdMYsRV4WD/XTXgM0L/tfU9X3Wby
	hdcdCXqR96k7Ni/OBegm1dQAA4GYh2uUHng6pg6GqqXBCM98SZ1LAESlzCxJQw0O
	XGUkHi3XBA98pPLhYkNCwApDlmWAjSKcePcCHtJ7boS5Pp4fakqNIa6QA0dZvoHe
	ssU7V+/8CuWmCuuQ9T3q3gJnl3E6Wp9WhjL2+al8CSKw7JZMyR1bqpvFQJaZDI73
	NTBdPQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cyapujb3n-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 04:07:36 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2aecfe69196so58315965ad.1
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 21:07:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773806855; x=1774411655; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MDx6sQmbBnt8wMQUZL8tdA9fS+H2euRnThvVHJhlQZE=;
        b=VmC2RygzNJLWGq9Iw3E5rHLG3bqIBMBIK32yI80cZ0s9wfHVpsH5sHxJzg8XayFykE
         Ly1Cwsnajso0rG2hDFxkf1BTvptAaOP4HLwunX7f34EmkCmezefyGeQULAjU6Zitb/ud
         /9rn/AbkoJeyQbdiLvbylYNUcGYLAMYq5h0TJGwu0QMAn6zn8WuJI3Psp3IQX/UXM9DH
         o3Cs21FncG2/cZ6MDoDXVbxHiv7uKhCTksqjVwkqiNRD8XBfGvYsh3UOcf6dT/aJKxcQ
         COxnWse9j/hMHYUAETEx+z2qvqo1RHaOtYFekC28GokZewBjTg1CNNjLoJKDU60fo8e7
         FbCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773806855; x=1774411655;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=MDx6sQmbBnt8wMQUZL8tdA9fS+H2euRnThvVHJhlQZE=;
        b=BVLbPF+TWr+gG6F1PUnKWOJLLdccdnPpCd3bc7+H/eBoovhFcn37ZVbE/UItwNYwOK
         Y3Vv8K90KXec9M55jBMR94Ic1w/b7K2FVOmev8jhgZVmSNwxAQ9R0odgKyh11hHk829U
         BM2VFZC0VkSMzf+tdjIXEb8r+TBB/vvdztgUhfVUqpVgLSope1dQ3Y0u4xN5QtJMSSAE
         EedAUupf/tQM0fAOI1vZR+HHi5ifD6dnAABHWNDE59VCKe4suIkINohanuq2e+mmafRn
         bsbB6PYK+TWzkzPqqs18P0KNB4VmeK2baEA3U6qB0wIJYAJjSa5TyILoZg4NU3yrLPLA
         h0Zw==
X-Forwarded-Encrypted: i=1; AJvYcCUk5qHuZp5bgoGGNX82cc1yR/kutm/zzSVzxeUHXzsu2+09ugRL4aoNyH0uEB1ZQWd5KG8oUI0zR+Rj@vger.kernel.org
X-Gm-Message-State: AOJu0YwPKMvV2BizVhRGxEfSJCjQCvzp+yhW7SqXVodIh/wa86JA60uZ
	MdZ4ha+7bpFjUJueDVesvfHjmvKmRkW6mj5U22x1sbPUCtOCEK/tnLpZr0c7Pw+imx2BEwjNuGK
	Cdjn3AQY5Ki8ueS9zzQekXhOKsGyuoVG4nSd7xehGHsNIf0sWCyyD1BEQI5mwwyR3
X-Gm-Gg: ATEYQzwnPYElTlbRLu8sYW9AVojNMNqepUehfWQF7RtZ7004MdxyVPDRB5MMaNy+iw1
	JuJHfywQRAa9rDoX+SAA4bnNLWlsmM3zf5O6gj1R6mNQAeN2WRUm7prPvR1Ah3OQn4dLfoBAyPH
	EuwksnHwBhs9j6524OOxr411Nt2bPcFp2P0Ec33NMCMvZIITTx2/M3EWOyt6WB7xbZgScjicaUS
	HlspIa06A25jGSaCFdPpC6FaN3Fj8nBkUh1kYcyv+TsTSPeMMT+dIlaNNrOWUiMzjomtJU0sxEP
	zhDepu820BcT1KsQQUpPJxwCdIAo/K0OIh3eUrZnaQI0ceMH5XUENPT3zcjpuI1RVBCJSaStuoF
	MJc9p5G+aHKWd/F5VyRs9ksAvoKdwsA6OGJt/w/NcWgqoFkaLNoa3nWA=
X-Received: by 2002:a17:903:2445:b0:2b0:51f6:d468 with SMTP id d9443c01a7336-2b06e35f408mr19809215ad.17.1773806855420;
        Tue, 17 Mar 2026 21:07:35 -0700 (PDT)
X-Received: by 2002:a17:903:2445:b0:2b0:51f6:d468 with SMTP id d9443c01a7336-2b06e35f408mr19808685ad.17.1773806854848;
        Tue, 17 Mar 2026 21:07:34 -0700 (PDT)
Received: from hu-swatagar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b06e5f12cesm10243425ad.41.2026.03.17.21.07.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 21:07:34 -0700 (PDT)
From: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Icenowy Zheng <uwu@icenowy.me>,
        Matthias Kaehlcke <mka@chromium.org>,
        Mike Looijmans <mike.looijmans@topic.nl>,
        Pin-yen Lin <treapking@chromium.org>,
        Chaoyi Chen <chaoyi.chen@rock-chips.com>,
        =?UTF-8?q?J=20=2E=20Neusch=C3=A4fer?= <j.ne@posteo.net>,
        Jens Glathe <jens.glathe@oldschoolsolutions.biz>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Swati Agarwal <swati.agarwal@oss.qualcomm.com>
Subject: [PATCH v6 4/4] arm64: dts: qcom: lemans-evk: Enable secondary USB controller in host mode
Date: Wed, 18 Mar 2026 09:36:44 +0530
Message-Id: <20260318040644.3591478-5-swati.agarwal@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260318040644.3591478-1-swati.agarwal@oss.qualcomm.com>
References: <20260318040644.3591478-1-swati.agarwal@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=bKIb4f+Z c=1 sm=1 tr=0 ts=69ba2508 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=6A85_hAfsEMDmSNDHIoA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDAzMiBTYWx0ZWRfX+vGUVXEdRbsS
 JpFaDCwTqJWwDWV2SnhcRQxFf5PWt4G+QIG/7gtM94IXPEGdjjbVGF2LYi0Pabejpx5ohqWX42q
 2oPDWo+kX/MiO/fO2oClQux+G3umC9dMWhwKeQACSazDcSmGx8hF+vGQtxT714TruzFIbLOZDxJ
 +wOTINH7hhBeVgiWD2YoaJkgLViXsikW1EcggD8Q/kchS9VMmb7wPkcHmL97YVtOCJn1Lt+5QTD
 5pVV+avY8vjC0rhHA6STmKprRLdsid2lpyJ8xdbC/JRPASrt1Hbtw7o59bArxlO6AUm6XUV0iXW
 xbRKCgV/e3DoamQnpomKA1skV86uMJyh9rfoS/ko1fpVuCcIAqnHbD+R3GjV8/Bb1VNr65Tx9/l
 xeS7PSNfpBoonpVq2FXLXCKWBmGAEYqkV7uRaUJdZ3aqPzfRROquPIu+dQc+1+zWG0O8Z+pbIMh
 vHUlMrQIMT6hUa/0oKQ==
X-Proofpoint-GUID: QH4j1fRDq8AF4SuY1rZRivbE1GasCsVr
X-Proofpoint-ORIG-GUID: QH4j1fRDq8AF4SuY1rZRivbE1GasCsVr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_05,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 bulkscore=0 clxscore=1015 adultscore=0
 impostorscore=0 suspectscore=0 lowpriorityscore=0 priorityscore=1501
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603180032
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276914-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,0.0.0.0:email,qualcomm.com:dkim,qualcomm.com:email,0.0.0.1:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,0.0.0.47:email,0.0.0.3:email,0.0.0.2:email];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[swati.agarwal@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.4:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 0DC272B5AEC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Enable secondary USB controller in host mode on lemans EVK Platform.

Secondary USB controller is connected to a Genesys Logic USB HUB GL3590
having 4 ports. The ports of hub that are present on lemans EVK standalone
board are used as follows:-
1) port-1 is connected to HD3SS3220 Type-C port controller.
2) port-4 is used for the M.2 E key on corekit. Standard core kit uses UART
for Bluetooth. This port is to be used only if user optionally replaces the
WiFi card with the NFA765 chip which uses USB for Bluetooth.

Remaining 2 ports will become functional when the interface plus mezzanine
board is stacked on top of corekit:

3) port-2 is connected to another hub which is present on the mezz through
which 4 type-A ports are connected.
4) port-3 is used for the M.2 B key for a 5G card when the mezz is
connected.

Secondary USB Controller
          ↓
GL3590 USB Hub (4 ports)
    |
    |-- Port 1 → HD3SS3220 Type‑C Port Controller → USB‑C Connector
    |
    |-- Port 2 → Mezzanine USB Hub (when mezz attached)
    |
    |-- Port 3 → M.2 B‑Key Slot (when mezz attached)
    |
    |-- Port 4 → M.2 E‑Key Slot
                         (Default: BT via UART;
                          USB only if NFA765 module is installed)

Mark the second USB controller as host only capable and add the HD3SS3220
Type-C port controller along with Type-C connector for controlling vbus
supply.

Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans-evk.dts | 208 ++++++++++++++++++++++++
 1 file changed, 208 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
index 2d7eace9d7ac..7c2dcf97bdcf 100644
--- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
+++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
@@ -87,6 +87,44 @@ usb2_con_hs_ep: endpoint {
 		};
 	};
 
+	connector-1 {
+		compatible = "usb-c-connector";
+		label = "USB1-Type-C";
+		data-role = "host";
+		power-role = "source";
+
+		vbus-supply = <&vbus_supply_regulator_1>;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+
+				usb1_con_hs_ep: endpoint {
+					remote-endpoint = <&usb_hub_2_1>;
+				};
+			};
+
+			port@1 {
+				reg = <1>;
+
+				usb1_con_ss_ep: endpoint {
+					remote-endpoint = <&hd3ss3220_1_in_ep>;
+				};
+
+			};
+
+			port@2 {
+				reg = <2>;
+
+				usb1_con_sbu_ep: endpoint {
+				};
+			};
+		};
+	};
+
 	edp0-connector {
 		compatible = "dp-connector";
 		label = "EDP0";
@@ -169,6 +207,16 @@ usb2_vbus: regulator-usb2-vbus {
 		enable-active-high;
 	};
 
+	vbus_supply_regulator_1: regulator-vbus-supply-1 {
+		compatible = "regulator-fixed";
+		regulator-name = "vbus_supply_1";
+		gpio = <&expander1 3 GPIO_ACTIVE_HIGH>;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-boot-on;
+		enable-active-high;
+	};
+
 	vmmc_sdc: regulator-vmmc-sdc {
 		compatible = "regulator-fixed";
 
@@ -564,6 +612,40 @@ hd3ss3220_0_out_ep: endpoint {
 			};
 		};
 	};
+
+	usb-typec@47 {
+		compatible = "ti,hd3ss3220";
+		reg = <0x47>;
+
+		interrupts-extended = <&pmm8654au_2_gpios 6 IRQ_TYPE_EDGE_FALLING>;
+
+		id-gpios = <&tlmm 51 GPIO_ACTIVE_HIGH>;
+
+		pinctrl-0 = <&usb1_id>, <&usb1_intr>;
+		pinctrl-names = "default";
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+
+				hd3ss3220_1_in_ep: endpoint {
+					remote-endpoint = <&usb1_con_ss_ep>;
+				};
+			};
+
+			port@1 {
+				reg = <1>;
+
+				hd3ss3220_1_out_ep: endpoint {
+					remote-endpoint = <&usb_hub_3_1>;
+				};
+			};
+		};
+	};
+
 };
 
 &i2c18 {
@@ -755,6 +837,14 @@ usb2_id: usb2-id-state {
 		bias-pull-up;
 		power-source = <0>;
 	};
+
+	usb1_intr: usb1-intr-state {
+		pins = "gpio6";
+		function = "normal";
+		input-enable;
+		bias-pull-up;
+		power-source = <0>;
+	};
 };
 
 &qup_i2c19_default {
@@ -948,6 +1038,12 @@ usb_id: usb-id-state {
 		function = "gpio";
 		bias-pull-up;
 	};
+
+	usb1_id: usb1-id-state {
+		pins = "gpio51";
+		function = "gpio";
+		bias-pull-up;
+	};
 };
 
 &uart10 {
@@ -1018,6 +1114,118 @@ &usb_2_hsphy {
 	status = "okay";
 };
 
+&usb_1 {
+	dr_mode = "host";
+
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	status = "okay";
+
+	usb_hub_2_x: hub@1 {
+		compatible = "usb5e3,610";
+		reg = <1>;
+
+		peer-hub = <&usb_hub_3_x>;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@1 {
+				reg = <1>;
+
+				usb_hub_2_1: endpoint {
+					remote-endpoint = <&usb1_con_hs_ep>;
+				};
+			};
+
+			/*
+			 * Port-2 and port-3 are not connected to anything on corekit.
+			 */
+			port@2 {
+				reg = <2>;
+
+				usb_hub_2_2: endpoint {
+				};
+			};
+
+			port@3 {
+				reg = <3>;
+
+				usb_hub_2_3: endpoint {
+				};
+			};
+
+			/*
+			 * Port-4 is connected to M.2 E key connector on corekit.
+			 */
+			port@4 {
+				reg = <4>;
+
+				usb_hub_2_4: endpoint {
+				};
+			};
+		};
+	};
+
+	usb_hub_3_x: hub@2 {
+		compatible = "usb5e3,625";
+		reg = <2>;
+
+		peer-hub = <&usb_hub_2_x>;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@1 {
+				reg = <1>;
+
+				usb_hub_3_1: endpoint {
+					remote-endpoint = <&hd3ss3220_1_out_ep>;
+				};
+			};
+
+			port@2 {
+				reg = <2>;
+
+				usb_hub_3_2: endpoint {
+				};
+			};
+
+			port@3 {
+				reg = <3>;
+
+				usb_hub_3_3: endpoint {
+				};
+			};
+
+			port@4 {
+				reg = <4>;
+
+				usb_hub_3_4: endpoint {
+				};
+			};
+		};
+	};
+};
+
+&usb_1_hsphy {
+	vdda-pll-supply = <&vreg_l7a>;
+	vdda18-supply = <&vreg_l6c>;
+	vdda33-supply = <&vreg_l9a>;
+
+	status = "okay";
+};
+
+&usb_1_qmpphy {
+	vdda-phy-supply = <&vreg_l1c>;
+	vdda-pll-supply = <&vreg_l7a>;
+
+	status = "okay";
+};
+
 &xo_board_clk {
 	clock-frequency = <38400000>;
 };
-- 
2.34.1


