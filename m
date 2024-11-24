Return-Path: <devicetree+bounces-124049-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CCF6F9D76EF
	for <lists+devicetree@lfdr.de>; Sun, 24 Nov 2024 18:54:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 91E8B28364B
	for <lists+devicetree@lfdr.de>; Sun, 24 Nov 2024 17:54:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 191A67DA88;
	Sun, 24 Nov 2024 17:54:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="McDZUvyo"
X-Original-To: devicetree@vger.kernel.org
Received: from relay.smtp-ext.broadcom.com (saphodev.broadcom.com [192.19.144.205])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E5C584D02
	for <devicetree@vger.kernel.org>; Sun, 24 Nov 2024 17:54:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.19.144.205
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732470849; cv=none; b=dAjz1ccNmPxvnbqkcJzr3dzU4lGl9/ZaSJTez/qXjS46brN3QNfIDuPdKJZ9Q94e6c+0pq4mCXFIQr/dXU+LxislXAp06emyHOTHKqXs0nv6SiAKTKPL5E3O6S44ZbfRWd9Ah0DYt4OI3QH6MCng20COLBzLzoc0A2U8OMWCtgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732470849; c=relaxed/simple;
	bh=X3TAQyiL/eicazUT8ggxY6BOlIan+Z7dJQjY8dzqTI0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DbpPYGpouUyqXNyGNsF7r3ZaRnw+ohGXyVnSVslXdKnzKucfoqUkUsLg1ISLo5SNEC16aY5IiqglWKG2XtKSnMCcpCxtCsRhgmDWzUxSCjwwpI/5jWo3u24+aT1l3NvrrLR8tVNz5HqKjIqajS3DVZyGPGK9h7ikH5QJ03cXb64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=McDZUvyo; arc=none smtp.client-ip=192.19.144.205
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: from mail-lvn-it-01.lvn.broadcom.net (mail-lvn-it-01.lvn.broadcom.net [10.36.132.253])
	by relay.smtp-ext.broadcom.com (Postfix) with ESMTP id AC1ECC000C63;
	Sun, 24 Nov 2024 09:54:06 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 relay.smtp-ext.broadcom.com AC1ECC000C63
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
	s=dkimrelay; t=1732470846;
	bh=X3TAQyiL/eicazUT8ggxY6BOlIan+Z7dJQjY8dzqTI0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=McDZUvyoovTi7Fi+K+IzQ3gS3evcFRM/9Cnq00TmMVeiXFvXie2V1ogTovy+1mjCM
	 M70gU/JzcAEGMWt69kwpvxAbwJm5SimZiGCc2BwV7LwQlbVet695P7QgDgVi1mOPZJ
	 Z/QOq5RV/oT/Qj/8wTK0R56V8RN8SarJwnoZtRS8=
Received: from fainelli-desktop.igp.broadcom.net (fainelli-desktop.dhcp.broadcom.net [10.67.48.245])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail-lvn-it-01.lvn.broadcom.net (Postfix) with ESMTPSA id 4D20718041CAC6;
	Sun, 24 Nov 2024 09:54:06 -0800 (PST)
From: Florian Fainelli <florian.fainelli@broadcom.com>
To: bcm-kernel-feedback-list@broadcom.com,
	Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	William Zhang <william.zhang@broadcom.com>,
	Anand Gore <anand.gore@broadcom.com>,
	Kursad Oney <kursad.oney@broadcom.com>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	=?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>,
	Benjamin Larsson <benjamin.larsson@genexis.eu>
Cc: Florian Fainelli <f.fainelli@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 6/9] ARM: dts: bcm6846: Add ARM PL081 DMA block
Date: Sun, 24 Nov 2024 09:54:06 -0800
Message-ID: <20241124175406.717862-1-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241019-genexis-xg6846b-base-v3-6-8375a0e1f89f@linaro.org>
References: <20241019-genexis-xg6846b-base-v3-0-8375a0e1f89f@linaro.org> <20241019-genexis-xg6846b-base-v3-6-8375a0e1f89f@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Florian Fainelli <f.fainelli@gmail.com>

On Sat, 19 Oct 2024 22:39:35 +0200, Linus Walleij <linus.walleij@linaro.org> wrote:
> The ARM PL081 DMA controller can be found in the BCM6846
> memory map, and it turns out to work.
> 
> The block may be used as DMA engine for some of the
> peripherals (maybe the EMMC controller found in the same
> group of peripherals?) but it can always be used as a
> memcpy engine, which is a generic "blitter".
> 
> I tested it with the dmatest module, and it copies
> lots of data very fast and fires hundreds of thousands
> of interrupts so it works just fine.
> 
> Add it to the BCM6846 DTSI file.
> 
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian

