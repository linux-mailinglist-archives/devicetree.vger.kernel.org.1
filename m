Return-Path: <devicetree+bounces-133373-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DF86A9FA6F1
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 17:54:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EC15E166730
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 16:54:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3C9214375C;
	Sun, 22 Dec 2024 16:54:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fWjVTCc+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 793C139FD9;
	Sun, 22 Dec 2024 16:54:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734886479; cv=none; b=lxWWk0PU1/uSn34GOMJ6lSQZtVQVhDVPwfCjnnET/vyNubmRFtcqjWdi4I6gjKG0bF5fXgPvypyj2aXn6NzygWFjRCQZavW7jOB+8Rw0F2v5zVINLi3oQoBVbUYHQMehjSS88GGrHFbTRHeSm5KWUsY83Ty1STl7M9HsqTMPIYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734886479; c=relaxed/simple;
	bh=LIFtHuARYkddVzDy5sdSE4REwE0emliPySGQGqjY6lY=;
	h=Subject:From:In-Reply-To:References:Message-Id:Date:To:Cc; b=X5B8bOUJmduC1hDD9xlqMx5yBiTIcS11aoNTa4oeE4jg24Z5gPOICncAXmkYq9dVaN//o3VJD5hYAKiPKLSTTmopwPok3LAYR498LGRWDb/NEz5V6J8XIYzaKjWffc1XdiS0vHANoRQdqpKlFvXaN6srDvXU/DcKP7KgRrWjxMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fWjVTCc+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F2C78C4CECD;
	Sun, 22 Dec 2024 16:54:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734886479;
	bh=LIFtHuARYkddVzDy5sdSE4REwE0emliPySGQGqjY6lY=;
	h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
	b=fWjVTCc+gzEjzB9xRwZkqeMiuzWQ8FdhdsGgbbx23OoUAETDmPQfNvILRi4wrvHdi
	 JkjsRmpkcMBFTsTZn6thREDEP1KvNZ9d4iZF9DWObIprTImsCLl+mmIWfj6R/dGkaL
	 c+4FhXiPkzqnijoo2yOxE41WA9/lfFWJVilBYjeO9DR1kqe485TdEP5Ooy9dSdYmoU
	 2/GrCg9Z/Hr2hmIYc07ihA5Kao9+8LgSD79IqudW3guxW3W94nENUcsrzFodZmv+HT
	 BE9tHYOpdkkYyO2LCd6k+OTcZn/1QVdXhC8y3XuqznYqHuqhAziYVPN1C8lXKI+ljN
	 DMczgnxT9mJCA==
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 71190380A955;
	Sun, 22 Dec 2024 16:54:58 +0000 (UTC)
Subject: Re: [GIT PULL] Devicetree fixes for v6.13, part 1
From: pr-tracker-bot@kernel.org
In-Reply-To: <20241222150822.GA1972679-robh@kernel.org>
References: <20241222150822.GA1972679-robh@kernel.org>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20241222150822.GA1972679-robh@kernel.org>
X-PR-Tracked-Remote: ssh://git@gitolite.kernel.org/pub/scm/linux/kernel/git/robh/linux.git tags/devicetree-fixes-for-6.13-1
X-PR-Tracked-Commit-Id: 8600058ba28a7b07660ddcd150372d72fb3bc895
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: bcde95ce32b666478d6737219caa4f8005a8f201
Message-Id: <173488649710.3369601.15873403946632490639.pr-tracker-bot@kernel.org>
Date: Sun, 22 Dec 2024 16:54:57 +0000
To: Rob Herring <robh@kernel.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, Saravana Kannan <saravanak@google.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

The pull request you sent on Sun, 22 Dec 2024 09:08:22 -0600:

> ssh://git@gitolite.kernel.org/pub/scm/linux/kernel/git/robh/linux.git tags/devicetree-fixes-for-6.13-1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/bcde95ce32b666478d6737219caa4f8005a8f201

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html

