Return-Path: <devicetree+bounces-151192-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E5C91A44B65
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 20:35:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E12353B5DFE
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 19:32:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFC562063EB;
	Tue, 25 Feb 2025 19:32:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="p0q8lfYo"
X-Original-To: devicetree@vger.kernel.org
Received: from relay.smtp-ext.broadcom.com (relay.smtp-ext.broadcom.com [192.19.144.207])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C3E31FDA65
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 19:32:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.19.144.207
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740511968; cv=none; b=QJhH3bUDJnxlIh87vgTpuWiOBrXya2Ek6U0tYEvQuWFs+B6bomTNsrVyBq2cW94fr84b8KKba31DgPxwefn5fW7MlW9Zg73v5Y1WRA4ZRD0dkPU5IMKsddJdkS0zFj/5UN8ntOnhwI10UpuKlYe1DrhftQr+4nz3jT/d3IraW20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740511968; c=relaxed/simple;
	bh=QtAyPcdiSJRcX7NtFmWJH/7Z5/biXfeefZtF+Au/+ng=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Cnr0rVRJqMALw4D8OrQdudlzGtYLHjPNOgGKbD08MkQ0JUasoQIc9E2F9B0Qlcj0371vH7GjDhDEe3Q4cPBogRTywDumnc6u6CRXbTieN/tkEilKYcVYymnSWVao3/ilb+PI7DZ7Syj1evQnciTpruoduAtYvUWeq3hH6wirDqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=p0q8lfYo; arc=none smtp.client-ip=192.19.144.207
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: from mail-lvn-it-01.lvn.broadcom.net (mail-lvn-it-01.lvn.broadcom.net [10.36.132.253])
	by relay.smtp-ext.broadcom.com (Postfix) with ESMTP id F3CE2C00150E;
	Tue, 25 Feb 2025 11:23:41 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 relay.smtp-ext.broadcom.com F3CE2C00150E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
	s=dkimrelay; t=1740511422;
	bh=QtAyPcdiSJRcX7NtFmWJH/7Z5/biXfeefZtF+Au/+ng=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=p0q8lfYoWK+/2g1RWW++1ovyWYMHA/PNfwBNSNZSr/k8BjUkW2sh6TEh5qGdjWeq3
	 IHz/0a60TUIGMrstxxk0Xw/+cHTDVCdo8F5+RMsIENNPUk3F5aRWO7WioK2dq+mzPJ
	 M/HdZY1hL96qw/qJyH88WNH4b+RejJdClHeb97dA=
Received: from fainelli-desktop.igp.broadcom.net (fainelli-desktop.dhcp.broadcom.net [10.67.48.245])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail-lvn-it-01.lvn.broadcom.net (Postfix) with ESMTPSA id 8634218041CCB8;
	Tue, 25 Feb 2025 11:23:41 -0800 (PST)
From: Florian Fainelli <florian.fainelli@broadcom.com>
To: bcm-kernel-feedback-list@broadcom.com,
	Stefan Wahren <wahrenst@gmx.net>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>
Cc: Florian Fainelli <f.fainelli@gmail.com>,
	Phil Elwell <phil@raspberrypi.com>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Andrea della Porta <andrea.porta@suse.com>
Subject: Re: [PATCH 2/2] arm64: dts: bcm2712: PL011 UARTs are actually r1p5
Date: Tue, 25 Feb 2025 11:23:41 -0800
Message-ID: <20250225192341.1060725-1-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250223125614.3592-3-wahrenst@gmx.net>
References: <20250223125614.3592-1-wahrenst@gmx.net> <20250223125614.3592-3-wahrenst@gmx.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Florian Fainelli <f.fainelli@gmail.com>

On Sun, 23 Feb 2025 13:56:14 +0100, Stefan Wahren <wahrenst@gmx.net> wrote:
> From: Phil Elwell <phil@raspberrypi.com>
> 
> The ARM PL011 UART instances in BCM2712 are r1p5 spec, which means they
> have 32-entry FIFOs. The correct periphid value for this is 0x00341011.
> Thanks to N Buchwitz for pointing this out.
> 
> Signed-off-by: Phil Elwell <phil@raspberrypi.com>
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree-arm64/fixes, thanks!
--
Florian

