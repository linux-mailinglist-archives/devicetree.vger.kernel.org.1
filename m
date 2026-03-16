Return-Path: <devicetree+bounces-276002-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iGV7BSG/t2n5UwEAu9opvQ
	(envelope-from <devicetree+bounces-276002-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 09:28:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 48BBC29622F
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 09:28:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C59623004F1C
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 08:28:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99579372B41;
	Mon, 16 Mar 2026 08:28:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=psihoexpert.ro header.i=@psihoexpert.ro header.b="qu6LNeAC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.wiredblade.com (mx1.wiredblade.com [72.51.58.38])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E29DE371D19
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 08:28:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=72.51.58.38
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773649693; cv=none; b=u/uX3mXBjLFQOLpqoYY/FCiecJmOsXC+drFvyFxN6jz6D6Ga3RWYIx94ijQePHLP5X7y4P4+T8j2CAUM15f4/uy3JoOYl7fqu5T/qyAOlrBdwd4r99UB3GIPyRqVa/gw7MyvPIA0zTv+5MYeGkN7pIV1tVNNF4F6kytGlG45aS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773649693; c=relaxed/simple;
	bh=NIUimPRT5oygX+q3tyNvR8ZhzsTTlQvIVKmcjZqbAFU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=c0BcGLNlBR3onRmR7f3CcgXoL5eXrkJTm+P8OoBtrmQ7hn+lJ7YCznm8KjVbMSWKSVRHJxteRsGq/5xnvP7ORUfjSfz1+JQ6lFRbi+xSkAL8PUne8S1TjzF6CiIt6FbVtCfCK4hebaC7bZtmJfalZajybi+6NiGddB8uDgq8YCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=psihoexpert.ro; spf=pass smtp.mailfrom=psihoexpert.ro; dkim=pass (2048-bit key) header.d=psihoexpert.ro header.i=@psihoexpert.ro header.b=qu6LNeAC; arc=none smtp.client-ip=72.51.58.38
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=psihoexpert.ro
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=psihoexpert.ro
dkim-signature: v=1; a=rsa-sha256; d=psihoexpert.ro; s=dynu;
	c=relaxed/relaxed; q=dns/txt; h=From:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Transfer-Encoding;
	bh=6nhRXnzThfsFauagA/B8xdCo0uD0gQhmHKq0z2f64Q4=;
	b=qu6LNeAC1YkMzADOSQBOnmb5wE3zI8C7DPUUcWioVXTj0sENVOTdd0tVcsHv/wpMow2yCJQnNH3e+cqTJ6PKWd5SZE5W8MwOSXIHSgg0ygQCiesvXtNdTSK2dcqzEXLf9JaJx44/KYxhk32BrD2/KL4pLIXsaNNHrLQDplUKCTeMXG2rZ030uZxx+Xehwf9PxUQErEn+GyEAdsiNDkAmkbxiQOMRm7Coq5boFkATlqBQHakawQkw3nI3Z8
	SkSLvYx2rf+vee33ZlCWL+QAhEJ7GwIZzOERYv93MuaVmDtbxqiisCaVhtyqUD8gGgONzBs8zJHCSivVDooAvNAMXkwg==
Received: from TkB (188-24-192-137.rdsnet.ro [188.24.192.137])
	by mx1.wiredblade.com with ESMTPSA
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256)
	; Mon, 16 Mar 2026 08:28:01 +0000
From: Marius Dinu <m95d+git@psihoexpert.ro>
To: devicetree@vger.kernel.org
Cc: Marius Dinu <m95d+git@psihoexpert.ro>
Subject: [PATCH] arm: dts: rockchip: rk3288-tinker: add eeprom node
Date: Mon, 16 Mar 2026 10:33:38 +0200
Message-ID: <20260316083338.1242-1-m95d+git@psihoexpert.ro>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[psihoexpert.ro,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74];
	R_DKIM_ALLOW(-0.20)[psihoexpert.ro:s=dynu];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276002-lists,devicetree=lfdr.de,git];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[m95d@psihoexpert.ro,devicetree@vger.kernel.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[psihoexpert.ro:+];
	TAGGED_RCPT(0.00)[devicetree,git];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,0.0.0.50:email]
X-Rspamd-Queue-Id: 48BBC29622F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This board contains an EEPROM that holds the CPU serial number and MAC.
Recently, U-boot started using the dts from Linux kernel instead of
their own. This eeprom node was missing here.

Signed-off-by: Marius Dinu <m95d+git@psihoexpert.ro>
---
 arch/arm/boot/dts/rockchip/rk3288-tinker.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3288-tinker.dtsi b/arch/arm/boot/dts/rockchip/rk3288-tinker.dtsi
index 8e27a20f2845..7e16022c7d9e 100644
--- a/arch/arm/boot/dts/rockchip/rk3288-tinker.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3288-tinker.dtsi
@@ -344,6 +344,11 @@ regulator-state-mem {
 
 &i2c2 {
 	status = "okay";
+
+	eeprom@50 {
+		compatible = "atmel,24c08";
+		reg = <0x50>;
+	};
 };
 
 &i2c5 {
-- 
2.52.0



