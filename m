Return-Path: <devicetree+bounces-241908-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 236ACC84360
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 10:26:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D6D743AB2C9
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 09:26:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 075C4269B1C;
	Tue, 25 Nov 2025 09:26:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VYSdzwM4"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2A582417C3;
	Tue, 25 Nov 2025 09:26:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764062761; cv=none; b=hQ7Xr36zYRJiA9jKfWJh2dakUpQbSCVDb9W5afPxDgzyOwgK3dwXAxpTox7ut6GDVyQp01ZCGSBtmd+QJe26by1eQbHpg1vHf/OhnN9ORUp+N0n5NTB1DE4sVuYswU4qneq0nXFWrtu3OWmtYor3nEz4n4lTpvrI7vKAxQFCLI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764062761; c=relaxed/simple;
	bh=NRq8m1IhBKtckOOwAFzPxw7ZmPVVXHgxlXrhb+eMi4s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=J3uhXCGnAcQLFT+J2/6pFXTbS1RB0CLqAvaMmjslK1KgNdMZ4gS3PEEJeWYisCKbjUPVSt9SdhqkG5CsSPoQ02bodUPh33jgr4YNa9f1ggP2Gkb9gwE7Rzcq3aPj6kEj3fXidPk8NS4Fci3z1TqAKnLRJJEp30R3lyKNvxvnyp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VYSdzwM4; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DDED2C4CEF1;
	Tue, 25 Nov 2025 09:26:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764062761;
	bh=NRq8m1IhBKtckOOwAFzPxw7ZmPVVXHgxlXrhb+eMi4s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VYSdzwM45cv6PmnUPsIMM/dp6z+rbwnMS8/XokhP4QOTUaM30lv0RqAv5DZF7bRwF
	 c3+eWf2x/sRtKAqQJYwjig7wbm3YQwPwmQnX7akAPoH7VSoLVvRykv7X9qxnljjtxV
	 YOXIlVZoVnU9gvmMxBOcI2YnZzOQFTzCixPB0y5QCL5ATFBZYRmxolNbMxiDAw4y9B
	 GbUMqdxwr4evKXCScR4TlNDV7flwuJ3fZ8bMyB94/7B88cOJ2KQdooSqu5JPDKa20t
	 2+FTXAd3z2IQycyqYvmkwO4XQe1y0Hi47mDuru5mO+2lV6dbkx554JA6cyzoqqD4MH
	 C2WTr0PaIxyPg==
Date: Tue, 25 Nov 2025 10:25:58 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	konrad.dybcio@oss.qualcomm.com, andersson@kernel.org, dmitry.baryshkov@oss.qualcomm.com, 
	aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com, 
	yijie.yang@oss.qualcomm.com, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4] dt-bindings: sram: Document qcom,kaanapali-imem and
 its child node
Message-ID: <20251125-labrador-of-stereotyped-prestige-a3d9ee@kuoka>
References: <20251123-knp-soc-binding-v4-1-42b349a66c59@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20251123-knp-soc-binding-v4-1-42b349a66c59@oss.qualcomm.com>

On Sun, Nov 23, 2025 at 11:31:54PM -0800, Jingyi Wang wrote:
> On Qualcomm Kaanapali platform, IMEM is a block of SRAM shared across
> multiple IP blocks which can falk back to "mmio-sram". Documnent it and
> its child node "qcom,pil-reloc-info" which is used for collecting
> remoteproc ramdumps.
> 
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---
> Changes in v4:
> - drop change that is applied
> - fallback to "mmio-sram"
> - Link to v3: https://lore.kernel.org/r/20251102-knp-soc-binding-v3-0-11255ec4a535@oss.qualcomm.com

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


