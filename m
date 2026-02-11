Return-Path: <devicetree+bounces-264557-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QLB4I3fKi2m4bAAAu9opvQ
	(envelope-from <devicetree+bounces-264557-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 01:16:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 16E1D120412
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 01:16:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 37A1B301829E
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 00:16:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA9E419E839;
	Wed, 11 Feb 2026 00:16:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=vinarskis.com header.i=@vinarskis.com header.b="tNuM6/8I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-43171.protonmail.ch (mail-43171.protonmail.ch [185.70.43.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BF2017D2
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 00:16:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770769001; cv=none; b=gfrG0sjl/gXDcrNSRsSnbmK7/gbwY7aS+5Zunz4LEdp0U+8PY7+8wJ2mPW4yS2A0BIyQIoZDY+uNs9YkASkwfa64kTpa39lRlJtdDcS0UDvIzlrfSF4rf2QnPjH0rTabZue8QumpzNs0JILjWWVHvPfqNgtuY/8psf2MVV+PbjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770769001; c=relaxed/simple;
	bh=v9WLBO0ARhcNiPcyw61+9QQNglHDM9tPKNk9uwKb/Qs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=DQRqxZqUrDGjITgkN/4Ryucc5qYhch/tHO8ZMUmN5p7Fcvtz8CelV5P4F34BI5yG0QVKxATGu06sJJz+Gjf5IuSm17CZx/aBToB3ih3GUxpzDWqSpQfqaZn68U2YesexodBrO2WF/Xl0GuIUYWnyh2F2O7L2tKWNwQSzFM2iG0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=vinarskis.com; spf=pass smtp.mailfrom=vinarskis.com; dkim=pass (2048-bit key) header.d=vinarskis.com header.i=@vinarskis.com header.b=tNuM6/8I; arc=none smtp.client-ip=185.70.43.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=vinarskis.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vinarskis.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vinarskis.com;
	s=protonmail; t=1770768997; x=1771028197;
	bh=6drSHtbjk9gQYo8LNUUSxjp/txRXwp9S3mSPZJIhCcc=;
	h=From:Date:Subject:Message-Id:To:Cc:From:To:Cc:Date:Subject:
	 Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=tNuM6/8I465JIP9s+e9okFBT2bbaMhVP1E3Y5bi3bfJfjJjP7jmZnaHUxCqdGsMuz
	 8ydAv/W5RwGNUXNd5EOqDboGz5nxqSjvnasorASPhQnDx6/2LvqmpEaVBJDiOvTsmk
	 j7cqIzjmbp+p86AR3cJwsWk8pFsEEnUfUj6uW1fQedoNZ8hnYVRXNgSuOlX5cbGkDB
	 eIE4QsPAmJQkPqwiR6qg63rMLVFLdZHEpnjgPpK8oD7g7Uct4bMJ7J4WeHj0HPAG3t
	 ybgu0bgq3guCFsJi/QRoqzjcjnXBWCsJXbSCu6qdvrL5lxXj9jG0w699Dhf+pyq3KO
	 jhcBhrnNyxkmg==
X-Pm-Submission-Id: 4f9f9v6v0Tz1DDnj
From: Aleksandrs Vinarskis <alex@vinarskis.com>
Date: Wed, 11 Feb 2026 01:16:25 +0100
Subject: [PATCH] arm64: dts: qcom: x1-asus-zenbook-a14: add HDMI port
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260211-zenbook-a14-improvements-v1-1-d970af6e25a3@vinarskis.com>
X-B4-Tracking: v=1; b=H4sIAFjKi2kC/x3MQQqDMBBA0auEWXcgmarYXqV0ocmog5gJSZFS8
 e4NLt/i/wMKZ+ECT3NA5l2KaKxwNwN+GeLMKKEayFJnyTr8cRxVVxxcg7KlrDtvHD8Fx97T495
 SCL2HmqfMk3yv9et9nn8AEcQfagAAAA==
X-Change-ID: 20260201-zenbook-a14-improvements-b8c29352dd8c
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2930; i=alex@vinarskis.com;
 h=from:subject:message-id; bh=v9WLBO0ARhcNiPcyw61+9QQNglHDM9tPKNk9uwKb/Qs=;
 b=owGbwMvMwCX2dl3hIv4AZgHG02pJDJndpxK85zmy1ndIlV3UL3sdNCfhq+DvnNAsy+q7/P82L
 H2zzry4o5SFQYyLQVZMkaX7z9e0rkVz1zJc1/gGM4eVCWQIAxenAEzkuQMjQ0+AufvCql3ri6uv
 OG+qeCi7f7Xul8wP/zd2210Rsq5Pv8/wP/qkqSHDlJtbeHWP38/RcCsSkd/350Xm/sm8HP/tP6o
 7sgMA
X-Developer-Key: i=alex@vinarskis.com; a=openpgp;
 fpr=8E21FAE2D2967BB123303E8C684FD4BA28133815
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[vinarskis.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[vinarskis.com:s=protonmail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alex@vinarskis.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_FROM(0.00)[bounces-264557-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[100hz:email,0.0.0.0:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.1:email];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[vinarskis.com:+]
X-Rspamd-Queue-Id: 16E1D120412
X-Rspamd-Action: no action

Add HDMI port that utilizes qmpphy via Parade PS185HDM DP-HDMI
bridge.

Based on commit 34d76723c410 ("arm64: dts: qcom: x1e80100-vivobook-s15:
add HDMI port")

Signed-off-by: Aleksandrs Vinarskis <alex@vinarskis.com>
---
Successfully tested with 3440x1440@100hz, both hotplug and coldplug.
---
 arch/arm64/boot/dts/qcom/x1-asus-zenbook-a14.dtsi | 79 +++++++++++++++++++++++
 1 file changed, 79 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1-asus-zenbook-a14.dtsi b/arch/arm64/boot/dts/qcom/x1-asus-zenbook-a14.dtsi
index 8e5c5575a5320172caa628db181560f55b688e67..d441f860fbed26df91e336ae7c0a3fb8406c6446 100644
--- a/arch/arm64/boot/dts/qcom/x1-asus-zenbook-a14.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1-asus-zenbook-a14.dtsi
@@ -63,6 +63,45 @@ switch-lid {
 		};
 	};
 
+	hdmi-bridge {
+		compatible = "parade,ps185hdm";
+
+		pinctrl-0 = <&hdmi_hpd_default>;
+		pinctrl-names = "default";
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+
+				hdmi_bridge_dp_in: endpoint {
+					remote-endpoint = <&usb_1_ss2_qmpphy_out_dp>;
+				};
+			};
+
+			port@1 {
+				reg = <1>;
+
+				hdmi_bridge_tmds_out: endpoint {
+					remote-endpoint = <&hdmi_con>;
+				};
+			};
+		};
+	};
+
+	hdmi-connector {
+		compatible = "hdmi-connector";
+		type = "a";
+
+		port {
+			hdmi_con: endpoint {
+				remote-endpoint = <&hdmi_bridge_tmds_out>;
+			};
+		};
+	};
+
 	leds {
 		compatible = "gpio-leds";
 
@@ -995,6 +1034,14 @@ &mdss_dp1_out {
 	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
 };
 
+&mdss_dp2 {
+	status = "okay";
+};
+
+&mdss_dp2_out {
+	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
+};
+
 &mdss_dp3 {
 	/delete-property/ #sound-dai-cells;
 
@@ -1253,6 +1300,12 @@ hall_int_n_default: hall-int-n-state {
 		bias-disable;
 	};
 
+	hdmi_hpd_default: hdmi-hpd-default-state {
+		pins = "gpio126";
+		function = "usb2_dp";
+		bias-disable;
+	};
+
 	hdtl_default: hdtl-default-state {
 		pins = "gpio95";
 		function = "gpio";
@@ -1451,6 +1504,32 @@ &usb_1_ss1_qmpphy_out {
 	remote-endpoint = <&retimer_ss1_ss_in>;
 };
 
+&usb_1_ss2_qmpphy {
+	vdda-phy-supply = <&vreg_l2j_1p2>;
+	vdda-pll-supply = <&vreg_l2d_0p9>;
+
+	/delete-property/ mode-switch;
+	/delete-property/ orientation-switch;
+
+	status = "okay";
+
+	ports {
+		port@0 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			/delete-node/ endpoint;
+
+			usb_1_ss2_qmpphy_out_dp: endpoint@0 {
+				reg = <0>;
+
+				data-lanes = <3 2 1 0>;
+				remote-endpoint = <&hdmi_bridge_dp_in>;
+			};
+		};
+	};
+};
+
 &usb_mp {
 	status = "okay";
 };

---
base-commit: 159c55202f6ec8f0fafca984ba6b0bd5751acddf
change-id: 20260201-zenbook-a14-improvements-b8c29352dd8c

Best regards,
-- 
Aleksandrs Vinarskis <alex@vinarskis.com>


