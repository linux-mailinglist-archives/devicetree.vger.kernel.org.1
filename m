Return-Path: <devicetree+bounces-140866-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 31140A1BF06
	for <lists+devicetree@lfdr.de>; Sat, 25 Jan 2025 00:31:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E5927188D4AF
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 23:31:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98E7E1D45FE;
	Fri, 24 Jan 2025 23:31:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ttvtb5OE"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F8252B9BC;
	Fri, 24 Jan 2025 23:31:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737761507; cv=none; b=qnjdiyTRVM0VLrGo0DsuJ4q9mRqf4GTVO9+UkJpgLBw47SXHeBy6cix9bU7UbjGSjx3Swb76yFz5/f7O9FafX54QLMjTjD6L8Eq0iTv49FcGU8KbCIcQyvx3waYp16dIbm+V9oRPRTHphpbMbbaf4ko9HFDIXxa0fLT5y55H7Rw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737761507; c=relaxed/simple;
	bh=9BmOoTq53ye9tjZo1bGETo3qHC8dyFuNTfbdTUZrzCc=;
	h=Subject:From:In-Reply-To:References:Message-Id:Date:To:Cc; b=OlExp+HauqkfMraZC+UA1qR9tZlH284jpYKVQtyCUwoUYZrEz2Zh38ZAbmeEA0rb9XUQ7Y2MGmOhZCWkdvbArCM8gJhI8MFZCo5/Hm0tMnWV4CzCNJ/DrusFVPnvb8CPMz5dGyReBc4hGeX/Q9CJcKqzBdsjZ3UplDPGW9ycFNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ttvtb5OE; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A24EC4CED2;
	Fri, 24 Jan 2025 23:31:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737761507;
	bh=9BmOoTq53ye9tjZo1bGETo3qHC8dyFuNTfbdTUZrzCc=;
	h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
	b=ttvtb5OEn9CcCP+MWwARQPbTASHbtgzV2DTIE3ruu8UmylIJz9w61ij4cxpiHyObK
	 vnDjMPzy0NggX7jc7Cq1Z66fhNz+wKMuOmOq1xAb+C6DkP5Z7S8jUBMEmqSQuXtoC4
	 RUyHvxZUh/Bxu64kFVAfglL08tSdlm7mY4HWE4I7NhSZtm9Wn/mmkv62GC+me+TGNf
	 Z7bMji4DtbDEZ7pUu+SQZ5UJRvChp3gfK5ehfco843V/s9/7WXKkIrD0rjMAzRg73K
	 zEqiS9bie451ZzIjzlZuTkansuBLoan7UtA77oA5l1t5eyXASegg+jS0OEGoqiNWv2
	 8Z5lM/W75XTCA==
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 70E97380AA79;
	Fri, 24 Jan 2025 23:32:13 +0000 (UTC)
Subject: Re: [GIT PULL] Devicetree updates for v6.14
From: pr-tracker-bot@kernel.org
In-Reply-To: <20250124225700.GA2614452-robh@kernel.org>
References: <20250124225700.GA2614452-robh@kernel.org>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20250124225700.GA2614452-robh@kernel.org>
X-PR-Tracked-Remote: ssh://git@gitolite.kernel.org/pub/scm/linux/kernel/git/robh/linux.git tags/devicetree-for-6.14
X-PR-Tracked-Commit-Id: 15e2f65f2ecfeb8e39315522e2b5cfdc5651fc10
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: f345fc7a07065902fab1d33c11dfe631ee95357c
Message-Id: <173776153200.2206224.2896583250525957472.pr-tracker-bot@kernel.org>
Date: Fri, 24 Jan 2025 23:32:12 +0000
To: Rob Herring <robh@kernel.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, Saravana Kannan <saravanak@google.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

The pull request you sent on Fri, 24 Jan 2025 16:57:00 -0600:

> ssh://git@gitolite.kernel.org/pub/scm/linux/kernel/git/robh/linux.git tags/devicetree-for-6.14

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/f345fc7a07065902fab1d33c11dfe631ee95357c

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html

