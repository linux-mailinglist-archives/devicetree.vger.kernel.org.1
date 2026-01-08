Return-Path: <devicetree+bounces-252959-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A861CD05232
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 18:44:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CDBF53009F1D
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 17:42:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B9562DB79B;
	Thu,  8 Jan 2026 17:42:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="wALwFzeR"
X-Original-To: devicetree@vger.kernel.org
Received: from relay.smtp-ext.broadcom.com (relay.smtp-ext.broadcom.com [192.19.144.205])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1D4829AAF3;
	Thu,  8 Jan 2026 17:42:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.19.144.205
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767894159; cv=none; b=XbvNmV+pPGFC5O2+XAeQbVJghLlt3dEJs974QvpUXBNzzkjD7fUYps+Ljrhf50bqM9AxeOIfm7o21pBr7O/p5Hqo3lrNjOqdnYHiEswB3gZDZDYi+4QFVHWEZF7n//g4d6gInpgt1F6j9dEdS9rGIB3ILhAI6rpI4l08/1h7pCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767894159; c=relaxed/simple;
	bh=pmpe+Vnk7lZP6tySCs75M24BiBDXu9KNx5mv+Ex7l+U=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=glRWjdNpuY0K6KwgVFO6n8pCNGqh+RAQ2peIJKfctNDB8Ynvy6hBBWOpRfXN2pHXMoHUh0I1aU6Bs+mEWxy3q+RFZkJpyCMdUKtlTGtrQEFuN9A8UGKr5deh//Q2563NUQIRHTCZ+iqG0SHWwNEmxNGbS3iGYfiKMO6WJOlhYLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=wALwFzeR; arc=none smtp.client-ip=192.19.144.205
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: from mail-lvn-it-01.broadcom.com (mail-lvn-it-01.lvn.broadcom.net [10.36.132.253])
	by relay.smtp-ext.broadcom.com (Postfix) with ESMTP id 557C9C000C60;
	Thu,  8 Jan 2026 09:34:08 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 relay.smtp-ext.broadcom.com 557C9C000C60
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
	s=dkimrelay; t=1767893648;
	bh=pmpe+Vnk7lZP6tySCs75M24BiBDXu9KNx5mv+Ex7l+U=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=wALwFzeRFSyoASGLSaBprdor4D8IejVdz/qycEplmXSaBy6fNW0+C2S9WBRsdy3Az
	 VHDhb3gVonGlhz2dSUe6uV3gYOAy+4deezskxiR17ZpxF28wdl0i1bs1sHx+a/N/zN
	 lZQfhz61IOnJR7w/RHxoUYVP/unO8g3tw1RDNWQE=
Received: from fainelli-desktop.igp.broadcom.net (fainelli-desktop.dhcp.broadcom.net [10.67.48.245])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail-lvn-it-01.broadcom.com (Postfix) with ESMTPSA id ECEDC1CAF2;
	Thu,  8 Jan 2026 09:34:07 -0800 (PST)
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
Subject: Re: [PATCH 05/13] arm64: dts: broadcom: stingray: Rework clock nodes
Date: Thu,  8 Jan 2026 09:34:07 -0800
Message-ID: <20260108173407.3784382-1-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260106-dt-dtbs-broadcom-fixes-v1-5-ba45874e4553@kernel.org>
References: <20260106-dt-dtbs-broadcom-fixes-v1-0-ba45874e4553@kernel.org> <20260106-dt-dtbs-broadcom-fixes-v1-5-ba45874e4553@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Florian Fainelli <f.fainelli@gmail.com>

On Tue, 06 Jan 2026 20:09:44 -0600, "Rob Herring (Arm)" <robh@kernel.org> wrote:
> The stringray-clocks.dtsi is oddly included in the middle of a bus
> node and is only included in one place, so collapse it into
> stingray.dtsi. Move the fixed and fixed-factor clock nodes to the root
> as they are not part of the bus. Rename the node names to use preferred
> names.
> 
> Drop the unnecessary 1:1 fixed-factor clock providers.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree-arm64/next, thanks!
--
Florian

