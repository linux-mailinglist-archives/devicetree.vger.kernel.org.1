Return-Path: <devicetree+bounces-126143-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F94F9E06C6
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 16:22:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E00B016CC2F
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 14:56:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6FCD6207A14;
	Mon,  2 Dec 2024 14:50:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="pS0QbCiu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1F75207A06
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 14:50:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733151011; cv=none; b=u00vdfh6Ap2hAybDh7OL+eiDeICcabnBNvlzSJEeQTlsIFQpOdcWky9X+YzX7VNKeTgit1dJEqmPyaX0NgDMyzrv9zX5i8NIi7fzAE4uaa6uxs3/Bep3A78DHZSg34LpjGlWRJFzR4LCGObDZcL1rEm7BTUk88cMkElrWOTxAQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733151011; c=relaxed/simple;
	bh=XEGTqbtT7pe1Ebzp0pMotPdumC3lBdb2XvX3D5M15zw=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=djqrRII5wAz7nysyJ/4SRN7VdWD31VMUOWjsfsllmwMp5ILT6my99e5dDKJypWg2X4P5O0cPBxL4MqrEiF050a58V3vGcRq/AAr9u1Y6TMWkcYg91h+ZmF9QTW0rDv0CXp0nc0STxUMYX8aGmjyRcQnjTFIgKikrM+Xn8vZqklk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=pS0QbCiu; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1733151007;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=vQvOggYULqzBhMJ1cY0fm/C4jvh7h3UH+EMhmZlNNE4=;
	b=pS0QbCiu8xFRfw7wE1bmSxp5FwrCCQ7/IeSubP+/JE1ZcuSt9bvx7lAQZBC2D7c3HOvkLW
	MaQZz9jvzhikGm+LmNat93W+iWIk/1ubZj687HfwnHSiaqB0ee1aospPvE6m5AR5p9VpaA
	ugsmOogHnfzYq1o9/hDstMM+UIN0WqeWK0qpAa4SreV0jZA5cLjKYmDVUZ6KHw1h3DZeVA
	QzrUP4L8KwX5MGLXhesRfQpk7YPhYvV2OJRaKzWM87y1/1qaZHr4SzUyIGBy3Ft1Bh9mMP
	FlI4sC/lh2Wc5OGAe8omv6ITXiPYo+Kv7ZnHHmi6kzvA5FUVpYxGG3QfFkQMRA==
Date: Mon, 02 Dec 2024 15:50:07 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Diederik de Haas <didi.debian@cknow.org>
Cc: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>, Peter Robinson
 <pbrobinson@gmail.com>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: enable rng on all rk356x
In-Reply-To: <D6175VTSP13T.200HWIIHOIDQQ@cknow.org>
References: <20241201234613.52322-1-pbrobinson@gmail.com>
 <302bdae2f4defeefe88ea4018a0be11f@manjaro.org>
 <b50376c7-c5d5-41ae-95ea-e2d68c1cc809@linaro.org>
 <D6175VTSP13T.200HWIIHOIDQQ@cknow.org>
Message-ID: <c50f603a9e1a819f17f72e97e92aeebd@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Diederik and Marcin,

On 2024-12-02 13:01, Diederik de Haas wrote:
> On Mon Dec 2, 2024 at 11:40 AM CET, Marcin Juszkiewicz wrote:
>> W dniu 2.12.2024 o 04:55, Dragan Simic pisze:
>>  > On 2024-12-02 00:46, Peter Robinson wrote:
>>  >> The rk356x rng is available on both the rk3566 and rk3568
>>  >> parts, the IP is all self contained within the SoCs so
>>  >> it's enabled already by default on rk3568 so let's enable
>>  >> it in the base rk356x.dtsi so it's enabled consistently
>>  >> everywhere.
>>  >
>>  > Please, go through the mailing list threads [1][2] that have led us
>>  > to the current state.  To sum it up, it isn't about what's 
>> supported
>>  > in the two RK356x SoC variants, but about the RK3566's HWRNG being
>>  > disabled because the testing showed that it produces unacceptably
>>  > low quality of random data, for some yet unknown reason.
>> 
>> So maybe there should be a comment in rockchip/rk3568.dtsi so we would
>> not get back to it again.
> 
> I suggested to put that in the (original) commit message:
> https://lore.kernel.org/linux-rockchip/6690040.iosknibmi9@bagend/
> precisely because this was quite predictable to happen.
> 
> So a +1 on a comment in the dtsi with a link to the discussion in the
> commit message.

Totally agreed on adding a brief summary to the RK356x base SoC dtsi,
so I went ahead and sent a patch that adds it. [1]  I also expected
that to be described in the base dtsi back when the HWRNG support was
added, but it somehow went in without the description.

[1] 
https://lore.kernel.org/linux-rockchip/6b272e2f8f916c04b05db50df621659a5a7f29ab.1733149874.git.dsimic@manjaro.org/

