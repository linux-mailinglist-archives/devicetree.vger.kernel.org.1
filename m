Return-Path: <devicetree+bounces-253408-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 913D2D0C1C1
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 20:52:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 481C13014DB0
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 19:52:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA0402ECE98;
	Fri,  9 Jan 2026 19:52:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="ecpse9cz"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1EE9204583
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 19:52:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767988329; cv=none; b=TcppjdOO4ZA9zwnKIG3eEl3X0cAKl6EkLFcmBDsn3uZlZLXyY0yUK2blCG5PzlwevfHHOaB2zf5A6L6pjKwxQiIYWf1qFmq6RUTabnrG9XToXDaU5NmtR4WSnE3GIzW4kwUjdY6dsku2LjNJnDHITjrWJsXV8BJ/aOWV6ah7gs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767988329; c=relaxed/simple;
	bh=+SPrENK+4PWvprXdMZzyC33jAOsXcKtkF26ZEY9TrJY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=YGZh2RXgyiM3CWF6jqkBzEdK4Q6lcdYyWYcUDDBilhckuAu8MaxnL3p2ebJfbii302BUHqSOax+GVBwueb+q4glVsBwSPPn/A5oM0ZVvXbn+xupAkxa0ZZ7fM5rKemgMe7Ul39vdNYp9CUZNxTn8txBnX2rZ/eUJdkgnQ63/AxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=ecpse9cz; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=kVsS978MuYe/97FwEFagAMAlrGhfyNbMmq19/rwIGqQ=; b=ecpse9czyHSYvNKEGhmazsT4sf
	81whKJtPJcNAhbxf2B1+Tqsk2uPZuRW4ZH0BbQLjQiQc7mWwI9PbOPdQ0fTyWber9Hj5t/PzSu9o5
	hEiaWMpgs4tTKXqbimYnf03FGLlEFilPENLHVqbJBh+PPFMl8mYQTroe9sOfiPYC6H+Olx1OB5Kcx
	LBZopAOKI1SjYlXYlWtXOZ4kkp3uXWf9Vmu5xWXMPGhnJ4VgvVJEZQQAv7KP6odoC8sjEeV+v1VQP
	nieX0bsDFU2r+orQG2JnqpD9dRM4gIz+XFUbETEaGm9OH7ArNBndEa8o9oEj3GfbjCGvAksTKSoxF
	mvKBy69g==;
Received: from [192.76.154.238] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1veIWh-001fth-VI; Fri, 09 Jan 2026 20:52:04 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Conor Dooley <conor+dt@kernel.org>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v3 0/2] arm64: dts: rockchip: Add device tree for the Orange Pi CM5 Base board
Date: Fri,  9 Jan 2026 20:51:52 +0100
Message-ID: <176798831384.3446147.5257388297577204372.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251027215637.20715-1-laurent.pinchart@ideasonboard.com>
References: <20251027215637.20715-1-laurent.pinchart@ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Mon, 27 Oct 2025 23:56:34 +0200, Laurent Pinchart wrote:
> This patch series adds a device tree for the Orange Pi CM5 Base board
> from Xunlong. This is a combination of a compute module and a carrier
> board, so the device tree is split in two files.
> 
> The work is based on a combination of upstream device trees for other
> RK3588-based Orange Pi boards and the downstream device tree, all
> checked against the available schematics for the carrier board. The
> compute module schematics is unfortunately not available.
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: arm: rockchip: Add Orange Pi CM5 Base
      commit: 5d719a4703566267492129d13516d87066f288f8
[2/2] arm64: dts: rockchip: Add rk3588s-orangepi-cm5-base device tree
      commit: 3cdaec4d5e8c24ce3298c93bac80c31820b91aff

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

