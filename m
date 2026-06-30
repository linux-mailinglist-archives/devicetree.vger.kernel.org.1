Return-Path: <devicetree+bounces-317785-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 7gfDDX2+Q2o7gQoAu9opvQ
	(envelope-from <devicetree+bounces-317785-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 15:02:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B56AD6E493B
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 15:02:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=b2CDKdZG;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317785-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317785-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0879031BC6B5
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 12:55:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8040842315B;
	Tue, 30 Jun 2026 12:54:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D958416D18;
	Tue, 30 Jun 2026 12:54:47 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782824087; cv=none; b=Z9Kb56YZtUmls1XXGPWOgSBpBFp5uE4nHsAN1fqUkw4p/dtGwZsvvTUHDebP4wVYYtGkCdYcHj/HvWkzyUkKOYdjNjy1ZQ5UbppnQmc7qh0VAqEkyfVJXoaEXfMzIPH8JH70cryzTepfsSs3IwltH8OB5eymp9By57qp0xa/NFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782824087; c=relaxed/simple;
	bh=B+M1c9uJ0chHs8xGwOJC+Qw9PdHQ9Wy7xFVF2lqJQl4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Pmjp3lRrmltkFr84qkqQURXpwPWaJ/8pAmhcRJqqVj9AOH5WYqkCfonqU8VWUMm95INOBi8pYSYN/8vZYA3oXLL2vvIHQqOclduDRDLUjhP0uoFk7XhSUAvFyfzlq3dfTfVCaOnuTTQ3eFcEZM0/Y8yaeza5mLfjBL0qnkYsoqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b2CDKdZG; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6DF7C2BCFD;
	Tue, 30 Jun 2026 12:54:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782824086;
	bh=B+M1c9uJ0chHs8xGwOJC+Qw9PdHQ9Wy7xFVF2lqJQl4=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=b2CDKdZGLq+c4n/5wwxxT3rXvpx7zJYt6vyiF0VJvL1P81NigYKDDcIjt3HIUChav
	 49578cJNS0MlrgaZ/O9xnYGdx2sF4qRjt4ZQxDSTGlRnS5JW8P4LzIxV1zHemMhaaD
	 4H3rymYh/MOfTbqkBHGo+fOy9YruraRLlYdRmOFIrP3rkehV+934/sHM4ut2OJPJM9
	 2Zvnb+7uPYSQ+yq8CrNhBllhvnbdBjcx8X95gUL0IrJH+WBOdzAGg0Z0Otvgw1eCX6
	 X+U6VIqPQRddiW/K82Q8zBPa0a9BF7KyFCXpxkuuCvQZFvjJHg7Ph052DvpasjuOPI
	 Lgi5mw1L7RLdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFC36C43458;
	Tue, 30 Jun 2026 12:54:46 +0000 (UTC)
From: Michael Reeves via B4 Relay <devnull+michael.reeves077.gmail.com@kernel.org>
Date: Tue, 30 Jun 2026 22:54:37 +1000
Subject: [PATCH 09/10] arm64: dts: apple: Add MTP DockChannel HID nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260630-apple-mtp-keyboard-final-v1-9-506d936a1707@gmail.com>
References: <20260630-apple-mtp-keyboard-final-v1-0-506d936a1707@gmail.com>
In-Reply-To: <20260630-apple-mtp-keyboard-final-v1-0-506d936a1707@gmail.com>
To: Sven Peter <sven@kernel.org>, Janne Grunau <j@jannau.net>, 
 Neal Gompa <neal@gompa.dev>, Jassi Brar <jassisinghbrar@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Hector Martin <marcan@marcan.st>, 
 "Joerg Roedel (AMD)" <joro@8bytes.org>, Will Deacon <will@kernel.org>, 
 Robin Murphy <robin.murphy@arm.com>, 
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, Jiri Kosina <jikos@kernel.org>, 
 Benjamin Tissoires <bentiss@kernel.org>
Cc: asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 iommu@lists.linux.dev, linux-input@vger.kernel.org, 
 Michael Reeves <michael.reeves077@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1782824083; l=6768;
 i=michael.reeves077@gmail.com; s=20260105; h=from:subject:message-id;
 bh=bMwqHA+Egy8OA2vhAFSY5t62oYeUho9ZB0NPCjtkjoI=;
 b=PguWqSaT4+ksTgvbKhxg8jxpkvQ1bdIqmorWcBIGRWuyt9Yf22sPwdVtn6OWDD0FQV22T1CpK
 8YSeNGIIi81B417YM/EHCuSBcorSLyWiC1AHqedenxvjoQ3mHSQ2WNB
X-Developer-Key: i=michael.reeves077@gmail.com; a=ed25519;
 pk=QIrgWBGCm3LG0YYc6MLCDkwuVXLTGGooVBdWX/KhSiU=
X-Endpoint-Received: by B4 Relay for michael.reeves077@gmail.com/20260105
 with auth_id=591
X-Original-From: Michael Reeves <michael.reeves077@gmail.com>
Reply-To: michael.reeves077@gmail.com
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-317785-lists,devicetree=lfdr.de,michael.reeves077.gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sven@kernel.org,m:j@jannau.net,m:neal@gompa.dev,m:jassisinghbrar@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:marcan@marcan.st,m:joro@8bytes.org,m:will@kernel.org,m:robin.murphy@arm.com,m:dmitry.torokhov@gmail.com,m:jikos@kernel.org,m:bentiss@kernel.org,m:asahi@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:iommu@lists.linux.dev,m:linux-input@vger.kernel.org,m:michael.reeves077@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:dmitrytorokhov@gmail.com,m:michaelreeves077@gmail.com,s:lists@lfdr.de];
	FREEMAIL_REPLYTO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,jannau.net,gompa.dev,gmail.com,marcan.st,8bytes.org,arm.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	HAS_REPLYTO(0.00)[michael.reeves077@gmail.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[lists.linux.dev,lists.infradead.org,vger.kernel.org,gmail.com];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B56AD6E493B

From: Michael Reeves <michael.reeves077@gmail.com>

Add disabled MTP nodes for the Apple SoCs used by M2 and M3 systems.

Each instance describes the RTKit ASC mailbox, MTP DART, DockChannel
mailbox, and DockChannel HID client. Board files can enable them on
machines that route internal input through MTP.

Co-developed-by: Hector Martin <marcan@marcan.st>
Signed-off-by: Hector Martin <marcan@marcan.st>
Signed-off-by: Michael Reeves <michael.reeves077@gmail.com>
---
 arch/arm64/boot/dts/apple/t602x-die0.dtsi | 46 ++++++++++++++++++++++++++++++
 arch/arm64/boot/dts/apple/t8112.dtsi      | 46 ++++++++++++++++++++++++++++++
 arch/arm64/boot/dts/apple/t8122.dtsi      | 47 +++++++++++++++++++++++++++++++
 3 files changed, 139 insertions(+)

diff --git a/arch/arm64/boot/dts/apple/t602x-die0.dtsi b/arch/arm64/boot/dts/apple/t602x-die0.dtsi
index 8622ddea7b44..edc73682fd22 100644
--- a/arch/arm64/boot/dts/apple/t602x-die0.dtsi
+++ b/arch/arm64/boot/dts/apple/t602x-die0.dtsi
@@ -150,6 +150,52 @@ pinctrl_smc: pinctrl@2a2820000 {
 				<AIC_IRQ 0 857 IRQ_TYPE_LEVEL_HIGH>;
 	};
 
+	mtp_mbox: mbox@2a9408000 {
+		compatible = "apple,t6020-asc-mailbox", "apple,asc-mailbox-v4";
+		reg = <0x2 0xa9408000 0x0 0x4000>;
+		interrupt-parent = <&aic>;
+		interrupts = <AIC_IRQ 0 693 IRQ_TYPE_LEVEL_HIGH>,
+			     <AIC_IRQ 0 694 IRQ_TYPE_LEVEL_HIGH>,
+			     <AIC_IRQ 0 695 IRQ_TYPE_LEVEL_HIGH>,
+			     <AIC_IRQ 0 696 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "send-empty", "send-not-empty",
+				  "recv-empty", "recv-not-empty";
+		#mbox-cells = <0>;
+		status = "disabled";
+	};
+
+	mtp_dart: iommu@2a9808000 {
+		compatible = "apple,t6020-dart", "apple,t8110-dart";
+		reg = <0x2 0xa9808000 0x0 0x4000>;
+		interrupt-parent = <&aic>;
+		interrupts = <AIC_IRQ 0 676 IRQ_TYPE_LEVEL_HIGH>;
+		#iommu-cells = <1>;
+		status = "disabled";
+	};
+
+	mtp_dockchannel: mailbox@2a9b14000 {
+		compatible = "apple,t6020-dockchannel", "apple,t8112-dockchannel";
+		reg = <0x2 0xa9b14000 0x0 0x4000>,
+		      <0x2 0xa9b30000 0x0 0x4000>,
+		      <0x2 0xa9b34000 0x0 0x4000>;
+		reg-names = "irq", "config", "data";
+		interrupt-parent = <&aic>;
+		interrupts = <AIC_IRQ 0 677 IRQ_TYPE_LEVEL_HIGH>;
+		#mbox-cells = <0>;
+		status = "disabled";
+	};
+
+	mtp_hid: hid@2a9400000 {
+		compatible = "apple,t6020-dockchannel-hid", "apple,t8112-dockchannel-hid";
+		reg = <0x2 0xa9400000 0x0 0x4000>,
+		      <0x2 0xa9c00000 0x0 0x100000>;
+		reg-names = "coproc-asc", "coproc-sram";
+		mboxes = <&mtp_mbox>, <&mtp_dockchannel>;
+		mbox-names = "asc", "dockchannel";
+		iommus = <&mtp_dart 1>;
+		status = "disabled";
+	};
+
 	sio_dart: iommu@39b008000 {
 		compatible = "apple,t6020-dart", "apple,t8110-dart";
 		reg = <0x3 0x9b008000 0x0 0x8000>;
diff --git a/arch/arm64/boot/dts/apple/t8112.dtsi b/arch/arm64/boot/dts/apple/t8112.dtsi
index 85c47422d4e8..8411828c0772 100644
--- a/arch/arm64/boot/dts/apple/t8112.dtsi
+++ b/arch/arm64/boot/dts/apple/t8112.dtsi
@@ -983,6 +983,52 @@ pinctrl_aop: pinctrl@24a820000 {
 				     <AIC_IRQ 307 IRQ_TYPE_LEVEL_HIGH>;
 		};
 
+		mtp_mbox: mbox@24e408000 {
+			compatible = "apple,t8112-asc-mailbox", "apple,asc-mailbox-v4";
+			reg = <0x2 0x4e408000 0x0 0x4000>;
+			interrupt-parent = <&aic>;
+			interrupts = <AIC_IRQ 864 IRQ_TYPE_LEVEL_HIGH>,
+				     <AIC_IRQ 865 IRQ_TYPE_LEVEL_HIGH>,
+				     <AIC_IRQ 866 IRQ_TYPE_LEVEL_HIGH>,
+				     <AIC_IRQ 867 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "send-empty", "send-not-empty",
+					  "recv-empty", "recv-not-empty";
+			#mbox-cells = <0>;
+			status = "disabled";
+		};
+
+		mtp_dart: iommu@24e808000 {
+			compatible = "apple,t8110-dart";
+			reg = <0x2 0x4e808000 0x0 0x4000>;
+			interrupt-parent = <&aic>;
+			interrupts = <AIC_IRQ 848 IRQ_TYPE_LEVEL_HIGH>;
+			#iommu-cells = <1>;
+			status = "disabled";
+		};
+
+		mtp_dockchannel: mailbox@24eb14000 {
+			compatible = "apple,t8112-dockchannel";
+			reg = <0x2 0x4eb14000 0x0 0x4000>,
+			      <0x2 0x4eb30000 0x0 0x4000>,
+			      <0x2 0x4eb34000 0x0 0x4000>;
+			reg-names = "irq", "config", "data";
+			interrupt-parent = <&aic>;
+			interrupts = <AIC_IRQ 850 IRQ_TYPE_LEVEL_HIGH>;
+			#mbox-cells = <0>;
+			status = "disabled";
+		};
+
+		mtp_hid: hid@24e400000 {
+			compatible = "apple,t8112-dockchannel-hid";
+			reg = <0x2 0x4e400000 0x0 0x4000>,
+			      <0x2 0x4ec00000 0x0 0x100000>;
+			reg-names = "coproc-asc", "coproc-sram";
+			mboxes = <&mtp_mbox>, <&mtp_dockchannel>;
+			mbox-names = "asc", "dockchannel";
+			iommus = <&mtp_dart 1>;
+			status = "disabled";
+		};
+
 		ans_mbox: mbox@277408000 {
 			compatible = "apple,t8112-asc-mailbox", "apple,asc-mailbox-v4";
 			reg = <0x2 0x77408000 0x0 0x4000>;
diff --git a/arch/arm64/boot/dts/apple/t8122.dtsi b/arch/arm64/boot/dts/apple/t8122.dtsi
index c6196225e96e..ec1f47d15ec9 100644
--- a/arch/arm64/boot/dts/apple/t8122.dtsi
+++ b/arch/arm64/boot/dts/apple/t8122.dtsi
@@ -438,6 +438,53 @@ pinctrl_aop: pinctrl@2f4824000 {
 				     <AIC_IRQ 351 IRQ_TYPE_LEVEL_HIGH>,
 				     <AIC_IRQ 352 IRQ_TYPE_LEVEL_HIGH>;
 		};
+
+		mtp_mbox: mbox@2fa408000 {
+			compatible = "apple,t8122-asc-mailbox", "apple,asc-mailbox-v4";
+			reg = <0x2 0xfa408000 0x0 0x4000>;
+			interrupt-parent = <&aic>;
+			interrupts = <AIC_IRQ 838 IRQ_TYPE_LEVEL_HIGH>,
+				     <AIC_IRQ 839 IRQ_TYPE_LEVEL_HIGH>,
+				     <AIC_IRQ 840 IRQ_TYPE_LEVEL_HIGH>,
+				     <AIC_IRQ 841 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "send-empty", "send-not-empty",
+					  "recv-empty", "recv-not-empty";
+			#mbox-cells = <0>;
+			status = "disabled";
+		};
+
+		mtp_dart: iommu@2fa808000 {
+			compatible = "apple,t8122-dart", "apple,t8110-dart";
+			reg = <0x2 0xfa808000 0x0 0x4000>;
+			interrupt-parent = <&aic>;
+			interrupts = <AIC_IRQ 822 IRQ_TYPE_LEVEL_HIGH>;
+			#iommu-cells = <1>;
+			status = "disabled";
+		};
+
+		mtp_dockchannel: mailbox@2fab14000 {
+			compatible = "apple,t8122-dockchannel", "apple,t8112-dockchannel";
+			reg = <0x2 0xfab14000 0x0 0x4000>,
+			      <0x2 0xfab30000 0x0 0x4000>,
+			      <0x2 0xfab34000 0x0 0x4000>;
+			reg-names = "irq", "config", "data";
+			interrupt-parent = <&aic>;
+			interrupts = <AIC_IRQ 824 IRQ_TYPE_LEVEL_HIGH>;
+			#mbox-cells = <0>;
+			status = "disabled";
+		};
+
+		mtp_hid: hid@2fa400000 {
+			compatible = "apple,t8122-dockchannel-hid",
+				     "apple,t8112-dockchannel-hid";
+			reg = <0x2 0xfa400000 0x0 0x4000>,
+			      <0x2 0xfac00000 0x0 0x100000>;
+			reg-names = "coproc-asc", "coproc-sram";
+			mboxes = <&mtp_mbox>, <&mtp_dockchannel>;
+			mbox-names = "asc", "dockchannel";
+			iommus = <&mtp_dart 1>;
+			status = "disabled";
+		};
 	};
 };
 

-- 
2.51.2



