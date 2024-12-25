Return-Path: <devicetree+bounces-133934-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 784AA9FC53F
	for <lists+devicetree@lfdr.de>; Wed, 25 Dec 2024 13:54:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 10AD6163CA9
	for <lists+devicetree@lfdr.de>; Wed, 25 Dec 2024 12:54:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F24F7189F20;
	Wed, 25 Dec 2024 12:53:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cn2xtT1y"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C870117993;
	Wed, 25 Dec 2024 12:53:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735131237; cv=none; b=rpgfsVbhjpjemjfkP4kd+i/cG8QIX3yQ5KI5BSDbbM+wNcOvnpFSvv9IeS1V9eBrlTEi8bAMH2kQ2+1ka1w0Xdk9m+BYRDwz117V1Iy0MLrDFn+FCFtMJebbZIwViWMfBCK6XW6NqTVAGSUvKWyMUUjP22aqHsCgN5YMYN89W/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735131237; c=relaxed/simple;
	bh=PJMCplFGaL2xcxrMFWZxT4JyB/8KOHMpGiDIatQ1R9k=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=DB6KG0JXCLfX2R/NAu7EdTcuv1x7JAZYqa/6SXRjkYCKfCQdX0eXnbdkC7oAJkYbBo6fluxAPb1b2eZ17rg3eH2dROJUz4Gkcc1vtA6wXfvMsxwH/TCzvMayarra2VLbRu1s5r+ROwYDReXaYSdZh9mgYY3kDUjYspxHnq8/xNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cn2xtT1y; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 41711C4CECD;
	Wed, 25 Dec 2024 12:53:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735131237;
	bh=PJMCplFGaL2xcxrMFWZxT4JyB/8KOHMpGiDIatQ1R9k=;
	h=From:Date:Subject:To:Cc:Reply-To:From;
	b=cn2xtT1yEQSgn/UEHHHogVsCEPmwdIUhrwkmK5ztjHKhfsdYbMM3PLXaLq+DueR8p
	 PdswUAjc4ACpqUrKfF3rjGbBTa7ldh4dfnTRYPsqmsOI9LIQqrQRon7PokljodVRps
	 BSOqWfJLEJgEUWonNKyO+1n93/IelNiXghlJEYA2bJ4avxEi4JY12iNt9DcZL5ZYJ1
	 g9WsDCb/x8zjovknb1b6Q/tdMy5H/lqZjmPQc1wg9NUbtaoQ+txJQY6Mg8Le4jzCjA
	 vxNPFTatbgqoY17yonMQWLXvjeiK2OEV5IVsr8uqADcLVSzoc2lq+hRcPBDqHw/DCw
	 3kZl5FjbYoC2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2C6BEE7718B;
	Wed, 25 Dec 2024 12:53:57 +0000 (UTC)
From: =?utf-8?q?J=2E_Neusch=C3=A4fer_via_B4_Relay?= <devnull+j.ne.posteo.net@kernel.org>
Date: Wed, 25 Dec 2024 13:53:42 +0100
Subject: [PATCH] powerpc/microwatt: Fix model property in device tree
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20241225-microwatt-v1-1-8e071fcfc2bd@posteo.net>
X-B4-Tracking: v=1; b=H4sIAFUAbGcC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxNDIyNT3dzM5KL88sSSEt0USyNTC0MLy8S0NFMloPqCotS0zAqwWdGxtbU
 AJNlPVVsAAAA=
X-Change-ID: 20241225-microwatt-d9258189aff5
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Michael Ellerman <mpe@ellerman.id.au>, 
 Nicholas Piggin <npiggin@gmail.com>, 
 Christophe Leroy <christophe.leroy@csgroup.eu>, 
 Naveen N Rao <naveen@kernel.org>, Madhavan Srinivasan <maddy@linux.ibm.com>
Cc: devicetree@vger.kernel.org, linuxppc-dev@lists.ozlabs.org, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?J=2E_Neusch=C3=A4fer?= <j.ne@posteo.net>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1735131236; l=823;
 i=j.ne@posteo.net; s=20240329; h=from:subject:message-id;
 bh=3C1YCyi76jTrcxunvIWw4CH9zMDlOTH9wFP4VAcUHL0=;
 b=gkj0v9fIXqP50WvdD1SfkJUpjFjLAxSQVPwzXugvNYqFDK0iRkHSiJMzU4XvUxnmld76zHA1p
 pBfh2O1PUKDDClwd94hbm7Hf+I8lRPTvRO7Iz74DKLwhFi4IFvtAdAJ
X-Developer-Key: i=j.ne@posteo.net; a=ed25519;
 pk=NIe0bK42wNaX/C4bi6ezm7NJK0IQE+8MKBm7igFMIS4=
X-Endpoint-Received: by B4 Relay for j.ne@posteo.net/20240329 with
 auth_id=156
X-Original-From: =?utf-8?q?J=2E_Neusch=C3=A4fer?= <j.ne@posteo.net>
Reply-To: j.ne@posteo.net

From: "J. Neuschäfer" <j.ne@posteo.net>

The standard property for the model name is called "model".

Signed-off-by: J. Neuschäfer <j.ne@posteo.net>
---
 arch/powerpc/boot/dts/microwatt.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/powerpc/boot/dts/microwatt.dts b/arch/powerpc/boot/dts/microwatt.dts
index 269e930b3b0b14a2bf6a76261062294c1d003c72..162b5f2f8aac2d6c50824b55a8b894a19d741f07 100644
--- a/arch/powerpc/boot/dts/microwatt.dts
+++ b/arch/powerpc/boot/dts/microwatt.dts
@@ -3,7 +3,7 @@
 / {
 	#size-cells = <0x02>;
 	#address-cells = <0x02>;
-	model-name = "microwatt";
+	model = "microwatt";
 	compatible = "microwatt-soc";
 
 	aliases {

---
base-commit: 4bbf9020becbfd8fc2c3da790855b7042fad455b
change-id: 20241225-microwatt-d9258189aff5

Best regards,
-- 
J. Neuschäfer <j.ne@posteo.net>



