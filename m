Return-Path: <devicetree+bounces-250343-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 21AEECE884A
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 03:06:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 27FB23012BF5
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 02:05:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 721242DF14B;
	Tue, 30 Dec 2025 02:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mOllXsWC"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46D282D9EFB;
	Tue, 30 Dec 2025 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767060354; cv=none; b=pvxzcYZT2HA9pjlfvfKo+EsJPbFvPbCGga7Lyw89p0CTC3uiEr91jwRW/Svc+WdiEsNWT5RdxF75Cv770zGsgecD8i5Ojsgi18uYJqlwYfM1sQ2oaeAWwfjjwwKgPYZM8G6+Q/A3QY+aOwc9UoK+sXuERWpJ1bDTVLFjBBNQPIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767060354; c=relaxed/simple;
	bh=blBBr5bSdI6bhL85aAht4uJAb892PffQuaVXBuFiBI0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AZKNQ+GkR9Q5ZHD1+kVpvehrUi5yH9rSNEOq+BdCHBtWvT79jlWv9rCmgRifx/SsiJu/p3bnX9hq656rD25Z7iRzZ1eIGQJwmP6SWaaW4uD4KHQ/Cwt5Mwr6aOEGNeblotxu/Cs0AD99xXWdI0vnnRe6OPi+1dB0AHm2s1Q1Q3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mOllXsWC; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 12E54C4CEF7;
	Tue, 30 Dec 2025 02:05:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767060353;
	bh=blBBr5bSdI6bhL85aAht4uJAb892PffQuaVXBuFiBI0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mOllXsWC4JEHwwVwUwGg85Ff/SrA1qmRa6BXj8Zn0T6SdS4FE6RsWYYFUQe3bo3iY
	 uhAgu44OHcGKojNgfl+rk4n6nA6B46nhhqH4qXQGiQENRw17ThE5BzZfEYQK2aV1ba
	 ygKZuKF3Q0Hjwr9ToloOT74GDsWhxqZwBQvP0WLoiaC9Z6lLl7AS1ae8BJNvPp9Wd/
	 sUN1aHnqZhlwh276EL3VktTsmYqIGNwwSHkcr2XeKggu3p6tkWxvjla8jKdkO/c64w
	 kshT+NY43FZvakCaRhlz4GC+PJgp520etkSurE5rH5Rhv49zjJ0YVEwsyPphM9Yoof
	 X8ZEHvkB0A1LQ==
Date: Tue, 30 Dec 2025 10:05:47 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux@ew.tq-group.com,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/1] arm64: dts: tqmls1046a: Move BMAN/QMAN buffers to
 DRAM1 area
Message-ID: <aVMzew2DNhm0Vwf7@dragon>
References: <20251201070333.6804-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251201070333.6804-1-alexander.stein@ew.tq-group.com>

On Mon, Dec 01, 2025 at 08:03:33AM +0100, Alexander Stein wrote:
> DRAM1 is only 2GiB in size (0x00_8000_0000 - 0x01_0000_0000) which is
> already used by Linux kernel, etc. Move the allocation area of BMAN and
> QMAN to DRAM1 region. This frees the complete DRAM2 area for e.g. CMA.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Applied, thanks!

