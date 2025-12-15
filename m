Return-Path: <devicetree+bounces-246746-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E3ECCBF806
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 20:14:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 75E0530019C4
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 19:14:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D31F23246F1;
	Mon, 15 Dec 2025 19:14:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IYFumXxM"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4CAB2EC09B;
	Mon, 15 Dec 2025 19:14:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765826066; cv=none; b=iF9Rc+LKtJB1bFxKzyIVZff1AE3hyYKlZMWiNW/6hEju7GiZCQGXhKP2SGzLoq+lr3EUGdC8Ztv3YAk9EmosavyB4RYSvgxIxUUcP9/bdaigzUuBYrvqUYfj/ETJy484UGaZzB5xfevhsj6mRQXc31iDnsDj0jRcsGwHqlQmJtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765826066; c=relaxed/simple;
	bh=9rvLSo2yKTIwGfUGdix4nanCBukssgm+DdLeThllV9c=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=kW1C8NXb5YE62x9NMGCuqdUxa3wCEAsFwTumIFThcr7sGuo0/RmUCZcCSwaZxp21+GLZuqVUWFOfyhjTPsgBHWIjKnSGIIB9Bq4Foo2ymKTfIyhhQc8B3/TXf/xyCaksTyq4Sg850GPuqwHkErPUdIiGLkd/NMquShM8PWd1DFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IYFumXxM; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 07EC8C116B1;
	Mon, 15 Dec 2025 19:14:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765826066;
	bh=9rvLSo2yKTIwGfUGdix4nanCBukssgm+DdLeThllV9c=;
	h=From:To:Cc:Subject:Date:From;
	b=IYFumXxMh4H7BcmUFgFMwbneaCz3Dqjq7GlXL8H9PW2jwCAYCijt6XPSf2TYN4OaH
	 EBXQCtNOalyvDUFkQy/aHqKwUWrFMlqqVhsFROJA4NGSB6eEPXUNFFT37ioEwKu9P0
	 cFzdoxRSmDjfRm8nHy8rr1sGV4Vz9xLcdMzCPYXLwnj1j4dffeTeCSol3mB2kN9aal
	 oXqEhs2h5+SV6BrPm3faX9nLZ6nnx39UpS1FOF6uvap9+PvUv6RjbjyCX4sezMluwR
	 JGap9W9tGzQEUcIzSuTfTkE9qSosIxDMaLhUv6q5avEOneZ4fth7seOvZ8gNS5Jep9
	 qFE57r4TCGuSA==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: devicetree@vger.kernel.org
Cc: Nathan Chancellor <nathan@kernel.org>,
	Nicolas Schier <nsc@kernel.org>,
	linux-kernel@vger.kernel.org
Subject: [PATCH] MAINTAINERS: Add Makefile.dtb* to DT maintainers
Date: Mon, 15 Dec 2025 13:14:20 -0600
Message-ID: <20251215191421.3137362-1-robh@kernel.org>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Since the DT related parts of kbuild are now split out to separate
makefiles, list them in the DT maintainer section so they don't fall
thru the cracks.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 5b11839cba9d..cfd00518df3c 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -19557,6 +19557,7 @@ F:	include/linux/of*.h
 F:	rust/helpers/of.c
 F:	rust/kernel/of.rs
 F:	scripts/dtc/
+F:	scripts/Makefile.dtb*
 F:	tools/testing/selftests/dt/
 K:	of_overlay_notifier_
 K:	of_overlay_fdt_apply
-- 
2.51.0


