Return-Path: <devicetree+bounces-252070-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 586A1CFA309
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 19:33:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8FC13302B99F
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 18:33:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4650A3126DB;
	Tue,  6 Jan 2026 18:30:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cVUNTnSc"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F22C2FD7A3;
	Tue,  6 Jan 2026 18:30:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767724259; cv=none; b=MDzhLTdVQMBLdaKzgngQ/WK2BHQr1e04G90t7xEMiRiQajW/Dbd6S1pV2i5nHqhEHeit9NJreOS17QNcih2U4qyyMGxa9akjvIuSi5AMtMzDXX6qanhToYDtt9g5Psra4yqiUcBZMo+dzlreRm4PNF5tWKwZpHawCsZsBpRqh+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767724259; c=relaxed/simple;
	bh=j3qYVdPPtQj7nJ6L9su6FYxFtx1ULd6M1YMn3jzqG1s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=e+zuR4FF8250l7xBbEjSiLJbjZ8cfnHLD/3oY/CHRKOkldrwZ1hhg1/ScyWQeSxuAie5X42DeuwMtvHXRVChaOMkEIO5OjIofQEDlUV7qwlclIl8amRUMDzzTjRxH6khdcLWXGqeHsBrUaRI6zNgM5VH5lwfHMFXrd1BwxRWuZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cVUNTnSc; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7D66EC116C6;
	Tue,  6 Jan 2026 18:30:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767724258;
	bh=j3qYVdPPtQj7nJ6L9su6FYxFtx1ULd6M1YMn3jzqG1s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cVUNTnScjx9U13l0GiA6oDagtHlYJ+115kprdo0k5eSD2WN7/1FmZb3prYZusi8yv
	 pqe47XT9I1GQbsqIyUYBO9Y10CIPbHWOWTzgNCWQylTYmUdUe2VjvO+RUG21PgHLcs
	 OC66YnuftXr01LCENL8kRQaUT7IoatIgvdyRGJM/3M2BlRqJj7CPCfx+xWlbr2Tarn
	 KMJuJZ0/1GqnW1EBTvQsr3A9kRoPZ/qFGMB/fDOcvUH5k/fsI3fHGLnQ4ff863bM0l
	 95r0WUv1lvm3A1Ndwt4S7fq5ptXoYS+z5FALY+jUFlreeTyRObSLJ4dFf7MJL03EHR
	 azjZmRORK8GpQ==
Date: Tue, 6 Jan 2026 12:30:57 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: conor+dt@kernel.org, krzk+dt@kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
	uwe@kleine-koenig.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 4/5] dt-bindings: arm: rockchip: add TS133 to
 RK356x-based QNAP NAS devices
Message-ID: <176772425740.2513273.11038899818156080578.robh@kernel.org>
References: <20260104191448.2693309-1-heiko@sntech.de>
 <20260104191448.2693309-5-heiko@sntech.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260104191448.2693309-5-heiko@sntech.de>


On Sun, 04 Jan 2026 20:14:47 +0100, Heiko Stuebner wrote:
> QNAP builds a number of variants of the RK356x-based NAS design.
> 
> Add the 1-bay TS133 variant.
> 
> This one is a tiny bit special as it is based around the RK3566 variant
> of the mostly similar RK3566/RK3568 SoCs.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  .../devicetree/bindings/arm/rockchip.yaml          | 14 +++++++++-----
>  1 file changed, 9 insertions(+), 5 deletions(-)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


