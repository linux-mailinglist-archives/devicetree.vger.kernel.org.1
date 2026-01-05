Return-Path: <devicetree+bounces-251412-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A40ACF2AA0
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 10:16:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6AA083067651
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 09:12:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91F0132BF25;
	Mon,  5 Jan 2026 09:11:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m+AN8CWv"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283712D5410;
	Mon,  5 Jan 2026 09:11:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767604297; cv=none; b=QeL9c/X8wLLPpuAolfI5VmjGgMBRbTwjn2OUSHVHi6MeIBBLOytsaor+feCLvHO8xMBV64h7FfkAF7gs61kEg8skiD3a4AIrwM2szGBX8mRiijT34+9uCza6hlW0LJIVSzRXjeWckWEeV4144P3ea2WSSmiGTXDiqSW4nz5rsow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767604297; c=relaxed/simple;
	bh=293FtUQ7717ZLJ3GK5UfL9sE+u/Yt7Z762ctr1vjyuc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=J5cw+rGKVidJ7XdMq1rdhErCtRpyTeGS4KRvxWoTJk5uZhNUCvdQzb20KEdbu5yc2stoweX1g7az9iQAlbmtpa+7GMxyIpnTTxSx1TLPzFnPdyDXs3zdZRAXpkHx1zEBeyrJiOJdnO4CtqR3bzRSMz/gnjNqZXOrmsouYA7tN4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m+AN8CWv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E82C0C4FDE8;
	Mon,  5 Jan 2026 09:11:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767604296;
	bh=293FtUQ7717ZLJ3GK5UfL9sE+u/Yt7Z762ctr1vjyuc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=m+AN8CWvXZDnw/EwpEvJBge6pOURd2pvPqPihCvM2tQ9MZfqhtTTSPzR/Ijht81k6
	 BHxQq+MhazVLBzaYQS2rh7hcjFP7DxIS6UrDEm/sI7MXTfALKhYWWI+x9RZpVfNiL1
	 zvlEMVW3vlWz+M4hEZ9wRslu8lJs3FkI8j5Kg5oURUJhruQQ5pjbHY0OOaNqJATUWu
	 4Jv4JQ+iLwlXUjkxuwJpxiilo5/h00/tVH/hbElC01MhR+jHnf0EFlFtwTmN8FfqAa
	 1pxRb4pZnrQ3bhnyxVZgr+0YnEsuoGRKqxKsyDqB9PrVceMGSx3hCc+Ow9peqqlSgv
	 4mQiOgwI+/LgA==
Date: Mon, 5 Jan 2026 10:11:34 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Chaoyi Chen <kernel@airkyi.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Quentin Schulz <quentin.schulz@cherry.de>, 
	Chaoyi Chen <chaoyi.chen@rock-chips.com>, Kever Yang <kever.yang@rock-chips.com>, 
	Jonas Karlman <jonas@kwiboo.se>, John Clark <inindev@gmail.com>, FUKAUMI Naoki <naoki@radxa.com>, 
	Jimmy Hon <honyuenkwun@gmail.com>, Dragan Simic <dsimic@manjaro.org>, 
	Michael Riesch <michael.riesch@collabora.com>, Peter Robinson <pbrobinson@gmail.com>, 
	Alexey Charkov <alchark@gmail.com>, Shawn Lin <shawn.lin@rock-chips.com>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, Andy Yan <andy.yan@rock-chips.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: Add rk3576 evb2 board
Message-ID: <20260105-gregarious-powerful-mongoose-cdfe27@quoll>
References: <20260104023703.118-1-kernel@airkyi.com>
 <20260104023703.118-2-kernel@airkyi.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260104023703.118-2-kernel@airkyi.com>

On Sun, Jan 04, 2026 at 10:37:02AM +0800, Chaoyi Chen wrote:
> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> 
> Add devicetree binding for the rk3576 evb2 board.
> 
> Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


