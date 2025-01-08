Return-Path: <devicetree+bounces-136354-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 71CE6A04E34
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 01:38:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 11DFB1887917
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 00:38:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 253E48C11;
	Wed,  8 Jan 2025 00:38:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="Ss4Pa9yA"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84FF64685;
	Wed,  8 Jan 2025 00:38:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736296701; cv=none; b=nfM5pcZu4cPXQkBUyf5uLsCzsYlM+40F9RCnQ8eU6TpdLXooS6mnG54yib8/YkNJkTHgPMuHb4KLJ82N+5aYU/YWynx4VbS8rSEUUD+RypCaIi7nFxoyroIOTkMDaRcEBEbiy+KNPqp8Xvvs2q3oBWgjPUL8WZ4kwZhhdDoMaAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736296701; c=relaxed/simple;
	bh=iJL0PVWacK+xGubdB8yj8Qufnec/nGx/Vtx+xf0kBaE=;
	h=Message-ID:Subject:From:To:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=pYc7cFL/36jjxUVbGaN+vFvdJ508j5avQZHtYzg3LBEwVXMy5nokpasa7YQqRsgSPye2zdzfPD1x3Q7IgsqvLPWOnGqslUBK4XgmYOoyo33Ogl6w3T8dMF52fzlvxc5oFcK4IiTuVfdG52/mRuZ7j6ogq+Zg10Dt18eBD7E3V9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=Ss4Pa9yA; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1736296697;
	bh=iJL0PVWacK+xGubdB8yj8Qufnec/nGx/Vtx+xf0kBaE=;
	h=Subject:From:To:Date:In-Reply-To:References;
	b=Ss4Pa9yAg+I0HqIcKHvJe+cy/0dMiwco2Svs0rc4Opbo20D9bjGWBPDN05vZAelEa
	 jrqGK0WVwuNuORPVUrkZtXgzuVEb3iXrfk1HpFcIzmZT81Rq45P8CAO0Wyh2h76ZeL
	 rfC6iatuQuUFTQr405VBoTrgTkACXqSJYP9jGmjYJoxfINUzqJSLgLMdS3TFdgRhg4
	 KJ+bIvn9r0JSKGT8bCt0PIbaJK+8wO2ib4cJ0O20Z6J5v7CeWUhq3WssZjOJHOXS/P
	 gA1hgZRrtnhvKv+vPl52l75USr2KmgTWWEzzYJcWR4qe/CtVVGBrNZ6kTc+UZlFJBp
	 FFfxprNQ+HW4A==
Received: from [192.168.68.112] (ppp118-210-64-24.adl-adc-lon-bras32.tpg.internode.on.net [118.210.64.24])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 96B7E70B92;
	Wed,  8 Jan 2025 08:38:16 +0800 (AWST)
Message-ID: <f7619bff61f400faa2174e8a861916ce4f68c4b4.camel@codeconstruct.com.au>
Subject: Re: [PATCH] dt-bindings: interrupt-controller: Correct indentation
 and style in DTS example
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Thomas Gleixner
 <tglx@linutronix.de>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Joel Stanley
 <joel@jms.id.au>, Florian Fainelli <florian.fainelli@broadcom.com>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org,  linux-arm-kernel@lists.infradead.org,
 linux-aspeed@lists.ozlabs.org
Date: Wed, 08 Jan 2025 11:08:15 +1030
In-Reply-To: <20250107131108.246898-1-krzysztof.kozlowski@linaro.org>
References: <20250107131108.246898-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Tue, 2025-01-07 at 14:11 +0100, Krzysztof Kozlowski wrote:
> DTS example in the bindings should be indented with 2- or 4-spaces
> and
> aligned with opening '- |', so correct any differences like 3-spaces
> or
> mixtures 2- and 4-spaces in one binding.
>=20
> No functional changes here, but saves some comments during reviews of
> new patches built on existing code.
>=20
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
> =C2=A0.../aspeed,ast2400-vic.yaml=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 10 =
+++----

Acked-by: Andrew Jeffery <andrew@codeconstruct.com.au> # aspeed,ast2400-vic=
.yaml

Cheers,

Andrew

