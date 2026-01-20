Return-Path: <devicetree+bounces-257658-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aCGVMYkTcGlyUwAAu9opvQ
	(envelope-from <devicetree+bounces-257658-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 00:45:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 433864E0C1
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 00:45:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 35E00B665B8
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 23:23:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C0B63D7D8C;
	Tue, 20 Jan 2026 23:23:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sqqIKHXG"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4580C33A6F8;
	Tue, 20 Jan 2026 23:23:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768951409; cv=none; b=N9tkbeJeyzzOnjTgozRB/yW/CrV9EAVwg2hTuczOU1vkFjG2xutzeWf9bTu+WDE/fIhW2EKKflbebQDb0U1xhcy1vMFuljJsvJ17FJcAdNuE8HhC3DC57fwrAS2hOWhWo7Gj/SWnLvQXnwPo2Wlemn53BBFIqa/PFPgXOT9sCu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768951409; c=relaxed/simple;
	bh=LdToKQzIadhn2PyOS8O3OWl0iFO9YJxxP4wDuHYoNvo=;
	h=Subject:From:In-Reply-To:References:Message-Id:Date:To:Cc; b=uHcxiyVVtjSIkVvAJsQWAKMHhKrC1CuPTsZH5NHDNdzArQ+5hR/FfHG89kbRfUh90EioHhmx+jNXtNLgWPWaQ4vuNo1ZPZLn3W1cqwbtRtm2LMKb4W356vuY8e1vNCUcvwqvaMz/byddCEvTxEKxEffjf4cCVtJHUgDrBfYjTRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sqqIKHXG; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2434FC16AAE;
	Tue, 20 Jan 2026 23:23:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768951409;
	bh=LdToKQzIadhn2PyOS8O3OWl0iFO9YJxxP4wDuHYoNvo=;
	h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
	b=sqqIKHXG/dgrH9zQYLVGfNLqCGTMLLIHAgNEPs0ACSUjeS98yOE0r8Cyzm4GFK67S
	 j3TZousC5+87/uljm0CxeAj6pIaxx9p4/K/3tsP1PJ4m5iWlLJ151/je0Y6MWiuCNB
	 /DK1YP/xVpeKSS3fJVYlIpd4OWSRy7vpGoHJ4ROjAcN2YfTRI7KkuQuWDhVQnCgl9I
	 2UcTy00nf6kEAvAw8HSunaQat3iW1wucZS//I7qAY3ww7+wu6ZDFma4++q9F2LNcyG
	 b5mb5tx4pROGG82HJBZtKCqAElkBD7EZum/NA75TMQ+aVyF6qyy8VQZ9um3rw+lp6g
	 E9YpgzZURw9sQ==
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id C8D25380820D;
	Tue, 20 Jan 2026 23:23:27 +0000 (UTC)
Subject: Re: [GIT PULL] Devicetree fixes for v6.19, part 3
From: pr-tracker-bot@kernel.org
In-Reply-To: <20260120222753.GA1357911-robh@kernel.org>
References: <20260120222753.GA1357911-robh@kernel.org>
X-PR-Tracked-List-Id: <devicetree.vger.kernel.org>
X-PR-Tracked-Message-Id: <20260120222753.GA1357911-robh@kernel.org>
X-PR-Tracked-Remote: ssh://git@gitolite.kernel.org/pub/scm/linux/kernel/git/robh/linux.git tags/devicetree-fixes-for-6.19-3
X-PR-Tracked-Commit-Id: 81122fba08fa3ccafab6ed272a5c6f2203923a7e
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 6c790212c588fddeb0d852f2790840753bb604b1
Message-Id: <176895140638.649372.7933851720396875803.pr-tracker-bot@kernel.org>
Date: Tue, 20 Jan 2026 23:23:26 +0000
To: Rob Herring <robh@kernel.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, Saravana Kannan <saravanak@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [-0.46 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-257658-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_NO_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pr-tracker-bot@kernel.org,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: 433864E0C1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The pull request you sent on Tue, 20 Jan 2026 16:27:53 -0600:

> ssh://git@gitolite.kernel.org/pub/scm/linux/kernel/git/robh/linux.git tags/devicetree-fixes-for-6.19-3

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/6c790212c588fddeb0d852f2790840753bb604b1

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html

