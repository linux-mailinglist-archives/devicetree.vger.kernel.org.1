Return-Path: <devicetree+bounces-272157-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gOg3AOPjqmkTYAEAu9opvQ
	(envelope-from <devicetree+bounces-272157-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 15:25:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 00D822229E8
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 15:25:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id F3CEA3091A84
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 14:23:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16A7E3B3BE0;
	Fri,  6 Mar 2026 14:22:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="WHNDsM3+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 542F73AE704
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 14:22:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772806951; cv=none; b=i6W8OF2k+74oBpXZ5tm1VxVLq2Ip0cCQdxGSHp4MbK5ouCUtUw81pRTk4niUxRtrYwRTLBSrrIA7oNixSVDBDoqCZlmLU0psBqCiK7K7pCHhL3pRtQ3GatvFT8BiZN6szW1tnNQ4d26OyTiqMgcoWcmQyrxkjPGpFhpaYr/0UnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772806951; c=relaxed/simple;
	bh=ceaAYHgyAOISMMGiY+fNNjyu+n4n2FiUVw5y5npeShc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=jGLMnxX+Lf10cWYWFM6xhHf40biRnGdJ9SrIPwkqeqD/wajT/hu/0VBBCmLX+ZmkLlSB983lKMl/TwHPwLrrymiBjcCNEGaGODdkEyatOltbWbepIDL6rx2bNEz8VMIIus/slLAzKjIdN0/CIq+9gefaS3nDgy17r5auo/nBxiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=WHNDsM3+; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-660d77cacc2so944968a12.1
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 06:22:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1772806944; x=1773411744; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+uGmjUwMwFnjrFzi7s2tWi4x0D5mNfrprS2P1mjJOIk=;
        b=WHNDsM3+QmKHSbTDx0Gyh7iSjnMW1ZDCaCQnV+FWwU3rqvxsWJxDpdBt2ryqaGMaKl
         RUuNY1Ee3L1snaoAA6Sy9LEXS68zDQMVa69JPkTNg4CUxSMIwNMgLAiShmUbg1sXKVxJ
         06iyUqGvtPvYLL5u8WZ2knvvfEYcnFXAB4+Toj91mvuAMSiITRZNKj//koILnYvhT8LV
         Yp7xNZ+4cS3LJ+E21kjDZtHjUQ318Z5xPgPithD4hW0MNHF4jXs8V7+WJCSc8uiLQttl
         vs0TpqaC8O3gNv6E/RoJN/gQZKpXGf0O64Nl0Ud24LNjy8rc0irW/nglYgXVl8FHZrh5
         uDdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772806944; x=1773411744;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+uGmjUwMwFnjrFzi7s2tWi4x0D5mNfrprS2P1mjJOIk=;
        b=fiEZVIg4oDy/pTPVviCpFPDGsXPdc1ht/5QmJ3bOMvMNs0tzipaYh+wM7b7iLPQafl
         gJLGtLmPBRlpKku9WBKyogeItenqpBqONDTJjlbGtIjJGhgBBN8RfEFXXDySEw7EfIUs
         CRvKEc9qGnUhSGtQ7AfW/oulLwprOtpwWe0hVckSlGStQZZFBWY5hMNTjWNRg6iHKsua
         Lx9qTX34kpJHzYZB6lIXHnexiqGDslOlX4Vwb7SeRUvjdKAuMCPp84juzBB2fPQnhN0/
         YcmJwQ1B9BwX5J2CAIjqaHfl77pwJWQevC1y5xGe9J1sIctB14nYOc/331bLDXQzDqYK
         /Vvw==
X-Forwarded-Encrypted: i=1; AJvYcCW57XP2u1pN0CqjgoMogsCEoK742C3vFwQTBNUNEyMC6ZN+6jaIwbYAV8pivSHPVkiWtvDipx6DojvJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9+X8HOrfRJL7W5gCwIrEfwuj6neufRwDsk5b+6LBasK4/UdHg
	vzFuHezU+udHK0OuCoGbCc2k4D2XAhuTmwxOa5whRJOK+oSMM6WNnt2KElcucGR8jfU=
X-Gm-Gg: ATEYQzw4Jza2wliblU9ftVTUz++oFjEs2Jw3A3cgJcZfr/hGzc4Ss2zoz/Vr6Feg88D
	kysXFnONGFuf6HS2wQvAsKmDaDnZsTPXbCfywVK324pP9qHA+nZgKoU3ieHirIInBP5jIoc99IF
	5a95hKzaXW16+img479hop+j6vqa3FsL3qimccKoxxt83UnH14WWZCexlGVHX+BS7H79aRtS9K8
	lUhe04M3IZMYC6KPu5Jeq8YRZHXwn9sPm8xb81XmUM7nSsIbzHqp4TyZNMujF8eQy+nAf4dALcH
	Oy3lWPC+z8F35p+n7KnDeaCftlfschJ2iOYyN+Xjwe9gpCmwtfkJ0tsGkVJiuP86vo8YZQj+1qM
	f1VmrhJdpEkqfaiOaWM+/UT7lX9sz2XMkcgQrH/cAw/qivmDDCshu+NFpXHBZqreuvciyj9lxeH
	fwiUpWUsDMIfTBjd5Ft99T8Xr+uhn20fFTR2UqPCqfzgp+kktVhB01240FsUZ27Gmhsm02QjT5q
	+pH
X-Received: by 2002:aa7:d350:0:b0:659:9068:9786 with SMTP id 4fb4d7f45d1cf-66143049299mr2529371a12.10.1772806944337;
        Fri, 06 Mar 2026 06:22:24 -0800 (PST)
Received: from [172.16.240.99] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-661a3c66d3fsm517251a12.2.2026.03.06.06.22.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 06:22:23 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 06 Mar 2026 15:22:18 +0100
Subject: [PATCH 4/4] arm64: dts: qcom: milos: Add LPASS LPI pinctrl node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260306-milos-pinctrl-lpi-v1-4-086946dbb855@fairphone.com>
References: <20260306-milos-pinctrl-lpi-v1-0-086946dbb855@fairphone.com>
In-Reply-To: <20260306-milos-pinctrl-lpi-v1-0-086946dbb855@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Linus Walleij <linusw@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772806937; l=3258;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=ceaAYHgyAOISMMGiY+fNNjyu+n4n2FiUVw5y5npeShc=;
 b=GKmNcNAkRbQfG9aIk8UKVimfr43zZminilltWJfAq60uRDyaLQCYTurQFUFAZ/rd1Zn5kpKRx
 ZKw1JGCcpTQCprIzBCXF+ID3isfIfFpuM+JN4GEenepgDNXXo3kK3Gx
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-Rspamd-Queue-Id: 00D822229E8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[fairphone.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[fairphone.com:s=fair];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272157-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[fairphone.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.weiss@fairphone.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[fairphone.com:dkim,fairphone.com:email,fairphone.com:mid,3c40000:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,0.52.125.128:email]
X-Rspamd-Action: no action

Add a node for the LPASS LPI pinctrl found on the Milos SoC and define a
few pinctrl states that will be used in the future.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/milos.dtsi | 103 ++++++++++++++++++++++++++++++++++++
 1 file changed, 103 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/milos.dtsi b/arch/arm64/boot/dts/qcom/milos.dtsi
index 5691eb2dcfd0..ccacf8d14ae8 100644
--- a/arch/arm64/boot/dts/qcom/milos.dtsi
+++ b/arch/arm64/boot/dts/qcom/milos.dtsi
@@ -20,6 +20,7 @@
 #include <dt-bindings/power/qcom-rpmpd.h>
 #include <dt-bindings/soc/qcom,gpr.h>
 #include <dt-bindings/soc/qcom,rpmh-rsc.h>
+#include <dt-bindings/sound/qcom,q6dsp-lpass-ports.h>
 
 / {
 	interrupt-parent = <&intc>;
@@ -1307,6 +1308,108 @@ q6prmcc: clock-controller {
 			};
 		};
 
+		lpass_tlmm: pinctrl@3440000 {
+			compatible = "qcom,milos-lpass-lpi-pinctrl";
+			reg = <0x0 0x03440000 0x0 0x20000>,
+			      <0x0 0x034d0000 0x0 0x10000>;
+			gpio-controller;
+			#gpio-cells = <2>;
+			gpio-ranges = <&lpass_tlmm 0 0 23>;
+
+			clocks = <&q6prmcc LPASS_HW_MACRO_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&q6prmcc LPASS_HW_DCODEC_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
+			clock-names = "core",
+				      "audio";
+
+			tx_swr_active: tx-swr-active-state {
+				clk-pins {
+					pins = "gpio0";
+					function = "swr_tx_clk";
+					drive-strength = <4>;
+					slew-rate = <1>;
+					bias-disable;
+				};
+
+				data-pins {
+					pins = "gpio1", "gpio2", "gpio14";
+					function = "swr_tx_data";
+					drive-strength = <4>;
+					slew-rate = <1>;
+					bias-bus-hold;
+				};
+			};
+
+			rx_swr_active: rx-swr-active-state {
+				clk-pins {
+					pins = "gpio3";
+					function = "swr_rx_clk";
+					drive-strength = <2>;
+					slew-rate = <1>;
+					bias-disable;
+				};
+
+				data-pins {
+					pins = "gpio4", "gpio5";
+					function = "swr_rx_data";
+					drive-strength = <2>;
+					slew-rate = <1>;
+					bias-bus-hold;
+				};
+			};
+
+			lpi_i2s2_active: lpi-i2s2-active-state {
+				clk-pins {
+					pins = "gpio10";
+					function = "i2s2_clk";
+					drive-strength = <8>;
+					bias-disable;
+					output-high;
+				};
+
+				ws-pins {
+					pins = "gpio11";
+					function = "i2s2_ws";
+					drive-strength = <8>;
+					bias-disable;
+					output-high;
+				};
+
+				data-pins {
+					pins = "gpio12", "gpio13";
+					function = "i2s2_data";
+					drive-strength = <8>;
+					bias-disable;
+					output-high;
+				};
+			};
+
+			lpi_i2s2_sleep: lpi-i2s2-sleep-state {
+				clk-pins {
+					pins = "gpio10";
+					function = "i2s2_clk";
+					drive-strength = <2>;
+					bias-pull-down;
+					input-enable;
+				};
+
+				ws-pins {
+					pins = "gpio11";
+					function = "i2s2_ws";
+					drive-strength = <2>;
+					bias-pull-down;
+					input-enable;
+				};
+
+				data-pins {
+					pins = "gpio12", "gpio13";
+					function = "i2s2_data";
+					drive-strength = <2>;
+					bias-pull-down;
+					input-enable;
+				};
+			};
+		};
+
 		lpass_ag_noc: interconnect@3c40000 {
 			compatible = "qcom,milos-lpass-ag-noc";
 			reg = <0x0 0x03c40000 0x0 0x17200>;

-- 
2.53.0


