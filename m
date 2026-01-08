Return-Path: <devicetree+bounces-252948-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 28EB7D050F7
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 18:37:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B225A3029295
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 17:35:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 404BB2C11C9;
	Thu,  8 Jan 2026 17:35:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="UrFsRFq2"
X-Original-To: devicetree@vger.kernel.org
Received: from relay.smtp-ext.broadcom.com (relay.smtp-ext.broadcom.com [192.19.166.228])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE84B2C21F2;
	Thu,  8 Jan 2026 17:35:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.19.166.228
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767893712; cv=none; b=VgMeRCW0ce0fCGJXdjx6ponoNnXi/s8Amk5L/Xk7KYWLaYLOSrz5N33vqghgk9JfXCjxAe+mROmKWpI8wGl8bT6EKLQEqQ+uu4DTlTA+0iczTQOLi0VQKM7QMTTA+JtJpjaLdljON9ttIpxqAP48tsPEdGJec78CZhYuJX5icuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767893712; c=relaxed/simple;
	bh=S0eLTF0zTkP7XHO/izr6BZJOv2gb2LKsChACnp335No=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=fp51EQf8NP4aFFWzmRVEsBvPsc6N8oC/DsJVxuOEazFSw3jwc2dYLAsW+1pC/eGInRXyECQcqfzYSkrEEUAbdQzwBtisEjWv3TEXh+zTnPRzLY06nbkQgB33YARSPKJoT/9vIZErKM1xzHwJGarQKAA9kttCSnvgNymWIpRZ/d8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=UrFsRFq2; arc=none smtp.client-ip=192.19.166.228
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: from mail-lvn-it-01.broadcom.com (mail-lvn-it-01.lvn.broadcom.net [10.36.132.253])
	by relay.smtp-ext.broadcom.com (Postfix) with ESMTP id 4CB80C00C4E2;
	Thu,  8 Jan 2026 09:35:10 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 relay.smtp-ext.broadcom.com 4CB80C00C4E2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
	s=dkimrelay; t=1767893710;
	bh=S0eLTF0zTkP7XHO/izr6BZJOv2gb2LKsChACnp335No=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=UrFsRFq25+Ry3UvnwAwJTzHgycZtqwZjEM5hF1hzp0ic06b6WylFmkG6jP7c+qltc
	 tleRNN40V+W5Ryn9C5hKWJIicszoVnONG4j6Ok3eZOjXFREyoisn64EXXHXaWnvw08
	 vB17gICGG+FqyRbKWmyjbicDJoeIrn8Iw1bumBLw=
Received: from fainelli-desktop.igp.broadcom.net (fainelli-desktop.dhcp.broadcom.net [10.67.48.245])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail-lvn-it-01.broadcom.com (Postfix) with ESMTPSA id 20EF81CAF2;
	Thu,  8 Jan 2026 09:35:10 -0800 (PST)
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
Subject: Re: [PATCH 08/13] arm64: dts: broadcom: Use preferred node names
Date: Thu,  8 Jan 2026 09:35:09 -0800
Message-ID: <20260108173509.3784772-1-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260106-dt-dtbs-broadcom-fixes-v1-8-ba45874e4553@kernel.org>
References: <20260106-dt-dtbs-broadcom-fixes-v1-0-ba45874e4553@kernel.org> <20260106-dt-dtbs-broadcom-fixes-v1-8-ba45874e4553@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Florian Fainelli <f.fainelli@gmail.com>

On Tue, 06 Jan 2026 20:09:47 -0600, "Rob Herring (Arm)" <robh@kernel.org> wrote:
> Update various node names to use the documented preferred names. Node
> names/path aren't considered ABI, so changing them should be safe.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree-arm64/next, thanks!
--
Florian

