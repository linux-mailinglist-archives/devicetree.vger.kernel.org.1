Return-Path: <devicetree+bounces-138454-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A76D1A107D8
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 14:32:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BFBDB18884E2
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 13:32:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 603D52361E7;
	Tue, 14 Jan 2025 13:32:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nigauri-org.20230601.gappssmtp.com header.i=@nigauri-org.20230601.gappssmtp.com header.b="gLJCqMj6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E661232436
	for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 13:31:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736861520; cv=none; b=PGHV66p5K/DkXruvtWZ69zIKkxVDCedQTlUas7kr0xvC9vsztWlfkAzjFurk4fh4MqF/2IEWBSkXY5vbljIKStAnwfmlE6Lc85vHvOYXmnlsC7kJvUkTlmfqmUEOHDAoKvVoMAHe7K9mLF4R5C6sZksISS+PCsZ6/B7WtzzJHzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736861520; c=relaxed/simple;
	bh=iUjTDN/XKb/MTAF0zOpLsYF07GVkaqv6WKr7zNZkzeI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RUGD9hIkW0Fr7aTBkRMzo1YkWz6QuJo0O6rc4phLef8FaIKSbzmcaPAv62xJRV3UH/ctFYOisR3R9kpkv2jyaEELMbfcD4nZ6b+4aPgsJEGrx2mMySOVDSzkV2W9PgxE7Nif2ORIw8YHkrtCyV6Tt38TFShx7NcKd5bk34vKMn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nigauri.org; spf=none smtp.mailfrom=nigauri.org; dkim=pass (2048-bit key) header.d=nigauri-org.20230601.gappssmtp.com header.i=@nigauri-org.20230601.gappssmtp.com header.b=gLJCqMj6; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nigauri.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=nigauri.org
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-aa67ac42819so789121866b.0
        for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 05:31:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nigauri-org.20230601.gappssmtp.com; s=20230601; t=1736861516; x=1737466316; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qmABPq3JzMhTk8EThjPz1+BO2EyDVrrew3hZAzTSp2c=;
        b=gLJCqMj68vFNg8HkQ44VV+8o8XAz9YfyqaSWtgLAW1ZP4DvnBQ+brRbY8AsW6N49oF
         FIUMNLYnxSAsOrbfIM9YgI9s5dvMKmEC2ZVB+hzVbSm+mvBz+xlDpNqFvRvFuVLnMpno
         xjmHKdnGG8JzP9c7vbLjG1sNrbYZ7yKVjbjG2DJpBYx2k0WqyjbW+aLybDFzIl+RlFMi
         SDbTIiKK4Gx9TBZvDxyCQdx38WnkA/cL9REvo2SOom2xHVKRN5OUt5CwVeo0DStBksMg
         8T2g3SDVMd8MsbxWtFg71NVqT4+YZ0dSDESnagcmoeou1gsRwB98Ne+Nt0UVsLgwPiIw
         C85g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736861516; x=1737466316;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qmABPq3JzMhTk8EThjPz1+BO2EyDVrrew3hZAzTSp2c=;
        b=sMfki/n6ED1cz1pZWOTiJxtxdLrNaQZQoIWDoEwzpGAyP3ahJDU/U+T1uOUyZ1UUXA
         /+GFi6oRzz/wZwilFbBFSjvlJEucY6whIG8DL0Qb0x9AKs0X+v29DW0s4x7LGMd+GLpj
         4QnlYX+sQmbhOYxL2sKQZjdWMRjRqjUC9g5l2n66COy7p5WWr4Qcde/qRVAlERKmUJnJ
         +X8YmV7F33/k8dkOKdunC18uk3+Q+YrSkI/xOuvERiBIahfWHB5PeUeoT60oD6mAzsnH
         iIVwfBM/EXOtvPXOwte6wesJsjzv6hg0lwjI4ptV9l6pTraDKTtYLTaOpzKQFVHRX0Us
         liRg==
X-Forwarded-Encrypted: i=1; AJvYcCW1HaKHUnkEbbnSUdxLONQNsPtH7D695sp0mi1L1Bh0yMI7FS66C6I4tsR8d83wFXnlEPiBEWjiTeW0@vger.kernel.org
X-Gm-Message-State: AOJu0YxnKS7sdqnUqQpR2W/v5cPP06QRiVFLML14aoU+oHLANwXRQ8tv
	51PgekVGeA0SP97NYzGY/NGH7Sp1VEEh4p6avzCI7iBx0FaIEMGhF5HlM5jUI4/k6UZasUiKUA4
	r2E8Ll4RSv1lvCDV3zxc0slyyqJaiOaACy74=
X-Gm-Gg: ASbGnctItmAI/JjsGr6z6GUFM/iiUJ99jxS5NUsDSYnjcbudQyEMOn62VH1zjUHtlMA
	dBBLsOUQBKrzs14hL8nRrPpqj/GOv/4PWUJ2LgQrh6YV629eTbB45bPP7uTCTBp3elpwlOkU=
X-Google-Smtp-Source: AGHT+IGU+AY1ZPQ7Y5mKvWp6XiMlkTc6yHc+rNlOMikZebD6eXbLY4qNlpO59Xj18bAK8VrZ4+GKYHRhTQThOn+syVI=
X-Received: by 2002:a17:907:981:b0:aae:df74:acd1 with SMTP id
 a640c23a62f3a-ab2ab67059dmr2676075566b.11.1736861515453; Tue, 14 Jan 2025
 05:31:55 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250111080903.3566296-1-iwamatsu@nigauri.org>
 <20250111080903.3566296-4-iwamatsu@nigauri.org> <5867f54d-9ef2-4b8c-85b4-d79fd846a4c4@kernel.org>
In-Reply-To: <5867f54d-9ef2-4b8c-85b4-d79fd846a4c4@kernel.org>
From: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
Date: Tue, 14 Jan 2025 22:31:28 +0900
X-Gm-Features: AbW1kvaYMOi8uYbFWl9J-aq07HFa4EXIgQ28V4FxZCcPzFu3KapRARDO8-LkEYY
Message-ID: <CABMQnVJdoQui=EJdXiO17=uyY_RAqTM1_sPeqyaGQxwDCyGsEQ@mail.gmail.com>
Subject: Re: [PATCH 3/4] dt-bindings: soc: renesas: Document Yuridenki-Shokai
 Kakip board
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Masato Kiuchi <kiuchi_masato@yuridenki.co.jp>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Thanks for your review.

2025=E5=B9=B41=E6=9C=8811=E6=97=A5(=E5=9C=9F) 18:32 Krzysztof Kozlowski <kr=
zk@kernel.org>:
>
> On 11/01/2025 09:09, Nobuhiro Iwamatsu wrote:
> > Add "yuridenki,kakip" which targets the Yuridenki-Shokai Kakip board.
> >
> > Signed-off-by: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
> > ---
> >  Documentation/devicetree/bindings/soc/renesas/renesas.yaml | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/Documentation/devicetree/bindings/soc/renesas/renesas.yaml=
 b/Documentation/devicetree/bindings/soc/renesas/renesas.yaml
> > index 4f2645e8140c5c..294ac7c7ae8a5d 100644
> > --- a/Documentation/devicetree/bindings/soc/renesas/renesas.yaml
> > +++ b/Documentation/devicetree/bindings/soc/renesas/renesas.yaml
> > @@ -548,6 +548,7 @@ properties:
> >          items:
> >            - enum:
> >                - renesas,rzv2h-evk # RZ/V2H EVK
> > +              - yuridenki,kakip # Yuridenki-Shokai RZ/V2H Kakip board
>
> I know Renesas has here a bit unusual patterns, but this is even more
> unusual. Why do you claim kakip goes with absolutely any of below SoCs?
> I understand your motherboards doing this, but not the final product.

Your point is correct. This board uses only r9a09g057h428.
I fix the binding document.

>
> >            - enum:
> >                - renesas,r9a09g057h41 # RZ/V2H
> >                - renesas,r9a09g057h42 # RZ/V2H with Mali-G31 support
>
>
> Best regards,
> Krzysztof

Best regards,
  Nobuhiro

--=20
Nobuhiro Iwamatsu
   iwamatsu at {nigauri.org / debian.org / kernel.org}
   GPG ID: 32247FBB40AD1FA6

