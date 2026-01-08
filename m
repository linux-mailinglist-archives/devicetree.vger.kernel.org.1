Return-Path: <devicetree+bounces-252951-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 95EDED05127
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 18:38:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 280FE300A34D
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 17:36:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F0262D7392;
	Thu,  8 Jan 2026 17:36:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="W8PVVUQ1"
X-Original-To: devicetree@vger.kernel.org
Received: from relay.smtp-ext.broadcom.com (relay.smtp-ext.broadcom.com [192.19.144.205])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C30C02D249A;
	Thu,  8 Jan 2026 17:36:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.19.144.205
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767893779; cv=none; b=ZJRLnAIA8Kk5TG1oAFtjOBiIe1iyuwUL3K4BfYvcVPiWetVnuZXZWhVz3d5IlfkCa9vrNT9KCZsiCmDhm/3saf1t6AGpRwLq9Y9NByRBwvIehVA3nqCdH/je31JT5KVJB06Sb1ojk29CD7QWubnpf5rH7SsX4BwSi9b55WCBdfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767893779; c=relaxed/simple;
	bh=oTqF9t6aYY2+T3IJbJny5NU0xHFTKicxUN8RnOR4K0k=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=heQeGbfbYjvF8fqFDzmo8P4R3jm2SG5MO2vGDtGsI/THm6CwiXMq6RKqCOFSDlT6dULXkiexzEYGPAGkRC6lsXpeQhUEUgEdIIHY50CedEKhhEszylrWorEi1UwxiU7a0I4/wFmjIJO7cfI/qvsWL+cO/KUfvGwuWL+NMBmR3Vg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=W8PVVUQ1; arc=none smtp.client-ip=192.19.144.205
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: from mail-lvn-it-01.broadcom.com (mail-lvn-it-01.lvn.broadcom.net [10.36.132.253])
	by relay.smtp-ext.broadcom.com (Postfix) with ESMTP id BB3D8C000C61;
	Thu,  8 Jan 2026 09:36:16 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 relay.smtp-ext.broadcom.com BB3D8C000C61
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
	s=dkimrelay; t=1767893776;
	bh=oTqF9t6aYY2+T3IJbJny5NU0xHFTKicxUN8RnOR4K0k=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=W8PVVUQ1Ec9A2wdykw4RHo+YyHizsSu7YWVD1+0d9WQuMLjRXnebH80YLm3zNyOMv
	 Je2BjAd0t7kGlrarCCzV9QBZoy4xrf49wy9nMCzOnrEr24HlWR+PoWiGFUS8LIksAY
	 MYbl2fE1WASDQUphl3FCCkJczE3LdOWIj16V+Bkc=
Received: from fainelli-desktop.igp.broadcom.net (fainelli-desktop.dhcp.broadcom.net [10.67.48.245])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail-lvn-it-01.broadcom.com (Postfix) with ESMTPSA id 5A42B1CAF8;
	Thu,  8 Jan 2026 09:36:16 -0800 (PST)
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
Subject: Re: [PATCH 10/13] arm64: dts: broadcom: northstar2: Rework clock nodes
Date: Thu,  8 Jan 2026 09:36:16 -0800
Message-ID: <20260108173616.3785132-1-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260106-dt-dtbs-broadcom-fixes-v1-10-ba45874e4553@kernel.org>
References: <20260106-dt-dtbs-broadcom-fixes-v1-0-ba45874e4553@kernel.org> <20260106-dt-dtbs-broadcom-fixes-v1-10-ba45874e4553@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Florian Fainelli <f.fainelli@gmail.com>

On Tue, 06 Jan 2026 20:09:49 -0600, "Rob Herring (Arm)" <robh@kernel.org> wrote:
> The nd2-clocks.dtsi is oddly included in the middle of a bus node and is
> only included in one place, so collapse it into ns2.dtsi. Move the fixed
> and fixed-factor clock nodes to the root as they are not part of the
> bus. Rename the node names to use preferred names.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree-arm64/next, thanks!
--
Florian

