Return-Path: <devicetree+bounces-124048-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id CB7A89D7785
	for <lists+devicetree@lfdr.de>; Sun, 24 Nov 2024 19:55:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id ADDFCB340B7
	for <lists+devicetree@lfdr.de>; Sun, 24 Nov 2024 17:54:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58C6D7FBA2;
	Sun, 24 Nov 2024 17:54:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="TiTz5PmI"
X-Original-To: devicetree@vger.kernel.org
Received: from relay.smtp-ext.broadcom.com (saphodev.broadcom.com [192.19.144.205])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA1C284039
	for <devicetree@vger.kernel.org>; Sun, 24 Nov 2024 17:54:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.19.144.205
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732470844; cv=none; b=Tmv4pVJuW1/ZA/J1q9UmibEaMdS9nFpcPHltva9rtEaTLxLnLBGTRGiiwBGGbNb0HAptqZ9TU07PilfmIwFa+IoBZmpyIw7F7gnvKmYNqHKXZCwGcsfM5pOy4bZ27wb9bFg6Jat+6jRrXGoQf3fWDSA4WLCmZWRTQxSF9JcwiC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732470844; c=relaxed/simple;
	bh=UfhlHQ/5YiYoeUw9tccCgs/MYVjEPuE4UmD9gOSyjec=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Dbv7aG7zzCKOt536MhVLgWTd8tJKEMUyuw2kALgEi5PPkhb056Z6dAqiFFLpw1lbdhcptnv3K9212GEizR1FcOYnnjcONoMgiv3vP2Qax7RHztC4EwIXqqErv65PcXHDInhbHMY/P5Ei2FOgTdKrKE7cD8fCs2pIfqaqXs2D4bU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=TiTz5PmI; arc=none smtp.client-ip=192.19.144.205
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: from mail-lvn-it-01.lvn.broadcom.net (mail-lvn-it-01.lvn.broadcom.net [10.36.132.253])
	by relay.smtp-ext.broadcom.com (Postfix) with ESMTP id E6C8BC0005D7;
	Sun, 24 Nov 2024 09:54:01 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 relay.smtp-ext.broadcom.com E6C8BC0005D7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
	s=dkimrelay; t=1732470842;
	bh=UfhlHQ/5YiYoeUw9tccCgs/MYVjEPuE4UmD9gOSyjec=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=TiTz5PmIy1gChaokCXcMQgtIzJpyZ0U9qdY/p+ceMlbdI5I8gDg48cA3p3hAOmNB+
	 5V7N2DGYm60FGugBm6FRR+RZtnv4hFXAzH5/gtDp1bOOTTKziyYYR0s/2KaRYWslr3
	 pw8CpMM/vzAItX5urBSDWPBeR/RRo0OSsyD494cA=
Received: from fainelli-desktop.igp.broadcom.net (fainelli-desktop.dhcp.broadcom.net [10.67.48.245])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail-lvn-it-01.lvn.broadcom.net (Postfix) with ESMTPSA id 82C2218041CAC6;
	Sun, 24 Nov 2024 09:54:01 -0800 (PST)
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
Subject: Re: [PATCH v3 5/9] ARM: dts: bcm6846: Add LED controller
Date: Sun, 24 Nov 2024 09:54:01 -0800
Message-ID: <20241124175401.717745-1-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241019-genexis-xg6846b-base-v3-5-8375a0e1f89f@linaro.org>
References: <20241019-genexis-xg6846b-base-v3-0-8375a0e1f89f@linaro.org> <20241019-genexis-xg6846b-base-v3-5-8375a0e1f89f@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Florian Fainelli <f.fainelli@gmail.com>

On Sat, 19 Oct 2024 22:39:34 +0200, Linus Walleij <linus.walleij@linaro.org> wrote:
> Add the BCMBCA LED controller to the BCM6846 DTSI.
> 
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian

