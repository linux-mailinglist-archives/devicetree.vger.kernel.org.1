Return-Path: <devicetree+bounces-13345-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AA1C7DDBFB
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 05:54:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9A11B1F21820
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 04:54:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F279115B3;
	Wed,  1 Nov 2023 04:54:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tf76MK4M"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4F307F
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 04:54:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66C9BC433C9;
	Wed,  1 Nov 2023 04:54:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698814466;
	bh=pOb2dPfuHoBseMtOYz1vwAT6FtcTW6En3XzFJnDRmeY=;
	h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
	b=tf76MK4MMBLZLw4VDrNop8t04E78BKcleewl7ffDlX8Li+lreHa/nDRDK33kwHZaC
	 /uyex61nXzYUGkuzrmYsLibk1uWUpJ8lr4Ynh0KA3ISosSNBw6opIlyvJJiddeY7Hs
	 iSu4xwaAX0P3Z6EyVraeRDeGUd0U3IL50sC95ZNeFbRy/zip2Zxy/gPHQLRuuNLtA8
	 N3aYj9dOZdDiIBcfYLBvbNYB0KU5FDo+f5/2LnG1s2vkYtVNMdHlUVtJUHeoPY1cYx
	 LQ7/b+JPJVfJcoqznEsSqs10RT68gnSBg4+WmgTVOfUEd2575xstIm9IP3oewGcbwx
	 buhStcw4/kpVg==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 531A0E00090;
	Wed,  1 Nov 2023 04:54:26 +0000 (UTC)
Subject: Re: [GIT PULL] Devicetree updates for v6.7
From: pr-tracker-bot@kernel.org
In-Reply-To: <20231031214808.GA2178025-robh@kernel.org>
References: <20231031214808.GA2178025-robh@kernel.org>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20231031214808.GA2178025-robh@kernel.org>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git tags/devicetree-for-6.7
X-PR-Tracked-Commit-Id: fe612629746cf5cc7040529f780d46929605d0a6
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 8bc9e6515183935fa0cccaf67455c439afe4982b
Message-Id: <169881446633.23637.8802111292131125661.pr-tracker-bot@kernel.org>
Date: Wed, 01 Nov 2023 04:54:26 +0000
To: Rob Herring <robh@kernel.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, Frank Rowand <frowand.list@gmail.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

The pull request you sent on Tue, 31 Oct 2023 16:48:08 -0500:

> git://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git tags/devicetree-for-6.7

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/8bc9e6515183935fa0cccaf67455c439afe4982b

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html

