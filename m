Return-Path: <devicetree+bounces-95208-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A6AF95860F
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 13:50:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3D4FB1C242A1
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 11:50:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 968CC18EFF6;
	Tue, 20 Aug 2024 11:50:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KCGi1SFi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com [209.85.219.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E51F518EFEC
	for <devicetree@vger.kernel.org>; Tue, 20 Aug 2024 11:50:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724154624; cv=none; b=D00kqUQHFHfIDQl2Lmu+kbJFohppFjasGBzaAQ0ACBJRz+nPTo7o/P3Y/0/ru5TJK+H9Fs7MUa5B0WKGN3hAzzvDGLf+eOkijTcIv+/ukq8UN9730K7nIOgjpUGDWbWZATKbNyVwLqW5KEWhj7dbqyVvt0qu6B+10EaQ/ZyvRPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724154624; c=relaxed/simple;
	bh=IcBYd0In6vCgACRZeqarugL/3ETP63zXXDTjjizj93c=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PEpYEYtUiwliZeFqbsOVbrryo8RJ6upY6e8tUZJY08mT/kvXDoy4lMiWC9fjfqWq0Pr7Iz141pcZY9rixu0DZ8rYtSP2GOeAdFs0IxXXkN6bzxQ2xOM0NN+YIyACrDEjiuBGbwftFQEy/AyhQNYlySQmC61O1enf3OOymGjLr4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KCGi1SFi; arc=none smtp.client-ip=209.85.219.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f173.google.com with SMTP id 3f1490d57ef6-e165825ebfdso439201276.0
        for <devicetree@vger.kernel.org>; Tue, 20 Aug 2024 04:50:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724154622; x=1724759422; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=iriHVArMljQdLri/Yu9Nfjv59wYq9jCnrGoMZhIUOa0=;
        b=KCGi1SFiJ+3w1MLpuIhbz5lmHKZL+HNiVtKiGg4tm/da3N6F+sg10bCogMd88YJomD
         0OtbyAdwUwGWVXciNS7P2P97+MuHHbAFWHWkYskIPtk2Yl0qV2l5bViuBqKxC8QbtfP3
         dArWs5lo6OQ3wL36dDJL57DnPtROUIudoSBwvUoLAI4UmoiKYBNZxFGXsRaZDfvABliT
         +918bA4t/NOaW/GEHno87+yKIwU1kEpIm8OnCpkMIgsnhOp+RFvqCm3gtjiz+TZP1Zm4
         idkoT1Moib1AWWZFCjnUjRFbIjNOoLxHKTqeFTGV/B0AqPjig+h1BaN9YQhoNGzK83HM
         EVdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724154622; x=1724759422;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iriHVArMljQdLri/Yu9Nfjv59wYq9jCnrGoMZhIUOa0=;
        b=SWOWNHP334/7w2TXxTF2Up+8jm27ny7NgiXWPAzlDei8hTfTZdolhtYvr7Fje/Vipv
         otq1u04CV9xBX9iwzGTZD1GY5V4XThY4QXcdB2aUDESXzM8pDsUS352nrpC1p77whgoe
         x7ePgI7JeyL8QcBXN+kTdAJcAN/09ActDIArY5EWQSF36u84QEwV+vxo60+RPlnXyGlC
         VQ/WbMUPpH7fQpkP8KqpDw8ZG8nQRyc0zsEuuZPTt/MqwewsaR6wEby8v2MYoTKjkIq7
         DhokZs6y0yr5YwZEC+fH5PnS/FNfxxT8CwJt62T4bJ4aDQ28Gztz3clvTPTrimGlrCNA
         y3+A==
X-Forwarded-Encrypted: i=1; AJvYcCUUfI1/dBphkkiWP4ULieWgSW/YvHXNyvk95+wRdklPfwShgmtRSbLMp9bnA7NSWECAxzEKZ9mrsAQJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yyeh2175u3LgT8TUcs/joehVWEaVahlcSeIlBs5VpNRsvkS+pZK
	esGmSMbREaAjNpofj4UPYqqeE2gJtMIq8WPVtqT382ppcV6gT20r6O/Fe/Xl7g6oXoy7kc16tNf
	ouZoR+uL4oYRiJcIbN8lXNFFJ1qKX7wgITc4pcg==
X-Google-Smtp-Source: AGHT+IHILDmUK5uFVRkWb7tEwNy3ZYRn0EpoNsn7I5jbZKxJiXulmWZhkFYJDUbPgBs4x/qBekzrkEKkNeDXT0K8pi0=
X-Received: by 2002:a05:6902:2b8b:b0:e03:a227:6476 with SMTP id
 3f1490d57ef6-e1180eb123amr15095660276.17.1724154621761; Tue, 20 Aug 2024
 04:50:21 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240805211257.61099-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20240805211257.61099-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 20 Aug 2024 13:49:46 +0200
Message-ID: <CAPDyKFqdv=Gb=JMDvUD8Cy99B-uyo6gdRwpupmhddb6Fi=7SjQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mmc: renesas,sdhi: Remove duplicate
 compatible and add clock checks
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Magnus Damm <magnus.damm@gmail.com>, Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Geert Uytterhoeven <geert@linux-m68k.org>
Content-Type: text/plain; charset="UTF-8"

On Mon, 5 Aug 2024 at 23:13, Prabhakar <prabhakar.csengg@gmail.com> wrote:
>
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Remove the duplicate compatible entry `renesas,sdhi-r9a09g057` and add a
> restriction for clocks and clock-names for the RZ/V2H(P) SoC, which has
> four clocks similar to the RZ/G2L SoC.
>
> Reported-by: Geert Uytterhoeven <geert@linux-m68k.org>
> Fixes: 32842af74abc ("dt-bindings: mmc: renesas,sdhi: Document RZ/V2H(P) support")
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/renesas,sdhi.yaml | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/mmc/renesas,sdhi.yaml b/Documentation/devicetree/bindings/mmc/renesas,sdhi.yaml
> index 1155b1d79df5..92622d65f12f 100644
> --- a/Documentation/devicetree/bindings/mmc/renesas,sdhi.yaml
> +++ b/Documentation/devicetree/bindings/mmc/renesas,sdhi.yaml
> @@ -67,7 +67,6 @@ properties:
>                - renesas,sdhi-r9a07g054 # RZ/V2L
>                - renesas,sdhi-r9a08g045 # RZ/G3S
>                - renesas,sdhi-r9a09g011 # RZ/V2M
> -              - renesas,sdhi-r9a09g057 # RZ/V2H(P)
>            - const: renesas,rzg2l-sdhi
>
>    reg:
> @@ -120,7 +119,9 @@ allOf:
>        properties:
>          compatible:
>            contains:
> -            const: renesas,rzg2l-sdhi
> +            enum:
> +              - renesas,sdhi-r9a09g057
> +              - renesas,rzg2l-sdhi
>      then:
>        properties:
>          clocks:
> --
> 2.34.1
>

