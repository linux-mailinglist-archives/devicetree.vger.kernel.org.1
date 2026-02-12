Return-Path: <devicetree+bounces-264898-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qCUVE8FRjWkf1AAAu9opvQ
	(envelope-from <devicetree+bounces-264898-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 05:06:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D45BE12A467
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 05:06:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B16D63217A94
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 03:59:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F3B220ADD6;
	Thu, 12 Feb 2026 03:59:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ubPex95N"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59BF51A304A;
	Thu, 12 Feb 2026 03:59:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770868749; cv=none; b=P1QWfGXLEbSFkU9wn0+azvq7kaDMd5cmBlaKWqB+9ItIcWWPVTZsGvl2aUj4QaTJ8oZ9p3ob4VcWOkcIhaqGUjwpQyinOBI7M4+F04/pumYtCggWMTzloWvvHeTvUGXudEfuCH/SrfEZpT20x1aAo3X5k+DoBakuPXe6q3Eowi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770868749; c=relaxed/simple;
	bh=a46rfjnlaMgPHlSJOHgqt0FPo4MLvbxGCb7JsRbXUCM=;
	h=Subject:From:In-Reply-To:References:Message-Id:Date:To:Cc; b=kLTkhZqwPhcw9Xmp3H7yxxbc2gSWN9ci8SKLxRjMwhxQVbnLUqaaaAUztngUhnsMA/0j5JRIHhnT8ic6i2EX6wXV0eNYZgEyinJ7yw0i80rYfLPgvFrNnXFQ4gOW1A5APVZArGCP9HFK6+VIKStVYM7ba0gWT9YQNmIbv5hePMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ubPex95N; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 334A7C4CEF7;
	Thu, 12 Feb 2026 03:59:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770868749;
	bh=a46rfjnlaMgPHlSJOHgqt0FPo4MLvbxGCb7JsRbXUCM=;
	h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
	b=ubPex95Nzmrm+cfRk8b/8e7DmRMXy+D6W0R/20a19YFqYROEuqSh7nLTV7PDbCA7E
	 gwJwYkDDuxgFugxcbtdcnXE9N7mU601kvctbLwR5K1vrkK3ctPpGSAJO1aBgejB6vt
	 ykFWgqDFApJmVNcvGP5VQdEewLhk6ersNzx3isXjDb2gx3Z2yEuug0IAFS/IGzNu4S
	 OZfbmzEjOdW+i8j9+fK15VKL6bLV7GHmnZGFcOb8SlG74npxH6EZi+krngxv6bDDPf
	 /4OYfUgCjGXtm3CmQYc8fYRoxfDWslOFIfjkngFH2Ux4pG+x68jxLFYB84mFl8ojl+
	 dG3QaNGgKZaZA==
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 0B01139EF966;
	Thu, 12 Feb 2026 03:59:05 +0000 (UTC)
Subject: Re: [GIT PULL] Devicetree updates for v7.0
From: pr-tracker-bot@kernel.org
In-Reply-To: <20260212014040.GA120198-robh@kernel.org>
References: <20260212014040.GA120198-robh@kernel.org>
X-PR-Tracked-List-Id: <devicetree.vger.kernel.org>
X-PR-Tracked-Message-Id: <20260212014040.GA120198-robh@kernel.org>
X-PR-Tracked-Remote: ssh://git@gitolite.kernel.org/pub/scm/linux/kernel/git/robh/linux.git tags/devicetree-for-7.0
X-PR-Tracked-Commit-Id: a16f91f80735e653b88370b840d5c771f2c175c5
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 098b6e44cbaa2d526d06af90c862d13fb414a0ec
Message-Id: <177086874358.893578.13050902050993369166.pr-tracker-bot@kernel.org>
Date: Thu, 12 Feb 2026 03:59:03 +0000
To: Rob Herring <robh@kernel.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, Saravana Kannan <saravanak@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_FROM(0.00)[bounces-264898-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FROM_NO_DN(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pr-tracker-bot@kernel.org,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D45BE12A467
X-Rspamd-Action: no action

The pull request you sent on Wed, 11 Feb 2026 19:40:40 -0600:

> ssh://git@gitolite.kernel.org/pub/scm/linux/kernel/git/robh/linux.git tags/devicetree-for-7.0

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/098b6e44cbaa2d526d06af90c862d13fb414a0ec

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html

