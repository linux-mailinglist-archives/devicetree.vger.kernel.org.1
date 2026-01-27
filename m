Return-Path: <devicetree+bounces-259874-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UGk2OCCueGlasAEAu9opvQ
	(envelope-from <devicetree+bounces-259874-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 13:22:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 0667E94410
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 13:22:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E0A283004CA2
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 12:22:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 141B034C989;
	Tue, 27 Jan 2026 12:22:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tg94wtaB"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E59CF34A3DF;
	Tue, 27 Jan 2026 12:22:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769516538; cv=none; b=iAE06EWptLmI0bVAGv397LahJISgtRfyU3MjZ9HDQ1SZyj+JpBT35nmezGZY0IDnoUf52TffjT/6ZAhWyzCvL+dzmyjbEOphacxPvUptEdBvAYtWFLUQ3RdmUF8ToBGcSb9iyjq9bdEVnPeGwJha6XlzlgGP67M1NgRPS+FDRTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769516538; c=relaxed/simple;
	bh=0Gx6pPflLqJJwsoKgpHrXwFKJ2Y0GepGl3Xp9DuOrhs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=hVVnJESi4jaOCg3EwfVTYCrdQmBFsIol5u3rI6t9c5rfecvM9LOxdJAtjr7nOjPgImhPen872hIb6cLVsrr9XZSc70umz+Rxect5A3ZYYylbLYIqB3q8ksoOvPE/vO4pWB58epUJ0IxgKlaRDbJmE/q92yXUNrYCFQz8jGuFza4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tg94wtaB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1AD8AC116C6;
	Tue, 27 Jan 2026 12:22:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769516537;
	bh=0Gx6pPflLqJJwsoKgpHrXwFKJ2Y0GepGl3Xp9DuOrhs=;
	h=From:To:Cc:Subject:Date:From;
	b=Tg94wtaB3LAy+HPZvLBVT+WKUJwgHhRSg47z3itDhL/7Lba/FMWRY1rE/NRmBbypu
	 7ZV8K3K+Dk9VYWAHwwglk7meODtyGSuaNAHmYNuXHfOz/GLu9n/HaqYuoJMsVOkS/9
	 Zt85UsuoMocgQFWvQ+9koRIW1hz7FchflaqDIuyzIl14fKSzsILCbJo8KKMOYGHK0o
	 YA6vh56MJsbnag+EeLq20PqcoLBBmOfRIjI3zU86t1iudeyPF+2mnRPY1YA0hIP61V
	 zVidudOySRAq9pEAV5EwKcsmc3P8Tqx+9wRcBZK0+ewqHVThbX4kaEJEU0INzmIGss
	 eMbODG8zeWlQA==
From: Michael Walle <mwalle@kernel.org>
To: Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Udit Kumar <u-kumar1@ti.com>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Michael Walle <mwalle@kernel.org>
Subject: [PATCH] arm64: dts: ti: k3-am67a-kontron-sa67-base: fix QSPI flash timing
Date: Tue, 27 Jan 2026 13:22:03 +0100
Message-ID: <20260127122211.1064546-1-mwalle@kernel.org>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259874-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[mwalle@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,0.0.0.0:email]
X-Rspamd-Queue-Id: 0667E94410
X-Rspamd-Action: no action

The boot flash is connected to the QSPI bus, but that bus is also
connected to the edge connector. To prevent a stuck bus during boot. The
signals to the edge connected are guarded by a FET switch. This FET
switch needs a setup time of at least 80ns to disconnect the
passthrough otherwise the first few clock cycles are still visible on
the edge connector. Fix it by increasing the CS-to-clock timing to
120ns.

Fixes: 1c3c4df06f9d ("arm64: dts: ti: Add support for Kontron SMARC-sAM67")
Signed-off-by: Michael Walle <mwalle@kernel.org>
---
 arch/arm64/boot/dts/ti/k3-am67a-kontron-sa67-base.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am67a-kontron-sa67-base.dts b/arch/arm64/boot/dts/ti/k3-am67a-kontron-sa67-base.dts
index cdc9b5778041..9c0489514e04 100644
--- a/arch/arm64/boot/dts/ti/k3-am67a-kontron-sa67-base.dts
+++ b/arch/arm64/boot/dts/ti/k3-am67a-kontron-sa67-base.dts
@@ -957,7 +957,7 @@ flash@0 {
 		cdns,tshsl-ns = <60>;
 		cdns,tsd2d-ns = <60>;
 		cdns,tchsh-ns = <60>;
-		cdns,tslch-ns = <60>;
+		cdns,tslch-ns = <120>;
 		cdns,read-delay = <3>;
 		vcc-supply = <&vcc_1p8_s0>;
 		bootph-all;
-- 
2.47.3


