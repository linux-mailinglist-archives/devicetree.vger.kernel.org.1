Return-Path: <devicetree+bounces-139392-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8141DA15A1D
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 00:45:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id ED81318831BF
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 23:45:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FEFD1DE8AF;
	Fri, 17 Jan 2025 23:44:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z8ev30Ll"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06CDD1DDA39;
	Fri, 17 Jan 2025 23:44:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737157492; cv=none; b=WBbBV1XN5hW6b7iBLkIE6tLpdQ2iFrPLeEu3RU+aT12H8lA50k54kvomcwmF1SrLcv1T6nGP796WKfvmSjLrI4nNmrT7ygHoWx9Bc2HCP4ynr5aCDMp2jsbjLNRWoKLKTPmpIW4MPbSJ/p89T59+0cVXPRub7B58UCG8JwqGDW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737157492; c=relaxed/simple;
	bh=Tr8dwoe1iTFm5uxBf/xTsMJ+9H76OkvNZO5omUGfHJU=;
	h=Subject:From:In-Reply-To:References:Message-Id:Date:To:Cc; b=DJh3NIfhqzUcmA2pftAFAsv9rgTRm1eT9u8IYDjPK8MOeDG5z80rnC4h8wZMQKvppg5DVS2iNLJEoEGYf0qjb/ztXRjJpdSRDBHk+0VP7HjE24KPvYRYec0WQbzohSs4XRKwX8+IoNF2eadqz//LMaHlYXAAiXyyH5PyNazuszk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z8ev30Ll; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D5573C4CEDD;
	Fri, 17 Jan 2025 23:44:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737157491;
	bh=Tr8dwoe1iTFm5uxBf/xTsMJ+9H76OkvNZO5omUGfHJU=;
	h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
	b=Z8ev30LlApgTIU+Zu2VpA1sBpnQJ9lJel4vcLLBmXcdEKDuqpGQn38DmLJRg6qF9b
	 likprP5nlZsvXtSGQfiU0SjPQbUveXEBSTllEvZGBhg0AbSefOH8NApJ5qld07jYYq
	 qDbksjV+UaAsMBwm0rfJU4tYEUPKj6xk2C4u5RjGvPIFHERbN1yY2dC7ZRELiV2DFf
	 zqk7aBx11b6ClcOOKd8a7bjIxYJQkNPT/UNsyxSwdq+ViEjmCWHWGzrC3kQ/vucIc6
	 TVVvo4vXkoIq1lZppvGM3BLhNRf97a45nhDMTMrksdhlfTV2FDkuTnv3s9jhDOctL9
	 zcGsCS/mDWdvw==
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 70F16380AA62;
	Fri, 17 Jan 2025 23:45:16 +0000 (UTC)
Subject: Re: [GIT PULL] Devicetree fixes for v6.13, part 2
From: pr-tracker-bot@kernel.org
In-Reply-To: <20250117215916.GA1682842-robh@kernel.org>
References: <20250117215916.GA1682842-robh@kernel.org>
X-PR-Tracked-List-Id: <devicetree.vger.kernel.org>
X-PR-Tracked-Message-Id: <20250117215916.GA1682842-robh@kernel.org>
X-PR-Tracked-Remote: ssh://git@gitolite.kernel.org/pub/scm/linux/kernel/git/robh/linux.git tags/devicetree-fixes-for-6.13-2
X-PR-Tracked-Commit-Id: 6e5773d52f4a2d9c80692245f295069260cff6fc
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 595523945be0a5a2f12a1c04772383293fbc04a1
Message-Id: <173715751493.2291664.18381031563276406961.pr-tracker-bot@kernel.org>
Date: Fri, 17 Jan 2025 23:45:14 +0000
To: Rob Herring <robh@kernel.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, Saravana Kannan <saravanak@google.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

The pull request you sent on Fri, 17 Jan 2025 15:59:16 -0600:

> ssh://git@gitolite.kernel.org/pub/scm/linux/kernel/git/robh/linux.git tags/devicetree-fixes-for-6.13-2

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/595523945be0a5a2f12a1c04772383293fbc04a1

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html

