Return-Path: <devicetree+bounces-124046-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B3EEB9D76EC
	for <lists+devicetree@lfdr.de>; Sun, 24 Nov 2024 18:53:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4F0AE162774
	for <lists+devicetree@lfdr.de>; Sun, 24 Nov 2024 17:53:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF09C7DA6A;
	Sun, 24 Nov 2024 17:53:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="hB27/prD"
X-Original-To: devicetree@vger.kernel.org
Received: from relay.smtp-ext.broadcom.com (relay.smtp-ext.broadcom.com [192.19.144.209])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 625812500C7
	for <devicetree@vger.kernel.org>; Sun, 24 Nov 2024 17:53:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.19.144.209
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732470822; cv=none; b=gFf7vHzjeWvzbwYATRu4vCTozGQBNhxmtOmKRe9hFCaBFPaeyNvzjCZWXmonBu0wSpoZD4jmep10xB1/tQGxqCcNbEJ3Z6VbB5AdSnj43Rn33FwUeaeGNIRdiF2Q9L0Vd+p87rucstMax8GIofjqhTUwZIID+fPbrNMnov4aFaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732470822; c=relaxed/simple;
	bh=NtLLGDy/FwmKZxXQ0kklJcO9KR8K2FQHsQWn7P9eRLA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ekj2fBMLrjKc2KCykAsqI2PYM0T6PyawY7+xtpzBG6G4i5zGJNziINrZBXPNyXze9bJzZAyigpmOmbRB25rfIAQOa/q5l/vwNf/bna/nKL/pMSHddvDSNix6KbNfanVku8h7ezkgC/GukBULP+gMPLmsDxO5KKq7HrkalvcSxfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=hB27/prD; arc=none smtp.client-ip=192.19.144.209
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: from mail-lvn-it-01.lvn.broadcom.net (mail-lvn-it-01.lvn.broadcom.net [10.36.132.253])
	by relay.smtp-ext.broadcom.com (Postfix) with ESMTP id 6FBCCC0005CA;
	Sun, 24 Nov 2024 09:53:40 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 relay.smtp-ext.broadcom.com 6FBCCC0005CA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
	s=dkimrelay; t=1732470820;
	bh=NtLLGDy/FwmKZxXQ0kklJcO9KR8K2FQHsQWn7P9eRLA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=hB27/prDb4hvJO17+Nv0ppTOWYtrsAJ7WyJJmlMa0919TX7SMc6cFFykSyhbPp6Hg
	 A7d9tx9FI9YmpEZ6rZzXRCBcnkvdZnTfHKj29JnWsnXwXneFYY0Eu9aQZbozBX2SE3
	 pKdR8j2pNN2B7ZfdvUxjcKkbPRbInXJFFWQcSMBo=
Received: from fainelli-desktop.igp.broadcom.net (fainelli-desktop.dhcp.broadcom.net [10.67.48.245])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail-lvn-it-01.lvn.broadcom.net (Postfix) with ESMTPSA id 0BFA618041CAC6;
	Sun, 24 Nov 2024 09:53:40 -0800 (PST)
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
Subject: Re: [PATCH v3 2/9] ARM: dts: bcm6846: Enable watchdog
Date: Sun, 24 Nov 2024 09:53:39 -0800
Message-ID: <20241124175339.717478-1-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241019-genexis-xg6846b-base-v3-2-8375a0e1f89f@linaro.org>
References: <20241019-genexis-xg6846b-base-v3-0-8375a0e1f89f@linaro.org> <20241019-genexis-xg6846b-base-v3-2-8375a0e1f89f@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Florian Fainelli <f.fainelli@gmail.com>

On Sat, 19 Oct 2024 22:39:31 +0200, Linus Walleij <linus.walleij@linaro.org> wrote:
> The BCM6846 has a BCM7038-compatible watchdog timer, just
> add it to the device tree.
> 
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian

