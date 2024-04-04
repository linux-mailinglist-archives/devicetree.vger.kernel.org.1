Return-Path: <devicetree+bounces-56369-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 98045898C7A
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 18:47:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C9A341C20DA6
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 16:47:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F18E1CA85;
	Thu,  4 Apr 2024 16:47:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="NKbaXUut"
X-Original-To: devicetree@vger.kernel.org
Received: from relay.smtp-ext.broadcom.com (relay.smtp-ext.broadcom.com [192.19.144.205])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE8C31C6A5
	for <devicetree@vger.kernel.org>; Thu,  4 Apr 2024 16:47:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.19.144.205
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712249234; cv=none; b=ux490qWRMPp7XVEJ6ON6zKN3Wtqq3DLno7mbnZjeqSXhdL8eqeXto6uDriuJf8jvvROEUnuATDKopDDYRfmxdGni7rTdREBEjK5u6eCCqaKbP91FL0eKZjIPDDqbJf8ohScuPaFyn7u4/gF7PpAslp9oHrHyoBhbGLN6k80mkaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712249234; c=relaxed/simple;
	bh=3EkqvZo+Qg1LgA3xgEe0NyfIBvD1t7Nx8rJz4zN8Drk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=K0qrbXtndQMJ5U2IYxoJxAA6yN43VRJ981g18eQihKUfUvOSvXeLmNFNumcNkU1B6SQtTupqXhPm10Bf4KOIolAK82H4Rg6ghYnDpCjUAOqHZY3wRKfjHxksbAw+BmmXmzuc48QfyLR9tk0seGpm2sSWQ2BNqTiROSt6BVe0y/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=NKbaXUut; arc=none smtp.client-ip=192.19.144.205
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: from mail-lvn-it-01.lvn.broadcom.net (mail-lvn-it-01.lvn.broadcom.net [10.36.132.253])
	by relay.smtp-ext.broadcom.com (Postfix) with ESMTP id BCAB0C0000FA;
	Thu,  4 Apr 2024 09:47:11 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 relay.smtp-ext.broadcom.com BCAB0C0000FA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
	s=dkimrelay; t=1712249231;
	bh=3EkqvZo+Qg1LgA3xgEe0NyfIBvD1t7Nx8rJz4zN8Drk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=NKbaXUutXlZhbTfJPwpCkYTpB+XVUulM2X5+/U32y8UPtCbLhWyg49+ebThrXz4s1
	 ZDaFbowHs2LY96PCDW9apxGbI4gDeHev90VMtNlfXkIY/0zPSoEh6vF7FsAEH3FY3V
	 vkczeONCPpzIbNeimgYxic7KcfTCZZ/SJNK1VVm0=
Received: from fainelli-desktop.igp.broadcom.net (fainelli-desktop.dhcp.broadcom.net [10.67.48.245])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail-lvn-it-01.lvn.broadcom.net (Postfix) with ESMTPSA id E811018041CAC4;
	Thu,  4 Apr 2024 09:47:09 -0700 (PDT)
From: Florian Fainelli <florian.fainelli@broadcom.com>
To: bcm-kernel-feedback-list@broadcom.com,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	devicetree@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Cc: Florian Fainelli <f.fainelli@gmail.com>,
	Dave Stevenson <dave.stevenson@raspberrypi.com>,
	Naushir Patuck <naush@raspberrypi.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Nicolas Saenz Julienne <nsaenz@kernel.org>,
	Ray Jui <rjui@broadcom.com>,
	Rob Herring <robh@kernel.org>,
	Scott Branden <sbranden@broadcom.com>,
	Stefan Wahren <wahrenst@gmx.net>
Subject: Re: [PATCH v2 3/3] ARM: dts: bcm283x: Drop unneeded properties in the bcm2835-firmware node
Date: Thu,  4 Apr 2024 09:47:11 -0700
Message-Id: <20240404164711.2598452-1-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240326195807.15163-4-laurent.pinchart@ideasonboard.com>
References: <20240326195807.15163-1-laurent.pinchart@ideasonboard.com> <20240326195807.15163-4-laurent.pinchart@ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Florian Fainelli <f.fainelli@gmail.com>

On Tue, 26 Mar 2024 21:58:07 +0200, Laurent Pinchart <laurent.pinchart@ideasonboard.com> wrote:
> The firmware node contains a "dma-ranges" property to enable usage of
> the DMA mapping API with its child devices, along with "#address-cells"
> and "#size-cells" properties to support the dma-ranges. This was needed
> due to usage of the incorrect device to perform the DMA mapping in
> drivers. Now that this has been fixed, drop the properties.
> 
> This effectively reverts commits be08d278eb09 ("ARM: dts: bcm283x: Add
> cells encoding format to firmware bus") and 55c7c0621078 ("ARM: dts:
> bcm283x: Fix vc4's firmware bus DMA limitations").
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian

