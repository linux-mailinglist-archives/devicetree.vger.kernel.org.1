Return-Path: <devicetree+bounces-252954-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C92C0D05193
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 18:40:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BEA9D305001C
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 17:36:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CAA12E9EBB;
	Thu,  8 Jan 2026 17:36:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="ApQbqcWv"
X-Original-To: devicetree@vger.kernel.org
Received: from relay.smtp-ext.broadcom.com (relay.smtp-ext.broadcom.com [192.19.144.205])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39F5A2D593E;
	Thu,  8 Jan 2026 17:36:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.19.144.205
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767893814; cv=none; b=UNMFmD1h7GMpAhblZnLS7UBCzThqX3ANN40dZ5Zf1vx3aYBM4t+zcvvEZ18Vckz6pA3/iTWw+XU8HwUyxIDqOcW+0GAbjkgli1okpXHVktw0Qn7EIW5zk9JjFs1Zwah0JqMEzW2cxHZpnO/jk79ebOOn6L+IiIGpPHPV8bZA7uM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767893814; c=relaxed/simple;
	bh=bxmGklExLUzZgI6VQZsbwrishl9m4biRsOymkvUiESw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=G2UEeeRxWrvmd2qwFDKBf/7M90q8Zkjids2K0dhbgioApch/jTqpQiH1z7x53Lm1FezaJEC3oVt8ySQ6VaX2merRWFBs7ckNoteDJ9MsC4BT7kpVpcwmOQgGDq5m6/rCVOSunw45nige+uIMUUrzlklmYQCMf5uvZZnPviPNTQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=ApQbqcWv; arc=none smtp.client-ip=192.19.144.205
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: from mail-lvn-it-01.broadcom.com (mail-lvn-it-01.lvn.broadcom.net [10.36.132.253])
	by relay.smtp-ext.broadcom.com (Postfix) with ESMTP id 31AFAC000C61;
	Thu,  8 Jan 2026 09:36:52 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 relay.smtp-ext.broadcom.com 31AFAC000C61
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
	s=dkimrelay; t=1767893812;
	bh=bxmGklExLUzZgI6VQZsbwrishl9m4biRsOymkvUiESw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ApQbqcWv//tncek4NqKbcyRldPV3+ociZzzqoxl016kGbfsT5SAOY39mWEEVvzrCR
	 Lj58k8APfjITG2gzQxynsut41TlmJ8ocgnQn9SM0813GLakciRMQiiVDHOV+Zl4kAN
	 DN8W+zemdezEFFYypgl0rMlehlzlv/d5qeR25314=
Received: from fainelli-desktop.igp.broadcom.net (fainelli-desktop.dhcp.broadcom.net [10.67.48.245])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail-lvn-it-01.broadcom.com (Postfix) with ESMTPSA id C66451CAF8;
	Thu,  8 Jan 2026 09:36:51 -0800 (PST)
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
Subject: Re: [PATCH 13/13] arm64: dts: broadcom: northstar2: Drop "arm,cci-400-pmu" fallback compatible
Date: Thu,  8 Jan 2026 09:36:51 -0800
Message-ID: <20260108173651.3785415-1-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260106-dt-dtbs-broadcom-fixes-v1-13-ba45874e4553@kernel.org>
References: <20260106-dt-dtbs-broadcom-fixes-v1-0-ba45874e4553@kernel.org> <20260106-dt-dtbs-broadcom-fixes-v1-13-ba45874e4553@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Florian Fainelli <f.fainelli@gmail.com>

On Tue, 06 Jan 2026 20:09:52 -0600, "Rob Herring (Arm)" <robh@kernel.org> wrote:
> The "arm,cci-400-pmu" compatible is not documented as a valid fallback
> nor is it used, so drop it.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree-arm64/next, thanks!
--
Florian

