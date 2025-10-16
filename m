Return-Path: <devicetree+bounces-227499-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 584D0BE2204
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 10:22:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 772C5351C83
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 08:22:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91430304963;
	Thu, 16 Oct 2025 08:22:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TGvMq1/X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF950303A18
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 08:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760602956; cv=none; b=UJMsKrs1lBr3PHRde3pxJdz7+h/quwCxrksKZc2X1EbnTSALpNIUR3bEDWhZNCgPFMUYXZLTpq7aEZverpcMzmnqtRMhcO0FXC5GKoDiUAxT1FZaK93wUHD5PbBtlm0+uKivyWYTausH7MLwA3cZ1AxvQHDKNY3a+bsnPTzH2PI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760602956; c=relaxed/simple;
	bh=oBBdec07DnXHPLlkhx/kTRhSSBmJ1d438R+ruAA70Rs=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=sNhIB3hy3wLQgkD47uDHrFikLtTgzQdtGg6tlWY6lA8j58MUH9EQP4XuNor0dilyThDgNBFEIEuMmOY5TZ8GuIZ6fPH6ryiU/kp4lYZj6zZtkz7owOjdythxo1EAX/EUMj0XNW7eknF0tAPmSGqBV7wbvuwrxZezyxkpRfM5YtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TGvMq1/X; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-63bd822b007so699719a12.2
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 01:22:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760602953; x=1761207753; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=oBBdec07DnXHPLlkhx/kTRhSSBmJ1d438R+ruAA70Rs=;
        b=TGvMq1/XCQChBhpPqzrd6PHtUIoSTpJHbT4pAZkLpBnjTBVo0q4lIQwi1QVTocZ9Tn
         N39vYvf/QM64pftaErwX3GEDyhBmVpJ+1KeMvSF5Colrbsx82W99eWHlqjZlzvUHUa9k
         VN4fqFTFKvop1DUq5Gpe80HPx44cB+KgqRAAGyIpoWdY2w9B/rYOpmLLu3wVvd1ZWzaU
         a3TlUwJOHRh9EQvwl1lbX+1bdq7HDxPIHWNRQ3kHcPw8qHcpwTknAkniNzk6qVcZR0RB
         +RX/9vw9j6D4hjoN2fUtv9M3C95Ep7H7jJuaaZhiOIyVVjAh8A+EVZ8wyjYkI1/WL1ww
         Hw1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760602953; x=1761207753;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oBBdec07DnXHPLlkhx/kTRhSSBmJ1d438R+ruAA70Rs=;
        b=n0643s8hNlf2Lm7vJmK7KL7kRQPWUtycNYBOiw/WlwYifTt/gA+wvTnGgo8mMx5d1H
         brnG4+5Nbb4kb5CkRdBQUmgnjuMIs82VeklPPK+fD3rrcndzlax4wE7ort4/dgeeRo7N
         MT7Ff/Nl68kEVQjAuiYY74+ThrU29uaytPzWds9rDU2hOqNbIbBr4hNbVsIF5HG1KQb2
         aLFG6FROU5w+vhE4Xtv9TNKb6Ul7fskWvh4uXsVtSTuEo+Jf8sw0o9f4+PW/gBYQ6/ms
         7Ds/nDgyjZG96PnwGeZQA4ejWU5zfR8mIu9Hi4v6iuTdWTjViJB6yFHTTsi7+GReQgi6
         lYJQ==
X-Forwarded-Encrypted: i=1; AJvYcCVgdiW+zDrp0q0TIpgwb7UFaU+pka6oPH/hBjUkEpFWv2DZ1qzB6Spv+qI2wIThJELzp8YIIyhBXiV/@vger.kernel.org
X-Gm-Message-State: AOJu0YwudSCNYzJFymG/CfGIl2EUFp9weJjKxB47y2ahPMFLvmHfugtO
	UnrOYx8ON2S5X8nuhwI+lyTkpgfL+s2a9xtdKiomkseStHOAcXQDtOzxC2sk/9CL9d0=
X-Gm-Gg: ASbGncuNKBPQ7IHEVfty/SVBABL6sxdlYQViXD7YT9W92psRr9X3QfLt34JZxfBKZyn
	OMzwfMvhjaqinthO9MhHqrSXU6D4bxDW4fb60CTWGmkawa5w3nYerPI+bdvJl7kIzXeSH67FPbu
	QXKf2W08x2IkvcUSc60xPEZ07kucjhBrxuXglpzEk+E1sqkY3rQ/AlXelFHu3ZXOkuHjVyJ2lw0
	87gNFbKIPfdmjsIhCR3Typ2kwRq4ZTXYDndIvs1Sx5G2T7rSh+QbRKFFP/TZdrOXfiGS4Ex2L9q
	oGSAu4HGu8GO4EqkpC+rSJgPr34D9t8GVRYdOmRp3yZIdLk9d6dPiwRgsl9NiBE1+2Hqh3y98Uf
	WYsc8LdBmokcROkvrMw7kgjdQ1ktUX7H6dwMhRaucdhZFhmyWvl6D62zVSmgUnbzjq/GXDq4vxG
	2FudCoBPoAfukgsg4vSA==
X-Google-Smtp-Source: AGHT+IGSt650n9l8ivg1ZcCBjVV9spK1fxIgYVcQeuSemjU+fLA1qbxGFofJQsP8Vwjza4IFOhR66g==
X-Received: by 2002:a05:6402:84a:b0:62f:50cb:764c with SMTP id 4fb4d7f45d1cf-639d5c699efmr29854311a12.35.1760602952962;
        Thu, 16 Oct 2025 01:22:32 -0700 (PDT)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63bea024febsm3932663a12.4.2025.10.16.01.22.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Oct 2025 01:22:32 -0700 (PDT)
Message-ID: <0ccec501bd01a4e3a2e5087a52fe7a9b32d97c75.camel@linaro.org>
Subject: Re: [PATCH 4/9] arm64: dts: exynos: gs101: fix clock module unit
 reg sizes
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, Rob Herring <robh@kernel.org>,
  Krzysztof Kozlowski	 <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Alim Akhtar	 <alim.akhtar@samsung.com>, Tudor
 Ambarus <tudor.ambarus@linaro.org>, Michael Turquette
 <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Sam Protsenko	
 <semen.protsenko@linaro.org>, Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>
Cc: Will McVicker <willmcvicker@google.com>, Krzysztof Kozlowski	
 <krzk@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, Krzysztof
 Kozlowski	 <krzysztof.kozlowski@linaro.org>, kernel-team@android.com
Date: Thu, 16 Oct 2025 09:22:31 +0100
In-Reply-To: <20251013-automatic-clocks-v1-4-72851ee00300@linaro.org>
References: <20251013-automatic-clocks-v1-0-72851ee00300@linaro.org>
	 <20251013-automatic-clocks-v1-4-72851ee00300@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2+build3 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Mon, 2025-10-13 at 21:51 +0100, Peter Griffin wrote:
> The memory map lists each clock module unit as having a size of
> 0x10000. Additionally there are some undocumented registers in this regio=
n
> that need to be used for automatic clock gating mode. Some of those
> registers also need to be saved/restored on suspend & resume.
>=20
> Fixes: 86124c76683e ("arm64: dts: exynos: gs101: enable cmu-hsi2 clock co=
ntroller")
> Fixes: 4982a4a2092e ("arm64: dts: exynos: gs101: enable cmu-hsi0 clock co=
ntroller")
> Fixes: 7d66d98b5bf3 ("arm64: dts: exynos: gs101: enable cmu-peric1 clock =
controller")
> Fixes: e62c706f3aa0 ("arm64: dts: exynos: gs101: enable cmu-peric0 clock =
controller")
> Fixes: ea89fdf24fd9 ("arm64: dts: exynos: google: Add initial Google gs10=
1 SoC support")
> Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> ---
> =C2=A0arch/arm64/boot/dts/exynos/google/gs101.dtsi | 14 +++++++-------
> =C2=A01 file changed, 7 insertions(+), 7 deletions(-)

Reviewed-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>

