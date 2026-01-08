Return-Path: <devicetree+bounces-252953-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D42ED05163
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 18:40:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2088A3084D69
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 17:36:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B50402E7BDC;
	Thu,  8 Jan 2026 17:36:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="DvF4eYab"
X-Original-To: devicetree@vger.kernel.org
Received: from relay.smtp-ext.broadcom.com (relay.smtp-ext.broadcom.com [192.19.144.205])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5750D2DC34B;
	Thu,  8 Jan 2026 17:36:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.19.144.205
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767893807; cv=none; b=uvncbQeCLQ8LxFIeRRQpP6C0s3MFqMkCtGLTwthDYh2uGmEqI9RnBvdyDdZZyDkx3ujKEnSiwKaOUMoeMIYiYj61zxzboDXHq2ug5NAo8miqbCmNz+ixbHYNmKKeiiEuDboqvWBOcCI7op5gAqFgGSmnHiMioUMR0tEDOYSKT1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767893807; c=relaxed/simple;
	bh=0fQibfhIs7c2N1hjs67FFt/DeR5JY5S3TPIbqsazrdA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ra0aWq9jwxygtBzFSLEvGzuF0Ojyt5mOu0Sd37HSpB0sLc1ZV60p4mQYm8yAR7NamXHAF3p2n5FnBba9PKy3UIR3g5zJLDlChppooLQ3/szKNcDm4FSX0V7Wno2GKYD2/gcGF0GCmARIoh5sjQpLcaoA6sBo1/J5Bqa1pjCwEXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=DvF4eYab; arc=none smtp.client-ip=192.19.144.205
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: from mail-lvn-it-01.broadcom.com (mail-lvn-it-01.lvn.broadcom.net [10.36.132.253])
	by relay.smtp-ext.broadcom.com (Postfix) with ESMTP id 8BE3EC000C61;
	Thu,  8 Jan 2026 09:36:45 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 relay.smtp-ext.broadcom.com 8BE3EC000C61
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
	s=dkimrelay; t=1767893805;
	bh=0fQibfhIs7c2N1hjs67FFt/DeR5JY5S3TPIbqsazrdA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=DvF4eYabStkpz2LT5LnZDJkUJblEptOxG6JDfOGwumb5JDs4OJJSL1nAPIyd5Dxly
	 +Uko2Pd3BGtEFEJHgPuCIC+9rAgqA99xgcK4ns429a4l1HN5Nr+YFg3KrR7Ui8o+Kt
	 RBq9WIMQteJw/J7QimZ0ScbtabeXs99z0GRqJvFc=
Received: from fainelli-desktop.igp.broadcom.net (fainelli-desktop.dhcp.broadcom.net [10.67.48.245])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail-lvn-it-01.broadcom.com (Postfix) with ESMTPSA id 2EF961CAF8;
	Thu,  8 Jan 2026 09:36:45 -0800 (PST)
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
Subject: Re: [PATCH 12/13] arm64: dts: broadcom: northstar2: Drop QSPI "clock-names"
Date: Thu,  8 Jan 2026 09:36:44 -0800
Message-ID: <20260108173644.3785325-1-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260106-dt-dtbs-broadcom-fixes-v1-12-ba45874e4553@kernel.org>
References: <20260106-dt-dtbs-broadcom-fixes-v1-0-ba45874e4553@kernel.org> <20260106-dt-dtbs-broadcom-fixes-v1-12-ba45874e4553@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Florian Fainelli <f.fainelli@gmail.com>

On Tue, 06 Jan 2026 20:09:51 -0600, "Rob Herring (Arm)" <robh@kernel.org> wrote:
> The "clock-names" property is not documented for the "brcm,spi-bcm-qspi"
> binding nor in use by the kernel driver, so drop it.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree-arm64/next, thanks!
--
Florian

