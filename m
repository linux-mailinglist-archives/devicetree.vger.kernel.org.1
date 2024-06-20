Return-Path: <devicetree+bounces-78064-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C669910D44
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 18:39:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AB597B29466
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 16:39:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51384174EC1;
	Thu, 20 Jun 2024 16:39:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LOkcmUdH"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D77420B35
	for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 16:39:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718901541; cv=none; b=uSuCEAWk8KNuh9Pk9nDr3kB+srt+76nHvs18S6YOJfz46mdJ/8HY0Vv01rW1V60R50rc8ukSi67pU0H82UCWXv+Ozoet6e+IqP2ANp/2GiEU9L8gmyV9v1d6BGkNC8cIAvdR4K1GGHPixYyoxLaPtZtDdax0sYJBPat1OYnO0Yg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718901541; c=relaxed/simple;
	bh=faSoPEg3WoUEAI0X7ip+6EQtR+wgFtkETMup5dlw1Wc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=skuJ3HWtLD4f05S3fN9QJWRb6buc5DmaXEM4jftmGiNftKfl+LCM83VEgM7366zeS8mMPuwJ+GWdPEHn2DsuNXAvBOzLqFBsPY2xQAEGiE1lZHTdnHhKxSmEbeuWE5cqODvpmTLS58t2xe8rcVSudHZ145rlyjNXR7oGc3ofaf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LOkcmUdH; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D582FC4AF07;
	Thu, 20 Jun 2024 16:38:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718901541;
	bh=faSoPEg3WoUEAI0X7ip+6EQtR+wgFtkETMup5dlw1Wc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=LOkcmUdHITvCe2zSErGQ0ArFRjSedZRt53X1l4HxrCnqFqtZOsWli/jSlVfF5Rk55
	 6FWpKb48XJ4eXU8uokmF9wV59YYe05qN7jgk8m30vMmr6De5LH80jcHH26O2R4UR+f
	 K4HO9gBiu8091DjEsdmfUO2csrOdg7PR+Rn+BsarEVILWk2AwNSCIO/Cf/8mwJrwj5
	 deT9WBAJ+biGusgVyPKB+egpuj90AHX85lZJPiyE6/5u/JQCVAMSx8858pATLd8eDB
	 C2kyTjwYl3m5kjRPne5FY2obEIj1fL0G4mL3NnLR4oyemLX3nR1Oryv7DFqKlr7XU9
	 AqXsj/LJCg+fQ==
From: Vinod Koul <vkoul@kernel.org>
To: linux-phy@lists.infradead.org, Lorenzo Bianconi <lorenzo@kernel.org>
Cc: kishon@kernel.org, lorenzo.bianconi83@gmail.com, conor@kernel.org, 
 linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org, 
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
 devicetree@vger.kernel.org, nbd@nbd.name, john@phrozen.org, dd@embedd.com, 
 catalin.marinas@arm.com, will@kernel.org, upstream@airoha.com, 
 angelogioacchino.delregno@collabora.com, amitsinght@marvell.com
In-Reply-To: <cover.1718485860.git.lorenzo@kernel.org>
References: <cover.1718485860.git.lorenzo@kernel.org>
Subject: Re: (subset) [PATCH v4 0/3] Introduce PCIe PHY driver for EN7581
 SoC
Message-Id: <171890153544.219744.15018236291682784216.b4-ty@kernel.org>
Date: Thu, 20 Jun 2024 22:08:55 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13.0


On Sat, 15 Jun 2024 23:15:40 +0200, Lorenzo Bianconi wrote:
> Add support for Airoha PCIe PHY controller available in the EN7581 SoC.
> 
> Changes since v3:
> - fix compilation errors on x86
> - remove patch 2/4
> Changes since v2:
> - introduce registers description in dts binding
> - compile PCIe PHY controller driver as module by default
> - improve code readability
> Changes since v1:
> - add patch 4/4 to enable PCIe PHY driver
> - rename documentation binding in airoha,en7581-pcie-phy.yaml
> - fix kernel doc
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: phy: airoha: Add PCIe PHY controller
      commit: e2d0317e665884d78c56f99d2a0005213d8390b6
[2/3] phy: airoha: Add PCIe PHY driver for EN7581 SoC.
      commit: d7d2818b93837def4a33f92da2e64c3a2752c47e

Best regards,
-- 
Vinod Koul <vkoul@kernel.org>


