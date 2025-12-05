Return-Path: <devicetree+bounces-244581-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C452ECA7712
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 12:41:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6406A2A6FAC
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 08:53:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 781EF3064B7;
	Fri,  5 Dec 2025 08:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GD3XbFPW"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B82D12F0670;
	Fri,  5 Dec 2025 08:47:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764924450; cv=none; b=i9whGR8grZSf4qb7ulsHtU/jdb+aZoNv5iVIKv6XzmmX7KjcoUn268QM2+0mLuAbdV71LqWqNhmPsYfhEDthpOTwQkPGMfAqg/cLCbXHkOdqPyMX4RWDgMRwuTIDnIUigeJWj5ICE0c/alrAGO2zizEUugv2yTc0vFkPhsw+1M4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764924450; c=relaxed/simple;
	bh=HN3UZmbabni/hirvzafITfo5Hfu2q7tI0bGQNuuHw4A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Aden+3rxeUmgI1lNUQcTpaZdko6UhB1zdQiIHz1iu33wE8JBvgUffd8KC7sJL4FUYlUhIEh2zoXef2L6KpwDKgHacN99GmhgnmE14ql7o9yWCH/bQQAQ/lcIXCZWFsxFxH5I0ZC2zE2wLQTqOMH4Jw2ITWBia8dx1sNs8qjNREw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GD3XbFPW; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A00A3C4CEF1;
	Fri,  5 Dec 2025 08:47:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764924448;
	bh=HN3UZmbabni/hirvzafITfo5Hfu2q7tI0bGQNuuHw4A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GD3XbFPW0MT6/AUY663v2I/CUhmWV/dvM/2O5F1py1JufWlLJvbENqo9jPI8J426M
	 XiYWzDK7ELGZhloRezIKLEnNY3cOCOER/OHhvz6CKdpEZsEu5apV+8d9FyUj0EvQIx
	 fxNmShgMC/d7M0wyB+3EWhNP6mFEGIkktWdh9dkm+3LROvs/3tjtOJ/wJ7iMEXBVZc
	 rRGLiwg14QOSexIJ2XOZG+VXPjkaUf7lz2KggnlzayWFsTsuAWe1oTMNL9pP7DuHyQ
	 luaQ7tQFUkTSM7IkS7DjaSG7QED3heoUyR6zN+37Lslz07hrTLIjcEjo/aULC073g5
	 fSfnv+uT5NJgw==
Date: Fri, 5 Dec 2025 09:47:25 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: niravkumarlaxmidas.rabara@altera.com
Cc: Dinh Nguyen <dinguyen@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: intel: Add Agilex5 SoCFPGA modular board
Message-ID: <20251205-new-rough-pug-9614af@quoll>
References: <20251202101652.2317844-1-niravkumarlaxmidas.rabara@altera.com>
 <20251202101652.2317844-2-niravkumarlaxmidas.rabara@altera.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20251202101652.2317844-2-niravkumarlaxmidas.rabara@altera.com>

On Tue, Dec 02, 2025 at 06:16:51PM +0800, niravkumarlaxmidas.rabara@altera.com wrote:
> From: Niravkumar L Rabara <niravkumarlaxmidas.rabara@altera.com>
> 
> Add compatible for Agilex5 SoCFPGA modular board.
> 
> Signed-off-by: Niravkumar L Rabara <niravkumarlaxmidas.rabara@altera.com>
> ---
> Note: This patch is based on socfpga maintainer's tree
> https://git.kernel.org/pub/scm/linux/kernel/git/dinguyen/linux.git/log/?h=socfpga_dts_for_v6.19

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


