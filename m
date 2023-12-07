Return-Path: <devicetree+bounces-22899-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 76EE38092AE
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 21:47:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5ABD51C20B5D
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 20:47:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5249A4F1F6;
	Thu,  7 Dec 2023 20:46:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BtpQt7Nf"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 379CC4B12F
	for <devicetree@vger.kernel.org>; Thu,  7 Dec 2023 20:46:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0838AC433C8;
	Thu,  7 Dec 2023 20:46:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701982017;
	bh=VHgYIj0+UrPkCxCsGm3HpQawc2WU0JPwE3Cs4W/7ltg=;
	h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
	b=BtpQt7NfGgZSZu5UMLdbFwFVqrXtTNQngV11FstnPNYtTzvaqVOQoaAVA5qMZF/UY
	 Qfezu68KOAV5WQYS0fnTcHrrPeewr4yVZn8WGJhzDCpEGblnfTW13Lnyq81PFGVPvY
	 qhLtxABU76k/26t4Jt5Q6m/gzQzWSZVLfLepU5N0uz5TdUq9xO6Da83Ff17A7Md6lK
	 f0ipMFXY2a9A5ievkn1gid8SuscurIotuzCXF+4FlSbOEEQ/TW3ELnJGTTLPTV9yVb
	 s3aXTDbypCpmz0uGJbSzUmM28fjpjA5XhDFjBVEWVWBCtW9FC2BFTqKSCbUR2Ma1ja
	 fNVISf2d2dcqw==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id E6975C4314C;
	Thu,  7 Dec 2023 20:46:56 +0000 (UTC)
Subject: Re: [GIT PULL] Devicetree fixes for v6.7, take 1
From: pr-tracker-bot@kernel.org
In-Reply-To: <20231206223952.GA3467946-robh@kernel.org>
References: <20231206223952.GA3467946-robh@kernel.org>
X-PR-Tracked-List-Id: <devicetree.vger.kernel.org>
X-PR-Tracked-Message-Id: <20231206223952.GA3467946-robh@kernel.org>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git tags/devicetree-fixes-for-6.7-1
X-PR-Tracked-Commit-Id: 136c6531ba12e4a658376387e355a09c9b5223e5
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: d5c0b601453483f3068b9b06e13f83ea546c36e6
Message-Id: <170198201693.1554.11167426650810078167.pr-tracker-bot@kernel.org>
Date: Thu, 07 Dec 2023 20:46:56 +0000
To: Rob Herring <robh@kernel.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, Frank Rowand <frowand.list@gmail.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

The pull request you sent on Wed, 6 Dec 2023 16:39:52 -0600:

> git://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git tags/devicetree-fixes-for-6.7-1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/d5c0b601453483f3068b9b06e13f83ea546c36e6

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html

