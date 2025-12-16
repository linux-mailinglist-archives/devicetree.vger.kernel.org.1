Return-Path: <devicetree+bounces-247115-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AD7CCC45A3
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 17:41:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4AA0D302C5D7
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 16:41:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E866330F55B;
	Tue, 16 Dec 2025 16:41:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UTSV+DLO"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B26A2F260E;
	Tue, 16 Dec 2025 16:41:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765903289; cv=none; b=uxPbqH2xYH5F7kMJKVQcTrt8CJ3UyLpcAkpB5B//mB5ZYqcxHchBM1Kf6Ts/hRE3m4RUdhDvBg7dg3VjutyLpkFzi6pfQDgfFI8MDQAF2i+RBU4IPfcS757DZVrlj2YoDsy1K2PfegmFxFV1KSaHa2brmhJ81jzdkDnl7l38BpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765903289; c=relaxed/simple;
	bh=glph62P7/Du4L/3zXD5ZSp61IfKb8z3u5NBivwGvyHc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=W5HPOHNgoF3SKFwtXs7Sgn0UzgbD8zEhdbctAusi3GrXLBw32s2CWY4lPfyhougCmi5E/nrFe0+nxEtgSLXZ8JnGm8M6jXep2fSJ5+yKRGBsae9cMCdvcuOLQ76ZwENyXhCLfQUUuVRzTC1H2keGrdff5ObYI0OJ/IzUJt2vYRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UTSV+DLO; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 55EF5C113D0;
	Tue, 16 Dec 2025 16:41:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765903288;
	bh=glph62P7/Du4L/3zXD5ZSp61IfKb8z3u5NBivwGvyHc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UTSV+DLObsuIg8F42cTPdSxFgpaSaHhToXwVdstqF3sHCOidUNUBhS68w184Nhqks
	 s//HVY2Kzi3RWoTBzOve0RRyfroC5brIzvI3RZfl2bdpRMSYLO9i270EXaSMGHQ+gt
	 eJI8E66Zo4PjdHlSAEe2NhN9ayKou8oQ0pwEh7SKx62R7czgfBVQ7veUq1jEkTlMDQ
	 XN0ipskMG/x7vaE3ubud0qTrv7aAkdAWXGbU3p7a8ngdoRef9m8t4sor4EgMmAVqvk
	 zSQKBvD48JP/LWaUQu6Otnw8jFYX1lBIkwUCZ3rJdpZQKEqchIURbgjKmptRW1smDD
	 mk0ZPEXtUdlGg==
Date: Tue, 16 Dec 2025 10:41:25 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Gatien Chevallier <gatien.chevallier@foss.st.com>,
	devicetree@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: bus: stm32mp25-rifsc: Allow 2 size cells
Message-ID: <176590328507.2607309.18218209388270739835.robh@kernel.org>
References: <20251215212700.3320634-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251215212700.3320634-1-robh@kernel.org>


On Mon, 15 Dec 2025 15:26:59 -0600, Rob Herring (Arm) wrote:
> There are users already with 2 size cells, and there's no reason to not
> support that.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---
>  Documentation/devicetree/bindings/bus/st,stm32mp25-rifsc.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Applied, thanks!


