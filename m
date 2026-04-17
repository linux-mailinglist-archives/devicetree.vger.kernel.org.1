Return-Path: <devicetree+bounces-288296-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OBgsAZ+l4mlV8gAAu9opvQ
	(envelope-from <devicetree+bounces-288296-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 17 Apr 2026 23:26:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C16141EB18
	for <lists+devicetree@lfdr.de>; Fri, 17 Apr 2026 23:26:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7FD4C30A534D
	for <lists+devicetree@lfdr.de>; Fri, 17 Apr 2026 21:24:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 307EB31D730;
	Fri, 17 Apr 2026 21:24:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bv/c2h/m"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DC942BEC2B;
	Fri, 17 Apr 2026 21:24:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776461053; cv=none; b=Gjsxti9Ru8PGnd7Zc2UzTP1WMYJzK6bAsgBbV4sclDYZeyjCeazWagbC/pcKdD98bbgjFG2ThY8rgqs0ByJ27PWU7UxTJeGvolJIoxw0krwoHyT1PZshxE6TcuOZUpKiEE612tVJQQ/3VbNkXLjN7cGH+Dz47gM7B/rvROberuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776461053; c=relaxed/simple;
	bh=yxw/8V9vvHxyw0zJwz+xcswNwAcY/DFgO0ThmnB7Sdc=;
	h=Subject:From:In-Reply-To:References:Message-Id:Date:To:Cc; b=S+WYmHMxJaU2EhogiE0cPBf6mBUnvGnayvbUlW7q75bmkfx2FpnTlhE4teB7jv2VQ+5Mi8OitDiooDi8UUrFm21Rk56a4/cC7wlg+2cyPmbqAVyF4OHehs2h7QCEX5O1NJzxJsQbMuCbU4Woh7H2AwIPnsmdteKh35cwwx7N1xQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bv/c2h/m; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E5BDDC19425;
	Fri, 17 Apr 2026 21:24:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776461052;
	bh=yxw/8V9vvHxyw0zJwz+xcswNwAcY/DFgO0ThmnB7Sdc=;
	h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
	b=Bv/c2h/mrVHNzgxRqHajX4PICqBxVqoeCpEy0V6p6652jC95guw2AQY2zTkL5MeSg
	 hWwA/Yyf2QVd/Cc+jOywThFc1CONr7QRJhFA+w1QM0dRC31uY4yEx0k1uAj5Q63NjP
	 EicZ6rr4+uY3CoB21A3yudLPRdsiUhSHKVVBGCGWNf0u27aQgvvE6Z1gNfi1BK/179
	 D2x6z1qm51CJVcVLYzNQU/PdxZmHMfqBJkD80HvN04JdeCO7OIhaPCH7FJFQuEV8Kp
	 19vcs9dl12wEbZyXgf1vaTj/ufnlwiHnNXOmOHMl9iA8U5ceq17h6SmFZnuiBXShX2
	 QhQx0+B/dBnDQ==
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 7CE45380CEE7;
	Fri, 17 Apr 2026 21:23:41 +0000 (UTC)
Subject: Re: [GIT PULL] Devicetree updates for v7.1
From: pr-tracker-bot@kernel.org
In-Reply-To: <20260417184448.GA1533367-robh@kernel.org>
References: <20260417184448.GA1533367-robh@kernel.org>
X-PR-Tracked-List-Id: <devicetree.vger.kernel.org>
X-PR-Tracked-Message-Id: <20260417184448.GA1533367-robh@kernel.org>
X-PR-Tracked-Remote: ssh://git@gitolite.kernel.org/pub/scm/linux/kernel/git/robh/linux.git tags/devicetree-for-7.1
X-PR-Tracked-Commit-Id: a74c2e55ab66519ffa2069ac9ae83cd937bff4c4
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: e2d10998e4293a27c0389870b5fdf736a71d61ef
Message-Id: <177646102014.161623.12058284851803757809.pr-tracker-bot@kernel.org>
Date: Fri, 17 Apr 2026 21:23:40 +0000
To: Rob Herring <robh@kernel.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, Saravana Kannan <saravanak@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [-0.66 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-288296-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pr-tracker-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NO_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 8C16141EB18
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The pull request you sent on Fri, 17 Apr 2026 13:44:48 -0500:

> ssh://git@gitolite.kernel.org/pub/scm/linux/kernel/git/robh/linux.git tags/devicetree-for-7.1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/e2d10998e4293a27c0389870b5fdf736a71d61ef

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html

