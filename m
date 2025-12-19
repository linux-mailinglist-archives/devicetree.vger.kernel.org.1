Return-Path: <devicetree+bounces-248272-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E67A4CD08BA
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 16:39:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AD4D130B8B51
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 15:36:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B754A3446CF;
	Fri, 19 Dec 2025 15:27:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M+gjTr59"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 168D93451A3;
	Fri, 19 Dec 2025 15:27:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766158067; cv=none; b=rVPtei7HJDl8ZFMFhqzNXiPEP9wBWmrqFlMDYsuPyLy29WFiMTRj5CTc0ZCrJ4I5s+2esguxcqrJBmzCrqW/nEioQv+547n1db6Nd+/9kzqc/pPw3myj47qUtZ80IJgaWzjh65q4e/Xe2pZW2+Zc9kgtKjJbeVBeRxHuqdaqJVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766158067; c=relaxed/simple;
	bh=vQauREzCyjgGY9d4eFEp7tYVqXhmLb3hWwe5rJcduI4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fHhLstjfFOY2uKKzJnKNMkM1lljSpsAe0/SJcUsrlnyUtEprzmTDPNkvret8W8WsJkUfatFdLAl82E3Lb32TAT+jCjqfW5LLvM1brpkOmOmPYXq3ShxnsXJWYgOjgeGw1t+ZcuP87+NetnVwQeGXssOCANnFWnjo7FVEVX9inyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M+gjTr59; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 053CCC113D0;
	Fri, 19 Dec 2025 15:27:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766158066;
	bh=vQauREzCyjgGY9d4eFEp7tYVqXhmLb3hWwe5rJcduI4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=M+gjTr59eWJ38omM1OBz1Aw3Z7BgGjrTF7L2zoReMfykc2mprtIUIxC2MrLS59UHz
	 BXIBUYW1nkC/gCxC1SpLaywXJqzVf7xPY1AKkZdnGfgp/SwlRdPdG+k4EfFcq3wmcP
	 9ndPN66aiP5VhnCvhvn5le22dEfUkiTRdtlUh0eWB3s8my10jGljuPyxNlrgO7waH0
	 GVU0D3pJAOv4bh6NccjiQAagkn9IfWygDqiWBvvuJJrFeIb9/4MhQmpgBau2/+kJ0F
	 BKKPfpgghVFJ3AHPkneiOaWNqqPm5bcPqpc694BUuaYjkD4ZZt8MQ3J6I2/FO9Jpni
	 ABGjKE404Gk4Q==
Date: Fri, 19 Dec 2025 09:27:43 -0600
From: Rob Herring <robh@kernel.org>
To: Frank Wunderlich <linux@fw-web.de>
Cc: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Wunderlich <frank-w@public-files.de>,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v1 0/2] build full dtbs for BananaPi R3/R4(Pro)
Message-ID: <20251219152743.GA3410594-robh@kernel.org>
References: <20251119175124.48947-1-linux@fw-web.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251119175124.48947-1-linux@fw-web.de>

On Wed, Nov 19, 2025 at 06:51:21PM +0100, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> Build devicetree binaries for testing overlays and providing users
> full dtb without using overlays for Bananapi R4 (pro) variants.
> 
> It is not required to build all possible combinations, only for
> common usecases and to test if all overlays can be applied.
> 
> This series is based on
> https://git.kernel.org/pub/scm/linux/kernel/git/mediatek/linux.git/log/?h=v6.18-next/dts64
> 
> Frank Wunderlich (2):
>   arm64: dts: mediatek: mt7986: add dtbs with applied overlays for
>     bpi-r3
>   arm64: dts: mediatek: mt7988: add dtbs with applied overlays for
>     bpi-r4 (pro)

Since there's been no movement on this, I've applied this series and the 
other patch and will send to Linus today.

Rob

