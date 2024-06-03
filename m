Return-Path: <devicetree+bounces-71875-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 488BD8D84A0
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2024 16:10:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D90A01F23540
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2024 14:10:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F97B12E1C5;
	Mon,  3 Jun 2024 14:10:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97FAC12DDAF
	for <devicetree@vger.kernel.org>; Mon,  3 Jun 2024 14:10:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717423810; cv=none; b=rI+CQSG2l9ZodNjO48lT9/kJsDbr1hilXEfKn8qLBDgYtYR6P6J4xxX6vQ9tep0nHcra5HseYEZ8DWaa1MqGEWJsnmfBrg+SzwZeYg7LDSRHxUt3Ca+pmNNK5KDhZc4lmRpUuJ/MrdBmczZQ8hmBBwoR90Ypvg6KSKQBmK9dhSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717423810; c=relaxed/simple;
	bh=wuG+3NW8bqaNoU364YackQWUvNgGC60GynXWWgakw10=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=oI/SsNr2LXfJseATLLZtSUnsSf3nZMKcZOypDb2leaTAkVE1De9zhjhUazvvafM0b9s/LI1iZ8+EeMutq1+MlDcWPJdxuxSwFO9dgZ7yDctOTyWEmSypxasU/E8cPUROXAV41KtzrCPDJs7xOy1+MoWOsxWrH6XkWvrOw2ymv2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=csie.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=csie.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2e95a60dfcdso53713301fa.1
        for <devicetree@vger.kernel.org>; Mon, 03 Jun 2024 07:10:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717423804; x=1718028604;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ducoQxeYzOenka+9UKfZRV7ZnNiMHeFLcXvUrioG4Cs=;
        b=ieOlW/ezNhCbxENsXQjN8NRwEyTe3FqKJH81qrSJlE048UUEGWdrpG0XDawY75g7PK
         bBKaG9QOFeiekZD7BjUDIeOXvja83pYmplocwqbVY8olRP9djc2n3rT1u0f0BWsMMRn6
         I+b8LUEznA0bIHNouMAapV5udKlG/6l4oHbEqek2T0F6QRkJILKVrg7+a6uUY6tYI3oA
         1OBy+EfDV/QEYPoenIL6nqRmDMRT1KcB2j9HivbTHqTIgB/NMHq5p43Z2n2ZSYACiIl1
         FHKr7R0XfnwQJilCtRrKVyHG2PGjWUPLTt/AV1bOd4bQlgy5/d43Us3EbakYL/AQCJOw
         0TwQ==
X-Gm-Message-State: AOJu0YyP8ITsYBtCGekvBq4ZViat7MRJr1V/gE3gnq21tJN5AmRh1h4i
	UZwD5cqoaczCETgjMlBYnloB80s6IJADh3UB9WtsWAqKIzLqcRi/GcjEMJOr
X-Google-Smtp-Source: AGHT+IFchgUllOv9CayWnKNbHWJdoXL/ctLN4gpkn5tAt14SZWAQaDKYCRcj/JEYYFDRkmksKjNRbQ==
X-Received: by 2002:ac2:5e87:0:b0:51d:8756:33f3 with SMTP id 2adb3069b0e04-52b89586a8dmr5326014e87.32.1717423804048;
        Mon, 03 Jun 2024 07:10:04 -0700 (PDT)
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com. [209.85.208.181])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52b9dce515esm162347e87.48.2024.06.03.07.10.02
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Jun 2024 07:10:03 -0700 (PDT)
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2e95a60dfcdso53712281fa.1
        for <devicetree@vger.kernel.org>; Mon, 03 Jun 2024 07:10:02 -0700 (PDT)
X-Received: by 2002:a2e:a986:0:b0:2e3:186d:45a7 with SMTP id
 38308e7fff4ca-2ea9512c9a6mr74129451fa.22.1717423802592; Mon, 03 Jun 2024
 07:10:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240320001152.4077150-1-pavel@loebl.cz> <171742366735.763275.121443280080030531.b4-ty@csie.org>
In-Reply-To: <171742366735.763275.121443280080030531.b4-ty@csie.org>
Reply-To: wens@csie.org
From: Chen-Yu Tsai <wens@csie.org>
Date: Mon, 3 Jun 2024 22:09:50 +0800
X-Gmail-Original-Message-ID: <CAGb2v66TCz2XJgc8yiUmVj++2Jq1=KdmRo_3LuHgHaQhB=QEFg@mail.gmail.com>
Message-ID: <CAGb2v66TCz2XJgc8yiUmVj++2Jq1=KdmRo_3LuHgHaQhB=QEFg@mail.gmail.com>
Subject: Re: (subset) [PATCH v2 0/3] dt-bindings: arm: sunxi: Add Banana Pi P2
 Zero v1.1
To: =?UTF-8?Q?Pavel_L=C3=B6bl?= <pavel@loebl.cz>
Cc: devicetree@vger.kernel.org, linux-sunxi@lists.linux.dev, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 3, 2024 at 10:07=E2=80=AFPM Chen-Yu Tsai <wens@csie.org> wrote:
>
> On Wed, 20 Mar 2024 01:11:45 +0100, Pavel L=C3=B6bl wrote:
> > Adding support for Add Banana Pi P2 Zero v1.1 from Sinovoip.
> >
> > V2: Added Fixes: tag to 1/3 to reference the commit which introduced
> >     the duplication.
> >
> >     Fixed all issues found by dtbs_check, except "cpu-hot-limit" regexp
> >     which is there for all H2/H3 boards.
> >
> > [...]
>
> Applied to sunxi/for-next in sunxi/linux.git, thanks!
>
> [1/3] ARM: dts: sunxi: remove duplicated entries in makefile
>       https://git.kernel.org/sunxi/linux/c/bba474656dd8

Pavel, can you fix up the comments on the last patch and send a v3 for
the two board patches?

Thanks

> Best regards,
> --
> Chen-Yu Tsai <wens@csie.org>
>
>

