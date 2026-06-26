Return-Path: <devicetree+bounces-316191-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id aNmiMafaPmpyMQkAu9opvQ
	(envelope-from <devicetree+bounces-316191-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 22:01:43 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B4066CFF19
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 22:01:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="UOwZ1/tG";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316191-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-316191-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6D45330142B6
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 20:01:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A2D930596F;
	Fri, 26 Jun 2026 20:01:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81FD32D8767;
	Fri, 26 Jun 2026 20:01:20 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782504081; cv=none; b=qCjO4AykG9HcV8cXZ5Fu5JZ3SmbsIHj1KRL2t/XsKbmDymf26EbFdcxXxvugJzz4FA/z8rHx+LOyDo+WScokwQGYvRBns9mD0I4w+u5+Vi4Zt2HA6hYm4C2/rPSc8ubIG+WPCVILukR/ATEs6fLuzoz8HYUfEIpHSAMAXCL4Ff0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782504081; c=relaxed/simple;
	bh=YfV+4JEHQut0Tj4bSHZ39cY262mqNHYmFIuAYutra9Q=;
	h=Subject:From:In-Reply-To:References:Message-Id:Date:To:Cc; b=ZV8QWaOKb9auZl08NniBAEDcu71nrFXu2HENXG75wWwSFVIRv0O/g5DD9E1TwW3qDLmJobADOaFRd0iEkiBJpRI8roQ3EsS8OF4N5JxHF2lyNajeYPYLw8Z5jmex7ivSV3fN0Igae9UQ11l/4uMorAaP87se6wQ91VRA9XT+YxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UOwZ1/tG; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 39F621F000E9;
	Fri, 26 Jun 2026 20:01:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782504080;
	bh=N+gCNHdf9GvZp/8h1OmtunGbBXZTCcFwdChn8s6KM8s=;
	h=Subject:From:In-Reply-To:References:Date:To:Cc;
	b=UOwZ1/tGgUONkUX5MasgjzqolKK2y2K+ukmtSSDgJvx1fsgwsGBoa8Z9juj+u/CjZ
	 EGDymylWcSHA0l8YM60N1vet3O4H4NvmQeQLvTZQ+dVW3eaHBoKemzFjuduUC30vrT
	 g9JEpKTUVJTf0teL25zvdr5q/66oBxRySq/IGJlE6ykCaecV8kdBeK96D6qKu7g4K+
	 xc5wK1dMVNMtJpmhKU6Xe6A95ewUZNX70SHB+467TbvfhGw9mJ8Z5eI3ur3RoibgFq
	 Nuf5pyIkBi6DIDOdfGE07ykUrIe3SOhuY8QUfoaWgzjKMAnkZKtY35UE2aVIOEmUMQ
	 X5/L2itDqWeIQ==
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 199193938C5D;
	Fri, 26 Jun 2026 20:01:08 +0000 (UTC)
Subject: Re: [GIT PULL] Devicetree fixes for v7.2, part 1
From: pr-tracker-bot@kernel.org
In-Reply-To: <20260626133834.GA2142045-robh@kernel.org>
References: <20260626133834.GA2142045-robh@kernel.org>
X-PR-Tracked-List-Id: <devicetree.vger.kernel.org>
X-PR-Tracked-Message-Id: <20260626133834.GA2142045-robh@kernel.org>
X-PR-Tracked-Remote: ssh://git@gitolite.kernel.org/pub/scm/linux/kernel/git/robh/linux.git tags/devicetree-fixes-for-7.2-1
X-PR-Tracked-Commit-Id: b39a6b2e9d5bd6a3153aed4c7440172b8f6a739e
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: fc91b7d77d78c6381b437b7c96aca6b03f7bbfed
Message-Id: <178250406667.1075722.584363152520973322.pr-tracker-bot@kernel.org>
Date: Fri, 26 Jun 2026 20:01:06 +0000
To: Rob Herring <robh@kernel.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, Saravana Kannan <saravanak@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-316191-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:torvalds@linux-foundation.org,m:saravanak@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[pr-tracker-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NO_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pr-tracker-bot@kernel.org,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1B4066CFF19

The pull request you sent on Fri, 26 Jun 2026 08:38:34 -0500:

> ssh://git@gitolite.kernel.org/pub/scm/linux/kernel/git/robh/linux.git tags/devicetree-fixes-for-7.2-1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/fc91b7d77d78c6381b437b7c96aca6b03f7bbfed

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html

