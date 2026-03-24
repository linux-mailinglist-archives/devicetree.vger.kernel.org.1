Return-Path: <devicetree+bounces-279695-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SD8BHbtcwmlKcAQAu9opvQ
	(envelope-from <devicetree+bounces-279695-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 10:43:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 11ACB305CBC
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 10:43:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A4CDF31B9564
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 09:37:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 905C53DDDC2;
	Tue, 24 Mar 2026 09:37:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b="UU4pFGnU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail11.truemail.it (mail11.truemail.it [217.194.8.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3801337187C;
	Tue, 24 Mar 2026 09:37:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.194.8.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774345034; cv=none; b=gxGPutMJ95TxvGvMdY2ujcb31dZkyKMdUtYTY1sjONqBdU5yAI5faD8TcLNNmCwuyAcZA/89VztU9JtU/eDkbQzXIoPrsSiAhdu3o6KMLMU8pYAL/90qhtCckQADBqbT5WkLjQIq6H0imIRkfqbxwwXeoIHzoI1niD3R64uReJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774345034; c=relaxed/simple;
	bh=HKKFhzvjpNOwbyN/Xt3pSIaQLey4C1OWwcL3FVQKxh8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ZZMnyyxoCzwn2xDdS+48+L9JS/R/eXClzWm/Vezw0x1S2saCaivoUCDxo9cxl981sHSZsaaKKJwaNTeLte20zqPwlepQ0bgJhNOW7RDqZUdAPSLATx976HThwgWED30+0WreI5zBw2+UqKY7Hei/1fqlyh7+UCWt8Dv1cE2VQzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it; spf=pass smtp.mailfrom=dolcini.it; dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b=UU4pFGnU; arc=none smtp.client-ip=217.194.8.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dolcini.it
Received: from francesco-nb.corp.toradex.com (248.201.173.83.static.wline.lns.sme.cust.swisscom.ch [83.173.201.248])
	by mail11.truemail.it (Postfix) with ESMTPA id 16BBE275B8;
	Tue, 24 Mar 2026 10:37:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dolcini.it;
	s=default; t=1774345031;
	bh=9VPsWSMOBnOCg9xR3vQur1m+erMGsAZo3Y9OUF3LYYs=; h=From:To:Subject;
	b=UU4pFGnU640PEqMULZZQ1N8jDM33+rKXQoWZvAEOBNYSb89lNnvM4ZJrUswNDLAKk
	 OK2iikjGxH4C4CBj3mQUNNH8TnyPa0u5fHDMeFWJnpiB9M8yor6cMIVRv0JBr3omZP
	 wN2aDP/oucEPdA9PCDNa2w/IDuz7vBe6gXr86w/3OaHSyjLL+j4KVcCRu1mGsLcZim
	 2LFQZK6k1oWxxZ9oBgN35o/SA0T3U2hw5laBEpG43Q3SJe2RlK/ek72aQBr4wTY+d6
	 IoWB67SE5vJBF6lYF6tjs2AQt+mKwg4zQ/72r2nlgCYnx6iMZWEwpUwvBKOT6VeCo7
	 2djJrkVBmnttA==
From: Francesco Dolcini <francesco@dolcini.it>
To: Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Francesco Dolcini <francesco.dolcini@toradex.com>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 2/7] arm64: dts: ti: k3-am62-verdin: Fix SPI_1 GPIO CS pinctrl label
Date: Tue, 24 Mar 2026 10:36:57 +0100
Message-ID: <20260324093705.26730-3-francesco@dolcini.it>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260324093705.26730-1-francesco@dolcini.it>
References: <20260324093705.26730-1-francesco@dolcini.it>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[dolcini.it,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[dolcini.it:s=default];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-279695-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[dolcini.it:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[francesco@dolcini.it,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[toradex.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,dolcini.it:dkim,dolcini.it:mid]
X-Rspamd-Queue-Id: 11ACB305CBC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Francesco Dolcini <francesco.dolcini@toradex.com>

Fix SPI_1_CS GPIO pinmux label, this is spi1_cs, not qspi1_io4.

There are no user of this label yet, therefore this change does not
create any compatibility issue.

Fixes: fcb335934c51 ("arm64: dts: ti: verdin-am62: Improve spi1 chip-select pinctrl")
Signed-off-by: Francesco Dolcini <francesco.dolcini@toradex.com>
---
 arch/arm64/boot/dts/ti/k3-am62-verdin.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am62-verdin.dtsi b/arch/arm64/boot/dts/ti/k3-am62-verdin.dtsi
index 2a7242a2fef8..219b729d3caa 100644
--- a/arch/arm64/boot/dts/ti/k3-am62-verdin.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62-verdin.dtsi
@@ -278,7 +278,7 @@ AM62X_IOPAD(0x0018, PIN_INPUT, 7) /* (F24) OSPI0_D3.GPIO0_6 */ /* SODIMM 62 */
 	};
 
 	/* Verdin SPI_1 CS as GPIO */
-	pinctrl_qspi1_io4_gpio: main-gpio0-7-default-pins {
+	pinctrl_spi1_cs_gpio: main-gpio0-7-default-pins {
 		pinctrl-single,pins = <
 			AM62X_IOPAD(0x001c, PIN_INPUT, 7) /* (J23) OSPI0_D4.GPIO0_7 */ /* SODIMM 202 */
 		>;
-- 
2.47.3


