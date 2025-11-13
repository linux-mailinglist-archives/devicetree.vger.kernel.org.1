Return-Path: <devicetree+bounces-238319-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E4A4C59CCE
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 20:39:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4AAE73ABCFF
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 19:39:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4007131C591;
	Thu, 13 Nov 2025 19:39:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MmIMk2fB"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50944315D3B;
	Thu, 13 Nov 2025 19:39:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763062780; cv=none; b=h6vzs1o1LibQdVDzJnR+p6Zd8HpIy5oIxtMhxLe3AYkvWkrNtLU2ClVzqyIQJ5x7kFSDNfYGamYq0L1/5GmqfiPJX+GHZgo+bl8ubaCqJAB8fWuuheyPmOaP7jZQi9gGQl/2RMmXKMRDtLM3yxeYfPsHpRlKZ51gRKa2TeygWg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763062780; c=relaxed/simple;
	bh=4YD3QezChS8qhwANYfq8yzpiivA7EP6TneGi68t2O5U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=I3fhGkLaai8oN5pWHOy4srWRikIz2tvmIaBXo6/J1EjVGU4Z7ovMtZlZkbPGhP0GNl3Lze0Oj6ilr73ig4q75/peWB1KuNjGUjV0cJ910yqTBKyywFeFuCgoWDul6MaNCSeqXNKQG68BJNzA+qhlQvLGYJVTUfdjDP0NDnzTJ7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MmIMk2fB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9E1BCC2BC87;
	Thu, 13 Nov 2025 19:39:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763062778;
	bh=4YD3QezChS8qhwANYfq8yzpiivA7EP6TneGi68t2O5U=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=MmIMk2fBhz56i2rr8HAykf2wXUt2Ki62a5sva7daczKrGZjzq7if0iTcv/k9l3ip5
	 Et7RMuUDVYfhSbvk/Fz36+hwBYWgMdgzsYga6uMxeP5NDKuTY0V4e7/+Uk5qvyWYeR
	 mU5YWBe5ISBy2WqAx9OqlAdWeya/+mQnGYLdd696W08Qr+xgylNbipUvfeSwBbs4lz
	 PM67FP/G0jw6Ebgj0ccbXAgDe/wKdiAiR+WzBffhr8k92uqedSoxWLpuOWFa1aL7Ei
	 i0Sl/xIYll7wcpFmpBp71PHMdiRt4WGratKDtPyB6GXKQem3kZhl0c/KG/qmz/A96F
	 yLbO9SzihqvQQ==
Message-ID: <34ae22a3-2939-47b2-85f9-9d7734111890@kernel.org>
Date: Thu, 13 Nov 2025 20:39:33 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] arm64: dts: realtek: Add Kent SoC and EVB device
 trees
To: Yu-Chun Lin <eleanor.lin@realtek.com>, afaerber@suse.de, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, lee@kernel.org,
 james.tai@realtek.com
Cc: linux-arm-kernel@lists.infradead.org,
 linux-realtek-soc@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, cy.huang@realtek.com, stanley_chang@realtek.com
References: <20251113123009.26568-1-eleanor.lin@realtek.com>
 <20251113123009.26568-4-eleanor.lin@realtek.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 a/A=
In-Reply-To: <20251113123009.26568-4-eleanor.lin@realtek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 13/11/2025 13:30, Yu-Chun Lin wrote:
> +
> +	soc@0 {
> +		compatible = "simple-bus";
> +		ranges = <0x0 0x0 0x0 0x40000>, /* boot code */
> +			 <0x98000000 0x0 0x98000000 0xef0000>, /* rbus */
> +			 <0xa0000000 0x0 0xa0000000 0x10000000>, /* PCIE */
> +			 <0xff000000 0x0 0xff000000 0x200000>; /* GIC */
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +
> +		rbus: bus@98000000 {
> +			compatible = "simple-bus";
> +			ranges = <0x0 0x98000000 0xef0000>,
> +				 <0xa0000000 0xa0000000 0x10000000>; /* PCIE */
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +
> +			iso: syscon@7000 {
> +				compatible = "realtek,misc", "syscon", "simple-mfd";

No, you just said "misc" is not part of the soc, right? I asked last
time and since you now send the same, so clearly you intentionally claim
this is not part of a SoC... Please just read writing bindings first.

> +				reg = <0x7000 0x1000>;
> +				ranges = <0x0 0x7000 0x1000>;
> +				#address-cells = <1>;
> +				#size-cells = <1>;
> +
> +				uart0: serial@800 {
> +					compatible = "snps,dw-apb-uart";
> +					reg = <0x800 0x100>;
> +					clock-frequency = <432000000>;
> +					interrupts = <GIC_SPI 68 IRQ_TYPE_LEVEL_HIGH>;
> +					reg-io-width = <4>;
> +					reg-shift = <2>;
> +					status = "disabled";
> +				};
> +			};
> +		};
> +


Best regards,
Krzysztof

