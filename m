Return-Path: <devicetree+bounces-244517-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C7697CA5BCF
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 01:17:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C1A9C3170F03
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 00:17:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF84D1A3165;
	Fri,  5 Dec 2025 00:17:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="klnAq9A0"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8EFD1514DC;
	Fri,  5 Dec 2025 00:17:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764893837; cv=none; b=c+Kctkkj9qlg15NHZbTN0J3jQCq4ctEFygCcdITbrW3oRKi+sCO5YNsXH/O0D//MXXrUo8thct9bcGluFy2w4yggM3LHHtLhEBfSElq/dnwFOrh6lwKWFiNq0Ui1Dg1DRuDI82pqmA2MvHtzUaiJ5fxym1wi6aXrMgg6KRKZUUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764893837; c=relaxed/simple;
	bh=G7a23Nk6iW11DGOCaLX2b9Iiu/r3WJTjgxDEFA9r6vY=;
	h=Subject:From:In-Reply-To:References:Message-Id:Date:To:Cc; b=lXrNyYbaDGdrXxXBtUnzaekAYMTZZt9oPw/SSK+sGimtg68VxgClrk2d11EnmdTYd6x+dyq8614Q+rLfLqqnXEn+k+SZ8cp9IDyz4fcEnKisBYH2Gtcp8cLzaQv1ZhJc+sqvM0uphRFSYbkt0s0OOZ0fVRD17ZrgBkeT6sotCEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=klnAq9A0; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 88B59C4CEFB;
	Fri,  5 Dec 2025 00:17:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764893837;
	bh=G7a23Nk6iW11DGOCaLX2b9Iiu/r3WJTjgxDEFA9r6vY=;
	h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
	b=klnAq9A07GlSLUDFlvfKXZymUFHyqIXGG0I2AMV6T86aAQN2ireL5NykqrbOjwO/B
	 ovhkpRYgDeJfBxEEY1LmzgqjZ4eLxnuCKBd+kqi+GCa27kNx46BkOSkHeftXuDzk3J
	 cc/uPEjyU9UV7QgitTm6ur6yPm8rx2HO5xHk3JcrWoZUpLe9NgB3RBFGSK/rKXmn0E
	 RYW96cPDRe21rghsirTpc/hKegHNEepn0CnW3ggVSjeZtwocgJy+jVjK73bJlC50Gq
	 b3JJJjOTXHvtYN/OltRnHGnU694FqvzIqrf50X3UBCBkOVGOx9SirIv9iGSG9jN7Er
	 dk0kjCJFEWnGA==
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B6C6E3AA9A85;
	Fri,  5 Dec 2025 00:14:16 +0000 (UTC)
Subject: Re: [GIT PULL] Devicetree updates for v6.19
From: pr-tracker-bot@kernel.org
In-Reply-To: <20251203164259.GA3838993-robh@kernel.org>
References: <20251203164259.GA3838993-robh@kernel.org>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20251203164259.GA3838993-robh@kernel.org>
X-PR-Tracked-Remote: ssh://git@gitolite.kernel.org/pub/scm/linux/kernel/git/robh/linux.git tags/devicetree-for-6.19
X-PR-Tracked-Commit-Id: 954c55c658e11c0cdc4cfa85968a0a5df975e26a
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 6044a1ee9dca906a807ba786421dc4254191ffd5
Message-Id: <176489365528.1032351.10354074258508889351.pr-tracker-bot@kernel.org>
Date: Fri, 05 Dec 2025 00:14:15 +0000
To: Rob Herring <robh@kernel.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, Krzysztof Kozlowski <krzk@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

The pull request you sent on Wed, 3 Dec 2025 10:42:59 -0600:

> ssh://git@gitolite.kernel.org/pub/scm/linux/kernel/git/robh/linux.git tags/devicetree-for-6.19

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/6044a1ee9dca906a807ba786421dc4254191ffd5

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html

