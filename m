Return-Path: <devicetree+bounces-124051-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B1C19D77CE
	for <lists+devicetree@lfdr.de>; Sun, 24 Nov 2024 20:15:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8E04BB238F3
	for <lists+devicetree@lfdr.de>; Sun, 24 Nov 2024 17:54:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 647D084D02;
	Sun, 24 Nov 2024 17:54:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="d77V23F/"
X-Original-To: devicetree@vger.kernel.org
Received: from relay.smtp-ext.broadcom.com (relay.smtp-ext.broadcom.com [192.19.144.205])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0F287DA88
	for <devicetree@vger.kernel.org>; Sun, 24 Nov 2024 17:54:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.19.144.205
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732470859; cv=none; b=BsLwLHNN6NtTonvBNu2HsUR/pZmb8Reympc33MPbZ/auYJtiqcy+11FVbVBK6FRCGfNmt81IAIFNLpytDXfrRHcH3z/TmPITDQqcN/Mgz78cxGAfLDd1ahgZktS5ZEtI9Pl3xpnlJr4n358g0lW6nS8updd0GWsT2EKtRh0jcw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732470859; c=relaxed/simple;
	bh=5b7NO1tmNxIMFrVVJADWSrMdcchaa4WkDVHWFBaMIKU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=tNkkD3T1IOiv+2GIB+uRg6aScW9TrBMNq5J+5bd0ewAH82B2Aq9sjlu+aXBW6w4U4rm5eetoT1ubUip6jY2kyIXQrX6jZz7gMJlrPHxGxvbKQKEhEAocfGWuQTjR1M+Czr0F21AubXELd/AT/K9FL+Z1EXSeuN5Y2uGnkEyfUmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=d77V23F/; arc=none smtp.client-ip=192.19.144.205
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: from mail-lvn-it-01.lvn.broadcom.net (mail-lvn-it-01.lvn.broadcom.net [10.36.132.253])
	by relay.smtp-ext.broadcom.com (Postfix) with ESMTP id 35816C000C63;
	Sun, 24 Nov 2024 09:54:17 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 relay.smtp-ext.broadcom.com 35816C000C63
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
	s=dkimrelay; t=1732470857;
	bh=5b7NO1tmNxIMFrVVJADWSrMdcchaa4WkDVHWFBaMIKU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=d77V23F/05gveNsFvENiNjODtz7lZ/9qG7gJ2MXXygAphkw6pPSFr0Umz9nXqJHXJ
	 glzslWI3/Mf4zQdmPfOaUjaxrdBEbp+bzjQaGXctVQhBKTzLWzO3FFMPA1r2dqbgvh
	 k5Gk7uZHAdd1+wefeXjtJZf6M0BcVGaKsK0erJvQ=
Received: from fainelli-desktop.igp.broadcom.net (fainelli-desktop.dhcp.broadcom.net [10.67.48.245])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail-lvn-it-01.lvn.broadcom.net (Postfix) with ESMTPSA id C271418041CAC6;
	Sun, 24 Nov 2024 09:54:16 -0800 (PST)
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
Subject: Re: [PATCH v3 8/9] dt-bindings: arm: bcmbca: Add Genexis XG6846B
Date: Sun, 24 Nov 2024 09:54:16 -0800
Message-ID: <20241124175416.718030-1-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241019-genexis-xg6846b-base-v3-8-8375a0e1f89f@linaro.org>
References: <20241019-genexis-xg6846b-base-v3-0-8375a0e1f89f@linaro.org> <20241019-genexis-xg6846b-base-v3-8-8375a0e1f89f@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Florian Fainelli <f.fainelli@gmail.com>

On Sat, 19 Oct 2024 22:39:37 +0200, Linus Walleij <linus.walleij@linaro.org> wrote:
> This adds the device tree bindings for the Genexis XG6846B
> router/gateway/broadband modem.
> 
> Acked-by: Rob Herring (Arm) <robh@kernel.org>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian

