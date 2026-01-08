Return-Path: <devicetree+bounces-252958-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CD40BD059A7
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 19:37:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E9A64308E9B9
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 17:42:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59A812E7BDC;
	Thu,  8 Jan 2026 17:42:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="UFgTOOXv"
X-Original-To: devicetree@vger.kernel.org
Received: from relay.smtp-ext.broadcom.com (relay.smtp-ext.broadcom.com [192.19.144.207])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E869B2E0B5B;
	Thu,  8 Jan 2026 17:42:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.19.144.207
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767894127; cv=none; b=rVydlACXD+1q8fbjPtFMOZO3B2EHVuEVCEu2iGGOjnxcc5IU0CyaKS0bWO0kdHTLNg+aLhPTVFqMV8VG7wNZ+DgA8PLSQ7i3Rb/j3hXsdYQIlxrWtWz1IlYtb16NMMjflMskWd+hqVLZbuyW/yfdqSA18HsciOA4qhYxTrWzeMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767894127; c=relaxed/simple;
	bh=QSppMR7T5AGVXWtFlOsZIy3b5tuCMUnbtQZGgFdwOp4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=siQo8RiEeK7i1m+l50F4paLWVVggzv6kTiVS18vKktOtyrv9KpHHnYG54VuCMD8meqd6OQYXSeIVLW2dYoJIdu0huADToDmP12By+QwW10/mzTZPVJtOzx2j2PlY/ioVTdpYjmyL3srI1vJlTazZ0+81kJdadcwa0PoFXKbMlAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=UFgTOOXv; arc=none smtp.client-ip=192.19.144.207
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: from mail-lvn-it-01.broadcom.com (mail-lvn-it-01.lvn.broadcom.net [10.36.132.253])
	by relay.smtp-ext.broadcom.com (Postfix) with ESMTP id CF14FC01E933;
	Thu,  8 Jan 2026 09:33:30 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 relay.smtp-ext.broadcom.com CF14FC01E933
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
	s=dkimrelay; t=1767893610;
	bh=QSppMR7T5AGVXWtFlOsZIy3b5tuCMUnbtQZGgFdwOp4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=UFgTOOXvxtXeSGm7YETP9IjNrWiBqYd4U25T3CAWFs1LyYMWC4KtnB5VmooG5jcrl
	 MqYplxk3M0LH/BDZrI9gw8HZMNBQjdmfB7SoHowZ11PGfbqhwUcqpCmeJ7LUrWR4rY
	 h3XKmI/q5rW2uOC1coGRWCqGQ5gxfyX1tOJz2eSI=
Received: from fainelli-desktop.igp.broadcom.net (fainelli-desktop.dhcp.broadcom.net [10.67.48.245])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail-lvn-it-01.broadcom.com (Postfix) with ESMTPSA id 66DDC1CAF4;
	Thu,  8 Jan 2026 09:33:30 -0800 (PST)
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
Subject: Re: [PATCH 03/13] arm64: dts: broadcom: bcm2712: Move non simple-bus nodes to root level
Date: Thu,  8 Jan 2026 09:33:30 -0800
Message-ID: <20260108173330.3784137-1-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260106-dt-dtbs-broadcom-fixes-v1-3-ba45874e4553@kernel.org>
References: <20260106-dt-dtbs-broadcom-fixes-v1-0-ba45874e4553@kernel.org> <20260106-dt-dtbs-broadcom-fixes-v1-3-ba45874e4553@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Florian Fainelli <f.fainelli@gmail.com>

On Tue, 06 Jan 2026 20:09:42 -0600, "Rob Herring (Arm)" <robh@kernel.org> wrote:
> The 'gpu' and 'firmware' nodes are not MMIO devices, so they should not be
> under a 'simple-bus'.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree-arm64/next, thanks!
--
Florian

