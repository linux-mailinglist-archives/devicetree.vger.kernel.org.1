Return-Path: <devicetree+bounces-49568-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C785D877018
	for <lists+devicetree@lfdr.de>; Sat,  9 Mar 2024 10:32:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7E8471F21551
	for <lists+devicetree@lfdr.de>; Sat,  9 Mar 2024 09:32:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A63B237702;
	Sat,  9 Mar 2024 09:32:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A+Bt/kDD"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 792CC37141
	for <devicetree@vger.kernel.org>; Sat,  9 Mar 2024 09:32:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709976775; cv=none; b=mTOKQLyEkiSC61St5Y+6Ic9PQf5k7T/HAT/U+E07NbPMOsinrgiRSEOTOlJTZ+1YF65YhwDwhi4Fi7wnGNBalUnB2ksyN3Wsu5ZtBdnweqBaIFelIgrIPuAGFWgR96CwR2XZ30RuSZQJWB3vxqvYxea4uDByS8C4RmJjbs3R2HM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709976775; c=relaxed/simple;
	bh=y2M8JkoMn7TZca4U85J5bTy+l7rxHSAX7foeqXZJaYw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BZ3vifwuUCy+EbjVmjf+QeDjGsIADUCPNs9ZM/7FViOr5Oac6z1E7/kPQNfvzaYbxyUtgrLMrFfl09a9H7RqHEOqjwwN7YK8U9ibUVAWmYlDV8Mwxu0x21Ctb9b13gim9OPqoTS+TgDGGKyNvOxJmtLeG/OmLIHqDjXebBcNlnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A+Bt/kDD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 035EDC433C7;
	Sat,  9 Mar 2024 09:32:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709976775;
	bh=y2M8JkoMn7TZca4U85J5bTy+l7rxHSAX7foeqXZJaYw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=A+Bt/kDDCl2gxkQtUoPOW6RU39nSYddFxJ/46XHQsEkkbcf/iMkZRPrB/2ziVh7+A
	 xf5gsCnG9uUW5BmKBG5KgK4dnsV+oI8vSfG7pNGKKBR/guB4tDpgJPGymAj01CpIPh
	 EIpF0cRqvNd7gGLFrGeUsqimzAyFMZacQe+JUtUU5MRiOhRZssnMNmkX7QrhYEQNLQ
	 UT2TRJQfTp4fwcdmYzF+DZrV1ldZzyqDAb8+GdDgPA2v5jSKDVhAsV8+by3xZpcnh9
	 Fbi0KnZKS09iNMYudHEKuhDFnKYAaDoClim19SV14Lo3wpoaGUp2HNod5kVGDYkAZE
	 2BN/0ijgDHO3g==
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
Subject: [PATCH v4 4/4] arm64: defconfig: enable Airoha platform
Date: Sat,  9 Mar 2024 10:32:17 +0100
Message-ID: <65737ca5506371ef84c3a055e68d280f314e3b41.1709975956.git.lorenzo@kernel.org>
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

Enables the ARCH_AIROHA config by default.

Signed-off-by: Daniel Danzberger <dd@embedd.com>
Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index e6cf3e5d63c3..aa44791a47e6 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -34,6 +34,7 @@ CONFIG_KEXEC=y
 CONFIG_KEXEC_FILE=y
 CONFIG_CRASH_DUMP=y
 CONFIG_ARCH_ACTIONS=y
+CONFIG_ARCH_AIROHA=y
 CONFIG_ARCH_SUNXI=y
 CONFIG_ARCH_ALPINE=y
 CONFIG_ARCH_APPLE=y
-- 
2.44.0


