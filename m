Return-Path: <devicetree+bounces-76068-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EBB990999F
	for <lists+devicetree@lfdr.de>; Sat, 15 Jun 2024 20:49:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 72D181C20E74
	for <lists+devicetree@lfdr.de>; Sat, 15 Jun 2024 18:49:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BAD326AED;
	Sat, 15 Jun 2024 18:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UYXEjMw/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC2ED1DA2F
	for <devicetree@vger.kernel.org>; Sat, 15 Jun 2024 18:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718477363; cv=none; b=klomgyEDosJRadlG3JFOAsTmhiJqaTVOuWypAsLqnJscEOAawNAjTr4r6Dj9QQCn3MhsTRa4HVhdytmJCGV+ADsOs9fNrQxEb5bWEFxktXx6XAUj3f2tWT+ooVDy8naYu5X/I7J9y7DT+qS314Fvjf1C2kXGjIBJI6gXoICSpZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718477363; c=relaxed/simple;
	bh=2UFS+G15YQb63hu8LpWAEUeKauwNQ3gIuqSdcJidqJ4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=a8GlDh1gTzOdU0GxdqqEuWycu698qf0Bcdt+Hum/k1wVcRPv20VWGEzW/wy3B+Ce9997Vstsddp9VW0sp0Ty1UuOcnsK7t/BEXMh1pN5d0G0kESRVl6nDHxw9Kkpmg/rKIqgRuy/mVbF7u96O4/H/ax+TZzWF1whLNHaFjGOS8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UYXEjMw/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A84DDC116B1;
	Sat, 15 Jun 2024 18:49:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718477362;
	bh=2UFS+G15YQb63hu8LpWAEUeKauwNQ3gIuqSdcJidqJ4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UYXEjMw/WNPKKLRHyp6R+kcO03OHxzA1i8kiL/UHm2M+ByRERA26imlKwyVwsM7pC
	 20SxSSbNmCRhTID7gkblYNwTsn1lPRQsr+ME8YkFAtwbOOA9dEUzmxBL0IDGxXfPH9
	 uJgWgNoDK9QlgVhO4BV54B5ucC27tJyyZOMv4GHPHYHweOh2HFUQwbhzjIPLDiQJKJ
	 tGGcVOW9WNepklT3t3SzKayfmMUc31bjvfKt+TTWN8HEOHswk6HM5wmn9gy/LhFugv
	 fW64hl3E3XUvgxlUYx0EyRRlv4gx/e9zb2vq0VfVbGQCQ9zj4ADDlZ6SHGLsimdkqZ
	 /H7SUISGExowg==
Date: Sun, 16 Jun 2024 00:19:18 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Lorenzo Bianconi <lorenzo@kernel.org>
Cc: linux-phy@lists.infradead.org, kishon@kernel.org,
	lorenzo.bianconi83@gmail.com, conor@kernel.org,
	linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	devicetree@vger.kernel.org, nbd@nbd.name, john@phrozen.org,
	dd@embedd.com, catalin.marinas@arm.com, will@kernel.org,
	upstream@airoha.com, angelogioacchino.delregno@collabora.com,
	amitsinght@marvell.com
Subject: Re: [PATCH v3 0/4] Introduce PCIe PHY driver for EN7581 SoC
Message-ID: <Zm3iLkeu27E4Qn8w@matsya>
References: <cover.1716031610.git.lorenzo@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1716031610.git.lorenzo@kernel.org>

On 18-05-24, 13:31, Lorenzo Bianconi wrote:
> Add support for Airoha PCIe PHY controller available in the EN7581 SoC.

This fails build tests on x86 etc, please make sure you compile in idff
arch with W=1 and C=1 and submit again

-- 
~Vinod

