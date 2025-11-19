Return-Path: <devicetree+bounces-240083-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 69220C6D275
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 08:35:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sea.lore.kernel.org (Postfix) with ESMTPS id 137A32A74E
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 07:35:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97ADD2DA779;
	Wed, 19 Nov 2025 07:33:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="hr4NdMDs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail1.manjaro.org (mail1.manjaro.org [142.132.176.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EFA632A3F3;
	Wed, 19 Nov 2025 07:33:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.176.110
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763537617; cv=none; b=TSrLrsIf0IMkzP1mdqq0tvw+/8x8/zn7naifYIw4096YFUnS/rsV1Eri0oqIbkoLN6ZAhOiIkchGJFaR8npxofWDXWdOjEY6VhHBqPMajDhU96PhSGIY5z42+y++aD3cEDarAJtA27TPAAFEy+gqAFAcyTNz8Zhx3NRVRaH5FSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763537617; c=relaxed/simple;
	bh=KAMiGfurenT2cKpD6fJ0g74kT8O/Vr7UmjESZNeBwpg=;
	h=From:In-Reply-To:Content-Type:References:Date:Cc:To:MIME-Version:
	 Message-ID:Subject; b=GP2/rfot4QbKyP1eOJoWdPHF2rr+QbcyhTYJOfqBnZjVPBsuEXGofzM2d6tXvrmLzObO5pcV4f8pDC6MlqRFF4P84FCQDZHImGdoMhofoyFvOWbKRunj6IIpQXPqWWNs/GG0dn3FGoOfR5kXcuEJPhCXUnFOS3ASQ5gBuQFq7ws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=hr4NdMDs; arc=none smtp.client-ip=142.132.176.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id D9F6641286;
	Wed, 19 Nov 2025 08:33:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1763537612; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=KAMiGfurenT2cKpD6fJ0g74kT8O/Vr7UmjESZNeBwpg=;
	b=hr4NdMDsV5REL4iJLXH9UOQlaLlBJkCZr4fKzK3b4F2isEqrz5QENWUc6fpNh/UTbBnRXJ
	LBrQPPxcT38Sa24r6lrKNNjULFjdfWE1qtRHA+VyIDasYjOQouKGqH+UsCcUyDtAMPr7Xn
	oVvn0Zl13TExqJi8iE2XLbzxOKE1z1Nr8DclapIDfdILmCsdifU7aS9Qta4yBIkT5LJw5g
	o1HefaMkAvdgOSL2kPXq2zjP46841i2vKcG+evua5BAcO9BIMf86u32RYDmqv6UdVZherV
	yheSHZIIr/5ah8M0Wyt73eoKnz2QAWRppYb+tcO3K2MPoH6QtT/VJ4KkdhlGSg==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <e7417a6e-3824-48f7-af56-eaf4bf097cb9@kernel.org>
Content-Type: text/plain; charset="utf-8"
References: <20251118-tinker3-v3-0-2903693f2ebb@rootcommit.com>
 <20251118-tinker3-v3-1-2903693f2ebb@rootcommit.com>
 <155d3d05-49f8-a000-6939-1411917745bb@manjaro.org> <e7417a6e-3824-48f7-af56-eaf4bf097cb9@kernel.org>
Date: Wed, 19 Nov 2025 08:33:31 +0100
Cc: "Michael Opdenacker" <michael.opdenacker@rootcommit.com>, "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Heiko Stuebner" <heiko@sntech.de>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, "Krzysztof Kozlowski" <krzysztof.kozlowski@linaro.org>
To: "Krzysztof Kozlowski" <krzk@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <1417577e-10da-7101-5f78-c0299efba587@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v3 1/2] =?utf-8?q?dt-bindings=3A?=
 =?utf-8?q?_arm=3A?==?utf-8?q?_rockchip=3A?= Add Asus Tinker Board 3/3S
User-Agent: SOGoMail 5.12.3
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: None

On Wednesday, November 19, 2025 08:09 CET, Krzysztof Kozlowski <krzk@ke=
rnel.org> wrote:
> Now you claim that you want back v2. Really, you are NOT HELPING. It =
is
> clear you do not understand what you are proposing and this is not
> helping ion the process. Please refrain from such confusing reviews.
>=20
> Best regards,
> Krzysztof

Oh, i forgot to mention that it certainly may be that I don't
know everything when it comes to DT bindings and definitions, but
you also may not know how to handle communication with people in
a polite and friendly way.

Thus, I'd suggest that you replace "Best regards" in your signature
with "No regards".


