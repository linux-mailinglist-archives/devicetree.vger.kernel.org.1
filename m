Return-Path: <devicetree+bounces-124047-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 110439D7760
	for <lists+devicetree@lfdr.de>; Sun, 24 Nov 2024 19:33:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 91B3BB29842
	for <lists+devicetree@lfdr.de>; Sun, 24 Nov 2024 17:54:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D26F47DA88;
	Sun, 24 Nov 2024 17:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="dUXF/ejp"
X-Original-To: devicetree@vger.kernel.org
Received: from relay.smtp-ext.broadcom.com (relay.smtp-ext.broadcom.com [192.19.144.207])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67BFE2500C7
	for <devicetree@vger.kernel.org>; Sun, 24 Nov 2024 17:53:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.19.144.207
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732470833; cv=none; b=C/Xx27TNeLwvMetC//jrety+N/N+vKPmmbECGOoUfQ/C4jy/SK4bgO1gCwO1rJXEYRsXOjcHqtHHA84OjAYVsNsynWwp54t69JOpmBkivseYyMzukmdG5YSPTIdmPWG032cLDTPpJtivr7Hkh9DQHJ31GvIBe/kunJbZEaZWTmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732470833; c=relaxed/simple;
	bh=pO37iYz1GHmNlpK2h9/Rk6Yf6YEcoAXM+LLc0flzDH0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=iMULkGlW0yODFTWm++u2b2SY5rPdJk69t+U3es9Z8CWWGYIfRHsBgYjTOZrJy+nQAWIJoN8NbnzMqQSc/Hy9X+LjXImjchTsLf7JDgBmy5h/0C/knkG8nkhzMjgAeOZ6sugnvKn+mbqNOrZcCXQInXVUdOItBE/zYuweUU4P8ss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=dUXF/ejp; arc=none smtp.client-ip=192.19.144.207
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: from mail-lvn-it-01.lvn.broadcom.net (mail-lvn-it-01.lvn.broadcom.net [10.36.132.253])
	by relay.smtp-ext.broadcom.com (Postfix) with ESMTP id 80920C001500;
	Sun, 24 Nov 2024 09:53:51 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 relay.smtp-ext.broadcom.com 80920C001500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
	s=dkimrelay; t=1732470831;
	bh=pO37iYz1GHmNlpK2h9/Rk6Yf6YEcoAXM+LLc0flzDH0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=dUXF/ejpboIuqs01VIuFnERnEQ5wR1ToHIXHRQ3TeZP6oSKI7oC3SJCQEQRa+f3zQ
	 /Yr0lhjYoM6oq+cRpWYgFjqDelawTfobyqLeMrvTLwGo5p76HqTaAAQhLYlbGle7dd
	 jN1RWHc/19NNvzkbp+IiSsfHdC61sOyIAZcqOy5U=
Received: from fainelli-desktop.igp.broadcom.net (fainelli-desktop.dhcp.broadcom.net [10.67.48.245])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail-lvn-it-01.lvn.broadcom.net (Postfix) with ESMTPSA id 1A4CD18041CAC6;
	Sun, 24 Nov 2024 09:53:51 -0800 (PST)
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
Subject: Re: [PATCH v3 3/9] ARM: dts: bcm6846: Add GPIO blocks
Date: Sun, 24 Nov 2024 09:53:50 -0800
Message-ID: <20241124175350.717568-1-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241019-genexis-xg6846b-base-v3-3-8375a0e1f89f@linaro.org>
References: <20241019-genexis-xg6846b-base-v3-0-8375a0e1f89f@linaro.org> <20241019-genexis-xg6846b-base-v3-3-8375a0e1f89f@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Florian Fainelli <f.fainelli@gmail.com>

On Sat, 19 Oct 2024 22:39:32 +0200, Linus Walleij <linus.walleij@linaro.org> wrote:
> The BCM6846 has the same simplistic GPIOs as some other
> Broadcom SoCs: plain memory-mapped registers with up to
> 8 blocks of 32 GPIOs each totalling 256 GPIOs.
> 
> Users of the SoC can selectively enable the GPIO blocks
> actually used with a certain design.
> 
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian

