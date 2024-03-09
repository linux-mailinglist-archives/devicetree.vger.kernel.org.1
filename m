Return-Path: <devicetree+bounces-49567-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 18127877016
	for <lists+devicetree@lfdr.de>; Sat,  9 Mar 2024 10:32:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C63A9281E56
	for <lists+devicetree@lfdr.de>; Sat,  9 Mar 2024 09:32:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4486837719;
	Sat,  9 Mar 2024 09:32:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rTC1W0su"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F5E737141
	for <devicetree@vger.kernel.org>; Sat,  9 Mar 2024 09:32:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709976772; cv=none; b=JeFPkxGEjQS3BAgaH9L/18/b1/DZWvtjaS/wbxKjzro+Duiu/RDM7v7wHMINHzu+C28r1zQKMJt/r7DYCLm035oISqtDf/JVqyinjVZbp4xyTLeawcb3qATVqr5lL0Tb+uw2D/xEW990VFOJodZJgh7/YQS9gYmL0xWbawilMRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709976772; c=relaxed/simple;
	bh=tiqq5KY1TM1krZfjrPNbb2ZILJ3i52ym+y5lcEj0Xmo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qi3/IYfPHdLsL5Ms05Z6wW1zG/ruabl045z8oRivY4TSTEvtl2tnE7J30wLzGCMuqCXPJDl2McaZnMg0I9zfTRShheAR/e57R6V8rV7sy2lKqeKeLPMlt9ExBTPY/d+cSNzd46DGdlrmdcczxSILCBWU+LkATixMbM2yAvjdKv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rTC1W0su; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 46988C433F1;
	Sat,  9 Mar 2024 09:32:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709976771;
	bh=tiqq5KY1TM1krZfjrPNbb2ZILJ3i52ym+y5lcEj0Xmo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=rTC1W0suSSxkLbg5K1Hq/0KO+wajOs2zIa2ZBIeTz9zS2T9dZ9v4qRPNmNtaFdyxM
	 pvCQguxgGq7an6HA4NLwB1MPtYI7qlGWSspI19uUn7Rh1yXoYXlA4VLdRIHc8yUdJX
	 e8arqSXBLmAebasLZlSQAcn8FG78NQDyqR1m7tgGv7aPxkI+lsw10T6HiJeTvHIw/a
	 goTDpsMzE1GUkMdpRYpT1vNvVSGwvkTv9sNg9J3pZe2hhJz8JDWd06tTYABHphVJ7Z
	 0mXLFZa6FK/Lv2GSFW42wLL8hONX8reIEkL32Z0J8e+WjD1z9urIenRIb57wahyFe1
	 IkRJSy1jCtmJA==
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	nbd@nbd.name,
	john@phrozen.org,
	devicetree@vger.kernel.org,
	dd@embedd.com,
	catalin.marinas@arm.com,
	will@kernel.org,
	upstream@airoha.com,
	lorenzo.bianconi83@gmail.com,
	angelogioacchino.delregno@collabora.com
Subject: [PATCH v4 3/4] arm64: add Airoha EN7581 platform
Date: Sat,  9 Mar 2024 10:32:16 +0100
Message-ID: <d52d95db313e6a58ba997ba2181faf78a1014bcc.1709975956.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <cover.1709975956.git.lorenzo@kernel.org>
References: <cover.1709975956.git.lorenzo@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Daniel Danzberger <dd@embedd.com>

Introduce the Kconfig entry for the Airoha EN7581 multicore architecture
available in the Airoha EN7581 evaluation board.

Signed-off-by: Daniel Danzberger <dd@embedd.com>
Co-developed-by: Lorenzo Bianconi <lorenzo@kernel.org>
Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 arch/arm64/Kconfig.platforms | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
index 24335565bad5..36604db205a4 100644
--- a/arch/arm64/Kconfig.platforms
+++ b/arch/arm64/Kconfig.platforms
@@ -8,6 +8,13 @@ config ARCH_ACTIONS
 	help
 	  This enables support for the Actions Semiconductor S900 SoC family.
 
+config ARCH_AIROHA
+	bool "Airoha SoC Support"
+	select ARM_PSCI
+	select HAVE_ARM_ARCH_TIMER
+	help
+	  This enables support for the ARM64 based Airoha SoCs.
+
 config ARCH_SUNXI
 	bool "Allwinner sunxi 64-bit SoC Family"
 	select ARCH_HAS_RESET_CONTROLLER
-- 
2.44.0


