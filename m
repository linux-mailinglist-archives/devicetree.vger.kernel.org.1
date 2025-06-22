Return-Path: <devicetree+bounces-188167-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EF272AE2FC1
	for <lists+devicetree@lfdr.de>; Sun, 22 Jun 2025 14:08:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 707DF3AF5D9
	for <lists+devicetree@lfdr.de>; Sun, 22 Jun 2025 12:07:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68CD51E0489;
	Sun, 22 Jun 2025 12:07:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hPlZbYvq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43078199949
	for <devicetree@vger.kernel.org>; Sun, 22 Jun 2025 12:07:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750594074; cv=none; b=EE99xnkHvLLVQYqqwOG20xPBR/JglNTQGY1NRMe6USoF4fnGIPtJPz0v8kxAlL5eB2t++5LdvMa+azpTO23shodGcgzAB5AM8NRtqjX3KQJ4mD7OIghXTwPP6Qwd9157BZs78bfj5t2qXHT796J6TuZozbhJRlxSenwY5yzmhRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750594074; c=relaxed/simple;
	bh=OipIHpRR+7kaueTGoM3WRNE2uuJQVx8KpB1NDmTJgJk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Pyx87pwh7FCOFNe99YZLvGzMTn7CX/SFApxC7iv+AZgk4VFB0n8YD3zZ+Jaxcqnrx2cIBo/4OfuKPnBqzk3uTRO67syoEHUdSELn9zAs0d+K4MlKiUxIKYmN/Fd0ZzpSWJnV8JIf9Cj7BGU7CjPcTiJ1HvF3noKWc9LikBt+nc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hPlZbYvq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4BCE2C4CEF3;
	Sun, 22 Jun 2025 12:07:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750594072;
	bh=OipIHpRR+7kaueTGoM3WRNE2uuJQVx8KpB1NDmTJgJk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=hPlZbYvqxlKZ8sYqMBz+IWoJp9JtfSFadOa+963uZ9bfyYiEPmOHDzh+VtMLrvJ7Y
	 i2yTaTSvFSiChIWLdE7eCYgLO9r79IsSgPSc+ShFBBaI6Lox92s3MdVKfGSTd6sUSt
	 0g6WE4C+w41IqVzswNENRJfzssHx091urWushONB9eoCfqEtmIhA4XVj2Qs8ag6dEN
	 GaFdxI0c4nSwy0Hn5wYQtKIDUGWuoHXVxLremdyLTAu/+J7YC6LDTFuQEljSS7jzFN
	 YuXaYzHYYgddXy02AJpLqZg0p5aGYr8SMXGoXBq7/QH8bxr1M2YzflsApEOMxy3zvi
	 CL1SBdoOXyUdw==
From: Dinh Nguyen <dinguyen@kernel.org>
To: robh+dt@kernel.org,
	krzysztof.kozlowskii+dt@linaro.org,
	conor+dt@kernel.org
Cc: dinguyen@kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 5/6] arm64: dts: stratix10: remove cpu1-start-addr
Date: Sun, 22 Jun 2025 07:07:36 -0500
Message-ID: <20250622120737.600336-6-dinguyen@kernel.org>
X-Mailer: git-send-email 2.42.0.411.g813d9a9188
In-Reply-To: <20250622120737.600336-1-dinguyen@kernel.org>
References: <20250622120737.600336-1-dinguyen@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The cpu1-start-addr property is only applicable to 32-bit SoCFPGA
platforms.

Removing this property will take care of warnings like this:
socfpga_stratix10_swvp.dtb: sysmgr@ffd12000: cpu1-start-addr:
	False schema does not allow 4291846704

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 arch/arm64/boot/dts/altera/socfpga_stratix10_swvp.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10_swvp.dts b/arch/arm64/boot/dts/altera/socfpga_stratix10_swvp.dts
index 33a765c9177d..6b9fe154f677 100644
--- a/arch/arm64/boot/dts/altera/socfpga_stratix10_swvp.dts
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10_swvp.dts
@@ -106,5 +106,4 @@ &usb1 {
 &sysmgr {
 	reg = <0xffd12000 0x1000>;
 	interrupts = <0x0 0x10 0x4>;
-	cpu1-start-addr = <0xffd06230>;
 };
-- 
2.42.0.411.g813d9a9188


