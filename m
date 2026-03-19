Return-Path: <devicetree+bounces-277904-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OOCGJCclvGkxtgIAu9opvQ
	(envelope-from <devicetree+bounces-277904-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 17:32:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 342D82CEE1B
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 17:32:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7427E30065D4
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 16:32:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A74843EF0A2;
	Thu, 19 Mar 2026 16:31:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VpOkEc66"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5CA13CD8CE;
	Thu, 19 Mar 2026 16:31:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773937915; cv=none; b=j9b3IPCDXaLKy6SyckmwecSNH8c41AxeFbVp3Rw9R9GOxi+t+1zWotN0jm4mjze7cQFa7xjChxXk+hkXFJHN/4RK/WvSb4+Ouc8h80sdtZAeZqg6Uxwn7YyRl++iCUJw9zFaC9GA4PXiU3Jv6/fzXQNQYLpO8ppMIZMzWAP4hVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773937915; c=relaxed/simple;
	bh=dDFNz/T2xe/eSJre+9Pi9oZ43RYZjCSo4zFbd4aQ8Q0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=mJdVuoZkmnnJrQ8QJVAuLuKovEt7XZ/SWePY5m6uWroKE8Cwfc0pDPPcj3ZLzJQxoaizmbjIXTiGjp9B/JJeVVB5PjgObDqEzMmjYdO7ke9qI80oS3a+p2cT/tNDp3qSpWGO+BVyxXHHk58uZgbPTVdaBatCw5oRUUQg+nk9sGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VpOkEc66; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2F1D3C2BCB0;
	Thu, 19 Mar 2026 16:31:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773937914;
	bh=dDFNz/T2xe/eSJre+9Pi9oZ43RYZjCSo4zFbd4aQ8Q0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=VpOkEc66b4o3LYrDoDPxPuA3DM2N48YRr/s8MZ9bdy3x24ypLd0bLrSwZxxszV1RI
	 ZD+8ZDw3T7CvCmmtfRD2+YsYj8v7XbV5PKqLRzF7EMKsrTLFRGTVxmZPqy1E/vjXHJ
	 XOzHOHAVLnsPfjGa9/Ci0/6wDbSlGAtVl9JItuENFzaX5dY58OUbcU2GccBgyJfvbM
	 CM04+OxlLFXVXPMporDvR2z2hOHG21R6vULrVOD8twPARakuQaXvYfzakF6mOGtufd
	 URsokauyv3bb2JKAcKfSgoxxBjWedJ1fciaYs0YsGDAEuJHq9SfIfkpioXaowHCJ0i
	 GWjQqaqRtVHBg==
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
Subject: [PATCH v1 5/5] riscv: dts: microchip: add gpio line names on beaglev-fire
Date: Thu, 19 Mar 2026 16:31:19 +0000
Message-ID: <20260319-silliness-follow-a53828f1379f@spud>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260319-outsell-hypnotic-94b480408ad4@spud>
References: <20260319-outsell-hypnotic-94b480408ad4@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1116; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=MEbSWdODM6nyqAj8PlnaLkIFvl2GmdURbDtDn2FTXtI=; b=owGbwMvMwCVWscWwfUFT0iXG02pJDJl7VK7+01DuPfm7XOb41Ijgzlxfmcj2mY0Vs4vbt3orG LXniV3vKGVhEONikBVTZEm83dcitf6Pyw7nnrcwc1iZQIYwcHEKwERSrRkZbjhOjg5k/PDlrJdB wtd/cqdZbxj5mN6b+StrzdzPVy9OuMTw31+Ec0X+mU6/w7NWPXx0WMVG0EL4FdurpkcPNVMypmz 4xAwA
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-1.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277904-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 342D82CEE1B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Conor Dooley <conor.dooley@microchip.com>

GPIO controller 2 has the gpio-line-names property, but the two other
controllers do not. Add the property for these controllers too.

Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
 arch/riscv/boot/dts/microchip/mpfs-beaglev-fire.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/riscv/boot/dts/microchip/mpfs-beaglev-fire.dts b/arch/riscv/boot/dts/microchip/mpfs-beaglev-fire.dts
index e8d0a825a5bfc..99c1e05d4d169 100644
--- a/arch/riscv/boot/dts/microchip/mpfs-beaglev-fire.dts
+++ b/arch/riscv/boot/dts/microchip/mpfs-beaglev-fire.dts
@@ -95,6 +95,8 @@ &gpio0 {
 		     <21>, <22>, <23>, <24>,
 		     <25>, <26>;
 	ngpios = <14>;
+	gpio-line-names = "", "", "", "", "", "", "",
+			  "", "", "", "", "", "SD_CARD_CS", "USER_BUTTON";
 	status = "okay";
 };
 
@@ -106,6 +108,9 @@ &gpio1 {
 		     <43>, <44>, <45>, <46>,
 		     <47>, <48>, <49>, <50>;
 	ngpios = <24>;
+	gpio-line-names = "", "", "", "", "", "", "", "", "", "",
+			  "", "", "", "", "", "", "", "", "", "",
+			  "ADC_IRQn", "", "", "USB_OCn";
 	status = "okay";
 };
 
-- 
2.51.0


