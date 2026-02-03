Return-Path: <devicetree+bounces-262076-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4DM3D0OhgWkoIAMAu9opvQ
	(envelope-from <devicetree+bounces-262076-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 08:18:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 63C4ED5A4E
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 08:18:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id BC096300252F
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 07:18:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBE063921DE;
	Tue,  3 Feb 2026 07:18:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dBSCLEUf";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="G+24kbhV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 504063803E5
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 07:18:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770103100; cv=none; b=IGmrqM5FfqquUi+dHCxM4pa+y+fe1g8mwa4p1qCvKYHH49hB6I8fRrdvL5uX1D+ZkwIyGkHksl3gd4aRvpEWOFfU3heF/vMy33OWC51K2zqFlZWL2RHi3cm0NvBfjOBXeAK0nyhh05HQtOQV9PergEwgqrVIhdoEPvtEwHwVFiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770103100; c=relaxed/simple;
	bh=zqgXDC27wrbH231qmnfXbqUHNTA251yMVXx7ll5Lfjc=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=cMs1kmLucpeJDJXFrjYiO35CB5gHQwJeOo63VsjfRsENFeOUfMw3RymKD9pBQomsC3xOMVW4jO5Co/qymQuzb3J5/G3IJOZjaVbpM14t/jgRmaAbYRIbyMQsW6wyptZJgWsIl6VZtjYo8D2wotYtOq5jdSfIjuiKPCRKmGpyZLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dBSCLEUf; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=G+24kbhV; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6133HF8D930904
	for <devicetree@vger.kernel.org>; Tue, 3 Feb 2026 07:18:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=BI9OYiyYyM84p9UdwJQqnP8/H4HjmMVwzks
	g/PS1Dfs=; b=dBSCLEUfzPsBXV1oqRlkrsRAMkG2Q+jWeO0Vikh70VcSlhTOpO9
	Ype/0GTRCamBJDyFKvVEpxAZyqwLe3hDVNJ2wZonvUE/mcrYLOYlCQFM0aQ5JxNP
	bAWKx4rEubW9YYQmyvV0xyKsp44/oJ7ffR759ou22F6IrjHfrFVjkTvFxayRrlaX
	RPqYp/cSIZXEHkKK9/RPaW0stbFXyOI0a2IonN655+FjtlQF7EEjHDS0ytkvl1Qj
	Hw6tG2Nrijm6djhDJ2z13lZXD8YhMfxEIgTmeEs2MVI7GIExi4EgesL0EZrGlac3
	Ld+81PW7AtlF3niWDy0fOInosu05d35fvtg==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c38yu0ncs-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 07:18:18 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-82181ef69ceso2648804b3a.2
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 23:18:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770103098; x=1770707898; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BI9OYiyYyM84p9UdwJQqnP8/H4HjmMVwzksg/PS1Dfs=;
        b=G+24kbhVQOJ/AA+LFUkfLxGRQc5HatHm/uaQwR4MXXz20rwhZ/KFcy9gvlmjoKBP9h
         tNisLJJJrehjKhKZWc6VwcQ1yoao6Bfwxl44tYrEDo1vUyGqhnAitoPwgL03S65KUcpM
         GfRDeB6icUzjiJJr3jPVMGkrTyw1lUQX+1PS7OJeGj5lWX9itBdu3uzMO9pcK71fgHPX
         gczPxELu2O/1g2kV63eNZI4y6EeMpgE5G6H4VQMG59cZSf96Hw0IK1Qt5KqFZ/9HWYN7
         hWDe/B9uYMD9tkSafaW8ci4BoZJawjwmDBEFCTdq8XAeWvtl7lsdScGJmWHqOS1QmRIO
         mNmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770103098; x=1770707898;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BI9OYiyYyM84p9UdwJQqnP8/H4HjmMVwzksg/PS1Dfs=;
        b=YKdKlR8WoJATpTBP67RTnmNKJfEKy9i+jascn7VEG94j7vOhbaOqRXOAdf6pH8l95F
         Jl8okztzMLjKozsv33eRBmuqgjs6vGExyVtJyeO+X7RWVt2rabTIAzcn6XlMKgjN0EKa
         jrSXHBAkziHV2ADIGDCKLdavFFT2pDeg7SO7jiBS87Hi/roDSPlln11PWPegBJuJtLuG
         2ncvZ7sXRfLHQyBDzI39evoKB0rgcHBb7CS15ObtmhNYM0hNm4FdlQGgcgJS0dl0IIsb
         9GLZujzqTk7GRGt6z0lcookEliUnaWH5YJ5Nsfkk1kGodLO7pIpS4+RTb28RdooFdnRY
         /VyQ==
X-Forwarded-Encrypted: i=1; AJvYcCU5swCPauby8gPx0frAC3LGheDl+L4aYwyBM78+ozxqIdnuUL7eXfkRIw+Wr9rLYap8LIoHkeX9SzBj@vger.kernel.org
X-Gm-Message-State: AOJu0YzkA0XDIrSK23U/PkRpr72zGdAW83s2jJCjFG2zuG9JSNSRlAzw
	cwirQ29fjRKfP0d+1B+t5THOZHSKawI/iQcJNuGD/L+RAHp8x8nzpD/OcGR2b2lhnjFxMP7UwlJ
	NbnWlQFovcMAlunQqRrWXT13SsQF1dGP+vtJeUn/BWfCTx8FEbVdkko14BRokGwaN
X-Gm-Gg: AZuq6aJ6q8jOgosOClySJXWVQN2pIYIBQ8nPLzh7UC++W1TlhKpr5/FYLqa5pkqgvi7
	0lU3ckRp2/CAqCB2H3zv5qQK1jUT0DElbSWNb7rLMETLxAxaMs4nwiGhzx7CBxurbGUZ2N38RIu
	B5aY3j2A7Mg6sWaesBTMPlUVkocGgpAp+m4MeJgR59mtKjWFJMI3MxWguvCzvD0PBAPF58yLVwi
	6CxThj6ckaPTZPfiIbiP3QVa52yeIXkI8RDruyAIm8CVSCpPsO1O2Dq69NrjJ+uj/kwghex5smu
	NLrwkVHWZw/qbP760x3YzUX03y8wseKq+RoSDq0TARHgARFIlOoVyYVWK0xK0IKBKbjbwbKHlUW
	cuLuDMWlZTV1aOYUaCumgN1G1hcBL1+uPyVhxq6aXlg==
X-Received: by 2002:a05:6a00:ad5:b0:81f:4dc7:d44 with SMTP id d2e1a72fcca58-823aa94032fmr12627318b3a.66.1770103097773;
        Mon, 02 Feb 2026 23:18:17 -0800 (PST)
X-Received: by 2002:a05:6a00:ad5:b0:81f:4dc7:d44 with SMTP id d2e1a72fcca58-823aa94032fmr12627299b3a.66.1770103097258;
        Mon, 02 Feb 2026 23:18:17 -0800 (PST)
Received: from hu-janathot-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82379b23020sm17827578b3a.1.2026.02.02.23.18.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 23:18:16 -0800 (PST)
From: Janaki Ramaiah Thota <janaki.thota@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: quic_mohamull@quicinc.com, quic_hbandi@quicinc.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Janaki Ramaiah Thota <janaki.thota@oss.qualcomm.com>
Subject: [PATCH v1] arm64: dts: qcom: qcm6490-idp: add and enable BT node
Date: Tue,  3 Feb 2026 12:48:07 +0530
Message-Id: <20260203071807.764036-1-janaki.thota@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAzMDA1NyBTYWx0ZWRfXyrTJHRPHG94z
 n8P0dihHAV4xKLpKHbe4PdZmym6VyDc+tq8cJhz2J/n8bM0ACvjWBSNIuPKx9zNlLelU7KtWkTj
 IsA25ncOv/a0SVaBdoKN2aapKjbBO4oEepRsOu9poTDg6wnMIeaBnO8jBoHbEQQa+AEvXaThzNZ
 dREurY0gslnsAPmkm2NCa55OJQLQ/FTPajHBEsMZGNpk9v6J7VpIeshcO/W8ilgfG1SfaSLbmAK
 /9rNvA02q2duim7AB+8U1+bDaDZGaqjETwb8C5hoAwsG4a6YiQT7my7NxDvp50kwLvTBdYyhCSY
 DF5YRYb/XFJBkIyo6uLb0bir8EIiQkL8KvS02+XZkd4WFsEr2R5klvXSvT4BARz0zGv+faazG1D
 Gj2bjEAj/0aZn8+7jMcOfIai1yp3pM9OAGJMQgpE70R/6keLj7KrUHew3drWXQq2SZt6BFZygxZ
 EJEZfLoDKqxZkdOzodw==
X-Proofpoint-ORIG-GUID: h3HNM1_2uqxl8LBG8K3l1HoL_M2FsRWG
X-Proofpoint-GUID: h3HNM1_2uqxl8LBG8K3l1HoL_M2FsRWG
X-Authority-Analysis: v=2.4 cv=UKTQ3Sfy c=1 sm=1 tr=0 ts=6981a13a cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=86PJZVPQ1pRugi-lMccA:9 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_02,2026-02-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 impostorscore=0 malwarescore=0 adultscore=0
 priorityscore=1501 phishscore=0 clxscore=1011 bulkscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602030057
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262076-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[janaki.thota@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 63C4ED5A4E
X-Rspamd-Action: no action

Add the PMU node for WCN6750 present on the qcm6490-idp
board and assign its power outputs to the Bluetooth module.

In WCN6750 module sw_ctrl and wifi-enable pins are handled
in the wifi controller firmware. Therefore, it is not required
to have those pins' entries in the PMU node.

Signed-off-by: Janaki Ramaiah Thota <janaki.thota@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcm6490-idp.dts | 169 +++++++++++++++++++++++
 1 file changed, 169 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcm6490-idp.dts b/arch/arm64/boot/dts/qcom/qcm6490-idp.dts
index 089a027c57d5..4c9f16cc2e4d 100644
--- a/arch/arm64/boot/dts/qcom/qcm6490-idp.dts
+++ b/arch/arm64/boot/dts/qcom/qcm6490-idp.dts
@@ -36,6 +36,7 @@ / {
 
 	aliases {
 		serial0 = &uart5;
+		serial1 = &uart7;
 	};
 
 	pm8350c_pwm_backlight: backlight {
@@ -194,6 +195,63 @@ wcd9370: audio-codec-0 {
 
 		#sound-dai-cells = <1>;
 	};
+
+	wcn6750-pmu {
+		compatible = "qcom,wcn6750-pmu";
+		pinctrl-0 = <&bt_en>;
+		pinctrl-names = "default";
+		vddaon-supply = <&vreg_s7b_0p972>;
+		vddasd-supply = <&vreg_l11c_2p8>;
+		vddpmu-supply = <&vreg_s7b_0p972>;
+		vddrfa0p8-supply = <&vreg_s7b_0p972>;
+		vddrfa1p2-supply = <&vreg_s8b_1p272>;
+		vddrfa1p7-supply = <&vreg_s1b_1p872>;
+		vddrfa2p2-supply = <&vreg_s1c_2p19>;
+
+		bt-enable-gpios = <&tlmm 85 GPIO_ACTIVE_HIGH>;
+
+		regulators {
+			vreg_pmu_rfa_cmn: ldo0 {
+				regulator-name = "vreg_pmu_rfa_cmn";
+			};
+
+			vreg_pmu_aon_0p59: ldo1 {
+				regulator-name = "vreg_pmu_aon_0p59";
+			};
+
+			vreg_pmu_wlcx_0p8: ldo2 {
+				regulator-name = "vreg_pmu_wlcx_0p8";
+			};
+
+			vreg_pmu_wlmx_0p85: ldo3 {
+				regulator-name = "vreg_pmu_wlmx_0p85";
+			};
+
+			vreg_pmu_btcmx_0p85: ldo4 {
+				regulator-name = "vreg_pmu_btcmx_0p85";
+			};
+
+			vreg_pmu_rfa_0p8: ldo5 {
+				regulator-name = "vreg_pmu_rfa_0p8";
+			};
+
+			vreg_pmu_rfa_1p2: ldo6 {
+				regulator-name = "vreg_pmu_rfa_1p2";
+			};
+
+			vreg_pmu_rfa_1p7: ldo7 {
+				regulator-name = "vreg_pmu_rfa_1p7";
+			};
+
+			vreg_pmu_pcie_0p9: ldo8 {
+				regulator-name = "vreg_pmu_pcie_0p9";
+			};
+
+			vreg_pmu_pcie_1p8: ldo9 {
+				regulator-name = "vreg_pmu_pcie_1p8";
+			};
+		};
+	};
 };
 
 &apps_rsc {
@@ -695,6 +753,39 @@ &pon_resin {
 	status = "okay";
 };
 
+&qup_uart7_cts {
+	/*
+	 * Configure a bias-bus-hold on CTS to lower power
+	 * usage when Bluetooth is turned off. Bus hold will
+	 * maintain a low power state regardless of whether
+	 * the Bluetooth module drives the pin in either
+	 * direction or leaves the pin fully unpowered.
+	 */
+	bias-bus-hold;
+};
+
+&qup_uart7_rts {
+	/* We'll drive RTS, so no pull */
+	drive-strength = <2>;
+	bias-disable;
+};
+
+&qup_uart7_rx {
+	/*
+	 * Configure a pull-up on RX. This is needed to avoid
+	 * garbage data when the TX pin of the Bluetooth module is
+	 * in tri-state (module powered off or not driving the
+	 * signal yet).
+	 */
+	bias-pull-up;
+};
+
+&qup_uart7_tx {
+	/* We'll drive TX, so no pull */
+	drive-strength = <2>;
+	bias-disable;
+};
+
 &qupv3_id_0 {
 	status = "okay";
 };
@@ -920,6 +1011,59 @@ &tlmm {
 	gpio-reserved-ranges = <32 2>, /* ADSP */
 			       <48 4>; /* NFC */
 
+	bt_en: bt-en-state {
+		pins = "gpio85";
+		function = "gpio";
+		output-low;
+		bias-disable;
+	};
+
+	qup_uart7_sleep_cts: qup-uart7-sleep-cts-state {
+		pins = "gpio28";
+		function = "gpio";
+		/*
+		 * Configure a bias-bus-hold on CTS to lower power
+		 * usage when Bluetooth is turned off. Bus hold will
+		 * maintain a low power state regardless of whether
+		 * the Bluetooth module drives the pin in either
+		 * direction or leaves the pin fully unpowered.
+		 */
+		bias-bus-hold;
+	};
+
+	qup_uart7_sleep_rts: qup-uart7-sleep-rts-state {
+		pins = "gpio29";
+		function = "gpio";
+		/*
+		 * Configure pull-down on RTS. As RTS is active low
+		 * signal, pull it low to indicate the BT SoC that it
+		 * can wakeup the system anytime from suspend state by
+		 * pulling RX low (by sending wakeup bytes).
+		 */
+		bias-pull-down;
+	};
+
+	qup_uart7_sleep_rx: qup-uart7-sleep-rx-state {
+		pins = "gpio31";
+		function = "gpio";
+		/*
+		 * Configure a pull-up on RX. This is needed to avoid
+		 * garbage data when the TX pin of the Bluetooth module
+		 * is floating which may cause spurious wakeups.
+		 */
+		bias-pull-up;
+	};
+
+	qup_uart7_sleep_tx: qup-uart7-sleep-tx-state {
+		pins = "gpio30";
+		function = "gpio";
+		/*
+		 * Configure pull-up on TX when it isn't actively driven
+		 * to prevent BT SoC from receiving garbage during sleep.
+		 */
+		bias-pull-up;
+	};
+
 	sd_cd: sd-cd-state {
 		pins = "gpio91";
 		function = "gpio";
@@ -938,6 +1082,31 @@ &uart5 {
 	status = "okay";
 };
 
+&uart7 {
+	/delete-property/ interrupts;
+	interrupts-extended = <&intc GIC_SPI 608 IRQ_TYPE_LEVEL_HIGH>,
+			      <&tlmm 31 IRQ_TYPE_EDGE_FALLING>;
+	pinctrl-1 = <&qup_uart7_sleep_cts>,
+		    <&qup_uart7_sleep_rts>,
+		    <&qup_uart7_sleep_tx>,
+		    <&qup_uart7_sleep_rx>;
+	pinctrl-names = "default",
+			"sleep";
+
+	status = "okay";
+
+	bluetooth: bluetooth {
+		compatible = "qcom,wcn6750-bt";
+		vddrfacmn-supply = <&vreg_pmu_rfa_cmn>;
+		vddaon-supply = <&vreg_pmu_aon_0p59>;
+		vddbtcmx-supply = <&vreg_pmu_btcmx_0p85>;
+		vddrfa0p8-supply = <&vreg_pmu_rfa_0p8>;
+		vddrfa1p7-supply = <&vreg_pmu_rfa_1p7>;
+		vddrfa1p2-supply = <&vreg_pmu_rfa_1p2>;
+		max-speed = <3200000>;
+	};
+};
+
 &ufs_mem_hc {
 	reset-gpios = <&tlmm 175 GPIO_ACTIVE_LOW>;
 	vcc-supply = <&vreg_l7b_2p952>;
-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
a Linux Foundation Collaborative Project


