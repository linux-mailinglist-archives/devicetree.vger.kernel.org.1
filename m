Return-Path: <devicetree+bounces-232329-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id C69C0C16A22
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 20:38:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 9B47D4ECF43
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 19:38:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AF5A34FF70;
	Tue, 28 Oct 2025 19:38:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dh71enLg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f67.google.com (mail-ej1-f67.google.com [209.85.218.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8C4034DCFC
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 19:38:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761680295; cv=none; b=P3Y/t4M9l23HVoTLoVzaaJT4p5xZZHnNC/giRWGdqhLy6fc6hPbaPHVdFUs/6yZ1fEiCN/wUY7AJ/1S9Zt6dswqgc1hOX0v8oSrae7H+rm8HOk4/gCatloXaAo4ENqye9/DmXiIZjtUbyQSobCrKgtnJx9wFaUxmPcr/UA9Qw0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761680295; c=relaxed/simple;
	bh=aNeEuzDTDWur/0YtA72ZPsuM3beIOXvdru72F3c0jlE=;
	h=Mime-Version:From:In-Reply-To:References:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=EvqAjN+TnmIbkD4YdQNdkI7weHHVtblTB4dYpVb3dkNnT/85uF8lASj8CdWeizuNwK+YvGY514H45D3pMUHSsWi2KoI+JsND3tXhmYtFr2VUtZnfGSvCZdy3UorhiC0YeD5/gxn8ntCo9suO7rt4UMR/omMruw9Avi3X0ctCF0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dh71enLg; arc=none smtp.client-ip=209.85.218.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f67.google.com with SMTP id a640c23a62f3a-b6d3340dc2aso73632166b.0
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 12:38:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761680291; x=1762285091; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:references:in-reply-to:from
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/d1nVDJ7emVNTsvQ68M7pKA7Zb5SHnnPUqNukDQj+RA=;
        b=dh71enLgjHH7yw3B6+G4KeRiH5Tf8i0ttCbvy+RmoAZ0Zmx9aaxMPyzxIhygf070Gb
         mtKb5R/imC0SkVi3pVC5GQaJ+Y6F7nYHwdARAJv691Ktn4eC992V0+yhVIh379gNR7Ds
         EMtmKiOUQfePukJq7svLZMXkQQ+b2LE11CBJgnWtfGuw4s4liYYf2ba9G2XQbcQ4Bb/C
         RpB6kFCoYrstHNzD05+AcCaYobbGNBYq3DEcphEnh9foQUHHbvQYsf1VRkG5CdLiY3+E
         mEBDG5u7ZvsLLEmQua5CZBExsmAePzsbRFDsXwPQ+r9V36BJG+Kdh//EZ+wzEqcqXXWT
         MLfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761680291; x=1762285091;
        h=cc:to:subject:message-id:date:references:in-reply-to:from
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/d1nVDJ7emVNTsvQ68M7pKA7Zb5SHnnPUqNukDQj+RA=;
        b=n+nGypOzGcgQyYAQvFmNU1vH72aKFKexp8idHwKeqaD6jR5tGR2pdZcw2Kvl4UhqMS
         5MubjYLPxN3FXpwHgT6RV+k5lvfpA+qiEnN+nYOYtwoSZtwhXWW8xvlvcZMqTPhXCX7Y
         MhH4gGe856ATCzv7CD4JG1BOjBwAfv1JXJY4qMVzP5aVSWDUS66odqeroapv0HFmXEXS
         aKjSVyUISyOQiQ3uvh91irMe6UvOBDUbMGGVIJ6yq4zhE6JbL4PZjXThJPn1pWiqueqa
         ElrHTfHVQUamSEzR3FLMf7nHu4s9iPx5qiosfbGfayAAnGitttLuZRMLB+yW/7jI8UO4
         9gug==
X-Forwarded-Encrypted: i=1; AJvYcCWiMh9UIoodQh0smr8cwHCn+/MVwz6yQ08rZX63MJkMDvSRt+0xi/NZ6MMOoaiIO/h5ur+Ii8YIDzk3@vger.kernel.org
X-Gm-Message-State: AOJu0YzTXc5v4HqMyeOIdBbZ9MzWgCxKnzCcZIyXB84ifzqzEFvaLF6S
	W4nLnFzFnKGolfPqEK4SFyMkmoCFXEpXfJfA5/KE/RXuQEpI5CJ13lD+j1j6GEhSSn+S97xSW8u
	oYcQxjjbvwABjBzYLL28eT6F+9Ltcy4A=
X-Gm-Gg: ASbGncvtiBjE9e2YPAoM8dGfz+g+rOKCtrc9ABlP4g/07gb2lbv172djE5AZXJYPGlZ
	1mh2fjVhGRbGCt6ZIJ0g/c4TPR6oyLVN7DXnnRyQFc6A/namUEIhrzR/ArndyK81tQa48ASMiBi
	ONQacCvnS6Rk5j7Ghc4sntSDQyNG9kSZ3HzszDqtY9K4WPjqTJr3TZIR+qoZ2iZbRHLpBDNlpIw
	XD1LdBh6TMWqPjy/2xA+PesciL/V/XhGGJKe795wgftECF7IQ6FCAYcKT2nsQePrjk+6g==
X-Google-Smtp-Source: AGHT+IFXCv3NLTqCfuR85Tev/aBDdsf4JrxkYAhURFZZFkUVV5Guf6SWg8m7dcZhUo+L4eIXn4zfs5S9vSsND2tSgig=
X-Received: by 2002:a17:907:3d10:b0:afa:1d2c:bbd1 with SMTP id
 a640c23a62f3a-b703c1f1e89mr42748766b.30.1761680291324; Tue, 28 Oct 2025
 12:38:11 -0700 (PDT)
Received: from 724652696919 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 28 Oct 2025 12:38:10 -0700
Received: from 724652696919 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 28 Oct 2025 15:38:08 -0400
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
From: Coia Prant <coiaprant@gmail.com>
In-Reply-To: <20251028-haste-amusing-78c28e834b5b@spud>
References: <20251028-haste-amusing-78c28e834b5b@spud>
Date: Tue, 28 Oct 2025 12:38:10 -0700
X-Gm-Features: AWmQ_bn7Qe26tzowtppaIPQCwjocMKpUT9bEG-eaS4l2nl7sB4xnwDMEoMgE1XA
Message-ID: <CALj3r0jQ-Y3wt=iyykrFVWDXyA+2feCtYy+budYzqOaVY6WqnQ@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] dt-bindings: vendor-prefixes: Add NineTripod
To: Conor Dooley <conor@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Dragan Simic <dsimic@manjaro.org>, 
	Jonas Karlman <jonas@kwiboo.se>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

At first, it was to avoid problems with the beginning of numbers.

Given that it is already used by downstream projects, we have retained
this to ensure that users can seamlessly migrate to the mainline
version.

Thanks.

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

