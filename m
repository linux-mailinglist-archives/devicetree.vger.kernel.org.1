Return-Path: <devicetree+bounces-103356-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AA18A97A7DE
	for <lists+devicetree@lfdr.de>; Mon, 16 Sep 2024 21:42:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6D524283C27
	for <lists+devicetree@lfdr.de>; Mon, 16 Sep 2024 19:42:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2939915DBB6;
	Mon, 16 Sep 2024 19:42:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qg958p/w"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com [209.85.167.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 019994594D
	for <devicetree@vger.kernel.org>; Mon, 16 Sep 2024 19:42:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726515737; cv=none; b=u1GrcUHGX5ww89rRE7Y/sYBPFDsAbm89JzfP6zKIiywh7QPIuabgV1vqOSuW9aaClH/YKpsSUXmRAhPZ74ZwWmMeQv1LKAUgAAGZ/7aOWZ+6TAee6kGjcYsi4iafnmWBXnkg1S4dNKhJKW7H7P0EE3U2pdpnCgTjz/oFQ/DOVeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726515737; c=relaxed/simple;
	bh=lcyglchujBFBYarX+9+nRRvNPewZg/te6keYre7+4yU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rSu1saUxt/t4EYZd4u+QrhEY8MVM3RtSbZMEGQXAPUH+iHCAzKw7FJFpQBTd2+/9KU39ODUM0N/ZXlTRxghj7ePsPVH8EVivrC8AORTc6bdkeFDxMNQ6jf3KLPCArHy2Ytp4VYLSmJVXPO+9Xc9IrcAKOqLAxp+e2s/OByYjXmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qg958p/w; arc=none smtp.client-ip=209.85.167.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oi1-f173.google.com with SMTP id 5614622812f47-3e03c736466so2999326b6e.1
        for <devicetree@vger.kernel.org>; Mon, 16 Sep 2024 12:42:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726515734; x=1727120534; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1Vae9vaF6ym0VDAA7RUapTpBvo3oRMpI6vM8EcaxDOw=;
        b=qg958p/w8pJztKTRswHxgHWg83toM/Dv9zqSi/r5EQwxtgj9MCpjfDOCHO8vXeIfI5
         X0mm7V0RCPYcY1hUWsxbiXmM7xzUeu5geoaXJUh6gY7NVTfyDy7PlaIfh/FM3hD0jYay
         bg7yneAwiu/0eMwIBthH+6ewVoHE3J68EPfKLB5dM9bIFBdmWzjGbsJuzeSla1UKsqr8
         YB2SdoFUnfZNyqMlM4pfAsWzTyqGAKVGHPiCwHmQog476c8G41/AMNoy9UgWTPeH8ypC
         tnzTo4Fh5X4TrZpEmaJ9JggTuXOKidsgZGrlyWGU7QYz0pUAS3G4uDRnsqV1jDaKZGIr
         bc8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726515734; x=1727120534;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1Vae9vaF6ym0VDAA7RUapTpBvo3oRMpI6vM8EcaxDOw=;
        b=UsQ4P84HoD+o0/GB10obms9HPfWtUMh+WzqVi7o/RZP5fANKV7bmx93jpEkWr9g1Xy
         7IkmeVrZbDz1R28u/gFRlC+Fu0TZt8cfiLT2zaJYzk6u671EIGvQfSVkIAWzsWc9Mbg6
         hAr3bQJ34wZrpe3TzNQRDXHVNwBPBDILdbxJ6jwarh2xk4saA+TE808Yr/ZICys0yeCr
         AIc4nKMaOIg46WHZhN2ofxfiJvtZ1SIRXC3fU5It4kRQCYmM6xgMR61amFx82tuCADtE
         SbaXQcGpWbuxIkSbodni2Yfqo68M8FxrnuXN/QX0n9SP3T3JJ4OgWEZ+q4T6BK/JaODQ
         zlkg==
X-Forwarded-Encrypted: i=1; AJvYcCXIWxVkJktaPP0i4DH8VaYopZHYOUEkMeSdkMHjMz3d6LOcWxpSYvYYyfpGEgHRtmVWPNmVCV7M6kLe@vger.kernel.org
X-Gm-Message-State: AOJu0YxogliHRTAmyWQZ2uBkz/mzZoHe8/Bv8iMj28B05Nsj2xdONYaP
	e9AWHGRQDTKGSe/rafL+HerW7c0txYWjjDn37p0fphPeW8YgYPpQscdz4UG7E1ASDWLii0tEJQk
	Wg+H0zHxtGc+vx6D82MAk+Tf+wwU+OgROxGk38A==
X-Google-Smtp-Source: AGHT+IEHRJqyTEP7TNGkPq0m/qtvbDXGv+SBsWnxLIdk1XL9NbvM1jaSDfshFTukNMQc8kU5usEIX11Xxvcs27pmdok=
X-Received: by 2002:a05:6808:1a1f:b0:3e0:456a:9f66 with SMTP id
 5614622812f47-3e071a8512emr10131270b6e.3.1726515734157; Mon, 16 Sep 2024
 12:42:14 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240916-max20339-dts-v1-0-2f7ed7c24e83@linaro.org> <20240916-max20339-dts-v1-3-2f7ed7c24e83@linaro.org>
In-Reply-To: <20240916-max20339-dts-v1-3-2f7ed7c24e83@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Mon, 16 Sep 2024 20:42:03 +0100
Message-ID: <CADrjBPoOZu_79OaXaq=5KzUT=eEhRdESwK7Np74Nsjx7cTRm8g@mail.gmail.com>
Subject: Re: [PATCH 3/3] MAINTAINERS: add myself for Google Tensor SoC
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Andr=C3=A9,

On Mon, 16 Sept 2024 at 17:58, Andr=C3=A9 Draszik <andre.draszik@linaro.org=
> wrote:
>
> Add myself as maintainer for the Google Tensor SoC alongside Peter.
>
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> ---
>  MAINTAINERS | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 2cdd7cacec86..b6edb21b4f2d 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -9669,6 +9669,7 @@ T:        git git://git.kernel.org/pub/scm/linux/ke=
rnel/git/chrome-platform/linux.git
>  F:     drivers/firmware/google/
>
>  GOOGLE TENSOR SoC SUPPORT
> +M:     Andr=C3=A9 Draszik <andre.draszik@linaro.org>

Please update this to: -

+R:     Andr=C3=A9 Draszik <andre.draszik@linaro.org>

The definition of which is

R: Designated *Reviewer*: FullName <address@domain>
These reviewers should be CCed on patches.

regards,

Peter

