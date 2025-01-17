Return-Path: <devicetree+bounces-139387-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F115A15940
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 22:59:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 002CB188C7F3
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 21:59:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 472161ABECA;
	Fri, 17 Jan 2025 21:59:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UAxpRxeF"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D9EE25A643;
	Fri, 17 Jan 2025 21:59:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737151158; cv=none; b=FLskCY5bEINDOimbgVLEsYsAK/G0MnSJYekHHZhfemlxsegMjuZA05wVJxNaGGG589Hp/78c8D9voIAfwd83U9N2LkusVttZOcqPg2xU9DrjY54NR8BN1pRx+KFGAi729hK8Ke2vEXA8vz7rl4STP+SZncCoShVT8mEngKpkjIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737151158; c=relaxed/simple;
	bh=x2iLxCS0gGhMDWAMZNo3w4ianJSwEH9cvWjX+56hWVM=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=HINGt9QKlo0S0qn97dU7DAE6WLwgw6DS5ZdrlzHdYD13EUSdSKfPMvGivzcGpT7TCxpreI04s1l5eN351VN4rye0rOxfqExzYFCyE/bKOiXnU2OHEOVIrTOI36jOTxtn210zHMjltXWWAYZ7OKNovNkCPGao7j3bYknFGaUZbSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UAxpRxeF; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 60A74C4CEDD;
	Fri, 17 Jan 2025 21:59:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737151157;
	bh=x2iLxCS0gGhMDWAMZNo3w4ianJSwEH9cvWjX+56hWVM=;
	h=Date:From:To:Cc:Subject:From;
	b=UAxpRxeFsEyoqzS0TzNVjbKj8q2PJAMiuhVKJRIqntVCq/PP6Y/eA+eZRP1P/5CiL
	 1bo8uy95OFMv3zt3J7KuZpu/x/z6WEOoCNjDQNSvWXqDLIsB1Z0+NrY3GoxnHdK+DR
	 eZIpMbeMw3KOoHV4l/caPx2QH98Kw2iZTYJdcLcRdR8nd0K7Sl4FGh9Jpr0RH8qiVH
	 yHwJ1sfeV9GdF8mkaMdyUsLcqcCUAf3JJdJbYZk8Wri1rllwHeiZ8AqjZzvZ/CoZDA
	 WcRgEo2khcit6kpH5YhQLTFCU0lxBZ979zpUETiwWOXX3nnVIL8HDlVZahCnfqh7xe
	 ttmIXW5nMoJ3A==
Date: Fri, 17 Jan 2025 15:59:16 -0600
From: Rob Herring <robh@kernel.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Saravana Kannan <saravanak@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [GIT PULL] Devicetree fixes for v6.13, part 2
Message-ID: <20250117215916.GA1682842-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Linus,

Please pull this one fix for 6.13.

Rob


The following changes since commit 8600058ba28a7b07660ddcd150372d72fb3bc895:

  of: Add coreboot firmware to excluded default cells list (2024-12-20 15:39:22 -0600)

are available in the Git repository at:

  ssh://git@gitolite.kernel.org/pub/scm/linux/kernel/git/robh/linux.git tags/devicetree-fixes-for-6.13-2

for you to fetch changes up to 6e5773d52f4a2d9c80692245f295069260cff6fc:

  of/address: Fix WARN when attempting translating non-translatable addresses (2025-01-12 15:31:47 -0600)

----------------------------------------------------------------
Devicetree fixes for 6.13, part 2:

Another fix and testcase to avoid the newly added WARN in the case of
non-translatable addresses.

----------------------------------------------------------------
Rob Herring (Arm) (2):
      of/unittest: Add test that of_address_to_resource() fails on non-translatable address
      of/address: Fix WARN when attempting translating non-translatable addresses

 drivers/of/address.c                         | 18 +++++++++++++++---
 drivers/of/unittest-data/tests-platform.dtsi | 13 +++++++++++++
 drivers/of/unittest.c                        | 14 ++++++++++++++
 3 files changed, 42 insertions(+), 3 deletions(-)

