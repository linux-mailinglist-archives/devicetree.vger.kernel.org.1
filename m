Return-Path: <devicetree+bounces-144857-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D04DEA2F7FE
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 19:55:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 422181885F65
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 18:55:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D9ED25E461;
	Mon, 10 Feb 2025 18:55:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="Os0gwdMA"
X-Original-To: devicetree@vger.kernel.org
Received: from relay.smtp-ext.broadcom.com (relay.smtp-ext.broadcom.com [192.19.166.228])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B18CA25E454
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 18:55:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.19.166.228
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739213731; cv=none; b=OpK/XJro/WndZfazisPctpDwOOo48jmdVjOSp8NgYEwtPaA35xglhxvk2d6Y9csA8TKnKrPmxJndbu1rV9CExpBD+G53hk/aFxdOgKVTkOTFmZWNwFwLApZsferSL37MLQogaRF7qnoR+bI0rCsCBNlvmahcRATa4q0lssSj9cQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739213731; c=relaxed/simple;
	bh=Rjaduz+wTU0xDZ1yzr853VAo/AdOAlZwOabGtbt7I6U=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=nt/3fYF42Jd3rP6SWrwn7kMZ4qd+l0WM48xh1FSKtj+mLXSmx+35u2DxL94SFJW8apyzRIXP2PuydClgwViJddolDJJwNb2g6bSyqjmXDuS0ZSDNQXKk+y2q46TaeMTQpWCFo6tdFUsOPx1EewVl25urskQeUR9Qmn5jnMbBtuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=Os0gwdMA; arc=none smtp.client-ip=192.19.166.228
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: from mail-lvn-it-01.lvn.broadcom.net (mail-lvn-it-01.lvn.broadcom.net [10.36.132.253])
	by relay.smtp-ext.broadcom.com (Postfix) with ESMTP id AF3ADC000921;
	Mon, 10 Feb 2025 10:47:10 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 relay.smtp-ext.broadcom.com AF3ADC000921
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
	s=dkimrelay; t=1739213230;
	bh=Rjaduz+wTU0xDZ1yzr853VAo/AdOAlZwOabGtbt7I6U=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Os0gwdMAhxp6wgPZO7j/72GqbIhznB/z4JCiDkym3l7hq6l2nkbUDYL9NH+uWEAK5
	 ODms3k55/7y8EU9ofLjgyrXCqc5a4wOnQ8ZUg2kLCJLv+QLdQe3e4oTYNLVFOETHOB
	 8tixKn8gMnUxZD+VyF8IRUEGog4c4+f1VqpORtT4=
Received: from fainelli-desktop.igp.broadcom.net (fainelli-desktop.dhcp.broadcom.net [10.67.48.245])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail-lvn-it-01.lvn.broadcom.net (Postfix) with ESMTPSA id 80DE318041CAC6;
	Mon, 10 Feb 2025 10:47:10 -0800 (PST)
From: Florian Fainelli <florian.fainelli@broadcom.com>
To: bcm-kernel-feedback-list@broadcom.com,
	Stefan Wahren <wahrenst@gmx.net>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>
Cc: Florian Fainelli <f.fainelli@gmail.com>,
	Peter Robinson <pbrobinson@gmail.com>,
	"Ivan T . Ivanov" <iivanov@suse.de>,
	linux-arm-kernel@lists.infradead.org,
	kernel-list@raspberrypi.com,
	devicetree@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: bcm2711: Fix xHCI power-domain
Date: Mon, 10 Feb 2025 10:47:10 -0800
Message-ID: <20250210184710.1127354-1-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250201112729.31509-1-wahrenst@gmx.net>
References: <20250201112729.31509-1-wahrenst@gmx.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Florian Fainelli <f.fainelli@gmail.com>

On Sat,  1 Feb 2025 12:27:29 +0100, Stefan Wahren <wahrenst@gmx.net> wrote:
> During s2idle tests on the Raspberry CM4 the VPU firmware always crashes
> on xHCI power-domain resume:
> 
> root@raspberrypi:/sys/power# echo freeze > state
> [   70.724347] xhci_suspend finished
> [   70.727730] xhci_plat_suspend finished
> [   70.755624] bcm2835-power bcm2835-power: Power grafx off
> [   70.761127]  USB: Set power to 0
> 
> [   74.653040]  USB: Failed to set power to 1 (-110)
> 
> This seems to be caused because of the mixed usage of
> raspberrypi-power and bcm2835-power at the same time. So avoid
> the usage of the VPU firmware power-domain driver, which
> prevents the VPU crash.
> 
> Fixes: 522c35e08b53 ("ARM: dts: bcm2711: Add BCM2711 xHCI support")
> Link: https://github.com/raspberrypi/linux/issues/6537
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/fixes, thanks!
--
Florian

