Return-Path: <devicetree+bounces-167945-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A174A90D81
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 22:59:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 935014401D1
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 20:59:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57A3C232792;
	Wed, 16 Apr 2025 20:59:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LDOLXY2w"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F6C71FF1B0;
	Wed, 16 Apr 2025 20:59:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744837149; cv=none; b=g2zyi+t7xb+IJk4fqjxQhurMV6BZ80NK1AOKE50w26d63Y67LDX9CXKOvMfG9H1OX0fKfKn9OrS58y4y9dXmeLNJUtpA297uiBlUWfmwlcx+CeW+/9jexCcAE7Z8cWPWwXXGBWqIQT0t9hYVeaCkJm3RTvtfXyejFiaMJNtA1w4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744837149; c=relaxed/simple;
	bh=f7wj3yFByGmTMQq2lSlkl91r9kgiEUiKT7kGPweL0FE=;
	h=Subject:From:In-Reply-To:References:Message-Id:Date:To:Cc; b=YPpOMkMaj52OPg3JSrfnV6IP6Tc1KOSlijLSHEU6Mua1LWjmlBLQIZq1siAK9C5IXYcvz2cv84gnSGf2mQQgnhz8OjilnxVfro/+NA9g4vjE6e3Qon401MeVoQRBIRrnuPUrFe3Mrf75Y+Mv10y6ikAa2D8ny1w8TwvUGGUmAEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LDOLXY2w; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A57E8C4CEE2;
	Wed, 16 Apr 2025 20:59:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744837148;
	bh=f7wj3yFByGmTMQq2lSlkl91r9kgiEUiKT7kGPweL0FE=;
	h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
	b=LDOLXY2wQq0e0ldtLH7e4t2upQsqnYudAmliA//OISPhTKa+7d9duN0k+Rwxei0Q3
	 jpduIE0iSUnr8xqaIBHHHxPEHJRT3+MwtquI2LprDofqt2125HcjkhLfoHwoVXQzg5
	 y5GOs/+fE48z8lB5K9rmLEv/v0z4Ze4KJMpa8YctYxPoSu9qkH3eBZbLBNHMbnMtBW
	 ZPGdt6jL/SBdmn7KUYwPCGLLbjaS3y6y2LnlgqGrYC5/L92ygMbSdKmsH0d8X2aeH/
	 JfXhgIAuP8Z8NC9dBo8EJD2fbUdHTgLZNatECIrSVkyKgb2zHwArKWS5s9OmCTRkQF
	 lBz4DbGYLDLzw==
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id ED1563822D59;
	Wed, 16 Apr 2025 20:59:47 +0000 (UTC)
Subject: Re: [GIT PULL] Devicetree fixes for v6.15, part 1
From: pr-tracker-bot@kernel.org
In-Reply-To: <20250416195631.GA3799249-robh@kernel.org>
References: <20250416195631.GA3799249-robh@kernel.org>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20250416195631.GA3799249-robh@kernel.org>
X-PR-Tracked-Remote: ssh://git@gitolite.kernel.org/pub/scm/linux/kernel/git/robh/linux.git tags/devicetree-fixes-for-6.15-1
X-PR-Tracked-Commit-Id: d5f49921707cc73376ad6cf8410218b438fcd233
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: c1336865c4c90fcc649df0435a7c86c30030a723
Message-Id: <174483718641.3496871.7302933231771634389.pr-tracker-bot@kernel.org>
Date: Wed, 16 Apr 2025 20:59:46 +0000
To: Rob Herring <robh@kernel.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, Saravana Kannan <saravanak@google.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

The pull request you sent on Wed, 16 Apr 2025 14:56:31 -0500:

> ssh://git@gitolite.kernel.org/pub/scm/linux/kernel/git/robh/linux.git tags/devicetree-fixes-for-6.15-1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/c1336865c4c90fcc649df0435a7c86c30030a723

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html

