Return-Path: <devicetree+bounces-226280-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D6F49BD6A4E
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 00:40:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3D34318A52CD
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 22:40:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C6A3307AD3;
	Mon, 13 Oct 2025 22:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="VbfFnw/K"
X-Original-To: devicetree@vger.kernel.org
Received: from relay.smtp-ext.broadcom.com (relay.smtp-ext.broadcom.com [192.19.166.231])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86C9B2FF176
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 22:35:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.19.166.231
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760394933; cv=none; b=ANxwLJQ0CZ811lv9f/ijlMoTpjZuetukWG6jRq+bbuuqcqQKslbqrsOioaXQbhRZOOAhEVqaN8qtwIFMREiSdyamSSAd/KKtRQ+Z5yd/q4GcVi27cdGdqUtmXaAZmEcdY6BfLJCPQ+5Mht2RPHiPIMmHCJpQCbm5GLdKez9ccuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760394933; c=relaxed/simple;
	bh=y8kvHBT5GSm5R27fl479Rj//1SH77XIhCp7ul1dMu5A=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=uQ7wVr89+ZvvVUIZ6tR7EF23slYEzFftY0zIJy9h2aWbi1DL6e+0F0yk6dFEEwfFviHgtSCh5nxBSI0gZX9GNskpGURaDC2vJB70EfkE6TwhqgpG92zSFyYeerttc77rSMN5KquIJyLqKJPXuSz+IXdYZXBDNlxesw3Xe11qifg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=VbfFnw/K; arc=none smtp.client-ip=192.19.166.231
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: from mail-lvn-it-01.broadcom.com (mail-lvn-it-01.lvn.broadcom.net [10.36.132.253])
	by relay.smtp-ext.broadcom.com (Postfix) with ESMTP id AEB8DC0000EE;
	Mon, 13 Oct 2025 15:35:30 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 relay.smtp-ext.broadcom.com AEB8DC0000EE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
	s=dkimrelay; t=1760394930;
	bh=y8kvHBT5GSm5R27fl479Rj//1SH77XIhCp7ul1dMu5A=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=VbfFnw/KGSBEly/Jt8Zdog1d26I3LQo2BUV3++o5yEFOPdxJ9rw1euz7hPbMAh8UM
	 ekVjVpxYNtW+Gc1ySzxjJ3baSmWdoWKR74+BXLMQeUO+xPw/uTbHFLf8S+Msh6CE40
	 lhurU9YxgY1TMIEKP7kOq5WmVVKf3fIHvzQ5GRME=
Received: from fainelli-desktop.igp.broadcom.net (fainelli-desktop.dhcp.broadcom.net [10.67.48.245])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail-lvn-it-01.broadcom.com (Postfix) with ESMTPSA id 7E8361800051E;
	Mon, 13 Oct 2025 15:35:30 -0700 (PDT)
From: Florian Fainelli <florian.fainelli@broadcom.com>
To: bcm-kernel-feedback-list@broadcom.com,
	=?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>,
	Florian Fainelli <florian.fainelli@broadcom.com>
Cc: Florian Fainelli <f.fainelli@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	=?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>
Subject: Re: [PATCH] ARM: dts: BCM53573: Fix address of Luxul XAP-1440's Ethernet PHY
Date: Mon, 13 Oct 2025 15:35:30 -0700
Message-ID: <20251013223530.2518756-1-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251002194852.13929-1-zajec5@gmail.com>
References: <20251002194852.13929-1-zajec5@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Florian Fainelli <f.fainelli@gmail.com>

On Thu,  2 Oct 2025 21:48:52 +0200, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> Luxul XAP-1440 has BCM54210E PHY at address 25.
> 
> Fixes: 44ad82078069 ("ARM: dts: BCM53573: Fix Ethernet info for Luxul devices")
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/fixes, thanks!
--
Florian

