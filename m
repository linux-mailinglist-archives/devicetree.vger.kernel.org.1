Return-Path: <devicetree+bounces-277902-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sIdaDg4lvGkxtgIAu9opvQ
	(envelope-from <devicetree+bounces-277902-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 17:32:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C24A22CEDDD
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 17:32:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A3C1030065C8
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 16:32:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48BE73EDACB;
	Thu, 19 Mar 2026 16:31:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UUU31YWP"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B07BD3ECBE7;
	Thu, 19 Mar 2026 16:31:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773937909; cv=none; b=OJs6rQ20MJJz/mGdcwxEAyHxDrQK2B4nQA3cKqk2czD3c3BAvLJIJm+UuEGgc3jizT75PPp2DL+WE1X65WYcXHW7YT3Ut3bVsuFhSpMcwS7lNncQaJRdUejAmEef+2ltsS0qPydOtxbrQpemg/e424eVDazJhKl3XotyONAEiew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773937909; c=relaxed/simple;
	bh=808siTn/eKlIL4fo1RdjLsJxG5BEBSTbGLlJxTqmWVM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=hmBjETMAD0aY+0jo1DNuoKgr/2Sy+m8fN1bYfqcnZPt48S1MjhbSJJS3/p4v+Fq9XH8yjKHqv/2D9m9mxlnBLio/nmOmy69pdbijvRx+YFQI2sdcBjsRRUI9jT68HG94CCvhJRWqmVM46p/NJPdQgOV+w+Rd2SI0dOw8/7bSeZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UUU31YWP; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0AA6EC2BCAF;
	Thu, 19 Mar 2026 16:31:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773937909;
	bh=808siTn/eKlIL4fo1RdjLsJxG5BEBSTbGLlJxTqmWVM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=UUU31YWPvBVPjtqb8P4Ak32O4yTKIRdPax3y2K8iJGZGx+yRPWgZS8KC4zfYJ2HTv
	 Ktg1eKPA2Hp+SvGVDRMeQibvMwgHbYL1QEZWApUNX9YRM142B3hvsLVnKeViAhUTwq
	 PSyEyW4j5hOOJzSrfE+7yxs7JAsPjgshDOeQurySZ6ehDt+pNmQFHulE4836nimQju
	 t/eCELpRucFJOCV4KvEwLqh6pMJjobJiRwKTl7vAjvyH3iOU7V6kgkVeellw7NAMeB
	 mJuakFcu10lQHn/CRfIT16Phu310duhfOr2af6mFG0JdVu0UkWJG4qpc6JZUnzTrl6
	 QXVmPDwohEvMQ==
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
Subject: [PATCH v1 3/5] riscv: dts: microchip: clean up beaglev-fire regulator node names
Date: Thu, 19 Mar 2026 16:31:17 +0000
Message-ID: <20260319-impale-perch-2b612429c555@spud>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260319-outsell-hypnotic-94b480408ad4@spud>
References: <20260319-outsell-hypnotic-94b480408ad4@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1143; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=gip2ctW3zViKnQHwnuvE1rS87LP2hxhiGIYJwVK2hCY=; b=owGbwMvMwCVWscWwfUFT0iXG02pJDJl7VK4wr5PhXJHH4xzB69Cu+bDYblH24kMsyypXCH+QP zUl9d/sjlIWBjEuBlkxRZbE230tUuv/uOxw7nkLM4eVCWQIAxenAEzkLhPD/9iWM7+DJ4oWnP6v ZLj58QmG9bZLxdlbbD7v/pW81r76yxxGhg2/OGQLXK9Imr6Lj++1P9q+zT/HVfF60+3pLNt+THJ 8zw8A
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-1.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277902-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C24A22CEDDD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Conor Dooley <conor.dooley@microchip.com>

Recently the binding for regulator-fixed introduced preferred naming, in
the regulator-XvY format. Change the existing regulators to match this
pattern.

Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
 arch/riscv/boot/dts/microchip/mpfs-beaglev-fire.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/boot/dts/microchip/mpfs-beaglev-fire.dts b/arch/riscv/boot/dts/microchip/mpfs-beaglev-fire.dts
index 2c0a420d89ff0..37c3525d490c0 100644
--- a/arch/riscv/boot/dts/microchip/mpfs-beaglev-fire.dts
+++ b/arch/riscv/boot/dts/microchip/mpfs-beaglev-fire.dts
@@ -63,14 +63,14 @@ imx219_vana: fixedregulator-0 {
 		regulator-max-microvolt = <2800000>;
 	};
 
-	imx219_vdig: fixedregulator-1 {
+	imx219_vdig: regulator-1v8 {
 		compatible = "regulator-fixed";
 		regulator-name = "imx219_vdig";
 		regulator-min-microvolt = <1800000>;
 		regulator-max-microvolt = <1800000>;
 	};
 
-	imx219_vddl: fixedregulator-2 {
+	imx219_vddl: regulator-1v2 {
 		compatible = "regulator-fixed";
 		regulator-name = "imx219_vddl";
 		regulator-min-microvolt = <1200000>;
-- 
2.51.0


