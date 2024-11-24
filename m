Return-Path: <devicetree+bounces-124045-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 64E7B9D76E9
	for <lists+devicetree@lfdr.de>; Sun, 24 Nov 2024 18:53:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 007F01626FC
	for <lists+devicetree@lfdr.de>; Sun, 24 Nov 2024 17:53:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01F0677F11;
	Sun, 24 Nov 2024 17:53:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="MtfJ1aP1"
X-Original-To: devicetree@vger.kernel.org
Received: from relay.smtp-ext.broadcom.com (relay.smtp-ext.broadcom.com [192.19.144.205])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8208229A9
	for <devicetree@vger.kernel.org>; Sun, 24 Nov 2024 17:53:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.19.144.205
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732470796; cv=none; b=D3xJ1xSRVKDbUyPaTzYOEmenvkK5p2inDePP7Ziep3vBioFE+I+Kq9KgVTSN+cTbeyPzzmAPkGnlF/+i+SwyJdqpcn7vLihY3dzbJK5ZWS0lFd4dxI92GwPs3jUrTtdqT8q9QbWLFtM74dKuAkXuRKJF69sso6sU7uztq9BPpeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732470796; c=relaxed/simple;
	bh=CjUEiOEgo0/5UmQ1LrntixY7y5S5TqQ7OyWWeDdh65g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=M+SW2wsn639cyDoP17WLv5UVYs1IeEIww/xhn/NrKQciI9hZc0M0zXm3BOc/ilCpH/2LwXK1Tq40ui+FBLbWc11UPqRvR3pc6SO6TN4RGv04BRianbfGuvN9E8315SSAEAWr15ojsIVE21kAj0cDvOE4YbCzs9p2GNvt/s1DQlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=MtfJ1aP1; arc=none smtp.client-ip=192.19.144.205
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: from mail-lvn-it-01.lvn.broadcom.net (mail-lvn-it-01.lvn.broadcom.net [10.36.132.253])
	by relay.smtp-ext.broadcom.com (Postfix) with ESMTP id 8E648C0000FF;
	Sun, 24 Nov 2024 09:53:14 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 relay.smtp-ext.broadcom.com 8E648C0000FF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
	s=dkimrelay; t=1732470794;
	bh=CjUEiOEgo0/5UmQ1LrntixY7y5S5TqQ7OyWWeDdh65g=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=MtfJ1aP1TWoXyGX13fk0D4zDWT6012ivrO14N2vKUvgAB+RUpnmetfbAXcfxdHd0q
	 Ppew/pZLCeeBO/TISWpvoxkAY4o5kGaPSv59pqFW4HiV9Ph4Tczj1EtMjJe5hoELuQ
	 r1bCDwRbEAT4Gx6JOPRFng1riprLSnSDJANTwOBM=
Received: from fainelli-desktop.igp.broadcom.net (fainelli-desktop.dhcp.broadcom.net [10.67.48.245])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail-lvn-it-01.lvn.broadcom.net (Postfix) with ESMTPSA id 1E94E18041CAC6;
	Sun, 24 Nov 2024 09:53:14 -0800 (PST)
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
Subject: Re: [PATCH v3 1/9] ARM: dts: bcm6846: Add iproc rng
Date: Sun, 24 Nov 2024 09:53:13 -0800
Message-ID: <20241124175313.717344-1-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241019-genexis-xg6846b-base-v3-1-8375a0e1f89f@linaro.org>
References: <20241019-genexis-xg6846b-base-v3-0-8375a0e1f89f@linaro.org> <20241019-genexis-xg6846b-base-v3-1-8375a0e1f89f@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Florian Fainelli <f.fainelli@gmail.com>

On Sat, 19 Oct 2024 22:39:30 +0200, Linus Walleij <linus.walleij@linaro.org> wrote:
> The bcm6846 has a standard iproc 200 RNG which is already
> fully supported by bindings, so just add it to the DTS file.
> 
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian

