Return-Path: <devicetree+bounces-250953-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 19366CED354
	for <lists+devicetree@lfdr.de>; Thu, 01 Jan 2026 18:09:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 10142300763F
	for <lists+devicetree@lfdr.de>; Thu,  1 Jan 2026 17:09:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E21832EFDAF;
	Thu,  1 Jan 2026 17:09:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N5VXkK2C"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8B782EF660;
	Thu,  1 Jan 2026 17:09:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767287395; cv=none; b=jIBthVjlNyNntXgY7ea5V6Gnh/AMTV66QhvI91nobbH6qt9+jhOSsvDLsaNzQrDREyWTtWUnf77+4VWhuRyTAqaiqzG3UbatdUmL38McDb3SiICTRCGVHV3iIDM345VDxRdgZZ4ZD+yKfSa1v6ttqel635jQsKOoOiUGapemdFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767287395; c=relaxed/simple;
	bh=I3C57r6azO48yZzyNuNe6/kxRiFpeGaZXr+2V6WEkW0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=rOI1oGBn87Wbk3tkUTEROZvZBgVchXcqUifT4aPURnSmCMI5SYZ2L1pyjB1fW6CTZHyhMKy1QNUd95BCfe12/fNNO/sNn+METGDbQ6f9OKTRUtc5Ic9PdzzWlqisOp6FQAIGywEXWywBGGEUmPK7ipPwFxDhkC4K4TPicWfeA2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N5VXkK2C; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3D553C4CEF7;
	Thu,  1 Jan 2026 17:09:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767287395;
	bh=I3C57r6azO48yZzyNuNe6/kxRiFpeGaZXr+2V6WEkW0=;
	h=From:Date:Subject:To:Cc:Reply-To:From;
	b=N5VXkK2CHJbn9UhLJ40jV1k4kpHWbQWlBvTKWq7AjitLOHY9Vm70wEtlELsndB4Ze
	 Ek6XxkNtt4FoJL/lTcHOTM4GB9TAMzXVvq/+Xs1tMTLgNd2MrdpH+uxPPjgeIXpahU
	 XCYVMchocehn1VzImJgy73nn0umw6OLZ9wm1M1ZJXEx+rUk0yQLpFasPQDw+gx3z1K
	 l9C15515E+ciitIbvgR6pOEC5y3kuQSuWZNUQKCcfXt4EAFbS62SClI3RyjY2t+Bf7
	 DdjXrl7cYj6/u7U5C0aRF8SYRP5iv9lvELLQlwbDLW4EGIQeeBi/Ubbut9Ip3PxHRe
	 +fj876zZGyeZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2BAFDEED626;
	Thu,  1 Jan 2026 17:09:55 +0000 (UTC)
From: =?utf-8?q?J=2E_Neusch=C3=A4fer_via_B4_Relay?= <devnull+j.ne.posteo.net@kernel.org>
Date: Thu, 01 Jan 2026 18:09:46 +0100
Subject: [PATCH] powerpc: DTS: mpc8313erdb: Add timer@*/clock-frequency
 properties
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260101-timer-clock-v1-1-8e467b48648e@posteo.net>
X-B4-Tracking: v=1; b=H4sIAFmqVmkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDMyNT3ZLM3NQi3eSc/ORs3VQD47REy1QLY9NkCyWgjoKi1LTMCrBp0bG
 1tQDr05SDXQAAAA==
X-Change-ID: 20250625-timer-clock-e03fa9e835c8
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Madhavan Srinivasan <maddy@linux.ibm.com>, 
 Michael Ellerman <mpe@ellerman.id.au>, Nicholas Piggin <npiggin@gmail.com>, 
 "Christophe Leroy (CS GROUP)" <chleroy@kernel.org>
Cc: devicetree@vger.kernel.org, linuxppc-dev@lists.ozlabs.org, 
 linux-kernel@vger.kernel.org, kernel test robot <lkp@intel.com>, 
 =?utf-8?q?J=2E_Neusch=C3=A4fer?= <j.ne@posteo.net>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767287394; l=1719;
 i=j.ne@posteo.net; s=20240329; h=from:subject:message-id;
 bh=wToNi3p+7oH/fZkL7rybDw1OVJ8Mht3DHd2zANSoxwc=;
 b=EuOs6G8MKKfgu4iOPLtXislVo3FJEGSi9IB1l8K9O7U84ug/zPMUzxDSWQFrh3p3EQFb2QC5U
 3yLS4hvMjyfBzNYMATEHlpwrNtHC4IUl+05foxoqqCqynh1udKzEJnW
X-Developer-Key: i=j.ne@posteo.net; a=ed25519;
 pk=NIe0bK42wNaX/C4bi6ezm7NJK0IQE+8MKBm7igFMIS4=
X-Endpoint-Received: by B4 Relay for j.ne@posteo.net/20240329 with
 auth_id=156
X-Original-From: =?utf-8?q?J=2E_Neusch=C3=A4fer?= <j.ne@posteo.net>
Reply-To: j.ne@posteo.net

From: "J. Neuschäfer" <j.ne@posteo.net>

The recent formalization of the fsl,gtm schema has shown that
mpc8313erdb.dts doesn't provide the clock-frequency property on timer
nodes. A few different expectations collide here:

 - Both the binding and the driver for the Freescale global timer module
   (GTM) have always required clock-frequency, since their addition in
   2008 (v2.6.26-rc5-236-g83ff9dcf375c41).
 - mpc8313erdb.dts never had the timer@*/clock-frequency property, since
   the timer nodes were added in 2008 (v2.6.26-3343-g574366128db29e)

I suspect the way this worked was that the bootloader filled these
values when booting on an MPC8313 board.

Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202505300136.HOpO5P6y-lkp@intel.com/
Signed-off-by: J. Neuschäfer <j.ne@posteo.net>
---
 arch/powerpc/boot/dts/mpc8313erdb.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/powerpc/boot/dts/mpc8313erdb.dts b/arch/powerpc/boot/dts/mpc8313erdb.dts
index 09508b4c8c7309..0bddc3be9e62f8 100644
--- a/arch/powerpc/boot/dts/mpc8313erdb.dts
+++ b/arch/powerpc/boot/dts/mpc8313erdb.dts
@@ -308,6 +308,7 @@ gtm1: timer@500 {
 			reg = <0x500 0x100>;
 			interrupts = <90 8 78 8 84 8 72 8>;
 			interrupt-parent = <&ipic>;
+			clock-frequency = <0>; /* filled by bootloader */
 		};
 
 		timer@600 {
@@ -315,6 +316,7 @@ timer@600 {
 			reg = <0x600 0x100>;
 			interrupts = <91 8 79 8 85 8 73 8>;
 			interrupt-parent = <&ipic>;
+			clock-frequency = <0>; /* filled by bootloader */
 		};
 	};
 

---
base-commit: 9448598b22c50c8a5bb77a9103e2d49f134c9578
change-id: 20250625-timer-clock-e03fa9e835c8

Best regards,
-- 
J. Neuschäfer <j.ne@posteo.net>



