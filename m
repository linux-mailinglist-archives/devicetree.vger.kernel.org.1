Return-Path: <devicetree+bounces-277903-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OMb3BA0mvGkxtgIAu9opvQ
	(envelope-from <devicetree+bounces-277903-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 17:36:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 346622CEECF
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 17:36:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 267A4302FB99
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 16:32:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7D0F3D7D78;
	Thu, 19 Mar 2026 16:31:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CLNNrhcW"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71A793D8121;
	Thu, 19 Mar 2026 16:31:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773937912; cv=none; b=lop0QItf6n2MsizivuEbvlJrBRbKXKx8ygYzA8Z8EWTNhIEp4rck8ihmRlk+yU6YBN99ZrBweNRNDUtbYit6m6KDAqfNJod5jmWegYmMR11OyKOwwdyjlHlh9ONHdbR/eiQXXzXbg4Da1UCPHLd/XihU7tNbKkX7gfYytBwkvU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773937912; c=relaxed/simple;
	bh=Wbahtba5HIxMuWjTSaKR/tjyp9GROktgLQAr5GOLj2I=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=PFXzjdiSsnd5jG81m0+i3sJvhLKEGE9X8K9orOFd0S/GFQp8uzAUyl3/Iuge7BREWytHy5PJV/cOofAO8GajwPHBTF/gld3ARjtTFzXKmaN9NqZW599VzZAUuEigSMEFk3fI4IH1eGqwHClnjtepqmvXrROLWgC69ZnC3vIww9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CLNNrhcW; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 97031C19425;
	Thu, 19 Mar 2026 16:31:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773937911;
	bh=Wbahtba5HIxMuWjTSaKR/tjyp9GROktgLQAr5GOLj2I=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=CLNNrhcW2g30jJ4F/93QLj6H0Yz/jdGC/6KTn4jnKINNTPZ4X/156LBlpv/mloHRY
	 eOizrbgw1kr/O1zvARqZay/ZO0tGJyH9hpDtutnkzl7kFiHeH5WTKf+4oBVRjMGptB
	 zlqpqOy6UZvbIy+4UmFbJpzmAql6YQwxr4IW3I1mkRm1mXr00V8lxOwXlAm3a7rIsF
	 gCW0+3E92oswrclHL/1zGrUrob/aZL1s3/RDG2N92lesJ0eZhs+R5xCGTyjaPawlKY
	 xAFyDmc9oFQtfT12vTwzjru7N17aoe0dJgJWvNeNhlk95DaW7hYAxH2YZEdU/TriYT
	 NpZNVx3dukQ+A==
From: Conor Dooley <conor@kernel.org>
To: linux-riscv@lists.infradead.org
Cc: conor@kernel.org,
	Conor Dooley <conor.dooley@microchip.com>,
	Daire McNamara <daire.mcnamara@microchip.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Valentina.FernandezAlanis@microchip.com,
	Brian.Burke@microchip.com,
	cyril.jean@microchip.com
Subject: [PATCH v1 4/5] riscv: dts: microchip: add adc interrupt on beaglev-fire
Date: Thu, 19 Mar 2026 16:31:18 +0000
Message-ID: <20260319-speak-detached-f4e4384a2372@spud>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260319-outsell-hypnotic-94b480408ad4@spud>
References: <20260319-outsell-hypnotic-94b480408ad4@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=997; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=49hModmjRGQS7kbC86IMrIwIz56IHj7rQ9pX9Z/u1qc=; b=owGbwMvMwCVWscWwfUFT0iXG02pJDJl7VK7KRIgeO3zu+R4+4S7Vgk3H1Bdls3lnXFE+uOdp8 GTZX4q3O0pZGMS4GGTFFFkSb/e1SK3/47LDuectzBxWJpAhDFycAjAR9hmMDBdXxmTYqaU6Hgzk YlOpU3rF2LXhBdO71/9PFu0peHpaV5/hF9N+Zr+VKWLMoTvb/GY+fDspsYNN+FrctN8y2f2Z/5s VWAE=
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-1.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277903-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-0.996];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,0.0.0.0:email]
X-Rspamd-Queue-Id: 346622CEECF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Conor Dooley <conor.dooley@microchip.com>

The mcp3464r on the beaglev-fire has its interrupt wired up, but not
present in the devicetree. Add it.

Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
 arch/riscv/boot/dts/microchip/mpfs-beaglev-fire.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/riscv/boot/dts/microchip/mpfs-beaglev-fire.dts b/arch/riscv/boot/dts/microchip/mpfs-beaglev-fire.dts
index 37c3525d490c0..e8d0a825a5bfc 100644
--- a/arch/riscv/boot/dts/microchip/mpfs-beaglev-fire.dts
+++ b/arch/riscv/boot/dts/microchip/mpfs-beaglev-fire.dts
@@ -4,6 +4,7 @@
 /dts-v1/;
 
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/interrupt-controller/irq.h>
 #include "mpfs.dtsi"
 #include "mpfs-beaglev-fire-fabric.dtsi"
 
@@ -226,6 +227,7 @@ adc@0 {
 		spi-cpha;
 		spi-max-frequency = <5000000>;
 		microchip,hw-device-address = <1>;
+		interrupts-extended = <&gpio1 20 IRQ_TYPE_LEVEL_LOW>;
 		#address-cells = <1>;
 		#size-cells = <0>;
 		status = "okay";
-- 
2.51.0


