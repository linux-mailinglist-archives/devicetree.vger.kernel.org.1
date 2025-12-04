Return-Path: <devicetree+bounces-244443-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A9E87CA4F6B
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 19:40:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 368033072845
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 18:39:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E45C35770B;
	Thu,  4 Dec 2025 18:39:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZWjkMzI1"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E54033570CB;
	Thu,  4 Dec 2025 18:39:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764873558; cv=none; b=eOXlvaeWC4uBlyDKlUN0a7ZUnjsTH3enF6ab5+ymGdR/Ni0iEDoaCOp56T3Gub8mVj1SLmEMBirYUlTIvPEX7r+fG5zB7zE4qWqzwvu9wDHgJz+mgmgU0qjFYP3J94PLCi0bn5bQJDyQ+5KIHTOxDEtlWYa9NoYDiW+A9IK9u/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764873558; c=relaxed/simple;
	bh=nT+HTh6DNWj8DJoPrDsJZO/bEIzIqgqUXwO2UF73cEE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HW4nCwNow1FR7AmpXoey7S9onD80hufMhQP/pBoqEbzEEvgGJ0KzJKkKjtD48/1DHNWOBnqMtok1dIkheMdmnuDFYJFsXqahsHK1aMW8g4jwJE3MJw7V8gLaAgcgxHKiTnvrYRTQXlxdhpv4Jg45YHY1mMcYIFlUJsTH7j8h6D8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZWjkMzI1; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 87D30C4CEFB;
	Thu,  4 Dec 2025 18:39:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764873557;
	bh=nT+HTh6DNWj8DJoPrDsJZO/bEIzIqgqUXwO2UF73cEE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZWjkMzI1HP598AKSHkkRNU/2C+PGshF6WIq8cffoNuR9IRR5FpNSpKXZ7pVBGXyGb
	 XOF/nrnR8R4JWq5SquuJo8jnFGKW48W6AsRuKNk1DMSz6FHpPFYgxF9Xwu7gEV0Bzw
	 6heYraNbqXir8S9zZeDtZkUoGciDW+DmR/atOhk5IgEqrsWK6H1xCsmldYHUFNKWWn
	 urKFLI/ynYq/LAMVHVQ/FK+lCiPH7szTxm7hM+dCux2v7U47xJyk9+iAx59gSxvhwK
	 ZT5PGCa9eoD171C04JbbCL76ZkS1SFJ+dy0ycL0tWk7Lgjfy6w7/W6wuIKGjYAReDg
	 NziTlg7i3ftmg==
Date: Thu, 4 Dec 2025 12:39:14 -0600
From: Rob Herring <robh@kernel.org>
To: Renjun Wang <renjunw0@foxmail.com>
Cc: neil.armstrong@linaro.org, jessica.zhang@oss.qualcomm.com,
	airlied@gmail.com, simona@ffwll.ch,
	maarten.lankhorst@linux.intel.com, mripard@kernel.org,
	tzimmermann@suse.de, krzk+dt@kernel.org, conor+dt@kernel.org,
	thierry.reding@gmail.com, sam@ravnborg.org,
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: display: simple: Add HannStar HSD156JUW2
Message-ID: <20251204183914.GA1955620-robh@kernel.org>
References: <tencent_FD75580BB3BF35F44985E237E7DE56BE2407@qq.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <tencent_FD75580BB3BF35F44985E237E7DE56BE2407@qq.com>

On Sun, Nov 30, 2025 at 10:35:27PM +0800, Renjun Wang wrote:
> Add the HannStar HSD156JUW2 15.6" FHD (1920x1080) TFT LCD panel to
> the panel-simple compatible list.

Where's patch 2? Your email threading is broken.

> 
> Signed-off-by: Renjun Wang <renjunw0@foxmail.com>
> ---
>  .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 ++
>  1 file changed, 2 insertions(+)

You can ignore the bot report, linux-next broke it over the holidays.

Acked-by: Rob Herring (Arm) <robh@kernel.org>

