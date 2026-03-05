Return-Path: <devicetree+bounces-271738-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gMSECZUAqmm9JQEAu9opvQ
	(envelope-from <devicetree+bounces-271738-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 23:15:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 10E26218D3E
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 23:15:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 9028A300AD60
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 22:15:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC0342D322E;
	Thu,  5 Mar 2026 22:15:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=aliel.fr header.i=@aliel.fr header.b="Juj1hjda"
X-Original-To: devicetree@vger.kernel.org
Received: from courrier.aliel.fr (pouet.aliel.fr [65.21.61.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5010E2D7BF;
	Thu,  5 Mar 2026 22:15:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=65.21.61.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772748941; cv=none; b=AmNKd4hCgSWooNow4fyEnnAtNa/rq5oHSUqTP0z/bz76LJEv8+AT2VgDEE47cwo8fDzKBklPqwJSsiIo/wkCJFfxc4LMokWFwK120Fqb+ddrjjc8KAo3vs4XRD6vNwbcPmm80ertRms/CEAOGYWDU/dgk+zdTv3nmiWrVmqvzCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772748941; c=relaxed/simple;
	bh=MDPDvWX54EIzBiBuHUn/Aek5yD+kq27hlEvXjqO8q9U=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=dMDBjAMpD3xJbrk5p/kMD0iJ3vzWrxYOLeceeY+e9nEt65SpOH4+UrcZ3d+x+bEazXQxYxWFH8wWAFbf8N1OO0cZpJALA+jTxFlxfxxi8MtButzrYTnW+umpV8Sxzu5v9qEzA7Oz5KlZ1/4bYfkX0+M14gBdMbd/JEf5iDRQqt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=aliel.fr; spf=pass smtp.mailfrom=aliel.fr; dkim=pass (1024-bit key) header.d=aliel.fr header.i=@aliel.fr header.b=Juj1hjda; arc=none smtp.client-ip=65.21.61.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=aliel.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aliel.fr
Received: from 34.1.168.192.in-addr.arpa (2A02-842b-8136-0001-1033-1579-E8Cc-83D5.rev.sfr.net [IPv6:2a02:842b:8136:1:1033:1579:e8cc:83d5])
	by courrier.aliel.fr (Postfix) with ESMTPSA id BB5CF4A56F;
	Thu, 05 Mar 2026 22:15:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aliel.fr;
	s=courrier-s1; t=1772748930;
	bh=MDPDvWX54EIzBiBuHUn/Aek5yD+kq27hlEvXjqO8q9U=;
	h=From:Date:Subject:To:Cc;
	b=Juj1hjdaTS4gqtBfcUQrRis7u4eJ/vkB3H7heQkhR8aTp831SXwMbTVpheuwa5Es5
	 fOZGbwPGN9fccgQRNJOZw7iPENvnY3dQstHJ6zmTwL5WJGboFM5/sXwscpGd6xHsNa
	 EIDlBquD+vfKvdweTFgUt077tu65RRligBXbhK00=
From: Ronald Claveau <linux-kernel-dev@aliel.fr>
Date: Thu, 05 Mar 2026 23:11:25 +0100
Subject: [PATCH] arm64: dts: amlogic: Fix GIC register ranges for Amlogic
 T7
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260305-fix-amlt7-gic-dts-v1-1-5944415c74bf@aliel.fr>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/x2MWwqAIBAAryL73YIPSOoq0UfoZgtloRKBdPekz
 4GZqZApMWUYRYVEN2c+YwPVCXDbEgMh+8agpe6lkQZXfnA59mIxsENfMlrv3GBImV5paN2VqEn
 /c5rf9wMyw58RYwAAAA==
X-Change-ID: 20260303-fix-amlt7-gic-dts-7dcc93e13612
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Ronald Claveau <linux-kernel-dev@aliel.fr>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openssh-sha256; t=1772748929; l=2389;
 i=linux-kernel-dev@aliel.fr; s=id_ed25519; h=from:subject:message-id;
 bh=MDPDvWX54EIzBiBuHUn/Aek5yD+kq27hlEvXjqO8q9U=;
 b=U1NIU0lHAAAAAQAAADMAAAALc3NoLWVkMjU1MTkAAAAgMGec55oxeeisqykQiUedekMYyOnR9
 BG9E/7rDWyqdNoAAAAGcGF0YXR0AAAAAAAAAAZzaGE1MTIAAABTAAAAC3NzaC1lZDI1NTE5AAAA
 QBlVSZU1SuoR80Cb0Pf7o9GsnKQNlDlTZVb8I9zS9pOyAJmcu0zAhwete0dfovrGxBWCmaGC44T
 Y7HZa3INOTQc=
X-Developer-Key: i=linux-kernel-dev@aliel.fr; a=openssh;
 fpr=SHA256:kch4osYZ6A1BrPps5AUs6KnfdE2wm4ocMtyTc8TmZMs
X-Rspamd-Queue-Id: 10E26218D3E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[aliel.fr:s=courrier-s1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[aliel.fr];
	FREEMAIL_TO(0.00)[linaro.org,baylibre.com,googlemail.com,kernel.org];
	TAGGED_FROM(0.00)[bounces-271738-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux-kernel-dev@aliel.fr,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[aliel.fr:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_TWELVE(0.00)[12];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

This patch aims to fix the GIC register ranges for Amlogic T7 SoC family.

- Context
Kernel log shows a warning about GIC
[    0.000000] GIC: GICv2 detected, but range too small and irqchip.gicv2_force_probe not set

Using cat /proc/interrupts command shows GIC as GIC-0

Adding some peripherals sometimes causes hangs on interrupts.

- According to the GIC-400 ARM doc, the memory map is like:
0x1000-0x1FFF Distributor
0x2000-0x3FFF CPU interfaces
0x4000-0x5FFF Virtual interface control block
0x6000-0x7FFF Virtual CPU interfaces

- Identify GIC model from distributor register

Offset | Name | Type | Reset
0x008 | GICD_IIDR | RO | 0x0200143B

kvim4# md.l 0xFFF01008 1
fff01008: 0200143b

- Identify CPU interface from CPU interface register

Offset | Name | Type | Reset
0x00FC | GICC_IIDR | RO | 0x0202143B

kvim4# md.l 0xFFF020FC 1
fff020fc: 0202143b

- Virtual interface control register check

Offset | Name | Type | Reset
0x004 | GICH_VTR | RO | 0x90000003

kvim4# md.l 0xFFF04004 1
fff04004: 90000003

- Virtual CPU interfaces check

Offset | Name | Type | Reset
0x00FC | GICV_IIDR | RO | 0x0202143B

kvim4# md.l 0xFFF060FC 1
fff060fc: 0202143b

- After this patch there is no warning anymore.
GICv2 is correctly identified.

[    0.000000] GIC: Using split EOI/Deactivate mode

Using cat /proc/interrupts command shows GIC as GICv2

Signed-off-by: Ronald Claveau <linux-kernel-dev@aliel.fr>
---
 arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi b/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi
index 6510068bcff92..d523cbc0ed22a 100644
--- a/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi
+++ b/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi
@@ -213,7 +213,9 @@ gic: interrupt-controller@fff01000 {
 			#address-cells = <0>;
 			interrupt-controller;
 			reg = <0x0 0xfff01000 0 0x1000>,
-			      <0x0 0xfff02000 0 0x0100>;
+			      <0x0 0xfff02000 0 0x2000>,
+			      <0x0 0xfff04000 0 0x2000>,
+			      <0x0 0xfff06000 0 0x2000>;
 			interrupts = <GIC_PPI 9 (GIC_CPU_MASK_SIMPLE(8) | IRQ_TYPE_LEVEL_HIGH)>;
 		};
 

---
base-commit: c025f6cf4209e1542ec2afebe49f42bbaf1a5c7b
change-id: 20260303-fix-amlt7-gic-dts-7dcc93e13612

Best regards,
-- 
Ronald Claveau <linux-kernel-dev@aliel.fr>


