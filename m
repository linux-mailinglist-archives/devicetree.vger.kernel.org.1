Return-Path: <devicetree+bounces-252154-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5083DCFBAAD
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 03:11:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D3E953005038
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 02:11:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65F7627B32D;
	Wed,  7 Jan 2026 02:10:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SfwoJ4CM"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39104278E5D;
	Wed,  7 Jan 2026 02:10:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767751818; cv=none; b=WrzAU9/agXli77qnDfxDvEJPvXnfFsM+N3c1DMrE32yeeLpG2zsVD9x1k3v+bI4r8zOhBlg2smLlqYABE1jiBJ5ZwBPJSNZ05N2pAZcnAkkoD5/1VGCShjTczoCaMUsG4I+4+6VN6ICWQSqdYmCaJuveDd4LINl3djQaHWPEe5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767751818; c=relaxed/simple;
	bh=x8y5mq9j/NBdl6c/kAmCG7lugm3IDOX4HRJJ+rv28WY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GEu1uvs7ZhSCNhSKgjCkZ7oXQijUHbTa0boBj+0gMzAN3dJUr++863u5S1gihiLfR9ENa40bPEmBJuBcjcZmUJ8WyoE3fJ0IpoUqolCUNPNtop/ncloYBJTEtgkiF/vAsmkilP6BzzSdJDwgohI9mfNRtWWWlzqYxTf65laYBWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SfwoJ4CM; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BAA63C16AAE;
	Wed,  7 Jan 2026 02:10:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767751817;
	bh=x8y5mq9j/NBdl6c/kAmCG7lugm3IDOX4HRJJ+rv28WY=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=SfwoJ4CMlQjS94Rx5TyfivRbMZNM0+nn0hj+uz9onSb60cu316TCVl65lK0N2VFSp
	 pdUutTeE8ynGSP7bOe8tAKjROyw6u6hbpcd6MEv3wUIFPeYJ7YspxbvuAkQx7QiEJ1
	 uayQfOB0Iyf64hIyhSgARy+s/vijR8XR98tIlecTvDE/w1cDm5b5R5UwH9lhdJcbbs
	 kYA+XisuXmkb/utqSRfrSbk3NA/QwYXG0c9RQlQU41gxwm1TeG5toEjm9YfTZkiW+r
	 416ZQFBG66iZ6KXHHD3SlDtX3nBJxMl9T1Ps/lOsdkzKrtVgYAMJTKPyRIqQZ0c9Gr
	 AxEtwtCc4kDCg==
From: "Rob Herring (Arm)" <robh@kernel.org>
Date: Tue, 06 Jan 2026 20:09:50 -0600
Subject: [PATCH 11/13] arm64: dts: broadcom: northstar2: Drop unused and
 undocumented "brcm,pcie-ob-oarr-size" properties
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260106-dt-dtbs-broadcom-fixes-v1-11-ba45874e4553@kernel.org>
References: <20260106-dt-dtbs-broadcom-fixes-v1-0-ba45874e4553@kernel.org>
In-Reply-To: <20260106-dt-dtbs-broadcom-fixes-v1-0-ba45874e4553@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>
Cc: devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.15-dev

The "brcm,pcie-ob-oarr-size" property is unused and undocumented, so drop
them.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 arch/arm64/boot/dts/broadcom/northstar2/ns2.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/broadcom/northstar2/ns2.dtsi b/arch/arm64/boot/dts/broadcom/northstar2/ns2.dtsi
index c9bf77b3566e..a187c8e788dd 100644
--- a/arch/arm64/boot/dts/broadcom/northstar2/ns2.dtsi
+++ b/arch/arm64/boot/dts/broadcom/northstar2/ns2.dtsi
@@ -154,7 +154,6 @@ pcie0: pcie@20020000 {
 		ranges = <0x83000000 0 0x00000000 0 0x00000000 0 0x20000000>;
 
 		brcm,pcie-ob;
-		brcm,pcie-ob-oarr-size;
 		brcm,pcie-ob-axi-offset = <0x00000000>;
 
 		status = "disabled";
@@ -184,7 +183,6 @@ pcie4: pcie@50020000 {
 		ranges = <0x83000000 0 0x00000000 0 0x30000000 0 0x20000000>;
 
 		brcm,pcie-ob;
-		brcm,pcie-ob-oarr-size;
 		brcm,pcie-ob-axi-offset = <0x30000000>;
 
 		status = "disabled";

-- 
2.51.0


