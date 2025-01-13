Return-Path: <devicetree+bounces-138291-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8943BA0C5B8
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 00:32:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AFFEF1888211
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 23:32:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 703C21FA150;
	Mon, 13 Jan 2025 23:32:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qbIFG4vq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 471DB1F9A93;
	Mon, 13 Jan 2025 23:32:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736811126; cv=none; b=ePKg3rAitN4NZdlbqOKUeqF4Q2hva0FhuXL9vfh0HV15YoVVet/kr0X8xOLoex+ktMSTDO/52Hf9fb0LOTgyHKc0X6+are+ziqWCKRuhjHReq3tqFZHWD6SzLoW4hKBhp5SNZnm+4E9wGVD4EIAtqSn9bSrGdFeX7VdRk94CwZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736811126; c=relaxed/simple;
	bh=0taGTqMVGP+DP+do77R5YOfYOI6TQXQcar+XeG01OJo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DDw4xjMFd65VDm92wrBNVKkmUHH7HwTddmssuMouF+PvSyvs2YYURDaB2mYGbZCmWqTRywAIwwr5IBrbWRoNwZY1mag8abLvKpfbCe3W52Sh6G2u2t9/x93ceZqNqGKagP7HmjQ8gsgUNYe0BskxBLq5a9deXE2hWfIpawsY3Qs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qbIFG4vq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9A911C4CEE2;
	Mon, 13 Jan 2025 23:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736811125;
	bh=0taGTqMVGP+DP+do77R5YOfYOI6TQXQcar+XeG01OJo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qbIFG4vqjCTM1fOLBPz9N6Vm3+PJnfq1JhiMW0viNsW/CTD+TaSMxCfRb+unqC/20
	 K4G2ju8JUpOFTL/T/HytxQISRLXxq9BTiaGD9rRS9bLbTqlCY0FiwcL/8LKF9lyUaA
	 6hkbWAO7A3nH6NnAzw633U8xlXTzkM3Yvh7TDpPU274KurPgvsoJN8eP3Su3STpl+y
	 QmsW51Onk6hejul1LSRY/FqPfoVYKUIBTlNtQs7mefD1EjGWJlOJ0YwwEoy6RNTRM3
	 SkaFI63dGE68nVTiKN4FOplaG94qpQupExUAAZ4RfiqGXWmvZ4nsR3lHexyleZ6Kyk
	 JNprNYmnLF6xQ==
Date: Mon, 13 Jan 2025 17:32:04 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Zijun Hu <zijun_hu@icloud.com>
Cc: Oreoluwa Babatunde <quic_obabatun@quicinc.com>,
	Maxime Ripard <mripard@kernel.org>, linux-kernel@vger.kernel.org,
	Robin Murphy <robin.murphy@arm.com>, Marc Zyngier <maz@kernel.org>,
	devicetree@vger.kernel.org, Saravana Kannan <saravanak@google.com>,
	Zijun Hu <quic_zijuhu@quicinc.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Grant Likely <grant.likely@secretlab.ca>,
	Andreas Herrmann <andreas.herrmann@calxeda.com>,
	Mike Rapoport <rppt@kernel.org>
Subject: Re: [PATCH v4 12/14] of: reserved-memory: Move an assignment to
 effective place in __reserved_mem_alloc_size()
Message-ID: <173681112366.3626286.2586032513628607123.robh@kernel.org>
References: <20250109-of_core_fix-v4-0-db8a72415b8c@quicinc.com>
 <20250109-of_core_fix-v4-12-db8a72415b8c@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250109-of_core_fix-v4-12-db8a72415b8c@quicinc.com>


On Thu, 09 Jan 2025 21:27:03 +0800, Zijun Hu wrote:
> From: Zijun Hu <quic_zijuhu@quicinc.com>
> 
> The assignment '@base = 0' in __reserved_mem_alloc_size() is meaningless
> since @base was already initialized to 0.
> 
> Move the assignment to effective and proper place.
> 
> Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>
> ---
>  drivers/of/of_reserved_mem.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 

Applied, thanks!


