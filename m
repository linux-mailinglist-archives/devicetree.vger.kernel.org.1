Return-Path: <devicetree+bounces-252952-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BA45D05938
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 19:34:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9B40430DC339
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 17:36:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B5672D593E;
	Thu,  8 Jan 2026 17:36:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="FopN0Lca"
X-Original-To: devicetree@vger.kernel.org
Received: from relay.smtp-ext.broadcom.com (relay.smtp-ext.broadcom.com [192.19.166.228])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBB571EBFE0;
	Thu,  8 Jan 2026 17:36:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.19.166.228
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767893800; cv=none; b=ppSCgiZakQgNbsrkIX6Q7M/lnq88GB7tMEjJey/KN9cvb5bXpumkL0x4p9Xfv1wFjpyuEfFlwMoJvQf22AECi5EkaLQDOulT2YOpsAOoWEiJHjpCSq3ZZOTCBjxUqgvMGbCDqBYXd0ZmovzlcQY2llYBxAtGBPxJk4njyS9yvg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767893800; c=relaxed/simple;
	bh=JgpJFAaUtaCn5bIdxbQBJjJeFKGhRCvlG49igjKbPPM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=l40l94BwmM3WORas65e4tb/HX10jfKsQm61H7YQ6bM9HVYt4c3ho73FEbSAmfxWE5hKTUpR740xy8Pqp5C4lYhkxvlDYs/hSRauGcupurUEeFei388VUVdh71plRMtu5ViNJ1EVCvS+bS+jt2DGvbjYf3DPrYZNXTsube/4nxmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=FopN0Lca; arc=none smtp.client-ip=192.19.166.228
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: from mail-lvn-it-01.broadcom.com (mail-lvn-it-01.lvn.broadcom.net [10.36.132.253])
	by relay.smtp-ext.broadcom.com (Postfix) with ESMTP id 47469C015054;
	Thu,  8 Jan 2026 09:36:39 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 relay.smtp-ext.broadcom.com 47469C015054
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
	s=dkimrelay; t=1767893799;
	bh=JgpJFAaUtaCn5bIdxbQBJjJeFKGhRCvlG49igjKbPPM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=FopN0Lcag1Lbp3mqnfonJxRXZdHdMocgKdyJ0OjaQSLZu+J7T7aBHcR7LwUR7yQlB
	 PSFDZ/bFyUkUIYt8DwH0t5zoqnE1Qm7qwT7q/7OsimRLMpc+DUB3ERUQcjYKQz48YX
	 MYXPdcFxruD8cm6WV2U4PhElGb4sA4wHaMXlGERA=
Received: from fainelli-desktop.igp.broadcom.net (fainelli-desktop.dhcp.broadcom.net [10.67.48.245])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail-lvn-it-01.broadcom.com (Postfix) with ESMTPSA id 1B2141CAF8;
	Thu,  8 Jan 2026 09:36:39 -0800 (PST)
From: Florian Fainelli <florian.fainelli@broadcom.com>
To: bcm-kernel-feedback-list@broadcom.com,
	"Rob Herring (Arm)" <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>
Cc: Florian Fainelli <f.fainelli@gmail.com>,
	devicetree@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 11/13] arm64: dts: broadcom: northstar2: Drop unused and undocumented "brcm,pcie-ob-oarr-size" properties
Date: Thu,  8 Jan 2026 09:36:38 -0800
Message-ID: <20260108173638.3785234-1-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260106-dt-dtbs-broadcom-fixes-v1-11-ba45874e4553@kernel.org>
References: <20260106-dt-dtbs-broadcom-fixes-v1-0-ba45874e4553@kernel.org> <20260106-dt-dtbs-broadcom-fixes-v1-11-ba45874e4553@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Florian Fainelli <f.fainelli@gmail.com>

On Tue, 06 Jan 2026 20:09:50 -0600, "Rob Herring (Arm)" <robh@kernel.org> wrote:
> The "brcm,pcie-ob-oarr-size" property is unused and undocumented, so drop
> them.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree-arm64/next, thanks!
--
Florian

