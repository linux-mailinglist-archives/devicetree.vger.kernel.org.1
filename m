Return-Path: <devicetree+bounces-247298-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BDCA0CC6A20
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 09:43:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 61DAA308E4A4
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 08:40:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D502336ED0;
	Wed, 17 Dec 2025 08:40:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FdZCj+LU"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7543E22F76F;
	Wed, 17 Dec 2025 08:40:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765960810; cv=none; b=d1itQM0HsOTeWkuAEcsp/aff4BtUM3Rxq5+rJsWO9QHgJZF20WFJ0LZQJ/3AGHpJcMP5FBrHaVwo/n0+gLYK3PrKaJjOLPmZB/1fMkwcNuM9AA7KutrJI6UGAF0VAXl06JrI2phpnZEm5J0LzIJvejV+NyTK9inq+w/AVVu2/To=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765960810; c=relaxed/simple;
	bh=JfCRH1JIeHpvaIh8zBgGRHqt7RD293zzx2gqipZC62g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uO2xVWbeUYEYPsqZeMVIsXw2osLDaEwNz4Dbx7uEcpDDT5ivzyTp1/mXlcmTwlhlKu+GmvuDHwxbqQOQJebyr9soHdLqUwNumWPub23fCU3hAlMK64GIEGPSCw0pBp0r00Eiqw3T9BWMfDQkvTHBPb749Uo0GP5RwwSTZ4pWMSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FdZCj+LU; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 857E7C4CEF5;
	Wed, 17 Dec 2025 08:40:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765960808;
	bh=JfCRH1JIeHpvaIh8zBgGRHqt7RD293zzx2gqipZC62g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FdZCj+LU6QcH2J/0jgSKyq50iEaKcEFLMkbkuadU8si+gIX1AGVBPqw1oJWjnkLMW
	 GDr5i6b03pYEydBYsYc1BIm/47OY89bFN2f4HNRncLuIRLRVkSl08BvJdisbJ+MpEN
	 hoSbH4KNc4l5gUf7NXNPRl4UPLxzGg7oO25Yguc9r3BJ6SZA4L2uRHnavFuElMghqv
	 7a1zt93oX/d+hcZrhPrSL7JIXB4hGmPPUY82Phv8VdliN6fy+QLvKu1lLfLUA9SHH+
	 wZO7zAx02pohHqdfhE7fh5rAlyEXuUdShlIGe5K83p3pytPSa4y5fJ/+U2Iwct/8xG
	 UduoDf2BIV1Sg==
Date: Wed, 17 Dec 2025 09:40:06 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: trivial-devices: Add
 socionext,uniphier-smpctrl
Message-ID: <20251217-aromatic-violet-octopus-7fdefb@quoll>
References: <20251215212532.3318546-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20251215212532.3318546-1-robh@kernel.org>

On Mon, Dec 15, 2025 at 03:25:32PM -0600, Rob Herring (Arm) wrote:
> The "socionext,uniphier-smpctrl" binding is just a "compatible" and
> "reg" entry, so add it to trivial-devices.yaml.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---
>  Documentation/devicetree/bindings/trivial-devices.yaml | 2 ++
>  1 file changed, 2 insertions(+)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


