Return-Path: <devicetree+bounces-93435-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D85E3950DC7
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 22:24:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 834831F23824
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 20:24:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38D001A4F2E;
	Tue, 13 Aug 2024 20:24:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="M55DZ2jN"
X-Original-To: devicetree@vger.kernel.org
Received: from relay.smtp-ext.broadcom.com (relay.smtp-ext.broadcom.com [192.19.144.208])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0A5C187F
	for <devicetree@vger.kernel.org>; Tue, 13 Aug 2024 20:24:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.19.144.208
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723580660; cv=none; b=Dixt3gWw2BbsLjDFOq1FYKlCcrejsBmDszquxDaS8VgoQjn6/MXGQgYCu7TOmiZpZX/Tnov2937rsYrVe52fWmVxp7xyO2N6B2fXrygcNMkOGku5Q1XNvVVodZ5din2lhv8hubKV2mpDom0guvOCYFRHzTPr1VyxVX2/JqzZmJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723580660; c=relaxed/simple;
	bh=nSwcErNEsVnU5YjyuHannz7fV0EfOixu8DACEoHh/Ms=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ZVArnfiWdCeGGVplyX9Q8a/UWMilo1pkUpgu5lkRKOsEW3kDW+3nGbe2PiCqKDRjUW9VmwaQbEWthcouWXXPZNvfGN7qd6l9AheLK3N2pVGfuf5IwIbBAp7nkSZaGAjQu8te5PRH8G3z9Ta/XBXnwL0z8y+1n3OkxqzgLikypuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=M55DZ2jN; arc=none smtp.client-ip=192.19.144.208
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: from mail-lvn-it-01.lvn.broadcom.net (mail-lvn-it-01.lvn.broadcom.net [10.36.132.253])
	by relay.smtp-ext.broadcom.com (Postfix) with ESMTP id DF311C0003CA;
	Tue, 13 Aug 2024 13:24:17 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 relay.smtp-ext.broadcom.com DF311C0003CA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
	s=dkimrelay; t=1723580657;
	bh=nSwcErNEsVnU5YjyuHannz7fV0EfOixu8DACEoHh/Ms=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=M55DZ2jNutXb88qEAboYgJyuXYzDcAhYmmkzzc7UXdhEAd/JS9CJKRTeRDWWT9EeS
	 6iOTfduH9nLFplF6/f1bZy02hLnjG/9u64EUfwiOW2C1gXoJHsk0U6JonSeFS3SrQn
	 abei9//0BxL/Vzqyi60cC0Y/pzjiyYxsYe60p12I=
Received: from fainelli-desktop.igp.broadcom.net (fainelli-desktop.dhcp.broadcom.net [10.67.48.245])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail-lvn-it-01.lvn.broadcom.net (Postfix) with ESMTPSA id 0C1AA18041CAC6;
	Tue, 13 Aug 2024 13:24:15 -0700 (PDT)
From: Florian Fainelli <florian.fainelli@broadcom.com>
To: bcm-kernel-feedback-list@broadcom.com,
	Stefan Wahren <wahrenst@gmx.net>,
	Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Florian Fainelli <f.fainelli@gmail.com>,
	Andrea della Porta <andrea.porta@suse.com>,
	linux-arm-kernel@lists.infradead.org,
	kernel-list@raspberrypi.com,
	devicetree@vger.kernel.org
Subject: Re: [PATCH V3 RESEND 2/4] dt-bindings: interrupt-controller: convert bcm2836-l1-intc to yaml
Date: Tue, 13 Aug 2024 13:24:17 -0700
Message-Id: <20240813202417.3856963-1-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240812200358.4061-3-wahrenst@gmx.net>
References: <20240812200358.4061-1-wahrenst@gmx.net> <20240812200358.4061-3-wahrenst@gmx.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Florian Fainelli <f.fainelli@gmail.com>

On Mon, 12 Aug 2024 22:03:56 +0200, Stefan Wahren <wahrenst@gmx.net> wrote:
> Convert the DT binding document for BCM2836 per-CPU interrupt
> controller from .txt to YAML.
> 
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian

