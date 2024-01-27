Return-Path: <devicetree+bounces-35894-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 28E0F83F23A
	for <lists+devicetree@lfdr.de>; Sun, 28 Jan 2024 00:36:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D9614281596
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 23:36:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A1362263C;
	Sat, 27 Jan 2024 23:36:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GpfmGgUC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7177621A13
	for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 23:36:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706398576; cv=none; b=uoE/lQqaOIGSx1TR0eTS4lIA4bMyrj5TnrTzfOwDpL2EmGtEXPAlVahnUrZcTn58D+Bt7u3Nhh+Hly2Fb0zdH67Hwa/T4zKc77INtXJQxhaCfhJO7RwvD4ChZzLcpqn5UOGrUSjSETZ8AiojD5fVq1zD7R+nh86SJ6QEZB89kJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706398576; c=relaxed/simple;
	bh=XVKbaMpkpPl4OamNNqyBIfrPPvBb/CuhmBwz5z4c778=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Hl2TtSkm+16H0LWZmJxu4bjbjD7af0prNv0MQuobto779BUU7vuzFWeNjRNgfEv+QD25wi9rpbGdaBzRAYedftm/Qp8YD4c5ls6y/h8NniUBp7ucQvqsNLKi2gbAhDdEgDvOSDookmIz/y34TDFE95w1/NsaeiqnMz13tSfIGuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GpfmGgUC; arc=none smtp.client-ip=209.85.160.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-qt1-f174.google.com with SMTP id d75a77b69052e-42a94c3039fso6184561cf.2
        for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 15:36:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706398573; x=1707003373; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XVKbaMpkpPl4OamNNqyBIfrPPvBb/CuhmBwz5z4c778=;
        b=GpfmGgUCzBt6GWD8FZab7OoSg3wEV6+Q89BeHMQDsO/fsAkiSvbomXq58QNB2qAKgR
         oh+QeOn8F7vso94xK+/eHtvYcCkUrlx8h0MfcpWDqQBC51s2GsMs2Ux3G/Ku9gB6dnxx
         feqWCcLKGl3Mhw5ccRANO1MBh+F4TWD8XqPWRyueCVvduWZTJ8MTjUYvrjaq32Cxl6vC
         lo7zJyeqpS0IuCFAtPap38X+wG3BdqJ5SzOCfPeY0iSQkESRNm0sbfYkBZbZUj/6yOtI
         dmoTZPYcKpA/QHJgcNLVs6mwl6RvPw9o1arwbUZ+cAf2+sZjsPFh1fK3vlmCljDBAFw/
         QqvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706398573; x=1707003373;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XVKbaMpkpPl4OamNNqyBIfrPPvBb/CuhmBwz5z4c778=;
        b=TbecUlCpvq8xBdegL2RWe1gB3sQpCMH7U28/YWbuKBfh7HZHmdjgTm8HJjOPLNfTCn
         rHbcRBvv7b8PK2PbU0+9Ko+oOXENGE3tbSlKR7T5HPZL9qbPnz29unBkAbVfEZlsUQ3b
         60z5/C2f4bpfAHaXu38bsdSeqCsc9VLiWMkFpSIs3VpbaZGEBqFJAgyVscHBKDeINZgf
         4ClOw4Rj9gl/RlzND8USixMYsXRzCCRuw7Y9Vo7bhfpCEXr9mabk6mbKa5lBpkijO4eh
         UG6IWAUWVRbnpH41Z9BA8kBCjADJ0d0xxbmhIgNi/MBv/eXMUiYLtZPRqQsSSwMzc3MI
         6jlw==
X-Gm-Message-State: AOJu0YwoC9vtEsjytGcxW5sszWWOh/MiYScdsXODW90JM/64n2dp8jqI
	TXy4unm5dsDMOAB4gnndg0o3K94tCk1eK5/l+rJyR26dTPrm+UYv4QBC5xHS6ffvNjc8fJh3Lah
	k98WuoksjnUXsW7fDh60rr3sEPucbWJ4jGyU6Iw==
X-Google-Smtp-Source: AGHT+IEgp6Wx5JnuWyXYHz8pZVr0cnqh2sFmftzNYViLIBvxeKcfFE9nBHRj3w+ge53ptzIE4c2ITaNbwP7ir3iKXKM=
X-Received: by 2002:a05:620a:20c3:b0:783:df74:8f97 with SMTP id
 f3-20020a05620a20c300b00783df748f97mr2269258qka.148.1706398573145; Sat, 27
 Jan 2024 15:36:13 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240110-pxa1908-lkml-v8-0-fea768a59474@skole.hr> <20240110-pxa1908-lkml-v8-3-fea768a59474@skole.hr>
In-Reply-To: <20240110-pxa1908-lkml-v8-3-fea768a59474@skole.hr>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 28 Jan 2024 00:36:02 +0100
Message-ID: <CACRpkdaZGc1z8y7NmS=xeHBSFkOe4agMaSBspcikTnrbaeB8rA@mail.gmail.com>
Subject: Re: [PATCH v8 3/9] pinctrl: single: add marvell,pxa1908-padconf compatible
To: =?UTF-8?Q?Duje_Mihanovi=C4=87?= <duje.mihanovic@skole.hr>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Tony Lindgren <tony@atomide.com>, Haojian Zhuang <haojian.zhuang@linaro.org>, 
	Lubomir Rintel <lkundrak@v3.sk>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Tony Luck <tony.luck@intel.com>, 
	"Guilherme G. Piccoli" <gpiccoli@igalia.com>, phone-devel@vger.kernel.org, 
	~postmarketos/upstreaming@lists.sr.ht, Karel Balej <balejk@matfyz.cz>, 
	David Wronek <david@mainlining.org>, linux-clk@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 10, 2024 at 8:04=E2=80=AFPM Duje Mihanovi=C4=87 <duje.mihanovic=
@skole.hr> wrote:

> Add the "marvell,pxa1908-padconf" compatible to allow migrating to a
> separate pinctrl driver later.
>
> Signed-off-by: Duje Mihanovi=C4=87 <duje.mihanovic@skole.hr>

Acked-by: Linus Walleij <linus.walleij@linaro.org>

I guess you will merge all of this through the SoC tree?

Yours,
Linus Walleij

