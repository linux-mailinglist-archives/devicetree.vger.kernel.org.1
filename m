Return-Path: <devicetree+bounces-251325-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E7D8CF174C
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 00:43:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A07DF3004CFE
	for <lists+devicetree@lfdr.de>; Sun,  4 Jan 2026 23:43:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2617280308;
	Sun,  4 Jan 2026 23:43:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cYYZCvqe"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7602A26D4F9;
	Sun,  4 Jan 2026 23:43:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767570217; cv=none; b=bo8ObCDdiilRa7y9vf+DKcuOfUy6CoTj6A+fAMaz89BXKMFiOfWCW6riC4Y2j+kBaGJPf1kBF3Y3oXjrKPHYkQaTrnnILOQ/ni8NdxEjR4MluICcIE+p7cT6bWJzmY93XtItHtP8yuNElgHN5J7N1kFkhYnTiSOf0UcUlTbEMrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767570217; c=relaxed/simple;
	bh=0YTraAfveHRHd1Lp/1jZw/bRjaSN9ykzOK4V0xVUUtI=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=d+mn7aFPr5Dhfcx4I8kYejcJjWchbJ4n3SaftSB+9hZqf3uA+EPnnWMlcZdgdn7gX6OHnnLmYQj0jNoHtqhT6QVTRJvyA5aNcln/92jUTCE/DnsVcv1yuUl0CkP/XK4fonwUbT8e716up+x2hG5h5giho8gmWS9qy206p0/CX2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cYYZCvqe; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D77C6C4CEF7;
	Sun,  4 Jan 2026 23:43:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767570217;
	bh=0YTraAfveHRHd1Lp/1jZw/bRjaSN9ykzOK4V0xVUUtI=;
	h=Date:From:To:Cc:Subject:From;
	b=cYYZCvqeTS7uszaJVpKQkcc0SHTpZ21PvU7lPk2MER9jDtLDYiu2lNa76NJg2MEb9
	 EPsPSWHvwCBO5ylEvxqL9RwSV4/QmieBoGKT/YV8pPUwIKbFB/btbtm+yQx0TczUu/
	 fkOC8IJSLbHsvPKH/DATRkQHkZsEekDkqzXJ5QCe3Sj85VFVTsVVSDykHldRjYhc6N
	 2KE2z01dYVXnykPEBD4O0b4yDOMEriRYyABnAu1C81HLcAlRI5r6v8Ft0PkkkqtjW9
	 1IAnLtdgKe+4rLtneDPtCA6JKekJ/FTzr63LGETYY36loCMf/oAV6RKWVQTrbU3T5W
	 1XSKsYG/JUU7Q==
Date: Sun, 4 Jan 2026 17:43:35 -0600
From: Rob Herring <robh@kernel.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Saravana Kannan <saravanak@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [GIT PULL] Devicetree fixes for v6.19, part 2
Message-ID: <20260104234335.GA827897-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Linus,

Please pull 2 more DT fixes for 6.19.

Rob

The following changes since commit ce7b1d58609abc2941a1f38094147f439fb74233:

  arm64: dts: mediatek: Apply mt8395-radxa DT overlay at build time (2025-12-19 09:18:27 -0600)

are available in the Git repository at:

  ssh://git@gitolite.kernel.org/pub/scm/linux/kernel/git/robh/linux.git tags/devicetree-fixes-for-6.19-2

for you to fetch changes up to 235a1eb8d2dcc49a6cf0a5ee1aa85544a5d0054b:

  of: unittest: Fix memory leak in unittest_data_add() (2026-01-02 15:36:37 -0600)

----------------------------------------------------------------
Devicetree fixes for 6.19, part 2:

- Fix an error path memory leak in DT unittest

- Update Saravana's bouncing email

----------------------------------------------------------------
Saravana Kannan (1):
      MAINTAINERS: Update Saravana Kannan's email address

Zilin Guan (1):
      of: unittest: Fix memory leak in unittest_data_add()

 .mailmap              | 2 ++
 MAINTAINERS           | 6 +++---
 drivers/of/unittest.c | 8 +++-----
 3 files changed, 8 insertions(+), 8 deletions(-)

