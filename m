Return-Path: <devicetree+bounces-221628-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 74A3ABA172C
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 23:00:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4AB24627C22
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 21:00:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CC87272E45;
	Thu, 25 Sep 2025 21:00:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="Sz8ejj9P"
X-Original-To: devicetree@vger.kernel.org
Received: from relay.smtp-ext.broadcom.com (relay.smtp-ext.broadcom.com [192.19.166.231])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9507826A0DD
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 21:00:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.19.166.231
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758834028; cv=none; b=pOJfbj0lnWIcD3G8QZZy8weBz0KoPCsT3u5Qo7Yvy3Y1K+/8ezxa/vDSw+lezIzXoLDv2t0ajVz91jVTUjIc/ozPv13uZpWEyDphzkYSoy5AdT3rcIdaB8YhEC46sXxyp5apt96od9gdZRioQvEUG2APfgaaotPIQSRYnPtLcIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758834028; c=relaxed/simple;
	bh=emhJbpw7KeIbphJtE7IGAQyXN9ZnMgLLd3yCyh/4Yd8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=XZ3SBrYlvGeyrI6ZRFCfIcerez9LnQL2kOEGIGLeKwzJPJ8Hbc6RtIpiOZkIna7q71f/Te8P1jfQH+Hj2KMw99/nI20jS2B5/Lrld1Uw5ItU38dsU0xzNVGhVjzr17+CvGMzDr7WqKmgTFQpsdWZeR8ek9VxFWXKG2wsnkpwFLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=Sz8ejj9P; arc=none smtp.client-ip=192.19.166.231
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: from mail-lvn-it-01.broadcom.com (mail-lvn-it-01.lvn.broadcom.net [10.36.132.253])
	by relay.smtp-ext.broadcom.com (Postfix) with ESMTP id 3E531C0004BF;
	Thu, 25 Sep 2025 14:00:20 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 relay.smtp-ext.broadcom.com 3E531C0004BF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
	s=dkimrelay; t=1758834020;
	bh=emhJbpw7KeIbphJtE7IGAQyXN9ZnMgLLd3yCyh/4Yd8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Sz8ejj9PqzABzxMxEt9n0FqilIfQcWyms64jAD0i9GB2l+er3aaV9ngGAIlxrWrQR
	 vhIgrA8ZeLUGnbKwV7o0B5hrTnSisLTkor+VfBm2cck4SHMCMhDPAFb0TMOfgFNsBX
	 jW5WB+KVjfUmEatesm6c0Gza4v6L95rDskOQPWps=
Received: from fainelli-desktop.igp.broadcom.net (fainelli-desktop.dhcp.broadcom.net [10.67.48.245])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail-lvn-it-01.broadcom.com (Postfix) with ESMTPSA id 04EE318000530;
	Thu, 25 Sep 2025 14:00:19 -0700 (PDT)
From: Florian Fainelli <florian.fainelli@broadcom.com>
To: bcm-kernel-feedback-list@broadcom.com,
	Peter Robinson <pbrobinson@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Dave Stevenson <dave.stevenson@raspberrypi.com>,
	Stefan Wahren <wahrenst@gmx.net>,
	Phil Elwell <phil@raspberrypi.com>,
	Andrea della Porta <andrea.porta@suse.com>,
	devicetree@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Cc: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH] arm64: dts: broadcom: bcm2712: Define VGIC interrupt
Date: Thu, 25 Sep 2025 14:00:19 -0700
Message-ID: <20250925210019.1381542-1-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250924085612.1039247-1-pbrobinson@gmail.com>
References: <20250924085612.1039247-1-pbrobinson@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Florian Fainelli <f.fainelli@gmail.com>

On Wed, 24 Sep 2025 09:56:05 +0100, Peter Robinson <pbrobinson@gmail.com> wrote:
> Define the interrupt in the GICv2 for vGIC so KVM
> can be used, it was missed from the original upstream
> DTB for some reason.
> 
> Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
> Cc: Andrea della Porta <andrea.porta@suse.com>
> Cc: Phil Elwell <phil@raspberrypi.com>
> Fixes: faa3381267d0 ("arm64: dts: broadcom: Add minimal support for Raspberry Pi 5")
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree-arm64/fixes, thanks!
--
Florian

