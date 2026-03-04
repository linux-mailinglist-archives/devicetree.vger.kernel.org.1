Return-Path: <devicetree+bounces-270881-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wE13OT3hp2mrlAAAu9opvQ
	(envelope-from <devicetree+bounces-270881-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 08:37:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B7D11FBAEE
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 08:37:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id F19E73049302
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 07:37:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9707736D9EB;
	Wed,  4 Mar 2026 07:37:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L+7S9+JH"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 742A335CB7A;
	Wed,  4 Mar 2026 07:37:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772609845; cv=none; b=IaPFjHGzN9rOeea8MXaGM5NKsPwP2rEReHyrf7+KG+72rmyeUS2vzCgOWsvurmZQ/xDSeNvFlftQsUmDyb/wUzMpBlnVcivjnnvX9XWt3kUFGtNjCelqBQ3H6J4aKqbDMzaezJCkQW7brxHsrrIbhMFLlOydNQ9Jz9hy9tVZUlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772609845; c=relaxed/simple;
	bh=M6/tIaGpQbsqPQjD7hrOf0XWL0qa3IzSrofgUGfNqTQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Lgk7iolUXTHh3yA61Q23RFMreB0/T48N6EAibahGRodvjjeWQAlm8L8vwnWVnCbnTX2ACImSNveO6oaCiXf0lSmsjEyNyLFaREjbyVVzek8D0vKF8EehfSODbR7XBS0nMniTzUA2VBQMdkrkWFTb19+NVfLCHkchHyUaARBs2vo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L+7S9+JH; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BF584C19425;
	Wed,  4 Mar 2026 07:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772609845;
	bh=M6/tIaGpQbsqPQjD7hrOf0XWL0qa3IzSrofgUGfNqTQ=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=L+7S9+JHPelZNg5orKTyfdnixD5qI7mHAqzuq1JBsW40uw5XnUm/cHwMpQRF9w/Z1
	 9J6YUkxpgFosj0+jCgLZNgNRqq6UWfB9W4AOFZqotvp0KyuOD0QmimJ4gnHhwvQ533
	 4j1lKRVbFBf9qmvQOnMRsFqEp3TRR2yvukcyI8xE235XrZrPh4A5E0HZfrWRiYAlrX
	 fY40/8gW7Hh+wGt5CZx8pSBOa2jS+T1Choad5lNsm+7dSwcRHfOqcvGvB0wTmaP2i6
	 vIY/zp5iwFGXCsy+oS5Bt3wPJ5kA4MVurEsEgaAGe2bjJrbHKLJGdTOGc5WRVKc/vd
	 W/NZ5frLDoY9Q==
From: Yixun Lan <dlan@kernel.org>
Date: Wed, 04 Mar 2026 07:36:44 +0000
Subject: [PATCH 3/4] riscv: dts: spacemit: k3: add GPIO support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260304-01-dts-uart-full-v1-3-50a0aa53a245@kernel.org>
References: <20260304-01-dts-uart-full-v1-0-50a0aa53a245@kernel.org>
In-Reply-To: <20260304-01-dts-uart-full-v1-0-50a0aa53a245@kernel.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>
Cc: devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org, 
 Yixun Lan <dlan@kernel.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1227; i=dlan@kernel.org;
 h=from:subject:message-id; bh=M6/tIaGpQbsqPQjD7hrOf0XWL0qa3IzSrofgUGfNqTQ=;
 b=owEB6QIW/ZANAwAKATGq6kdZTbvtAcsmYgBpp+EhYX8LiWaQjchd79X49uqR73nGt7b08kutr
 UHEBXjIyxeJAq8EAAEKAJkWIQS1urjJwxtxFWcCI9wxqupHWU277QUCaafhIRsUgAAAAAAEAA5t
 YW51MiwyLjUrMS4xMSwyLDJfFIAAAAAALgAoaXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5
 maWZ0aGhvcnNlbWFuLm5ldEI1QkFCOEM5QzMxQjcxMTU2NzAyMjNEQzMxQUFFQTQ3NTk0REJCRU
 QACgkQMarqR1lNu+2PAA/+OeiS1kDDFTlS8+1p8iXp7xNY28e8+Et0pJoeXHfGszyuy0eVjlW6x
 I/HIZNBiyapBuGOxU8HmtKgewnAYQiCAvhGTGAhKbtVxBSmE+65PctZ44zR2lNTGD7St3a3izQJ
 G+j/3YIG3zh7PLh1Q/HChWR9r2BWe78BiTrh3LZQwbBXUEXYypkkFqlUveajOtAwTvUwRq6eU/c
 g96+Z7PlI4X9Tiacqi1Tk1KUXrUKBwie2sw97MS01Y8ONU4XC8GuFyRi40dl5TnyvxVPZtN32ag
 YaCcQypKL7R0ORRJSVphSdnZvDDDo843TOCmuPFVCoppI0UP0RVN2yQbsiUi9jsjddq5aluMij0
 BmX8sEvlN/G6JjnuEF8WZAJ48VQlXXUE3tgNCbujDHNEmg1qhJtzec6wHpblcJOPvJFTWG1OJBS
 JWFnR0skuQP3ZCa2xihpz5nbyD+IsdJmQEOulraAcOw4nbmKXGxh4S7JfR6sbHMH8pQz+YYcjO5
 ezEhyPZpXfOP9OROQ/Sb9yNTspCi6i/JyNTX6hIXITnFKbE59gRX0iq/VCW7Y9Dohck7p/Dstgq
 Q9SO+uN1h7U7Aoh0NG0IG3frCuuWPxSrjCX3QgDS5XsxUB5d3jSLve/cuNY73sbK4ThU7Ob6G2A
 0y6KPrcPdbhbc/Yn6sCeRYzAskLSeg=
X-Developer-Key: i=dlan@kernel.org; a=openpgp;
 fpr=50B03A1A5CBCD33576EF8CD7920C0DBCAABEFD55
X-Rspamd-Queue-Id: 8B7D11FBAEE
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270881-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,d4019000:email]
X-Rspamd-Action: no action

Add GPIO node in the Device Tree, so devices are able to request GPIO
resource properly.

Signed-off-by: Yixun Lan <dlan@kernel.org>
---
 arch/riscv/boot/dts/spacemit/k3.dtsi | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/riscv/boot/dts/spacemit/k3.dtsi b/arch/riscv/boot/dts/spacemit/k3.dtsi
index 6449ab056293..3683a1a65362 100644
--- a/arch/riscv/boot/dts/spacemit/k3.dtsi
+++ b/arch/riscv/boot/dts/spacemit/k3.dtsi
@@ -536,6 +536,24 @@ uart9: serial@d4017800 {
 			status = "disabled";
 		};
 
+		gpio: gpio@d4019000 {
+			compatible = "spacemit,k3-gpio";
+			reg = <0x0 0xd4019000 0x0 0x100>;
+			clocks = <&syscon_apbc CLK_APBC_GPIO>,
+				 <&syscon_apbc CLK_APBC_GPIO_BUS>;
+			clock-names = "core", "bus";
+			gpio-controller;
+			#gpio-cells = <3>;
+			interrupts = <58 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-parent = <&saplic>;
+			interrupt-controller;
+			#interrupt-cells = <3>;
+			gpio-ranges = <&pinctrl 0 0 0 32>,
+				      <&pinctrl 1 0 32 32>,
+				      <&pinctrl 2 0 64 32>,
+				      <&pinctrl 3 0 96 32>;
+		};
+
 		pinctrl: pinctrl@d401e000 {
 			compatible = "spacemit,k3-pinctrl";
 			reg = <0x0 0xd401e000 0x0 0x1000>;

-- 
2.53.0


