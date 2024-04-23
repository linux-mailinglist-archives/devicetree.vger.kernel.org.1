Return-Path: <devicetree+bounces-61823-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C99788AE53D
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 14:01:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 76FF41F2410E
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 12:01:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE005136E2F;
	Tue, 23 Apr 2024 11:47:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cjU+dy/r"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CDA98563F
	for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 11:47:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713872823; cv=none; b=XtYkm+FuOWVP306OQQUSQh5ad80/cgJ9boOG+dSG+J21p1acGGiZcd3Fdj5Jb4o2Ucyv6J7vLok9b+WaokrIsMXrzEdingURBIzgCIecGEsjR8hxRB/aH405T0brjfknIPN0zfnyjYYYZIwtpARH2z3Uz4XGqgCzNlbUR6JmuAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713872823; c=relaxed/simple;
	bh=X3u3N1m8IXHPJ/XYLGkgdbqWKFrGFYVK3qndJ9iJp7Y=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BmySglHYUtUM9p0kgv7MRaYgL+yDtosrjSCrRhvELcyEOTVnEADMHI06M6quQu1ux7k8Ni6M4zj4PtP2zxQq1iQG7EVE2jz7M93sDVDLTcV94p3nbpmf7lXGnwTIx8bXmEZexdHjnUTzsBK+einBt9mPx3QkLa9JY5m/mli2k+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cjU+dy/r; arc=none smtp.client-ip=209.85.128.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-61865eed63dso47327287b3.0
        for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 04:47:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713872821; x=1714477621; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X3u3N1m8IXHPJ/XYLGkgdbqWKFrGFYVK3qndJ9iJp7Y=;
        b=cjU+dy/ru6qYGnLhcZHKAmuaq0XotP0dcOx2EdS8+BsO16akc9B1IrJbndvw+eiGr3
         aUIrm9kTW3heN5P1R7BiuWHL1AjYr4pD4XFp7ULUUzATwoycx7PYT3xzW9SI747pX3QE
         t6xBZvvTqbKZbpYYsjxMPQgBp55Zfew+M3gBSadCGMeFEq1xXNNNyrynufB6suvWLk/V
         eWB9Nvn3ifb+/Xge++spQxr6Juimgs+uJCPCJOb3aKjGeEwdDBIwCKobYZWRHUp+cp31
         Oj+M2MGELlZIRVfEBFoI/tNKLTT3cMBb0idwyhw0N9KJtLHxYeycH5QhxGHsDD48zY4v
         6zIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713872821; x=1714477621;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=X3u3N1m8IXHPJ/XYLGkgdbqWKFrGFYVK3qndJ9iJp7Y=;
        b=K16J8XrgIIPK+VgadgOCcDkdHveRryFuLkkB4QH5J8smmj4Z3fK0GPNPKhaVkNTsfs
         XkAQ8/nPq8Cwkp9qsnFUeniMba/Y/6EMkSOQzl+/rRibQAmLsosCQbD+ndqWodyoN2wm
         izVSKc+MQ8DCApX5+VIpNwv252U+bNNlPkXCmS0yicnLIIjLDc5I9R8/hqgxpwXJd31C
         z7pU0iYHh6CTC2ixU6bG0TfAY/DodOrACxDiWKjL7Wi67i7Aa2uLmrGjvooOM/M2fv0g
         nfUoxRaZW9aMvnW0UmlRsG5B1C8mnfbIsmbmrHoTvRKkq9U8gELnVm3HiroTC1p1BXEL
         PtHQ==
X-Forwarded-Encrypted: i=1; AJvYcCXOmdT7zyDWPiy2rL2hDwHLXNp9q19MNiYDekzMbRADW32FfoLTiHiiOp4AEd6b10o1X1FWcH7j4GQGwBmOrX6X3FUHAgsFC37b6w==
X-Gm-Message-State: AOJu0YzzuWjQdNoye5Gv1qXpF1veAtARSWchh5R3J3afjtrT+X1mKvqm
	kwICyApzwKxamt/NehWitr6cah8xcoDkVBLSgoHqKi1FprLOoFWfTouVQiKNU0mZXbqr0If76mH
	mhB2F89+f2j5kRvzXDe+lUs0W1p59yi6n3V7itw==
X-Google-Smtp-Source: AGHT+IGRJi/HpxT/aRBlek3pLJoeYyhkd7E8KqK5Vhw2r1ncz4Ds38dt0J+jITOwBaZfG/c2/Cl5CRFPk5Lh4qfhQAU=
X-Received: by 2002:a0d:c885:0:b0:61a:e7a7:b3df with SMTP id
 k127-20020a0dc885000000b0061ae7a7b3dfmr1914512ywd.15.1713872821364; Tue, 23
 Apr 2024 04:47:01 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240423-for-soc-asus-rt-ac3200-ac5300-v3-0-23d33cfafe7a@arinc9.com>
 <20240423-for-soc-asus-rt-ac3200-ac5300-v3-1-23d33cfafe7a@arinc9.com>
In-Reply-To: <20240423-for-soc-asus-rt-ac3200-ac5300-v3-1-23d33cfafe7a@arinc9.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 23 Apr 2024 13:46:50 +0200
Message-ID: <CACRpkdbata8PG0QP2NXVqCdLhpxyKWJkK+tPSS7JAvOTiZ+Wig@mail.gmail.com>
Subject: Re: [PATCH v3 1/5] dt-bindings: arm: bcm: add bindings for ASUS RT-AC3200
To: arinc.unal@arinc9.com
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Florian Fainelli <f.fainelli@gmail.com>, 
	Hauke Mehrtens <hauke@hauke-m.de>, Rafal Milecki <zajec5@gmail.com>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
	Tom Brautaset <tbrautaset@gmail.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	Krzysztof Kozlowski <krzk@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 23, 2024 at 11:51=E2=80=AFAM Ar=C4=B1n=C3=A7 =C3=9CNAL via B4 R=
elay
<devnull+arinc.unal.arinc9.com@kernel.org> wrote:

> From: Ar=C4=B1n=C3=A7 =C3=9CNAL <arinc.unal@arinc9.com>
>
> Add ASUS RT-AC3200 under BCM4709 based boards.
>
> Acked-by: Krzysztof Kozlowski <krzk@kernel.org>
> Signed-off-by: Ar=C4=B1n=C3=A7 =C3=9CNAL <arinc.unal@arinc9.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

