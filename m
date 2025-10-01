Return-Path: <devicetree+bounces-222998-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E27FEBB0312
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 13:36:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 08C743B09EF
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 11:35:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECAF42D94B6;
	Wed,  1 Oct 2025 11:34:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XWjRZgh6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F2592522BE
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 11:34:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759318480; cv=none; b=iRDcF3g1ZWsZR5vvzul+9Cv9bvS+L9hx3/bNyhIA5kMog1weRWHi9ztkziFGCfQ7Fh+3gpImWA2vmo/4bjJCfnWPkk3pcFr9g6cS4zYTI4gAxS2rRWMhBtlAnRxkiVqgWvTRk/BEWYM7eD/8/XYFdbNhzE5F2LnwRX7eg+Sr0t4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759318480; c=relaxed/simple;
	bh=WNpBXHh1zwWhrKWvrvy86jONBZtsYTYo1DpEBtOgp5s=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=G2YkL5V6cP+xMgWgT4/Y0veah6TTGIhgTXkd37SbUx3wJPm+tDUPIY8mV76XfqkNSxCGWLrqJE5ToP5GjzLJRFvzE3mwGrZCWrKGeU8RKk6nrk6wc8RkR60/Jp/CoXwZsiuwd5ykTwXn2y6wrA267FfbmbRu42KCpn5ZpT9msfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XWjRZgh6; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-36d77ae9de5so65080041fa.2
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 04:34:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759318476; x=1759923276; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ab9PlkF81fTilgeQLgjVXBGTX6LGhe7zzDg3KUeGvt4=;
        b=XWjRZgh6I9HTKrZiM9IqhApaoQNFUtG0x8Gx2nO8g/yIfsbbD0ZgSWKkN4i4Z21bSF
         nD06QB9Yn6fS39NIzu4T6e4wcDUOCQRBGYoUvCjr7Fbkht/Pac8ODn3pC7LI7BmJ6I3/
         VdMjrv0niMYQU9nu5OeSLwCgU6n2W3Q1Bu4TudtuQ06oBvBX/RbMsZ3iZ46QkGxOwVee
         xs8P+Ql3Uwy2jmSgX9gwKP3ATFxQsWcy7KKxs0+v8N2qUAi/dbu2jWmnoWwOrpl1qygb
         uNvgpvDsPDBfuRjLHUVNwbzOuNRz1U8p62SnoFfy1vLZZ+XsWLS6iigrGretJYMkfsUn
         XR8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759318476; x=1759923276;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ab9PlkF81fTilgeQLgjVXBGTX6LGhe7zzDg3KUeGvt4=;
        b=fmCdbi//9RKt/Vn3oTOQh91jTixRrLU9EOyVtuDNRZKzsO/faF5Kvac3NY0FrdM3f5
         qN0nOSLK4ziVHxwY14A4lEgQY3vugHsovnK0PWD/2GiIcsmRWBaZZMGVZVypNMlzon0S
         AcXipDuq5vCsHM1cA1nE8hP5L7qXL7j0PU5nnMjb90VXMEBR1HTDU0grD3mXlKOAAfIF
         mX6mqYDAUJgC54c0MSrL579JN4HUx+XXxJO2rPAfkdRBRwv+k5ctAykmgqTeDG7haDDQ
         fbALr9F8VYN14ye7FMd2ASfBESxP1bF803cTpg17Zg/r0vZ6sYWqqfgsEuwlcYwqs4pM
         9WWg==
X-Forwarded-Encrypted: i=1; AJvYcCX9S2hZ5sXqDpbKuZyI4h4eMAVTOZ51UNfp+LRvHwTUY+D0T3Kg3IwJcYfjrgYIdrvWH0kTsIsf5imQ@vger.kernel.org
X-Gm-Message-State: AOJu0YwjVD46QcKKpd5GCR/PRnUDUnCHjidVkIPpg8uTPCFMbw0gNOWQ
	rg/YY+mKBrVWSYxsUk5zTPpNrQJGZd0Mltgx/B1T3c7mVp8INCrA3x0mRhGEd3Thnp4AcplLVJQ
	TpvFg1R3AgFP8jkM+1KnCXDT2bCiBygC6NzbGd3Dk5w==
X-Gm-Gg: ASbGncs9JUtYyOQ5XHYToDIrackCkVOGe60DlTpwf2vxOqcMZ4p/Zj+8xBsJ849okjH
	Iu18N+bD6bBYsWBnlF3BbVWHWqVvZ8RXa62Sl9h2Fqr4cCBegg4GA3m7MptpGFEcKRwfcwjmdgN
	UA/0StauhD/QcBGk6w3VbtRUOB+jIYNq4l7Is/RoGIj1yedI9Ta+OANKC087m7nY5MbnVMmKyz5
	03oLuaDbfmUup5GyVw4/Tszf1/bHpg=
X-Google-Smtp-Source: AGHT+IGP2vuqK84XEqUB3/YBZvgWQuvqnzUP46OyqzDbIXx5IsYLhF3Kjcv7T2SMXTcgPNWF4YygZqINvVbsODfn46g=
X-Received: by 2002:a05:651c:2121:b0:370:7fc5:7e06 with SMTP id
 38308e7fff4ca-373a7394b33mr8623441fa.13.1759318476088; Wed, 01 Oct 2025
 04:34:36 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250926-manpower-glacial-e9756c82b427@spud> <20250926-unshackle-jury-79f701f97e94@spud>
In-Reply-To: <20250926-unshackle-jury-79f701f97e94@spud>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 1 Oct 2025 13:34:24 +0200
X-Gm-Features: AS18NWAJqeVZkj4FKdackrTbpQrFfNV0Xk66hhPzy0DGiPwaNOMELkJ3p_nkSbA
Message-ID: <CACRpkdZ5RCcaNJB_3ufAgpDtdJBKfOVrMbJVAQWaVSOkY0-XNQ@mail.gmail.com>
Subject: Re: [RFC 3/5] pinctrl: add polarfire soc iomux0 pinmux driver
To: Conor Dooley <conor@kernel.org>
Cc: Conor Dooley <conor.dooley@microchip.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 26, 2025 at 4:33=E2=80=AFPM Conor Dooley <conor@kernel.org> wro=
te:

> +static const struct pinctrl_pin_desc mpfs_iomux0_pinctrl_pins[] =3D {
> +       PINCTRL_PIN(0, "spi0"),
> +       PINCTRL_PIN(1, "spi1"),
> +       PINCTRL_PIN(2, "i2c0"),
> +       PINCTRL_PIN(3, "i2c1"),
> +       PINCTRL_PIN(4, "can0"),
> +       PINCTRL_PIN(5, "can1"),
> +       PINCTRL_PIN(6, "qspi"),
> +       PINCTRL_PIN(7, "uart0"),
> +       PINCTRL_PIN(8, "uart1"),
> +       PINCTRL_PIN(9, "uart2"),
> +       PINCTRL_PIN(10, "uart3"),
> +       PINCTRL_PIN(11, "uart4"),
> +       PINCTRL_PIN(12, "mdio0"),
> +       PINCTRL_PIN(13, "mdio1"),

This looks like it is abusing the API. These things do not look like
"pins" at all, rather these are all groups, right?

Yours,
Linus Walleij

