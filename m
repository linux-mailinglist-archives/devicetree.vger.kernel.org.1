Return-Path: <devicetree+bounces-252069-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 45304CFA692
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 19:59:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 288ED35079D5
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 18:33:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE613306B08;
	Tue,  6 Jan 2026 18:30:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mKLN2bGC"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A687230594E;
	Tue,  6 Jan 2026 18:30:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767724217; cv=none; b=mPIvAJ3jzkshFjloRnea7JY/VXWCEVNOaGo5JGW49qfofGTvTXYqpz+QUJC7L0Mp3Rs+t0ThdNfh/fArxmoHW14YDRb8hK3c5zlmhFUvjHrynfK66VmdZFp2/KJgP7D2EFqbhy7q9SISW3KKbQ3+11yP98Z7VTSIrDtgUoV4BZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767724217; c=relaxed/simple;
	bh=ulFA7FbY3w3Zmau/GyqOUsWsv54GFq9RkfSrRozmcOU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SbrsHo6lyccQ3hKkx/JM211SRaQPsLqVIz+Bc1DczleMvpC33ExMSYe4GiC1SfqyFrEx8H5aSuiqtJ7iIXBqFAqV148VEENGwvVTQ8Av0fPF2JAOymvdY2IqnmjmDCUAhIgK/bxO37lZtmWZ03AK2op0/+rUrhRe0BvKWykw4Xg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mKLN2bGC; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6B4F5C116C6;
	Tue,  6 Jan 2026 18:30:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767724217;
	bh=ulFA7FbY3w3Zmau/GyqOUsWsv54GFq9RkfSrRozmcOU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mKLN2bGCufUKkENoNiBCA1HXzKDt4bpw0NwvC7fCphfKuorRuSmh4Do6XrNM6i8Pr
	 G13LkRDkZ0XEItXWb+zop/vaDf2B1+Udey3WD2k40rHzKNhNie472N+jPHpAfPFHM/
	 erxLN+MnUb3Us7yI2rAOoywfaXDSBlMWf1ITG+b69ybOLtvWvv83kqaeQfrl6lQtlS
	 iCIddU/sprCeWFi4z7FjW5r9oL6ej/FutV93moEU2m8u3YKVI2QChi0A4CPCNqkooT
	 r4jK+WyOs9ZfHOvcEn8devgCTT3oclZfqwpfJR8oV7HmHxcWgsAlCisIQNTBDie22U
	 w7CxKwjMB7t9A==
Date: Tue, 6 Jan 2026 12:30:16 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: lee@kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: mfd: qnap,ts433-mcu: Add qnap,ts133-mcu
 compatible
Message-ID: <176772421627.2512453.18023063811834795081.robh@kernel.org>
References: <20260104173310.2685852-1-heiko@sntech.de>
 <20260104173310.2685852-2-heiko@sntech.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260104173310.2685852-2-heiko@sntech.de>


On Sun, 04 Jan 2026 18:33:09 +0100, Heiko Stuebner wrote:
> The same MCU is used on a number of devices, each with a slightly
> different set of features, like the number of LEDs.
> 
> Add a compatible for the MCU used in the TS133 variant.
> This is the 1-disk consumer variant of the RK356x-based family.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  Documentation/devicetree/bindings/mfd/qnap,ts433-mcu.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


