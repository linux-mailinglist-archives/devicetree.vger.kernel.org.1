Return-Path: <devicetree+bounces-309790-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id YjefN+pZKWriVQMAu9opvQ
	(envelope-from <devicetree+bounces-309790-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 14:34:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E010669506
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 14:34:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=WAW7EbX3;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309790-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309790-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 31779302EA8C
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 12:34:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7ACEB3932DA;
	Wed, 10 Jun 2026 12:34:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62EA13FAE19;
	Wed, 10 Jun 2026 12:34:45 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781094886; cv=none; b=PfHJngu3dR/Xi48kWjidbJG4PU/mjXh/YiUTrm7COvSCkc18f1OiNh+u1OGkcsS9JbQy31xfa2uoXPMAzLb4DiJr1bU+6FrKCnpJbGNbYUtCtTO38LCmyfkjHwC7tRzgC3e6zuWTAF4IzhycR9SleJ7boCJv8wbBF/RGfZsMeFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781094886; c=relaxed/simple;
	bh=APunAFCOhvnEPzJn8enVpgW8mKtpnQazcb7rHmyqvDI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=pUXJQ+HCl2WChRFX+WXeaHiXattYLYUqykQWDBLsJ7bI0bv6QlxvFUSt3Jcrnayq7hRuoiM4Nwse8I8JLZILjjsQK+3UrNWgbsGgqmZhpG/J4QssglfwdqJtSmZgrq9lyGxH2+1C1kv0JQ9yz6E8EaCrElZc3Rr0gxQzrl7l8mc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WAW7EbX3; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 556F91F00898;
	Wed, 10 Jun 2026 12:34:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781094885;
	bh=ZaI6xM8qV9yj7Kk8/veyhQXGEM9b9uFkMLsDWbN/Mno=;
	h=From:Date:Subject:To:Cc;
	b=WAW7EbX3zLsR9uS+VOMh5DykdskbOLwyT8fEpY8eH1jPSkGFGlEGrrEkUq2MA8LEp
	 SUgchyz5j41en1mKBYTwskhxzorj56A9EFytSpAQtKttLCRG269Key+AMt6PHVSu4v
	 3acvLXzRaWjqJ8mu0d/G6S4TbjcOzRZ+6xvvsduRLhEiRm//djuoJGJUzuV46q5u7h
	 CS9GIoFYGOrK0KLH8Gvzs+vddsMWPU0qVgjBKY6dtxJqoOOnPaSnWcIXMI1hia0Hfm
	 H0Cru6rZX9PgF5JXX7fruidszfHXm6Ms/SIqTNJFmeuw91ArRYX2vSeqhExp0JR0XP
	 hKFZiAwL4Yf0Q==
From: Yixun Lan <dlan@kernel.org>
Date: Wed, 10 Jun 2026 12:34:32 +0000
Subject: [PATCH] riscv: dts: spacemit: k3: Enable SD card support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260610-07-k3-enable-sd-v1-1-196ae29bd091@kernel.org>
X-B4-Tracking: v=1; b=H4sIANdZKWoC/yXMSwqDQBBF0a1IjVNQGvC3lZCB2q+1TGhDl0pA3
 Hs6yfAM7j3IEBVGbXZQxK6mS0jILxkNUxdGsLpkKqQopZSGpeLHlRG6/gk2x8id89II6spTql4
 RXt+/4+3+t239jGH9bug8P50aqNBzAAAA
X-Change-ID: 20260609-07-k3-enable-sd-e1ddf090e87f
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>
Cc: devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org, 
 Yixun Lan <dlan@kernel.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3734; i=dlan@kernel.org;
 h=from:subject:message-id; bh=APunAFCOhvnEPzJn8enVpgW8mKtpnQazcb7rHmyqvDI=;
 b=owEB6QIW/ZANAwAKATGq6kdZTbvtAcsmYgBqKVneuUjSmx5vCKm2/SFZfUIpAQ2MpJfBx6JSI
 VJxnUXRqWSJAq8EAAEKAJkWIQS1urjJwxtxFWcCI9wxqupHWU277QUCailZ3hsUgAAAAAAEAA5t
 YW51MiwyLjUrMS4xMiwyLDJfFIAAAAAALgAoaXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5
 maWZ0aGhvcnNlbWFuLm5ldEI1QkFCOEM5QzMxQjcxMTU2NzAyMjNEQzMxQUFFQTQ3NTk0REJCRU
 QACgkQMarqR1lNu+3HuQ/+P2iFsk7XJHMo45AkR6GasC+7AEF/qC+dAN1wf1ASvGjoe24mvYQ9z
 /hiJYhC3bqJ+Cgl1O9whbN4O8kIrfKaAgYbXj97QAo7IvF+97ooVC31IMdFJtit63lsLFXTSTRV
 Ezp9ddk/vbQ3bFDl8RhbT2mG4mst7+1UHeTN1evs9dRLIKYHzALeXegGr9ORwxYXG9NLIdKWWKj
 Eg7kIJuBkmTYnKivzaR9FygAPim/v9jSz9MouqWf/MAw8/1Iqcf4brp1Q3DEC00xLCUbVWfxAGq
 iOB+xH29bkuzqZgQ+kys1QGp3KIDRNnn3e0yomN5z5/64vNotuaYmy13qOfK0y86KXQemK1opAl
 wX0BovgoRef40Fc6LoZ06F71ErPPsTh7pBunoM4VrgQ9upgF8svHFNLHugIBS2l8a/Tho1pmRoK
 aOCit+zYjKwHnNjUCQ1j+EtXQ4TuQDxtvEsMHLgmK060OrvquHbUvLxzfdupF28rfBz8ih5XEvp
 4Db+j7BoHZ+2gf4v5/Kh1Dd3QH0qPghtLkFlCgmQm4UH8XgcrFLFvrVWh8rJRwObZ6X+mlLJLXh
 m28ryakiYGqHUfcqmNjfQvofHaqSpvyIb7CQ8gK4yEIfXld7ZbqFfHV/FuIxC3wR8FYqIJWbbO2
 3m+t66UJaB531DO//Uh522eqUGV7BM=
X-Developer-Key: i=dlan@kernel.org; a=openpgp;
 fpr=50B03A1A5CBCD33576EF8CD7920C0DBCAABEFD55
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-309790-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:pjw@kernel.org,m:palmer@dabbelt.com,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:devicetree@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:spacemit@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:dlan@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4E010669506

Add the device tree node of SDHCI-0 controller which found on CoM260-IFX
board, it's currenty used for Micro SD card slot, and one GPIO pin is
configured as card insertion/removal detection pin, the slot use 4-bit
data bus, and up support to SDR104 speed mode.

Signed-off-by: Yixun Lan <dlan@kernel.org>
---
 arch/riscv/boot/dts/spacemit/k3-com260-ifx.dts | 18 +++++++++++
 arch/riscv/boot/dts/spacemit/k3-pinctrl.dtsi   | 44 ++++++++++++++++++++++++++
 arch/riscv/boot/dts/spacemit/k3.dtsi           | 13 ++++++++
 3 files changed, 75 insertions(+)

diff --git a/arch/riscv/boot/dts/spacemit/k3-com260-ifx.dts b/arch/riscv/boot/dts/spacemit/k3-com260-ifx.dts
index 238bb03d0e9e..e7f76cd24b90 100644
--- a/arch/riscv/boot/dts/spacemit/k3-com260-ifx.dts
+++ b/arch/riscv/boot/dts/spacemit/k3-com260-ifx.dts
@@ -19,3 +19,21 @@ chosen {
 		stdout-path = "serial0:115200n8";
 	};
 };
+
+&sdhci0 {
+	pinctrl-names = "default","uhs";
+	pinctrl-0 = <&mmc1_cfg>;
+	pinctrl-1 = <&mmc1_uhs_cfg>;
+	bus-width = <4>;
+	cd-gpios = <&gpio K3_GPIO(4) GPIO_ACTIVE_HIGH>;
+	no-mmc;
+	no-sdio;
+	disable-wp;
+	cap-sd-highspeed;
+	vmmc-supply = <&aldo4>;
+	vqmmc-supply = <&aldo1>;
+	sd-uhs-sdr25;
+	sd-uhs-sdr50;
+	sd-uhs-sdr104;
+	status = "okay";
+};
diff --git a/arch/riscv/boot/dts/spacemit/k3-pinctrl.dtsi b/arch/riscv/boot/dts/spacemit/k3-pinctrl.dtsi
index 3ee1471f3798..6b808f890a28 100644
--- a/arch/riscv/boot/dts/spacemit/k3-pinctrl.dtsi
+++ b/arch/riscv/boot/dts/spacemit/k3-pinctrl.dtsi
@@ -689,4 +689,48 @@ uart0-0-pins {
 			drive-strength = <25>;
 		};
 	};
+
+	mmc1_cfg: mmc1-cfg {
+		mmc1-data-cmd-pins {
+			pinmux = <K3_PADCONF(132, 0)>,	/* mmc1 dat3 */
+				 <K3_PADCONF(133, 0)>,	/* mmc1 dat2 */
+				 <K3_PADCONF(134, 0)>,	/* mmc1 dat1 */
+				 <K3_PADCONF(135, 0)>,	/* mmc1 dat0 */
+				 <K3_PADCONF(136, 0)>;	/* mmc1 cmd */
+
+			bias-pull-up = <0>;
+			drive-strength = <25>;
+			power-source = <3300>;
+		};
+
+		mmc1-clk-pins {
+			pinmux = <K3_PADCONF(137, 0)>;	/* mmc1 clk */
+
+			bias-pull-down;
+			drive-strength = <25>;
+			power-source = <3300>;
+		};
+	};
+
+	mmc1_uhs_cfg: mmc1-uhs-cfg {
+		mmc1-uhs-data-cmd-pins {
+			pinmux = <K3_PADCONF(132, 0)>,	/* mmc1 dat3 */
+				 <K3_PADCONF(133, 0)>,	/* mmc1 dat2 */
+				 <K3_PADCONF(134, 0)>,	/* mmc1 dat1 */
+				 <K3_PADCONF(135, 0)>,	/* mmc1 dat0 */
+				 <K3_PADCONF(136, 0)>;	/* mmc1 cmd */
+
+			bias-pull-up = <0>;
+			drive-strength = <21>;
+			power-source = <1800>;
+		};
+
+		mmc1-uhs-clk-pins {
+			pinmux = <K3_PADCONF(137, 0)>;	/* mmc1 clk */
+
+			bias-pull-down;
+			drive-strength = <21>;
+			power-source = <1800>;
+		};
+	};
 };
diff --git a/arch/riscv/boot/dts/spacemit/k3.dtsi b/arch/riscv/boot/dts/spacemit/k3.dtsi
index 19fc9b49668e..dabb0d5e6bad 100644
--- a/arch/riscv/boot/dts/spacemit/k3.dtsi
+++ b/arch/riscv/boot/dts/spacemit/k3.dtsi
@@ -1099,6 +1099,19 @@ pll: clock-controller@d4090000 {
 			#clock-cells = <1>;
 		};
 
+		sdhci0: mmc@d4280000 {
+			compatible = "spacemit,k3-sdhci";
+			reg = <0x0 0xd4280000 0x0 0x200>;
+			clocks = <&syscon_apmu CLK_APMU_SDH_AXI>,
+				 <&syscon_apmu CLK_APMU_SDH0>;
+			clock-names = "core", "io";
+			resets = <&syscon_apmu RESET_APMU_SDH_AXI>,
+				 <&syscon_apmu RESET_APMU_SDH0>;
+			reset-names = "axi", "sdh";
+			interrupts = <99 IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
+
 		syscon_apmu: system-controller@d4282800 {
 			compatible = "spacemit,k3-syscon-apmu";
 			reg = <0x0 0xd4282800 0x0 0x400>;

---
base-commit: 38d5f73d1f5af60d87047b981736b89521e49213
change-id: 20260609-07-k3-enable-sd-e1ddf090e87f

Best regards,
--  
Yixun Lan <dlan@kernel.org>


