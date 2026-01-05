Return-Path: <devicetree+bounces-251703-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 82DCECF5BFB
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 22:59:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8CCEA3010074
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 21:59:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D45C3126CD;
	Mon,  5 Jan 2026 21:59:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BSQZwXkL"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02D2E311C33;
	Mon,  5 Jan 2026 21:59:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767650369; cv=none; b=plJsG+lV2ufAeQzgfEzHJ6Tdqc+zhN4De8DJ8qm4N0OSpr25IlvTUfqp8yDS88qReqbKD6BcfKZL3VtTmVaJudLCjylQTymCy6XZ6K06Tn4cXUfNVHeddnMJrQQuLXmRIKKgV5DqRYPirV/WA90gPE1n+XnFLnOZGeznEUWUBkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767650369; c=relaxed/simple;
	bh=RkxjQRUd403km8EkVQvkm8XxmviChUJ+95aSvyCNoEE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=u4g8Yjif0OxI0xuVnGAJaodp3Jn+dsUzdsmXnDZsZumISZxlp8f4BnyqRVFIrBXUuKMtx/Ni3uK75BU88iBd1gO0gWH3F6mZl8kO1Tar8EXim/2fObwZ8QKXflQHrxPe2iZ1fntL4x9lJw4wM/T5CIKrj+LWvX28yIYePdukLnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BSQZwXkL; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 95016C116D0;
	Mon,  5 Jan 2026 21:59:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767650368;
	bh=RkxjQRUd403km8EkVQvkm8XxmviChUJ+95aSvyCNoEE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BSQZwXkL45pH7CBcOO6bYcTBPtruB658cb2UHqpbzrFzNm6HDIHtyjKm7IR4mXy21
	 jftPFkdTjVya2jGObuPJTfD+u6WUEajEiGsYz7HSoezmwwRp77Ap6XxYZP2VbVyN3w
	 OxWcliT9+81k7puGL1JmM/QdrUnOILNKGp1xHJLC38pvyTqcKR6toD+sokw1V8Wcf7
	 M09I46z162rtJxN/JJB+HwaXkRz/SZ7sE5QVqYQfpKDNEt0Wf53XBT91DL7Q7CkedG
	 8mSmWYwIjAu18teWkyExW7KefuD4meTXdar+uA+KVeaEZYbxAoDWWagxnnvStosYjI
	 MPCfMlAymcFQA==
Date: Mon, 5 Jan 2026 15:59:27 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Binbin Zhou <zhoubinbin@loongson.cn>
Cc: Binbin Zhou <zhoubb.aaron@gmail.com>, loongarch@lists.linux.dev,
	Yao Zi <me@ziyao.cc>, Huacai Chen <chenhuacai@loongson.cn>,
	Xuerui Wang <kernel@xen0n.name>,
	Huacai Chen <chenhuacai@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v3 4/9] dt-bindings: interrupt-controller:
 loongson,pch-pic: Document address-cells
Message-ID: <176765036503.3498250.16119734827265745208.robh@kernel.org>
References: <cover.1767505859.git.zhoubinbin@loongson.cn>
 <e531084ee65a695ec08d0f559caec067877fb9a5.1767505859.git.zhoubinbin@loongson.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e531084ee65a695ec08d0f559caec067877fb9a5.1767505859.git.zhoubinbin@loongson.cn>


On Sun, 04 Jan 2026 14:41:49 +0800, Binbin Zhou wrote:
> The Loongson PCH interrupt controller can be referenced in interrupt-map
> properties (e.g. in arch/loongarch/boot/dts/loongson-2k2000.dtsi), thus
> the nodes should have address-cells property.
> 
> Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
> ---
>  .../bindings/interrupt-controller/loongson,pch-pic.yaml        | 3 +++
>  1 file changed, 3 insertions(+)
> 

Applied, thanks!


