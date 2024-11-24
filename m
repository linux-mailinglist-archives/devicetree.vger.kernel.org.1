Return-Path: <devicetree+bounces-124059-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BAEF9D77D2
	for <lists+devicetree@lfdr.de>; Sun, 24 Nov 2024 20:17:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 77124B22BF4
	for <lists+devicetree@lfdr.de>; Sun, 24 Nov 2024 17:59:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2370384039;
	Sun, 24 Nov 2024 17:59:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="okpv1EOQ"
X-Original-To: devicetree@vger.kernel.org
Received: from relay.smtp-ext.broadcom.com (relay.smtp-ext.broadcom.com [192.19.144.208])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D64F77F11
	for <devicetree@vger.kernel.org>; Sun, 24 Nov 2024 17:59:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.19.144.208
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732471191; cv=none; b=QWjjbfnaXVPBPoa7zYDrwYhLrK/IUcOrMACidltT9Acc4xPlTJgHmGq8EOs84gMr90JlOtBfmyVG/egoLohEDdiMjmplToD5K8nSVykwRU6ZQBEdLOtlUTd0JlSaI0dO4/Nb0y5zZnxNAWxBrTtXpadDIALZnBGlT7fAHI8b3QI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732471191; c=relaxed/simple;
	bh=p9mxCjbAVe3XApz3wqbBuJgqQBonMYP05v02ivRaoKE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=NmBGTJtyavFc+Mk1NkmtfA5/eW+uRGaOjQMn7WhJFDqKDVWINnKqlEiHrQd4vmcDbomYSeBaRfP5u2AabYfxVlk9arswGF/1IDWY76euPiihmBYQyrxrqB5nFf11vzbMRvolIqdmL9iYuQSb1mXsAlShTiCqofD11QS6cUDf8QA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=okpv1EOQ; arc=none smtp.client-ip=192.19.144.208
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: from mail-lvn-it-01.lvn.broadcom.net (mail-lvn-it-01.lvn.broadcom.net [10.36.132.253])
	by relay.smtp-ext.broadcom.com (Postfix) with ESMTP id 182F3C0003EC;
	Sun, 24 Nov 2024 09:53:57 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 relay.smtp-ext.broadcom.com 182F3C0003EC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
	s=dkimrelay; t=1732470837;
	bh=p9mxCjbAVe3XApz3wqbBuJgqQBonMYP05v02ivRaoKE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=okpv1EOQksSe0NGRF7v3GxlYHcTMd+zxYlC/qU3qe2ZzvmAaal96fbwVFr9kGU9Ym
	 brd37mlELjQ9ia/VLo6C0DLLhdp2dUwXnocL2/3RQEoUw9XBLTh+eJME/FyvmXpYcd
	 cIUaj/UVjb9RRfzYeN+krvYyLqekKFMFww8ypScI=
Received: from fainelli-desktop.igp.broadcom.net (fainelli-desktop.dhcp.broadcom.net [10.67.48.245])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail-lvn-it-01.lvn.broadcom.net (Postfix) with ESMTPSA id A3A2918041CAC6;
	Sun, 24 Nov 2024 09:53:56 -0800 (PST)
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
Subject: Re: [PATCH v3 4/9] ARM: dts: bcm6846: Add MDIO control block
Date: Sun, 24 Nov 2024 09:53:56 -0800
Message-ID: <20241124175356.717653-1-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241019-genexis-xg6846b-base-v3-4-8375a0e1f89f@linaro.org>
References: <20241019-genexis-xg6846b-base-v3-0-8375a0e1f89f@linaro.org> <20241019-genexis-xg6846b-base-v3-4-8375a0e1f89f@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Florian Fainelli <f.fainelli@gmail.com>

On Sat, 19 Oct 2024 22:39:33 +0200, Linus Walleij <linus.walleij@linaro.org> wrote:
> This adds the MDIO block found in the BCM6846. Use the new
> "brcm,bcm6846-mdio" compatible (merged to the networking tree)
> for this block.
> 
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian

