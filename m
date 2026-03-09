Return-Path: <devicetree+bounces-273004-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2PLXDBfprmlRKAIAu9opvQ
	(envelope-from <devicetree+bounces-273004-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 16:36:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id AFDE723BCDA
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 16:36:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 125F2307097D
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 15:24:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42AB43D9046;
	Mon,  9 Mar 2026 15:24:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="StIOsqFW"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FCA53D7D6A
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 15:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773069864; cv=none; b=jWpvkXztnec3pL1rZ/A6KQl4GYK+jUh+6vL4RixoNMJA3znSK7viyVTnQ5kZ17v9lM25GWm6BMRF5hioZiZzk+vnQDz+77AKlV0G33GH2CSRVAhc6DpdVNw6OH5UNneypVvBaDRCoBGMZwC2mQ6jrswHJsSk1w6pWiA/X9dLl9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773069864; c=relaxed/simple;
	bh=sE7CqWgrb+zFP0Cr5jOTclWiaWDkF1Z32PDAvIwjeuU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=aiuXsyQybpHHbfMeBChSlAn1hOoegjsRJRHjSTzexaIhDmHxCEAH3yMdeb5X7i/lhRGQk4OQxVTHlrv3S90hGoyO4IbNNhxbkpi6PSHi8iRfBHZVY7sn2RilbF8iIOc+xOfGX0G5BTosEl2BXGloNjJa3t1WJr9AeenfrbeUFJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=StIOsqFW; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 692CAC2BC86;
	Mon,  9 Mar 2026 15:24:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773069863;
	bh=sE7CqWgrb+zFP0Cr5jOTclWiaWDkF1Z32PDAvIwjeuU=;
	h=From:Date:Subject:To:Cc:From;
	b=StIOsqFWXfbZVtGbJOoV/8SKumKR7F8HtQXaecihqzAAH0OOUwGBfx82SQEGsMAdb
	 DVTM5HsrJqBniAitHZ4QWn2A63Z8CTgu1IkE++yH3yhJVmn3xauYXEisDlVlDQhsBN
	 o1DWAW00rIGOvrKM3qhr/LqBKR/46s9ll0bf5rDXMq+Yk5QDjOOoRzhxbIIRxFf522
	 aljfq3ZIjKkKwNQbw8Zn36SBVCXm1AqYaAk1c0VSLf7UZNm+SgWRESZdQzZmQ6Uw6v
	 4+3QmNl0Qvkhkr4RXdWE7mara2hdfcKXt711eCF3l1vlGdpa0gXeuW5sYaoPpQy2rF
	 iqttA/lfVhQCA==
From: Lorenzo Bianconi <lorenzo@kernel.org>
Date: Mon, 09 Mar 2026 16:24:15 +0100
Subject: [PATCH] arm64: dts: airoha: en7581: Add wdt node to to EN7581 SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260309-airoha-7581-wdt-v1-1-ee5f09dbd7af@kernel.org>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/x2MQQqAIBAAvxJ7bmE1LOsr0UFqq71oaFQQ/j3pO
 AMzLySOwgmG6oXIlyQJvoCqK5h35zdGWQqDJt1SQz06iWF32Bmr8F5OLJpJWzLMDkp1RF7l+Y/
 jlPMH+6nmCWEAAAA=
X-Change-ID: 20260309-airoha-7581-wdt-260e02805eea
To: Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org, 
 Lorenzo Bianconi <lorenzo@kernel.org>
X-Mailer: b4 0.14.2
X-Rspamd-Queue-Id: AFDE723BCDA
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273004-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com,collabora.com,kernel.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.961];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lorenzo@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,1fa10000:email,0.137.84.64:email]
X-Rspamd-Action: no action

Introduce watchdog controller node to EN7581 SoC.

Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 arch/arm64/boot/dts/airoha/en7581.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/airoha/en7581.dtsi b/arch/arm64/boot/dts/airoha/en7581.dtsi
index ff6908a76e8eb6cf91343495d1fe531a868e41fb..97d0ee5d8315c2c838eff46efe57bf7657e60c68 100644
--- a/arch/arm64/boot/dts/airoha/en7581.dtsi
+++ b/arch/arm64/boot/dts/airoha/en7581.dtsi
@@ -150,6 +150,14 @@ gic: interrupt-controller@9000000 {
 			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_LOW>;
 		};
 
+		watchdog@1fbf0100 {
+			compatible = "airoha,en7581-wdt";
+			reg = <0x0 0x1fbf0100 0x0 0x38>;
+
+			clocks = <&scuclk EN7523_CLK_BUS>;
+			clock-names = "bus";
+		};
+
 		spi@1fa10000 {
 			compatible = "airoha,en7581-snand";
 			reg = <0x0 0x1fa10000 0x0 0x140>,

---
base-commit: 405c09548a695ca7be58b5b9d3ac8388630e907f
change-id: 20260309-airoha-7581-wdt-260e02805eea

Best regards,
-- 
Lorenzo Bianconi <lorenzo@kernel.org>


