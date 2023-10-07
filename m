Return-Path: <devicetree+bounces-6737-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CC1E7BC97D
	for <lists+devicetree@lfdr.de>; Sat,  7 Oct 2023 20:12:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A28FE1C20849
	for <lists+devicetree@lfdr.de>; Sat,  7 Oct 2023 18:12:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CFA018C32;
	Sat,  7 Oct 2023 18:12:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eQ/VGGPH"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 477681FDD
	for <devicetree@vger.kernel.org>; Sat,  7 Oct 2023 18:12:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4B1EC433CB;
	Sat,  7 Oct 2023 18:12:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696702354;
	bh=oa4kHR/J+jkn7hFyFKROvjJFBDTHlz90wCnpkm+Hd5A=;
	h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
	b=eQ/VGGPHnLsbljzF77HhpIAw2ZGB6/Xsy8gQdtjOzaExI109d1YPJ67zYLv5KzLCV
	 QAfcIBBSuHBUFq1oJENGUhSoZBEYHoYDHKPsTluylWZwBoi3wtnObbgseY0fzyUkjP
	 HDnetSsNHCYvHOez2I3tnwJUyawgM5N8FDLYnRPBy6dZLuwvThDdAOrdCF4wzRCgrQ
	 +ymIhRDCTHx/IcFUUMuuvhDuzvdJO2lsY4ep67V2zV7I35qpE7xigwUvYJpUXjDpnp
	 IBh2Yy/cvu+1mQZXgNm9EieWZcMtriiof9Mvgb39bQ0THti1aZDSPQNyC0cA5DUla8
	 PyD/8c1xNHVdg==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id A1B1FE632D6;
	Sat,  7 Oct 2023 18:12:34 +0000 (UTC)
Subject: Re: [GIT PULL] Devicetree fixes for v6.6, take 2
From: pr-tracker-bot@kernel.org
In-Reply-To: <20231006190106.GA143694-robh@kernel.org>
References: <20231006190106.GA143694-robh@kernel.org>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20231006190106.GA143694-robh@kernel.org>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git tags/devicetree-fixes-for-6.6-2
X-PR-Tracked-Commit-Id: 19007c629c63c76ae0f8adee9dc076bda4788b46
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 5e5558f5c9d8caa58a57427cd32f870aec3a69fb
Message-Id: <169670235465.17695.8884013446146011640.pr-tracker-bot@kernel.org>
Date: Sat, 07 Oct 2023 18:12:34 +0000
To: Rob Herring <robh@kernel.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, Frank Rowand <frowand.list@gmail.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

The pull request you sent on Fri, 6 Oct 2023 14:01:06 -0500:

> git://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git tags/devicetree-fixes-for-6.6-2

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/5e5558f5c9d8caa58a57427cd32f870aec3a69fb

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html

