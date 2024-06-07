Return-Path: <devicetree+bounces-73817-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D74E1900D20
	for <lists+devicetree@lfdr.de>; Fri,  7 Jun 2024 22:45:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5A2A5B230A4
	for <lists+devicetree@lfdr.de>; Fri,  7 Jun 2024 20:45:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3380313E04F;
	Fri,  7 Jun 2024 20:45:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bh0nnY1s"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72EFC154C11
	for <devicetree@vger.kernel.org>; Fri,  7 Jun 2024 20:45:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717793142; cv=none; b=FHq7vAPV5fOwt6ohWjYUJHhHbiHu6FWn4IEWb6Gvq9eF/mG1uPjGXqmmjHanyN7gl2uGMD8rLblyANNgBZhOwUSwMwJdoitBN+WzTOYaTEAu0kL6bWO1scknZ3JMHwqBoVlwpJn3goebVBMGnEXI8RgmarmkTgCrqA2Xsa++OiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717793142; c=relaxed/simple;
	bh=tF+lqoc7ry+mrtN2VK1nYhL8pQKe3mXizJvWJ3MmaUA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hpDjdX8PDNdzb8pQCbfw3a3QT34LyfpKdBMYSqGBGqPjj0MCmBwDsqe7uMKIW19+N3NO9Vxtf36uwMwalylTSnAYucK276Vxr9gzq/7ZcSwOW4LsXwjSXCUAXt/Gn+3c45h7wZiMnqovIeGOHJjYP3x49+GfpzfGMD07LgQVTsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bh0nnY1s; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-52bc035a7ccso1117456e87.2
        for <devicetree@vger.kernel.org>; Fri, 07 Jun 2024 13:45:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717793139; x=1718397939; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2/8+vnKbwdVGwXWCUHLo+YQ0seiC+NwOuFIt2xs/BGc=;
        b=bh0nnY1skuGN1nG46aMxT+8Jnct0f/S+DlYGDMdoIgyjiCpJACTFeQElq/ntLyzpSx
         KvURzE8tmom+rzH2WOyH2svElrpZEFruOdt9iKSpAdIZJ0FolOp3W4R9vLzBPSLB2JEE
         ztNqnJgjJqP0niaFxe4ni9/uhQd3N+9XJgcpX/UtB/NCJisZ0fcb0qPS5Z6kxgJYu79k
         hl+4mH0NDJJplPw39551hzAfbvmQYm+2xeBarF4bF8Zn6hjBO+3GuvdAF/hsHZP1WllI
         NAB8uzM5KE2746625wSZ7UyzFHtkPhExFWKp51AH3eMOsIlWxyBBLuurA8G+Kdj7TiY9
         F8zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717793139; x=1718397939;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2/8+vnKbwdVGwXWCUHLo+YQ0seiC+NwOuFIt2xs/BGc=;
        b=dU52xz4dtCbscPzJxsM4yvEdUig8iHqIEAjqdEkMi7foQ/JSIkVgCOecKz/keSIqYV
         5dn8slYyPgwpB0pzaEU9d5Y9vnsCOrcZ0QICGAarzWusxmzANInL0oA/lvkLbLhLnTSs
         HBfXFp6Mg14hJ+K6R2iFqCkEXduCHRj9ETXNw5+7a0kH3hAs35rx4HX+Y2YymP6RgEa9
         0YfQlt5BfDi/9/l3GGFjkYVf9h93hxglcAGm9dM4N71kzmSBqlWhxhcHKOs4qtHREo9D
         Lu49EHyTtGQfoPB4J00oNppvo05q2+UATGcxA5xl/tu7YqN/8rUazGNIY77IhKsXxo9u
         peBA==
X-Forwarded-Encrypted: i=1; AJvYcCX7Wam/fQHlcW2yE7jWIoWvGWkNuDS0TfJaVDZzXrguOxAKOv+yEfpptDT9mnjXIk7DYF5Jlz2kQK8ajcrk1FkN6MF+RiaywO6zwA==
X-Gm-Message-State: AOJu0YzINUYHr0QND9lc/YaH091ceEvB6z2spRRa+vclNM+eaKEyJ3Os
	Rr1eT4kMe6zcLZvtp+w2wj0Q4uFEMt87ZmmayXMBMkxD25GYBRrdhUf3vmCh9g5oxxVdKzXUywS
	y89L2CxWW8R9LfYlw5GWUjVdcVftaNG4Oz5mwyQ==
X-Google-Smtp-Source: AGHT+IHd129BNp9Srlbj4xlaokQuMVuM4ydYbqkksSF96LY5Xo8WmbmTC99Ge/pqhA4iwFxOEqgvchTfrPRAyuItoMw=
X-Received: by 2002:a05:6512:689:b0:52c:7f25:dbac with SMTP id
 2adb3069b0e04-52c7f25e446mr10179e87.20.1717793138663; Fri, 07 Jun 2024
 13:45:38 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1716974502.git.geert+renesas@glider.be> <a30fa2c5e0d07752692c5a69f5a5fc57ae719c1b.1716974502.git.geert+renesas@glider.be>
In-Reply-To: <a30fa2c5e0d07752692c5a69f5a5fc57ae719c1b.1716974502.git.geert+renesas@glider.be>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 7 Jun 2024 22:45:27 +0200
Message-ID: <CACRpkdZETWojdSDTT+ownbPtsr4LipT+eDxRA8YjQdGSEmEGdQ@mail.gmail.com>
Subject: Re: [PATCH v2 4/8] pinctrl: renesas: Add R-Car Gen3 fuse support
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Magnus Damm <magnus.damm@gmail.com>, 
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, May 29, 2024 at 11:29=E2=80=AFAM Geert Uytterhoeven
<geert+renesas@glider.be> wrote:

> On R-Car Gen3 SoCs, the fuse registers are tightly integrated into the
> Pin Function Controller.  Add support for them by providing the
> rcar-fuse driver with all needed info through a platform device and
> platform data.
>
> Note that the number of fuse registers on R-Car V3H and V3H2 differs,
> while their PFC blocks use the same compatible value, hence this is
> handled by checking the top-level compatible value.
>
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> Reviewed-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
> ---
> v2:
>   - Add Reviewed-by.

Acked-by: Linus Walleij <linus.walleij@linaro.org>

In case this needs to go through some other tree than mine.

Yours,
Linus Walleij

