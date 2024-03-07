Return-Path: <devicetree+bounces-48925-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F76587450D
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 01:12:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D4628B24AA9
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 00:11:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED413A21;
	Thu,  7 Mar 2024 00:11:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KTMaWIiU"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C845881F
	for <devicetree@vger.kernel.org>; Thu,  7 Mar 2024 00:11:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709770302; cv=none; b=XnrPM83dPhQRBrCZDOdCS1b/rFT+YUgPofbnEIFxtxk0LQGv+Kg3yHa6jrGOfwvtv91UC1l00m3lEopiLBXSOkl87sI9SKjTI3yFXm+KDSw46x+nUvn6JIaSES2Bso2vO5sO08QM6YZshAa/4EJ93VE/Mwh/EHHAGjze6qKKTa4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709770302; c=relaxed/simple;
	bh=y2M8JkoMn7TZca4U85J5bTy+l7rxHSAX7foeqXZJaYw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qeEiD1ajxUohQCA2BiXcgsHPtE4w032t1lPOB4e+ydCmcNz1EbP5pGhSBxCABH9XW33piB93ZAE7ZAY2WR4uBLmhJja3veJ0/7BQipy6rhtXCiYa1Dyrz6uZkSUZa6JAjNDBGtkktQWeM1oxiJ1nPkYBd64jP6K2dl6jMamDMDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KTMaWIiU; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1E5FC433F1;
	Thu,  7 Mar 2024 00:11:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709770302;
	bh=y2M8JkoMn7TZca4U85J5bTy+l7rxHSAX7foeqXZJaYw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=KTMaWIiUJl24BHCHerhyNvT910mipAdBvJJmqwgWMqDsBJazNjgpDwmFsyCw4/y4G
	 aF3Jmi1EnHshx55N97EoiAjcFDz2AyuLd0Dd5/8wEkQ48cLvfrAXf4trLoRKXJrks/
	 fpNsBkDxLTzUEcfS9Md6IBtOJp1sRBp3E/bNs/Ff1dNmkQ6za2+hjleNS/5uL2GCXl
	 Vu7b4jjvh1abJVHFSUAqze2EghjjV7zSE7sxpDjoy46NuFOA440NsnXDw6TUU929bL
	 T0OKMbjnIor3GIdFg0eJ8p8GazkeVDi59KxFegD8RGC65dxOI7gg7EAdhLiEgXwDcg
	 jnkm2HB2SK96g==
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
Subject: [PATCH v3 4/4] arm64: defconfig: enable Airoha platform
Date: Thu,  7 Mar 2024 01:11:13 +0100
Message-ID: <a397e9a9914d02660fc6aed69db5913f2ee94e25.1709768157.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <cover.1709768157.git.lorenzo@kernel.org>
References: <cover.1709768157.git.lorenzo@kernel.org>
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


