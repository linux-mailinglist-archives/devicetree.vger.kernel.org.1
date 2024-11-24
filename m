Return-Path: <devicetree+bounces-124050-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D074D9D77D8
	for <lists+devicetree@lfdr.de>; Sun, 24 Nov 2024 20:19:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D0C9FB2E5EC
	for <lists+devicetree@lfdr.de>; Sun, 24 Nov 2024 17:54:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C96683A18;
	Sun, 24 Nov 2024 17:54:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="BUV8paDJ"
X-Original-To: devicetree@vger.kernel.org
Received: from relay.smtp-ext.broadcom.com (relay.smtp-ext.broadcom.com [192.19.144.205])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F6137DA88
	for <devicetree@vger.kernel.org>; Sun, 24 Nov 2024 17:54:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.19.144.205
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732470855; cv=none; b=dej7ZQ0hVUO/6J7DqlM/i3wYWWeWgeLWUzI6B9dt2yxWDet2JDpZOtQCck69HfkHZOgzmr2hr0dpiKQ0ciyYcjBbeASQeRPT4isFPTlbDjV9xvEd8B/P518KkL9wrl0ETW9KsguzDqWvHFJH1xW45JUt3wfEKYjiP0o7pNcp7Cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732470855; c=relaxed/simple;
	bh=ino1WMp/dwQysmdiaPxLONb9yiJc81nXOh2qb66U+Wc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=hK1kSG5lj5J0kCkgvWsEwWfUTfQqaSQ66XF3fdMaL90uDrvGNuEkq/9zJch4wTjnkVA2pPSB+nsEuQK8Jc7acSyo4IkRNEZ0DWJMZYb21J0+WkA68eeBsDXWWczpJKQy1B55laCbU5D6xammr95OuGyrZTT8Ltor8vrUIZ6geoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=BUV8paDJ; arc=none smtp.client-ip=192.19.144.205
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: from mail-lvn-it-01.lvn.broadcom.net (mail-lvn-it-01.lvn.broadcom.net [10.36.132.253])
	by relay.smtp-ext.broadcom.com (Postfix) with ESMTP id BAC1AC000C64;
	Sun, 24 Nov 2024 09:54:12 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 relay.smtp-ext.broadcom.com BAC1AC000C64
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
	s=dkimrelay; t=1732470852;
	bh=ino1WMp/dwQysmdiaPxLONb9yiJc81nXOh2qb66U+Wc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=BUV8paDJsBXWe4DdHRpXy9oFQ8v6qywUK622y/qd2+5m3cYiiy0qKpP5TIavBQUyR
	 +gf27ytpzTrQoavYhjC+4pSnXObBCGMoj9d/SKA4KMP8ODcckgLyi9Uj7k5+pTciXV
	 oKhQuBrBelgVS0I9lfBZLbSoSC7jznEWrAxeqXP8=
Received: from fainelli-desktop.igp.broadcom.net (fainelli-desktop.dhcp.broadcom.net [10.67.48.245])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail-lvn-it-01.lvn.broadcom.net (Postfix) with ESMTPSA id 53F9D18041CAC6;
	Sun, 24 Nov 2024 09:54:12 -0800 (PST)
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
Subject: Re: [PATCH v3 7/9] dt-bindings: vendor-prefixes: Add Genexis
Date: Sun, 24 Nov 2024 09:54:12 -0800
Message-ID: <20241124175412.717946-1-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241019-genexis-xg6846b-base-v3-7-8375a0e1f89f@linaro.org>
References: <20241019-genexis-xg6846b-base-v3-0-8375a0e1f89f@linaro.org> <20241019-genexis-xg6846b-base-v3-7-8375a0e1f89f@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Florian Fainelli <f.fainelli@gmail.com>

On Sat, 19 Oct 2024 22:39:36 +0200, Linus Walleij <linus.walleij@linaro.org> wrote:
> Genexis is Swedish/Dutch company producing broadband access
> equipment.
> 
> Link: https://genexis.eu/
> Acked-by: Rob Herring (Arm) <robh@kernel.org>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian

