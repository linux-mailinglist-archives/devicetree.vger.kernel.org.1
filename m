Return-Path: <devicetree+bounces-232334-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DABAC16A5E
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 20:42:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 178584E362A
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 19:42:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EEB634B41E;
	Tue, 28 Oct 2025 19:42:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="U6nQsGo6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f65.google.com (mail-ej1-f65.google.com [209.85.218.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BC3D25F96B
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 19:42:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761680561; cv=none; b=hGChZIScxx4dLKgbwHJCsPzV5nBLRd5LLh2gRgjhnMGNJIZFm/2VhXYn+2UJg9e/3hocsVJ864pUXkL19ppQmov9abfXKQ8xQE0eBYt6xxnt4+2qlGinMAK0fd8e6R6zYlED5cdFVMeh0Yr/w0syGeBC+XwWWaokkIg+t6xbjyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761680561; c=relaxed/simple;
	bh=SJ0CRbBd4WlB7/tYPTMKkatZHlzIjiiD+n9S27deXj0=;
	h=Mime-Version:In-Reply-To:References:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=peJon69doSy8Hw+rBzOtKMwoKPzmFwOvw3gpv7DA+jY3teltO7J7lDgtvtdqnPu1oYR2O5dsFUy7vtnPr9J/v4rects9bGthVm5tH89K2qcs4hegJyVaPaPxjufrvf+CsggwPfP1F23LsOxwKoYMOCqlnBvssoUjGmTjS1v5avs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=U6nQsGo6; arc=none smtp.client-ip=209.85.218.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f65.google.com with SMTP id a640c23a62f3a-b3e7cc84b82so1031244966b.0
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 12:42:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761680559; x=1762285359; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=62vvDBBB/rOaWpDgtEM9Rt/abCOhovCwo7YMTy41U/A=;
        b=U6nQsGo6dEGcNksZPWFWXp0RBNjVysUocQinhGp9i+5pUPKNWt+UUPLBK1qzSi8aqR
         W5CsyiDF2tkoMpKB/jHRCFYHydynSRQ/RY1UMn0KqE/zI7g2GGU5YE+TO83e4TCSkBkF
         yFV9haZllwa+08wNC3kHdthX92CJHIDEMN4MdC1RBiV2ZMsmh3j2Xxj0aZhrVxmhFBWJ
         NfmYGjgjSVgnCM7WaCLR4tDBQz9L4wissVA7NZO3EDT5La3WfJ1wB6X+F8xwol0RWzkR
         al+/9n4bnZHkjv/vQlClGctbGHVoMyiInFAxKEvF7+CZ1CvTcESodGhMQUn/NQWnTAS1
         P/ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761680559; x=1762285359;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=62vvDBBB/rOaWpDgtEM9Rt/abCOhovCwo7YMTy41U/A=;
        b=Ja0Bn6WfElFtJ+Frjxr58u2zd3FD6FLEyCH/lyMS3G+GHOQ9obl5fDbnXc9IatdHCe
         GiP1SUfAbSLbu5vcDpBygPj9sSOdTL4JsPwbcfJREVB7zRUlLRReeScjQBQsCCyjBLdI
         rcCRNoROVSVJjqefnx/CSNzhgan/HNtJbe0PgUFBzjIf4LqO1Ehcv3Q36JdYxlfIoukc
         Z9LA6mIaDrJgwB28bkpWZ3wpzXNctSDl/GYZuRqegQ4BtbiWFpdusuH9ma7qS8HiJLdv
         4pn/4OkB6TtzZsQ+x0v0jhVXlctNllow2EyeMl/jyTIZxeBm3B0LxYVcv39sDqUMFJ4D
         ES2w==
X-Forwarded-Encrypted: i=1; AJvYcCW8zOSdDI/F01jaC+p2AshoGGFtf7Q/Z9KIyjTnF1BJLOrAWCKzB83L2jLTutoegsFlttdXuCuX86SI@vger.kernel.org
X-Gm-Message-State: AOJu0Yzjom0wxM4TFtnmDFPatvKpIXSiLkHk967Gcyexk1F51g+C5jDx
	FaUJxbEsQ1HlEgT+8Z/3ACLK1xPw95l2TnwOYN851JLgtb9JY/Ykbmm5HSGI7YDju2ER1KETeKi
	K4VJFM3KkHsdlHAhRfELZoT4xgtWB0Zw=
X-Gm-Gg: ASbGnctlNap0gh17FfA1CM4M/5f8mLtbvOOVTfvFOGhMCtL77tK+qH+9mbiRgDEsqdB
	Vy1xV+l4MrqH0snFqXdRkwrmHwh827j6jeswH+KqJtMD7YGX5qdiJyeIPMYjsRrXGfB0e7bacij
	VekrPqgTkY4S+GpWVQY9KCpbocbxxf+FNfOllYU/y8B1wlmOqpBQcfKA3Bw9XfrFG4N5aobDU0m
	5IsGyEU3ixN7MHzO1FXP8HoK2OjaiSc+CHH1BsbbqGoVymVbbjyb3Uedoo=
X-Google-Smtp-Source: AGHT+IGuyzMZMoSUBcdluhWJ8z2U2NKreqWEsNAWWKSsPdZyGxxSF7LB6m8ffRoMaRK71OGRlbTX0MthE+/GR0ExXdY=
X-Received: by 2002:a17:907:9448:b0:b6d:4cdd:e375 with SMTP id
 a640c23a62f3a-b703d2dac74mr22693866b.11.1761680558394; Tue, 28 Oct 2025
 12:42:38 -0700 (PDT)
Received: from 724652696919 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 28 Oct 2025 12:42:36 -0700
Received: from 724652696919 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 28 Oct 2025 12:42:35 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
In-Reply-To: <20251028-haste-amusing-78c28e834b5b@spud>
References: <20251028-haste-amusing-78c28e834b5b@spud>
From: Coia Prant <coiaprant@gmail.com>
Date: Tue, 28 Oct 2025 12:42:36 -0700
X-Gm-Features: AWmQ_blTfxgti-krwDFdX4C-MNUtu-qJWXUIoxjGku4ymfFwik-GWE6bubjvmIA
Message-ID: <CALj3r0haeTdNt7=cMqRa0i3j29P8e2oQ-TzsgZfCCG6cB0q=3A@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] dt-bindings: vendor-prefixes: Add NineTripod
To: Conor Dooley <conor@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Dragan Simic <dsimic@manjaro.org>, 
	Jonas Karlman <jonas@kwiboo.se>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

One more thing:
I sent the v4 series of patches.
v3 is now outdated, although [1/3] of the patches are the same as v4 (

https://lore.kernel.org/all/20251026150358.1078453-1-coiaprant@gmail.com/

Thanks :)

2025-10-28 19:35 (GMT+00:00), Conor Dooley <conor@kernel.org> said:
> On Sun, Oct 26, 2025 at 10:36:44PM +0800, Coia Prant wrote:
> Add NineTripod to the vendor prefixes.
>
> Signed-off-by: Coia Prant
> ---
> Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
> 1 file changed, 2 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> index f1d188200..37687737e 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -1124,6 +1124,8 @@ patternProperties:
> description: National Instruments
> "^nicera,.*":
> description: Nippon Ceramic Co., Ltd.
> +  "^ninetripod,.*":
> Why ninetripod instead of 9tripod? That's what the company uses and in
> the marketing fluff for the boards.
> +    description: Shenzhen 9Tripod Innovation and Development CO., LTD.
> "^nintendo,.*":
> description: Nintendo
> "^nlt,.*":
> --
> 2.47.3
>

