Return-Path: <devicetree+bounces-248524-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DE220CD3680
	for <lists+devicetree@lfdr.de>; Sat, 20 Dec 2025 21:14:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9C7A63010CE5
	for <lists+devicetree@lfdr.de>; Sat, 20 Dec 2025 20:14:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D56C230EF7B;
	Sat, 20 Dec 2025 20:14:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DshIZa6u"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE9EF8248B;
	Sat, 20 Dec 2025 20:14:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766261671; cv=none; b=UNoCCWDM/juvSbz6YdQ0hpxFNyaEpX1FU3ZPEuTaR5P25k3ILntUKXNJjpqrDpHmS3qNBtr503THMXcTbbJyDA3hwblNO6GrPN9tDrblNQb3Jhku867o3wruAtNilz/ALYT5yTunmHuYGAxygVrZAzCwN5AytzYN8RaCU1RwSTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766261671; c=relaxed/simple;
	bh=KbW7OA0swDrv2Tfm37MP01RIiwJNmnKHQBs5zClGphE=;
	h=Subject:From:In-Reply-To:References:Message-Id:Date:To:Cc; b=FrtTen9cPMyVKGJwTZtDuh30a+IW9r1iX4XtvDFouC+cCaoyjrteol6XwXiUrEhpK6j1glWxolhxf0K2XyXBkphjdzye4+/6i2QKeoey0XJi6qGvOLMljanmHEox3jDKwRfhleuGpMlArs9+S5PULt6qtKBqfkmzoHWDxeIdrds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DshIZa6u; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8C7D9C4CEF5;
	Sat, 20 Dec 2025 20:14:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766261671;
	bh=KbW7OA0swDrv2Tfm37MP01RIiwJNmnKHQBs5zClGphE=;
	h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
	b=DshIZa6uQyL6m6qbW0IGCKkxeIMQoBE5MVtx/kc8uCY7lW2ZlEXFGT/kyhx8O0jjN
	 Gk8/Ty1+D+9kHXWTdnF6sgV1UIUkUzypZDXeNRUj83CWmf/igB8nQDOkJXZFA6Q0Tw
	 WYqdp1t25BGyFBiFwnTiVphEWTizsjPHS9j4MSVnnXYhkSPIVcKSYpj1x2b8lFHPvu
	 kz6/TqTaH/JxrnzfgSzh/+TIUGxsqPlppQw/AyknjxSrZ5sXM++QtVFxf/YkLLsXZ0
	 ng0izu9/gWF5oWdvQbLzG4iIcgZWeYkw0YMOhG91QUy9mRVundy+IcnxsD1wKJHrwf
	 OM21S75gw+aQg==
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id BCB873809A05;
	Sat, 20 Dec 2025 20:11:20 +0000 (UTC)
Subject: Re: [GIT PULL] Devicetree fixes for v6.19, part 1
From: pr-tracker-bot@kernel.org
In-Reply-To: <20251219155546.GA3433312-robh@kernel.org>
References: <20251219155546.GA3433312-robh@kernel.org>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20251219155546.GA3433312-robh@kernel.org>
X-PR-Tracked-Remote: ssh://git@gitolite.kernel.org/pub/scm/linux/kernel/git/robh/linux.git tags/devicetree-fixes-for-6.19-1
X-PR-Tracked-Commit-Id: ce7b1d58609abc2941a1f38094147f439fb74233
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: d571fe47bb86c107ec57dd546b1ba4ccc209eb27
Message-Id: <176626147925.129879.13205737753772343669.pr-tracker-bot@kernel.org>
Date: Sat, 20 Dec 2025 20:11:19 +0000
To: Rob Herring <robh@kernel.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, Krzysztof Kozlowski <krzk@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

The pull request you sent on Fri, 19 Dec 2025 09:55:46 -0600:

> ssh://git@gitolite.kernel.org/pub/scm/linux/kernel/git/robh/linux.git tags/devicetree-fixes-for-6.19-1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/d571fe47bb86c107ec57dd546b1ba4ccc209eb27

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html

