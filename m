Return-Path: <devicetree+bounces-120097-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B98949C1801
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2024 09:32:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4BAFD1F24204
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2024 08:32:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7C0E1E0DD4;
	Fri,  8 Nov 2024 08:32:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FVWctg8Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63A981DF753
	for <devicetree@vger.kernel.org>; Fri,  8 Nov 2024 08:32:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731054726; cv=none; b=bduMNLe3i63Sh8UJlbrxCc67WN/pnVRMrhp12CsG1UU1ae76e6/QUNEmDVuc8O96dcK58lZwzLb4Yf3GzmZAIDVlG9c2eFkaDJ7N121YboUhrQ+UHuTse8UDShLaiivV8v/CTuTvG/gpeFMS076tZmBtXdGq74mWuHRyPtSjZ0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731054726; c=relaxed/simple;
	bh=1ND9bgK3KQWy+3cq/h1wKxgWNdJ1WBFhWBNSE25A4wo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=XVlh9Gh840YBCfMUcppfB8J0p6HGMOhJ5GE/MYl99qQA4AIiKK26jWwIP3qVCg4+fgZBlGOCLYB/HPz8iB1pjgAddQ7ICJlhfRRRDB/kQ9c4R/Lvx433F6WFIxbRRTfPQ4RNk6Ua5atMMI20l4LIN5l0u/d+h2V8YHUki3ikbb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FVWctg8Z; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2fb3da341c9so18277191fa.2
        for <devicetree@vger.kernel.org>; Fri, 08 Nov 2024 00:32:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731054720; x=1731659520; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1ND9bgK3KQWy+3cq/h1wKxgWNdJ1WBFhWBNSE25A4wo=;
        b=FVWctg8ZuaBYLWY61+0XodgtTtsSTBZLH+xKE5gTk6i5131Bf2h9l9VFvy8GxWGquE
         mYdH5VzV5eJafavG4oB83FZyBl5/wo2vy9HQZdt6uVd6BsCpqjmqbfaFAEZAaWJJ4ZWi
         V5b7Bdb4uNO8i170+yYvbv8CU0UiJVGdEf+ZcfOT8I5rC7xpvHPMB84HVrmBpyBNba9q
         /WNaeYv96bOJQGJW+2W0BKcpqYU3nNDZPfOKB/xwZFw7gHUYB2XHRMwf8FnPo+okd4sh
         Na4YdIxyp+IPiHinMKEA54aFJpTl0cn6VzdHiKbMApAXG0xNFp60yoEJR0aUSQ/X2+/w
         7AqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731054720; x=1731659520;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1ND9bgK3KQWy+3cq/h1wKxgWNdJ1WBFhWBNSE25A4wo=;
        b=j6D0Yi6CoYANNXT3vUsZKxumPkRv04YC/Cq+DXDiVNuFbKRQraBdvMgFdFimFgIE2s
         i4YPearkLpG4mni09Nz3oRQl9Nc2mOeMJLFiSuBRFl+CN+T0dxuGpQ+rQj9K7CZCz5Zn
         WiurfCJv6bU8f6csJ4UY7VN1qQnDcsRauTsoQkOSyEiektQ6RoVAgunshFQyOCNzn/UA
         tkEHCVt0yMfWCjd+BbvKMHG0MoGKNWCrg0EOn6MwAJUSvxrH5N/oP/1A+lZdC8Le6+ew
         BhTu70s4cMoO7bGYv3p9elTCMVYT5Q/zleDEG5S5tT6qCF44dZ4WNePqwolaySylpOUb
         hQoQ==
X-Forwarded-Encrypted: i=1; AJvYcCVp27fDRqFUMjMOtSRYdPGCGr8IO0sO8x7K2MfXsGEvaVjvJQtqDi4PbumB9EW7U3xQ0Bth48xeHxV9@vger.kernel.org
X-Gm-Message-State: AOJu0Yxf8E/1BgfJOFSykEGnxZSHEH6A/lj/C5+QINfzgkiNKhRtTZsm
	M/s74uXypNl9C4NwWmOmadlEFbzBDXascOoK27TQ32Yyb+VAuTQXvdnth4uHq7gZRoydfWj9to7
	WkqRCihqE27Gi0S9zc2LFxJNI3glaSvyDrfit1Q==
X-Google-Smtp-Source: AGHT+IHWAsQqG+y15H2WGwWZPQvCIg2GrPsoE8du8PoiicmJWn/4qgCjO61EIsCAk2BM4YFh3XSjkJBItIutIXE+if4=
X-Received: by 2002:a2e:ab08:0:b0:2fb:597e:28d9 with SMTP id
 38308e7fff4ca-2ff20188093mr8640431fa.14.1731054719602; Fri, 08 Nov 2024
 00:31:59 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241104-pxa1908-lkml-v13-0-e050609b8d6c@skole.hr> <20241104-pxa1908-lkml-v13-2-e050609b8d6c@skole.hr>
In-Reply-To: <20241104-pxa1908-lkml-v13-2-e050609b8d6c@skole.hr>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 8 Nov 2024 09:31:48 +0100
Message-ID: <CACRpkdZCF5o=1bc=tj7VM=ie-iakmBC_oeJh-LWqtsASw4eRFA@mail.gmail.com>
Subject: Re: [PATCH RESEND v13 02/12] dt-bindings: pinctrl: pinctrl-single:
 add marvell,pxa1908-padconf compatible
To: duje.mihanovic@skole.hr
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Tony Lindgren <tony@atomide.com>, Haojian Zhuang <haojian.zhuang@linaro.org>, 
	Lubomir Rintel <lkundrak@v3.sk>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, phone-devel@vger.kernel.org, 
	~postmarketos/upstreaming@lists.sr.ht, Karel Balej <balejk@matfyz.cz>, 
	David Wronek <david@mainlining.org>, linux-clk@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 4, 2024 at 5:59=E2=80=AFPM Duje Mihanovi=C4=87 via B4 Relay
<devnull+duje.mihanovic.skole.hr@kernel.org> wrote:

> From: Duje Mihanovi=C4=87 <duje.mihanovic@skole.hr>
>
> Add the "marvell,pxa1908-padconf" compatible to allow migrating to a
> separate pinctrl driver later.
>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Acked-by: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Duje Mihanovi=C4=87 <duje.mihanovic@skole.hr>

This patch applied for v6.13 so you don't have to reiterate it
after rebasing on v6.13-rc1.

Yours,
Linus Walleij

