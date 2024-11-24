Return-Path: <devicetree+bounces-124052-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 216599D77AF
	for <lists+devicetree@lfdr.de>; Sun, 24 Nov 2024 20:08:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5834EB2E751
	for <lists+devicetree@lfdr.de>; Sun, 24 Nov 2024 17:54:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B41984039;
	Sun, 24 Nov 2024 17:54:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="rFiGsHub"
X-Original-To: devicetree@vger.kernel.org
Received: from relay.smtp-ext.broadcom.com (saphodev.broadcom.com [192.19.144.205])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28C8F7DA88
	for <devicetree@vger.kernel.org>; Sun, 24 Nov 2024 17:54:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.19.144.205
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732470862; cv=none; b=XfRT6vKK9YmP/DXhR5bsfXWC8xS8uYXeecU7aTv628Z14kU6WYQ+MrhvelvUTyV/rZ8yly/acJbhpiyeMWDQ0NfDVhokbVk91gezRPJDy+sW94Q7Smkq1++BRxVcUqtsPpI5A+tyjOpM6NHTn8PLkKvwF6dzQeaWKPtV9jxe8CI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732470862; c=relaxed/simple;
	bh=5B8SJwl+2MC5e0e+vdAMMkgrqinRJsXASoWZ93ePqgI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=nnfjOZBF5Rqnnfo+Mt1t6zqOIrfEmthn825HS4wEmvFvPAZ55WEjxwMHho0dHnKbRoyPSrdv2q04MHnLo5psjnxVsubkiP59mNAX8evg7ZrWfsyPkN4zRTnUZhE4/SFWmFhyoUEoOwbdOrBUDs68/oASLkc28uISaVULE6/0TG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=rFiGsHub; arc=none smtp.client-ip=192.19.144.205
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: from mail-lvn-it-01.lvn.broadcom.net (mail-lvn-it-01.lvn.broadcom.net [10.36.132.253])
	by relay.smtp-ext.broadcom.com (Postfix) with ESMTP id 626AAC000C64;
	Sun, 24 Nov 2024 09:54:20 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 relay.smtp-ext.broadcom.com 626AAC000C64
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
	s=dkimrelay; t=1732470860;
	bh=5B8SJwl+2MC5e0e+vdAMMkgrqinRJsXASoWZ93ePqgI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=rFiGsHubBNoBScdfkd/reykGXCZ4rEhhFxbg+Tt5ZrQPzECPVEsxUYAzPIXHiOQio
	 8JhJjTvmdPazQzQAJCzH45H04SgJ5hJCmc+ZfWMByAyI7ZHHAjigOKe+lnax3VC+wA
	 mCW9e4r2dNVGbKWnEZnFy8b1x1o0W51SWj0tKahk=
Received: from fainelli-desktop.igp.broadcom.net (fainelli-desktop.dhcp.broadcom.net [10.67.48.245])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail-lvn-it-01.lvn.broadcom.net (Postfix) with ESMTPSA id F135118041CAC6;
	Sun, 24 Nov 2024 09:54:19 -0800 (PST)
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
Subject: Re: [PATCH v3 9/9] ARM: dts: broadcom: Add Genexis XG6846B DTS file
Date: Sun, 24 Nov 2024 09:54:19 -0800
Message-ID: <20241124175419.718113-1-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241019-genexis-xg6846b-base-v3-9-8375a0e1f89f@linaro.org>
References: <20241019-genexis-xg6846b-base-v3-0-8375a0e1f89f@linaro.org> <20241019-genexis-xg6846b-base-v3-9-8375a0e1f89f@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Florian Fainelli <f.fainelli@gmail.com>

On Sat, 19 Oct 2024 22:39:38 +0200, Linus Walleij <linus.walleij@linaro.org> wrote:
> This adds a device tree for the Genexis XG6846B router.
> 
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian

