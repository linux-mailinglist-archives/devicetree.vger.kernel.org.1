Return-Path: <devicetree+bounces-251331-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6865BCF1A85
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 03:40:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0CE713009F33
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 02:39:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A236031AF1E;
	Mon,  5 Jan 2026 02:39:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HX7vnZzp"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B1C931AA90;
	Mon,  5 Jan 2026 02:39:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767580768; cv=none; b=ehphu2gh88VjOLYOyaUgO/ksWtlyQri3bMrQC3r8UrQARuQZIQrwfmGMrGeY612+p1L4AMQV7E7NRJnOlHAvR4tZrCUzqTA6MqEOlsoxRaLnhqpJxUir5XT0oUkajovPuLf7/jqVHGtVGtBF6DdoyiTaUHkuQ+bp7ckpQua5xN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767580768; c=relaxed/simple;
	bh=96kop0wz6xrV3yb1zmVPWGnn4+H0O9EWQwc0AXCRXWk=;
	h=Subject:From:In-Reply-To:References:Message-Id:Date:To:Cc; b=Iit4Mn5UkdAWlcBO5v4txhHuNqZ6Ov5TpgIWUTZIHAgl9u1HxnJd6MZJb0O8W1sQ4NLizJrG/70baCyl9mZ2/+Q/CVYPa+mUnSg/aX7QXmjAMr9mLVgugQBGPpioaGnVD09Jw/XrkWwKy7maG6ZWaH3KSERFAQVUGW3nnlLI//c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HX7vnZzp; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D78B8C4CEF7;
	Mon,  5 Jan 2026 02:39:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767580767;
	bh=96kop0wz6xrV3yb1zmVPWGnn4+H0O9EWQwc0AXCRXWk=;
	h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
	b=HX7vnZzp9A9sY4I57eZOHndz9T2Xi/44A5xYypqE4eEWALyafwpvFOe7GH4Fv52O6
	 i/wgQQVG5vbQIWrg3QfMCf9WZGBkOImpxfqnfTMVOZYa3LjTF1dhPAZFMbCH6zbeMG
	 T3Gld+TY4Bkim2MGKzkMzKlrJqUfktXo7/MDwtdp9QM4GIbGBnPFPtlad7kOMjo/LP
	 wjtZxTc9xJr1SmPlJmloVLQ517A5F4PnPv1HHDb0oABTnJebyHR+2j9y5pkK+3lQRC
	 qzpKTyb1T+yhSKYdYRF6Gs9Cv53VFPa5vKSMeMM3hsvK+I37QNf1Gfcmrmh0oggRZp
	 AkqAieDzTNMDg==
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B5B10380AA42;
	Mon,  5 Jan 2026 02:36:07 +0000 (UTC)
Subject: Re: [GIT PULL] Devicetree fixes for v6.19, part 2
From: pr-tracker-bot@kernel.org
In-Reply-To: <20260104234335.GA827897-robh@kernel.org>
References: <20260104234335.GA827897-robh@kernel.org>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20260104234335.GA827897-robh@kernel.org>
X-PR-Tracked-Remote: ssh://git@gitolite.kernel.org/pub/scm/linux/kernel/git/robh/linux.git tags/devicetree-fixes-for-6.19-2
X-PR-Tracked-Commit-Id: 235a1eb8d2dcc49a6cf0a5ee1aa85544a5d0054b
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 3609fa95fb0f2c1b099e69e56634edb8fc03f87c
Message-Id: <176758056626.596235.8892481794470352310.pr-tracker-bot@kernel.org>
Date: Mon, 05 Jan 2026 02:36:06 +0000
To: Rob Herring <robh@kernel.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, Saravana Kannan <saravanak@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

The pull request you sent on Sun, 4 Jan 2026 17:43:35 -0600:

> ssh://git@gitolite.kernel.org/pub/scm/linux/kernel/git/robh/linux.git tags/devicetree-fixes-for-6.19-2

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/3609fa95fb0f2c1b099e69e56634edb8fc03f87c

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html

