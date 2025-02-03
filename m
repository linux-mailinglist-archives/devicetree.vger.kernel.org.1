Return-Path: <devicetree+bounces-142606-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 70C0EA25E01
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 16:10:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0651718816C2
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 15:08:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 685EA208997;
	Mon,  3 Feb 2025 15:08:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AEE520897C;
	Mon,  3 Feb 2025 15:08:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738595308; cv=none; b=utUKe9kHFoJV1Cl5wnH81ht73VdtlxOU+Rsk/opYchD+myvdniZ0sEAO5braPjK04DPlXCy3FGE3daFdavzNAVPM/nytVHAr7RwV9Se+2gWuSZIJoeUItmrptbqKFgEDaza6ZggOb0vLSl9hXsg4zCKXZ5TIoQRzdM1SjRNHy0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738595308; c=relaxed/simple;
	bh=xvNR/QUSPuereDKwzJjmn4QtJzLR/7rvTocjTiqaCDM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=RfCWtR3WnuZCQdTjgPIa2d3wiGhlL9T9ilG2+vwf5QFCqQB7RooZozySXEwDkrWAy7T/UuqtzN0kQuQnl1JPkyS2NOKKRqvUIeujL0lUIqoMUUhYJ71WlSROsbPUOmco8xzWR1nVblr78etZIClqv4Vs6SLDXEwdZxum1DNmZoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 542B9C4AF09;
	Mon,  3 Feb 2025 15:08:27 +0000 (UTC)
Received: by venus (Postfix, from userid 1000)
	id 45DEB1807D5; Mon, 03 Feb 2025 16:08:24 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: linux-sunxi@lists.linux.dev, Chris Morgan <macroalpha82@gmail.com>
Cc: devicetree@vger.kernel.org, linux-pm@vger.kernel.org, lee@kernel.org, 
 samuel@sholland.org, jernej.skrabec@gmail.com, wens@csie.org, 
 conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org, sre@kernel.org, 
 Chris Morgan <macromorgan@hotmail.com>
In-Reply-To: <20250131231455.153447-1-macroalpha82@gmail.com>
References: <20250131231455.153447-1-macroalpha82@gmail.com>
Subject: Re: (subset) [PATCH 0/5] Fix RG35XX Battery Charging Issues
Message-Id: <173859530427.32012.7830763224536465875.b4-ty@collabora.com>
Date: Mon, 03 Feb 2025 16:08:24 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Fri, 31 Jan 2025 17:14:50 -0600, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> The Anbernic RG35XX devices sometimes fail to charge when the register
> for the battery temperature sensor is set to the incorrect value either
> by user error or an incorrectly programmed efuse. Allow users to
> hard-code if a temperature sensor is not present (which is the case for
> all Anbernic RGxx series devices) to prevent this issue from causing
> problems. Additionally, a bug was identified with the handling of PMU
> faults while this fix was being tested.
> 
> [...]

Applied, thanks!

[1/5] power: supply: axp20x_battery: Fix fault handling for AXP717
      commit: 98380110bd48fbfd6a798ee11fffff893d36062c

Best regards,
-- 
Sebastian Reichel <sebastian.reichel@collabora.com>


