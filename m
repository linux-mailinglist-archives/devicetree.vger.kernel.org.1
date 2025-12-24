Return-Path: <devicetree+bounces-249500-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A3DE0CDC2FB
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 13:20:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 649573021759
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 12:20:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8843123EA86;
	Wed, 24 Dec 2025 12:20:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OmuV1qan"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D16B1F03C5;
	Wed, 24 Dec 2025 12:20:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766578839; cv=none; b=LhIdz1iu4ZbUP4tmIgFtUDd8yWztKLVkJ1o4lvO9IJdvJ26XflsBrg7CqFtizp/RuyHCIulPlG3VNQPTzuxCOIGmlNRTy2PxaSyy7wO62TWO0XTI0GKMJdDVaAf0gUINyLCOO8+9vwPFX0qRaGO9+goxJm9Ya4AV9HMWSPTK5h0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766578839; c=relaxed/simple;
	bh=pObnLWp3AHYr7a07AZBdc3aZsb1pym7Win9yfHOC800=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=fCfpSUhTS4vdG7Ll9rJgvXb86/6Nou0cjQSucMLG1iyubE1vKaUibzOLHGifoxmCpij0AjK90slPXO6jFZdq+Lhozj9bruzkHyTit3cg01Xj9fYH+cIA86MUL6/cSDaPkUSRRJUkF8Mx8x/r/zHw/9ois2KpolDVqT+0l1I53lk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OmuV1qan; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6839FC4CEFB;
	Wed, 24 Dec 2025 12:20:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766578839;
	bh=pObnLWp3AHYr7a07AZBdc3aZsb1pym7Win9yfHOC800=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=OmuV1qan85Ncjidd/ppmd3+34Th79CAGrmEOhlo043iZKZBQErEbKw30tOgjxIZWm
	 PdKrdG9wRhQHa33zaEuoIddMPbBRUxho2UKO0tNgxz7MD1sM+rJiOLLpjPg6R9LJig
	 3vytjDDbbg27KNXRGkgBAeTjM8S5xHyYmPJ4wNENvn56Kjy5337kwOAYu3w41TeJjc
	 5KDzNXBFPhl6EQ5fnLvl6+wneyTCECN1cJMg3XxtgdfR6f1/3EQmP1tS7/ET5nrMaF
	 i9rHJe7ailyp0LKuxF9QO12tS9puIboktdXvnGVX8DQ9FRrzRs85m03bnqK9qVVboM
	 HJGkiNJa/oVog==
Message-ID: <4bd0643c-b9d4-49fa-92a5-f8878f75d1e1@kernel.org>
Date: Wed, 24 Dec 2025 06:20:38 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: altera: Use lowercase hex
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20251223152444.155342-2-krzysztof.kozlowski@oss.qualcomm.com>
Content-Language: en-US
From: Dinh Nguyen <dinguyen@kernel.org>
In-Reply-To: <20251223152444.155342-2-krzysztof.kozlowski@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 12/23/25 09:24, Krzysztof Kozlowski wrote:
> The DTS code coding style expects lowercase hex for values and unit
> addresses.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> 
> ---
> 
> Patches done with sed, verified with comparing unflattened DTB and
> dtx_diff.
> ---
>   .../boot/dts/altera/socfpga_stratix10.dtsi    |  2 +-
>   .../dts/altera/socfpga_stratix10_socdk.dts    |  2 +-
>   .../altera/socfpga_stratix10_socdk_nand.dts   |  4 +-
>   .../arm64/boot/dts/intel/socfpga_agilex5.dtsi | 48 +++++++++----------
>   .../boot/dts/intel/socfpga_agilex_socdk.dts   |  2 +-
>   .../boot/dts/intel/socfpga_n5x_socdk.dts      |  4 +-
>   6 files changed, 31 insertions(+), 31 deletions(-)
> 

Applied!

Thanks,
Dinh

