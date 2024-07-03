Return-Path: <devicetree+bounces-82839-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F7779260C6
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2024 14:46:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 663B1284AEB
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2024 12:46:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31412173359;
	Wed,  3 Jul 2024 12:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xS+NbOsK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3DFC16EBEA
	for <devicetree@vger.kernel.org>; Wed,  3 Jul 2024 12:46:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720010783; cv=none; b=acshSalqgpPHMHQhlDFDnUFwvlWxebbV/1Xx+l50C5UVXR08HL6q0tOnoR7bui/QGnBhyxYAyY26Zl44cYqYdjJOoFT91umLF/7rKKFFaKGVPYm26RIrJUDFGdr8xl8rFzw/jFfOFjZ5uCqk6nga7p17pkDg2BQofwOqgR9ft5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720010783; c=relaxed/simple;
	bh=Ut68rqDrN1TwpAu4QkfYXs+IX6JiITiQUrIaV3hssN4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=J4dja+A7122MXyc64NyWjEv6avviKqlvZnjErTNqTHCb1e6NlhKgY4vnEhPZ35Zc0c3ZBd7IECYUz8dDiBGoAOpfJ8pVh06hK0ALAkMNLpYKiCBCFQ5QgglHqU/VoMfkzRbV8NBXnVA7VSKWhhO54tv62kiLPMlqwGVuGPC3zNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xS+NbOsK; arc=none smtp.client-ip=209.85.219.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f175.google.com with SMTP id 3f1490d57ef6-dff1ccdc17bso5578464276.0
        for <devicetree@vger.kernel.org>; Wed, 03 Jul 2024 05:46:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720010781; x=1720615581; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ut68rqDrN1TwpAu4QkfYXs+IX6JiITiQUrIaV3hssN4=;
        b=xS+NbOsK1LrdxBZz+P4dkUeZWg73cc3q8EQrnykGnmaFz1Db9fOf9J2SWq3SQSQblW
         uUvC9rKZf3EcHJT3ghE5RKTSDjGG8ZNSVEiNRTDN2kvH02CLZ/EJ7K9oFs044ajXUhJC
         BxxgbR1tnhKKvgNJ7nD4NoGYYb46CaE1LcmEWwG4hJkLlqxb3hSFbIe40O3sZu9WHGjW
         soChqzGtfiMdsHeeX43pYgnRMPQwmAZxs060bX2JSXekCIyRUwLe3rw5pn2lOspt225Q
         VWvkwLa5lpjYBTnPcba9bUbNFgh1/S0rxiA1Qn4KruOI5r5yLJwLNdpvB2cDWlMPiZrw
         VyZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720010781; x=1720615581;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ut68rqDrN1TwpAu4QkfYXs+IX6JiITiQUrIaV3hssN4=;
        b=Q0/sIwKiCPRO4q3y0ilCQaTZlf6p4v8kriInE6CylrEJOxQAphyh9xokpevCOxuYAv
         EPQEYZTP+sbY7uD8dpCWns4XwWUSuLaqeiDuGEkE/KZK9OUpIL+LkOK+OBj427Z4z7+x
         HXeEorNTdNvUbkq2ccb0GHAUzoqbsp2R8U6nkuKd/r4SZJTv0lP5NFBVUoA77ZB2WoEy
         FMnsm9tkhte13QU0ZIc9VB+UbAv7ekCNVNLzwojJrbB5m4kvnoyPe4owgCxP7AlD9KMf
         +Thid2NpDJiJlj+q3299TCGfK/yZPNbZqCaTt6RI3bcyDGjQZP/yyE/zfWYcc7LNf07y
         3h6w==
X-Forwarded-Encrypted: i=1; AJvYcCVnF3BC5woErwlv27UrF6uWiTc58Xjy3YHEF17OFcv2rvv6dvNtnIkiOCJGbNNPzssFfiuSd9lZWEFCcCR5ILkQ7dS63Pus6aioyg==
X-Gm-Message-State: AOJu0YzfLjytIcOpUrlnw3lMgRWVhexNdEEmqI29td9JOljZyIs2W7y1
	xkAlYQ9ax/r/B8/XA/oGDmq+5+MnW2Fz5YKtrPzFn0/lacD+sLiF4LJ7WLdVCXp0f2SqDDblutl
	DTs2IEuKZALIDyKJv3wIZO4Mx24k+d93co19P1Q==
X-Google-Smtp-Source: AGHT+IGx0EtqF24mwZRqfU+d7OwAJMjAo8uBkj9IVIYdq7kjT6pCMEr0hMuMUufGQFu/0P086qoqyzdlDDqlq5KxMEs=
X-Received: by 2002:a25:c5c7:0:b0:dfe:73d8:4593 with SMTP id
 3f1490d57ef6-e036ec454b4mr11736791276.48.1720010780692; Wed, 03 Jul 2024
 05:46:20 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <IA1PR20MB4953D5E7D7D68DDCE31C0031BBCF2@IA1PR20MB4953.namprd20.prod.outlook.com>
In-Reply-To: <IA1PR20MB4953D5E7D7D68DDCE31C0031BBCF2@IA1PR20MB4953.namprd20.prod.outlook.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 3 Jul 2024 14:46:08 +0200
Message-ID: <CACRpkdYJCnTXHMwUi1-uhdrBjt=dukyJNGCZM2pLfN+tbw8bmw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: pinctrl: pinctrl-single: fix schmitt related properties
To: Inochi Amaoto <inochiama@outlook.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Tony Lindgren <tony@atomide.com>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 20, 2024 at 1:15=E2=80=AFAM Inochi Amaoto <inochiama@outlook.co=
m> wrote:

> The "pinctrl-single,input-schmitt" have four arguments in the bindings
> but the driver needs two. According to the meaning of other properties
> and driver, it should have "enable" suffix. Fortunately, there is no
> dts using this property, so it is safe to correct this property with the
> right name.
>
> Rename existed property "pinctrl-single,input-schmitt" to
> "pinctrl-single,input-schmitt-enable" and add the right description for
> property "pinctrl-single,input-schmitt" used by the driver.
>
> Fixes: 677a62482bd6 ("dt-bindings: pinctrl: Update pinctrl-single to use =
yaml")
> Signed-off-by: Inochi Amaoto <inochiama@outlook.com>

Patch applied!

Yours,
Linus Walleij

