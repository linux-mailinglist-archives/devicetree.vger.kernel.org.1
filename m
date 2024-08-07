Return-Path: <devicetree+bounces-91843-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D1E994AE78
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2024 18:56:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A4B0F1F20CBA
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2024 16:56:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E044313A276;
	Wed,  7 Aug 2024 16:56:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ngG8zCyR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C8C184D02
	for <devicetree@vger.kernel.org>; Wed,  7 Aug 2024 16:56:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723049773; cv=none; b=k6sgIUDabUPlKiBiCkNK2HqGtYvTWAC6bZ3JZs9iN/rqjsa8TzFr2UZ/IVJbKVNI8BVJXWedA/OVPjzJe7ioi3LC1MKyeHGsjYlL7kUPGYZikL+LI6fTah43Tkk6Khl1Codck5twgDFhL90w+E8YLgHS8wp0jJqFgNKlxqEPGAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723049773; c=relaxed/simple;
	bh=QZymBs+eKZ3wGkqZLs62iD/WC+luTl2cLwV7VzziwP8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=A/CgE3rnMcpHl9UpkqAi+gCVTxaNMcvvN+pJe8QA1k05AzIb5K7k9kdPraz69/uZzotjivh9TeheM/6kHdmSOIgI0Ekgp08qf4h5dj8PtnURH1curNp+y+pmYF2ZFiVS1/jih8HiVqcRfvzwAuAzn54lgJ+HMBdidlWhDXSkjhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ngG8zCyR; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-52efe4c7c16so39116e87.0
        for <devicetree@vger.kernel.org>; Wed, 07 Aug 2024 09:56:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1723049770; x=1723654570; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QZymBs+eKZ3wGkqZLs62iD/WC+luTl2cLwV7VzziwP8=;
        b=ngG8zCyROV5X2cXsvYhDdWn/Q+z4U8V4ogdScI348PYskAw7UYP26mTHOuoU0/nUAg
         Quyba+e4SeFSoN4woDGtiYRIQMIGOgVADFkIk3F6SxBr2mGGjguQJu1xOa8VfngouCeG
         mdDP3Ym+2UsnrRct0tkDgRhXEeiYSl1Ng01bzQYi2Q4eVGGw//Zjh6Nzkc4DBtIn8g20
         /XeHg99p42Jnmpwmofj3ws6QqGn9LTNXcCohM4tGhBM8o90MCny6XjpqBRNFVYKKJ5nK
         xLHmKY0O5D+Ob64vZUL3edyVULbpivy1jO5FOhRURhJFuBeMwjtwVnM/58Qi1n4kfnIj
         07yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723049770; x=1723654570;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QZymBs+eKZ3wGkqZLs62iD/WC+luTl2cLwV7VzziwP8=;
        b=TeGsn9c/9XhUVKEK9X3tusl1aJuydKCTjyS6vetltbZRgx9uaN8s9xPQkECCwzmHn/
         Lo6ko1Djxkwqf1RLg19w3hvh4uxrVVs8qQhDwD990rX97FmxCOwcfp6/ZByfHxP42o/V
         xIzZ8gHZB+CCOsT0nfqPyh6Cs+d80QmUonXxBvrFSiStzQpq75aNDa95UXuozugjkSPI
         cpP7UNuW/rDb1BqQzaqSxSU0eqXk+RxxZVUHtxeMxjv/sv7cttsmSLCMKGKGR1689aDz
         zwnlKKrUmheU/oBzwiVEdRA9g9PpzFF3PV6W+IuGsw7MB77hRer+gncs7XYRSr6giz+/
         9OUQ==
X-Forwarded-Encrypted: i=1; AJvYcCUP0LGODxEDLmV6bQ912EkuGA+BPtEtjbvfjmQF5lD45FJNDEUiYi8hJaBLrAhEYQ1ubMdLdbuFSgYXEn+jCDPQsPDQO+HBsg09rA==
X-Gm-Message-State: AOJu0Yw+N6v6cjmkX08U/WQ37UBNyBJ8EyWNPRw7CQG0/uuYRWwBooLB
	gySoDxfUNguqqvc6Jf8u3V2+Z8oI3+U1UCLKLLwZzlqBMwYcnhEjQDQkYEhqi/X5Sxpw/NS7c2C
	L3hCT/LcHdpHp/CrRT4sfIo2YygoRy8Kc9juZ9Q==
X-Google-Smtp-Source: AGHT+IF9pFh79hDfWpFT5gb/WrtkGcdEBNFXxPxoVpwAm5XZb1BzyG10CU2vBHyWrPgMN/JUxH+J7VLto5fpWiF3CS4=
X-Received: by 2002:a05:6512:1045:b0:52f:cc06:c483 with SMTP id
 2adb3069b0e04-530bb396ca8mr13337439e87.24.1723049770240; Wed, 07 Aug 2024
 09:56:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240723-supervise-drown-d5d3b303e7fd@wendy> <20240723-underage-wheat-7dd65c2158e7@wendy>
 <CACRpkdbRE695f-+do1HYpOZ6e4qxgUBWJzEPO2hTCuZ3xxYHQg@mail.gmail.com> <20240806-breeze-crazily-84d4e4af8f4e@spud>
In-Reply-To: <20240806-breeze-crazily-84d4e4af8f4e@spud>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 7 Aug 2024 18:55:58 +0200
Message-ID: <CACRpkdbMxuhe2HQZ-Av1R7JW94rS0FosPO-utYNsFO8avR3TbQ@mail.gmail.com>
Subject: Re: [RFC v7 4/6] gpio: mpfs: add polarfire soc gpio support
To: Conor Dooley <conor@kernel.org>
Cc: Conor Dooley <conor.dooley@microchip.com>, linux-kernel@vger.kernel.org, 
	Marc Zyngier <maz@kernel.org>, Daire McNamara <daire.mcnamara@microchip.com>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Thomas Gleixner <tglx@linutronix.de>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	linux-riscv@lists.infradead.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, Lewis Hanly <lewis.hanly@microchip.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 6, 2024 at 7:18=E2=80=AFPM Conor Dooley <conor@kernel.org> wrot=
e:
> On Mon, Aug 05, 2024 at 10:04:53AM +0200, Linus Walleij wrote:

> > Is it possible to use augmented generic MMIO, i.e just override these
> > two functions that
> > need special handling?
>
> I'll look into it - as I mentioned under the --- line, I really didn't
> touch most of the driver and there's comments from Lewis' submission
> that still apply.

Thanks Conor, thanks for taking this over, too many patch sets fall
on the floor. I'm mostly fine merging it like this and then improving
it in-tree as well, I'm not as insistent on things being perfect before
merging as long as they are maintained.

Yours,
Linus Walleij

