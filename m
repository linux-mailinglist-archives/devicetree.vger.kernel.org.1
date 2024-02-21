Return-Path: <devicetree+bounces-44118-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8625C85CC89
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 01:05:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E5DA8B214DC
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 00:05:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3013164B;
	Wed, 21 Feb 2024 00:04:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rlUBDWv2"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BD707F8
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 00:04:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708473898; cv=none; b=rOXpb4T8Z9B2OrePG4i4IbNxIMGQcSR64qP45pY09JxO1HJLU2657mV0j67ijiq9baLUsFASOElQ7DVSDTnJkvipRZ53uqEFedsg78lD2EDjOERwKQsBcK9+Ql2hydww63Nq7PMHZjmCKzs/I56fJrG/1ovpU1+udA3+KAFqVcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708473898; c=relaxed/simple;
	bh=iYOi9ktWLsVtLwjLudXvh13S1stvvtBscR0uMnaAQgQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=fhzp4/b7y3dxHRreyNk7cBGuMc5v7zBpz9Dd2BPypumv+Nh0Z2KeOkJZOudnGpG8LyUfXyB7S5u9WD8oRD/Oo2Lj70TfA5kccP25tqsUDR4trMV9o1HPDqQ16Rr0r4LvAoByYdC4jq4DZZDcRXkSqcocl2FlsUxAzHwAme6zeZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rlUBDWv2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2D49AC433F1;
	Wed, 21 Feb 2024 00:04:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708473897;
	bh=iYOi9ktWLsVtLwjLudXvh13S1stvvtBscR0uMnaAQgQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=rlUBDWv2sSKJmubQEJBgqM8VnEFrSo6RU7gfgIj3NA4JO4btnRA4sir2kFKdSoQAA
	 /wqg89Aesk94IDWgYx4g+K5N3Tk0G9auOjdYYpHVMGYKl3mni8lF14DIaOTCMuZFv5
	 IE9kFoz/GgYr7kAnJVx23we1Zas66zV7eddbUCjahSWHJE46SzzZjtQp+6nivj1DNw
	 NVzE3vLeyJ20RR0Q2mcolXy0s5BePPQ6mnRFoP7Pp5R0ERIm/LDrB4IuVi2Ph1x3OK
	 OX4/3izrXtjz1Tq4UV6W91KrPheRN9vxtzWqBgw99KBphdGfjbsZFGflcI9sv40sY/
	 paYE8RUGV5vSQ==
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Cc: lorenzo.bianconi@redhat.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	nbd@nbd.name,
	john@phrozen.org,
	devicetree@vger.kernel.org,
	dd@embedd.com,
	catalin.marinas@arm.com,
	will@kernel.org,
	angelogioacchino.delregno@collabora.com
Subject: [PATCH v2 4/4] arm64: defconfig: enable Airoha platform
Date: Wed, 21 Feb 2024 01:04:30 +0100
Message-ID: <baf5af70e4c42042528914179b701f3dafcc972b.1708473083.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <cover.1708473083.git.lorenzo@kernel.org>
References: <cover.1708473083.git.lorenzo@kernel.org>
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
index e6cf3e5d63c3..3966dbb79bb8 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -50,6 +50,7 @@ CONFIG_ARCH_LG1K=y
 CONFIG_ARCH_HISI=y
 CONFIG_ARCH_KEEMBAY=y
 CONFIG_ARCH_MEDIATEK=y
+CONFIG_ARCH_AIROHA=y
 CONFIG_ARCH_MESON=y
 CONFIG_ARCH_MVEBU=y
 CONFIG_ARCH_NXP=y
-- 
2.43.2


