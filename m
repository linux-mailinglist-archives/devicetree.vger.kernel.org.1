Return-Path: <devicetree+bounces-219239-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D73D4B892AC
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 12:59:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 96F7B4E751B
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 10:59:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60D3E30B52E;
	Fri, 19 Sep 2025 10:59:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b="Ck0snEh7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9280430AD12
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 10:59:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758279560; cv=none; b=TdxJOZivVFetLOA26+R5ZAdx2UoLbBeB1PVRaB6RFSv4pUjKJ1QYJNVHMs4t8QmNsfyhBAsOR+/2+YZAINiH1nhhKtH5CuZXwqNHCofs586KXDDAGUxldpfwESoHw4OGnoVVzZUGOG6mcoXOW4Tid3hPiKVMgN5sXrHKnDYMNT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758279560; c=relaxed/simple;
	bh=1KoM13QjrKbth+YQISFw5qjHCD10Dbq0/G0A34qAl+E=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CKEnHwDNLs0S6k46WLuFOzfN6uWBaTkl4qrzAw163xWKoUNgAR+Rw2kXNGdGwuaK1a0D/RinwvSkI9KXKbZiZjfWPI03KUMZ8p0azwWNrjeUZoDyUmslSiwtsh9E+EoqOo3nFW4dEXDDnrqHRiDZvQY5GOwu9b76nur29E5CDpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr; spf=pass smtp.mailfrom=sartura.hr; dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b=Ck0snEh7; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sartura.hr
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-62fbfeb097eso1166277a12.2
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 03:59:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1758279557; x=1758884357; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S73nWNaXJ6aUqLBlha6/+hH1Wc0c/vIIWsZEdd9LZ9I=;
        b=Ck0snEh7OLi8kFd612oLOJEAUuJGHjUbGVr8QEHph6rDpeTcNpCvSix0Ngx1fvVkF+
         /jcJQKaDNaAoarZ6xmoectTyr/NzB1S6yqduLRbYXE4yRUrNFUyt8tnZ9Jv0jQoPJjFg
         5NTorrZP4a/JSnpukijkFlN/UIKTrtf50XoU/GKn5n5VaRe1KD2OgJkfdRg2Pg8BlYO2
         ia+CrTixTBwapIUcF0nnwqsna7G7FsF0+yGSrFZMB55mdIItgo/ylL/Z5hUSd8fZ6hUQ
         daMbk1raSLxXu6E8qfByOTvbBUqNbetm9+QbvHAF0xtkJSYcEbFyXKYNCsEuIwM6A4J2
         2GkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758279557; x=1758884357;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=S73nWNaXJ6aUqLBlha6/+hH1Wc0c/vIIWsZEdd9LZ9I=;
        b=MjafVccNObSupiLQKvbaIrWbEjrcgEN3QrpU3vTdvyyxPltjStl2/YdlybCJoGFwKQ
         U653wkz7mhsccIjzgTW+e4Xtx4vLMcVSlCwbKC4s/JGBaZRVvJRHAXz/zQW3V1rbfKOS
         5b1H4L4pkT4/7Wa8qaFlg2U1Z2hGFp95HJAU8rYVnEDRs8sn6WOqN5Z9UEQbZ2ZHEwK/
         Asxg0Rf1YzG1qqit7Qg5fjuyUp2LdQGE8ho+8sOMrJYuufrj0Nu/Hj7euomI+m1NdDJf
         s+B4SS2M6/ML/VgsQABJ8nhfZYVuAOM/GsKXqbUxe2/QyapT2SX9ML52IQvDuDk4LwK6
         3x7g==
X-Gm-Message-State: AOJu0YwxhgNDbMpjGaTiUNfWKBclZlouc3fZLTIAVmgFpnrKPGhYklFd
	kw/jrV/qAVpECSQ39Gi0kLEwI4kWoprOllrPDjW3fPlHgP34bLM0c6t9JJioZSy3SsCwKrcfZi5
	edcVrQXQTG+OHkYntkRGWGxxtBlFqmkFM3J9bsB8I6w==
X-Gm-Gg: ASbGncs1w7eYKZcuNU9WDeDvinaVgwv6ajo92xAqcmyTMGLbw9sbYiVj7aFgR6EFXdD
	1OH5nI0oLiC0EOaLiKjyF8QqpQeHcepv6mCdth3JSVKye+0TNTdSSW8DP+ivcRhWG0GFrnglL2a
	kRSqU3HB0X/Ht7FYevg2D6zLAa1RXy43sEeVaKUzNXNXhatuOGlkTaSBqQnZr6p3UvPAv798IPx
	a+G5MQ=
X-Google-Smtp-Source: AGHT+IH1HPbS6J5BO3IsHUkUFtYfN0LI2r5R74dp89qE1WHi+78Q9dN/yAx/WYzuOFPJXUbX2oJFZEkqUReQB36SKUQ=
X-Received: by 2002:a05:6402:13cf:b0:627:eaf6:88c7 with SMTP id
 4fb4d7f45d1cf-62fc091f8eamr2538041a12.9.1758279556670; Fri, 19 Sep 2025
 03:59:16 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250919082919.19864-1-robert.marko@sartura.hr> <175827563611.434564.16492543952928423652.robh@kernel.org>
In-Reply-To: <175827563611.434564.16492543952928423652.robh@kernel.org>
From: Robert Marko <robert.marko@sartura.hr>
Date: Fri, 19 Sep 2025 12:59:05 +0200
X-Gm-Features: AS18NWAbPsIv_ogjXGy11IVP03F9fUPRSJmcDqhnKaz-3ZeS1dyTOpwOPiC5vHw
Message-ID: <CA+HBbNF29fi4=tYwku4B8oR64YSYU1VxCBUgjViGfz-=SkbBSw@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: reset: microchip: Add LAN969x support
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org, 
	lars.povlsen@microchip.com, daniel.machon@microchip.com, 
	benjamin.ryzman@canonical.com, linux-kernel@vger.kernel.org, 
	steen.hegelund@microchip.com, p.zabel@pengutronix.de, luka.perkov@sartura.hr
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 19, 2025 at 11:53=E2=80=AFAM Rob Herring (Arm) <robh@kernel.org=
> wrote:
>
>
> On Fri, 19 Sep 2025 10:28:38 +0200, Robert Marko wrote:
> > LAN969x also uses the Microchip reset driver, it reuses the LAN966x
> > support so use a fallback compatible.
> >
> > Signed-off-by: Robert Marko <robert.marko@sartura.hr>
> > ---
> > Changes in v2:
> > * Use a fallback compatible
> >
> >  .../devicetree/bindings/reset/microchip,rst.yaml      | 11 ++++++++---
> >  1 file changed, 8 insertions(+), 3 deletions(-)
> >
>
> My bot found errors running 'make dt_binding_check' on your patch:
>
> yamllint warnings/errors:
> ./Documentation/devicetree/bindings/reset/microchip,rst.yaml:25:9: [warni=
ng] wrong indentation: expected 10 but found 8 (indentation)
> ./Documentation/devicetree/bindings/reset/microchip,rst.yaml:28:9: [warni=
ng] wrong indentation: expected 10 but found 8 (indentation)
> ./Documentation/devicetree/bindings/reset/microchip,rst.yaml:29:11: [warn=
ing] wrong indentation: expected 12 but found 10 (indentation)

Will fixup in v3.

Regards,
Robert
>
> dtschema/dtc warnings/errors:
>
> doc reference errors (make refcheckdocs):
>
> See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/202509=
19082919.19864-1-robert.marko@sartura.hr
>
> The base for the series is generally the latest rc1. A different dependen=
cy
> should be noted in *this* patch.
>
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure 'yamllint' is installed and dt-schema is up to
> date:
>
> pip3 install dtschema --upgrade
>
> Please check and re-submit after running the above command yourself. Note
> that DT_SCHEMA_FILES can be set to your schema file to speed up checking
> your schema. However, it must be unset to test all examples with your sch=
ema.
>


--=20
Robert Marko
Staff Embedded Linux Engineer
Sartura d.d.
Lendavska ulica 16a
10000 Zagreb, Croatia
Email: robert.marko@sartura.hr
Web: www.sartura.hr

