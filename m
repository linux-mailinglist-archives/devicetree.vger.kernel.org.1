Return-Path: <devicetree+bounces-67621-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 720C18C90A1
	for <lists+devicetree@lfdr.de>; Sat, 18 May 2024 13:32:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id F3D5AB21081
	for <lists+devicetree@lfdr.de>; Sat, 18 May 2024 11:32:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3474128684;
	Sat, 18 May 2024 11:32:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d1frlWGi"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10EF323746
	for <devicetree@vger.kernel.org>; Sat, 18 May 2024 11:32:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716031961; cv=none; b=AnTKFu38Sd/cKC5IEoiUjZQFJo0afycoZbYYsieNVd2c/zREKBp3TTsdGHofcmXMxxvIHpRxyg6nxkO1kLY0+oKWmXA2hZJC5R1LdjDWgJCAHXs7OHDVlyzdmi5vgba19L5rZwCuZZcj3UxGWrjUQgmsPA5nV4ABs/5V8JqVqBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716031961; c=relaxed/simple;
	bh=FOaNOhnQCAYUzSOEttbjHnYtDiKqnkUNaK+WVRAR68c=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DS8wk/dUlE3Z7HrXMlqOCvEdvV4fd6Q2IrRD8xiUhfDMkjcCEhVLLXHmwcK05YYJuEXXWXSAZ9hY5SDV1EouCj/wsEnbq52bOHFRDYCfDjwdTGsPMfkbgDKrkWmMkCo/4KoUHruoqIKci0wSJY8QEHDQJ85TjrLFzbM9nQEj8bY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d1frlWGi; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0EE82C113CC;
	Sat, 18 May 2024 11:32:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716031960;
	bh=FOaNOhnQCAYUzSOEttbjHnYtDiKqnkUNaK+WVRAR68c=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=d1frlWGiVW7vgjT+FZK0Lx46iPYZGF/nPPhSB/QxLlzsJfDLmvxxefDOit9xBfY1Y
	 vuuENYvVhu872YdhALPLTvzRjsGf2FlmiQ2uDdmDfdCusrERRsaKzAEF5wbSuIzOBl
	 GWVoXPPjAZNKedfdv8Y/UJZI5q1I8u2rfMxHT0Tc7z44HvzXIJo+vx2n7pBeHc+jMf
	 RZ5xEDeCTvfyicR5ZhTi9xNwmlc5tLe4yudCi5HaRU6+u7/6Q5QkeHTLkLpuiAWl4R
	 RDCAqFdWqhloyCp0NW7AeSuCdn52blLWrLRfV0Mb/9oRyub4m+kcrMIG+FL9zxaG1Q
	 N5y6INwp1Km7g==
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: linux-phy@lists.infradead.org
Cc: vkoul@kernel.org,
	kishon@kernel.org,
	lorenzo.bianconi83@gmail.com,
	conor@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	nbd@nbd.name,
	john@phrozen.org,
	dd@embedd.com,
	catalin.marinas@arm.com,
	will@kernel.org,
	upstream@airoha.com,
	angelogioacchino.delregno@collabora.com,
	amitsinght@marvell.com
Subject: [PATCH v3 4/4] arm64: defconfig: Enable Airoha pcie phy driver
Date: Sat, 18 May 2024 13:31:44 +0200
Message-ID: <10f28b494988882187ec4c870c70ed09edc9c064.1716031610.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <cover.1716031610.git.lorenzo@kernel.org>
References: <cover.1716031610.git.lorenzo@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Enables the PHY_AIROHA_PCIE config by default.

Tested-by: Zhengping Zhang <zhengping.zhang@airoha.com>
Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index a53c58584bcf..de3feacde776 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1479,6 +1479,7 @@ CONFIG_RESET_QCOM_AOSS=y
 CONFIG_RESET_QCOM_PDC=m
 CONFIG_RESET_RZG2L_USBPHY_CTRL=y
 CONFIG_RESET_TI_SCI=y
+CONFIG_PHY_AIROHA_PCIE=m
 CONFIG_PHY_XGENE=y
 CONFIG_PHY_CAN_TRANSCEIVER=m
 CONFIG_PHY_SUN4I_USB=y
-- 
2.45.1


