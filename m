Return-Path: <devicetree+bounces-10809-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BDACD7D2C96
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 10:24:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5BEAF1F217D2
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 08:24:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D75156FCF;
	Mon, 23 Oct 2023 08:24:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XnQ0ueR7"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6058C1C27
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 08:24:36 +0000 (UTC)
Received: from mail-yb1-xb2a.google.com (mail-yb1-xb2a.google.com [IPv6:2607:f8b0:4864:20::b2a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D4D36DA
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 01:24:34 -0700 (PDT)
Received: by mail-yb1-xb2a.google.com with SMTP id 3f1490d57ef6-d9fe0a598d8so538969276.2
        for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 01:24:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698049474; x=1698654274; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Mayolstgy4T5uOdJ66ctew/h2/Q1wpOy6kH/NWQ5T8A=;
        b=XnQ0ueR7LMSR1Ty7GYuPg31EmGDBn1IpPpRhmCYoF+ehFa5OqfM+hwvTWQ3wfGQoJN
         wSbYZoZWjARb8tsWgW5d6+bdxvJaY4qNDtz0SzWpVs4ZtSNwqm8/QtIn0/kc5WrelKfR
         9A0hczS929AO1j6Yv38hi+ACAFtexo4u4Df5bbKxkY1djkawn+W014GZMJ/dZQbN6Zfx
         MwMeh5qrbeNv+ucMSu2AQda8iLRlZ9M6UBuudj5qp3yEolNfcZPDxgBIU/k+Oc9Vj4AC
         mDFnzkvNQOeF3oYJuCYXYIW7PdBXmyYFoZQEJYpthoIsn3M5brNtKhP0CElC2i2l4d/X
         fHmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698049474; x=1698654274;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Mayolstgy4T5uOdJ66ctew/h2/Q1wpOy6kH/NWQ5T8A=;
        b=IGg5VlCCmYRCnUMlVH74kYiQt9YgdNM3AxgSxKe/agCJ7zcg/myhZ66/q5mc4zHCw5
         QkguggoAkxQUogn6Sh+R1xEhfnl0anwY0P1KQdUmDcwPJdG6+Ws079F4F4kIruXIYcCT
         llbP7eRnvvp1AS2unEj53QcHr6XAudvYa0Hf/ztoxb3P35hR7UQoh82kq9IEUauUFATx
         +XDKzFQ3MJ17EdNg6GO5ptP3rJ1ln5rxVlQhJkqkwSrJC/Vkf9+QxOtPEBaNwyvRAdIT
         GPBGlWB9kiNub8LPveckCsu2wsPh2+57PntT41CEQdcGxjODiOTVCazkIFThujIvw6hK
         zZBw==
X-Gm-Message-State: AOJu0YxyUtfO3/QcbohQtZIfu6AUQLBNUhJAxx8qEDrVtvy+nzDmznm6
	uuuYFJ7dPzV0qZPAEWApjZ65elFftvyHxRMCB+qvtg==
X-Google-Smtp-Source: AGHT+IHqaGryVNLtYcH/o4PcnTUfDi9IyxJlXkQzE5rV+FVSfix8sfv1gYTlNzE8KxkuavuaZgj325AG9uukF15LuM0=
X-Received: by 2002:a5b:b86:0:b0:d9a:b957:116d with SMTP id
 l6-20020a5b0b86000000b00d9ab957116dmr7951190ybq.27.1698049474104; Mon, 23 Oct
 2023 01:24:34 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231020170017.3610978-1-robh@kernel.org>
In-Reply-To: <20231020170017.3610978-1-robh@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 23 Oct 2023 10:24:23 +0200
Message-ID: <CACRpkdb6EpRPz-UPwJcS2aH3vtN=8a0gbfm1mXfpZvRWQ5BE-g@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: pinctrl: nuvoton,npcm845: Add missing
 additionalProperties on gpio child nodes
To: Rob Herring <robh@kernel.org>
Cc: Avi Fishman <avifishman70@gmail.com>, Tomer Maimon <tmaimon77@gmail.com>, 
	Tali Perry <tali.perry1@gmail.com>, Patrick Venture <venture@google.com>, 
	Nancy Yuen <yuenn@google.com>, Benjamin Fair <benjaminfair@google.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	openbmc@lists.ozlabs.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 20, 2023 at 7:00=E2=80=AFPM Rob Herring <robh@kernel.org> wrote=
:

> Just as unevaluatedProperties or additionalProperties are required at
> the top level of schemas, they should (and will) also be required for
> child node schemas. That ensures only documented properties are
> present for any node. Add the missing addtionalProperties to the 'gpio'
> child nodes.
>
> Signed-off-by: Rob Herring <robh@kernel.org>

Patch applied!

Yours,
Linus Walleij

