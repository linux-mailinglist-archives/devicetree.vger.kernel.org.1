Return-Path: <devicetree+bounces-235621-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 98000C3A7FF
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 12:17:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 35E6D5034D2
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 11:12:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE52F30DEAB;
	Thu,  6 Nov 2025 11:12:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MeDLRnLO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF2852EC080
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 11:12:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762427544; cv=none; b=RGDlmOwHmWS9uDp5M89rYVr1yzHXrT/7dT5Ks/QfjRs6bxgd5KuMFC2KIc9/wPzpX1VfuxrFkeFPQCA8UljCuF7t1dQHWFB2tz2V+IuL4MK7nsN+gEuuY6CWeM4GzOyI1Qbk6cTH061UEwxRFcygvZE1knd1qToXl5LJkFq13lw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762427544; c=relaxed/simple;
	bh=k39p6ctwzumtM930CezhirQ3llb81chzlkpbZXG+C1w=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=q+MSodLMVJWztxsgZktIokiqSHlT93b585jnnYt104/iB9k+BM5AhzFw4rw8mtTao5T5QMQERFvIuoeO/CjcmiL4jU5RQndf4zoG09ONCOZnVHLV5vEfmlqb8OUQih/DzM6Y8pPT5kqZ/FCW7PEz3yaLRX1vVKqck/7QQOX4PBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MeDLRnLO; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-b719ca8cb8dso174385066b.0
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 03:12:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762427540; x=1763032340; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=2yrvTjvjO1pUk8F3CcXiYPOz5oOf/FwysOOSOBS5mvM=;
        b=MeDLRnLOZKCKc364E71cyWH1QjArtOK7QVwNri34wdiwWhxx9WjH3MRp3m2vde1Qp4
         fd08NF8dSBmmvCCX+TzfLktxLHqNpra7+FAc+W+o8wyJhYgo7vVdbLQTACZRrJ1l0pVb
         qhmOBpqSCvdvEqjsPOvxrMiUHkDbC6ydbAvD5xKESvzu34QqJ+500RJYy42rZKoK2DV3
         AIY3HYW12tdjF/ls1FXza8fqRL8riQvQiuQPXakEfC82LlFdcrWd/H6NJvzXm6Vga3xk
         0C3aKUTNPoItMCBqJE1kvWi8BpUOu5lsK3niAGgU7uBZ5eSbDcS9z2v1nZNAt1aBcP+T
         d7GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762427540; x=1763032340;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2yrvTjvjO1pUk8F3CcXiYPOz5oOf/FwysOOSOBS5mvM=;
        b=E+88jcZ4m+dVrdMlOlmhMF1W4JcA3i9OytT/aQqd7tMZll4MoxydYQV+kmluTICRJd
         JDtJ4KwMnmZrZcspHFHtuSDo4OKAqdGOZj1KRhjpOldOZXCQvNhyMgeZD/HL+JYOQCkp
         8riuQlzpaFMZuKdkdqHiR1s6P0+98JsDSG8ZOWx9421fpxLSmm1vNZiCIYm6h6xVMaPB
         1rTfXuJ56I0/85EHR1nWtKD3F+OjROrsQGODU/8ue/NWax04FjG8kTg7rx2bJbszKXbK
         0o7Z8JrAGXr/Qxpid6gyu5haAZWZsu/C0NJK6PNUQrW0EhK6pG3GCJSxehmSaX0MRgDG
         KDLg==
X-Forwarded-Encrypted: i=1; AJvYcCU6IHt4VIOpD2x0pyhx9DXLr12R5qgRL55XxvyEFmH8dbjCdQdRH3vl5IRnnLJTaWse7UZZ25F1HGRp@vger.kernel.org
X-Gm-Message-State: AOJu0YxZzZaAquUWdJUdhWWDmx/ClroUdf90rcrBXb/Yt5/LOAnA+aSC
	4C+Qigkg2E2MI7irjsynVbbLExeRAiaOHYcd/y1ZZ77XYdAqCxJdAQ5ucGf0NrQd9nL6iy1onCf
	acqEPqJXVkp6Aa+Exk8o7XKIA3lD2CFVEiEMCgTnq4dHXzWiZ1VybmcJKO6vU
X-Gm-Gg: ASbGncuAyD9MVqoTX22lzHYDMVfUCogn28SNCGeYbQ3YY+ijg+5IWjc8v5jgKSeGsjg
	7fBBUVdndivNNKgzGbk97wBE8C7DKGroFhhJ6msB7Rtn2AHIPqVmHoUpfLuKZ8/IuKYMxZJzgy+
	diC6wMhHCxofkm+3vFZbONZHqGBJd7EGQ9dj/dk0cw/qfJxERYXG4iZlwdP3sFnCeUC/Kqmm/V7
	ITpJ1DnmNilrekY7bjwjvuucgzDdwbFFbo11gL9ZmUonDGk/tXSq+YeJ7ybaw==
X-Google-Smtp-Source: AGHT+IHUgEAII+KCZtG9kG3bTwp715Xxrh6yTyMBInhVCP+K/K/WKOOQZr1KOXhWjo8wScgSJ9aNwT8ZjsYf4IzDF4A=
X-Received: by 2002:a17:906:9fc4:b0:b47:de64:df1e with SMTP id
 a640c23a62f3a-b7265195d0cmr835459466b.4.1762427540227; Thu, 06 Nov 2025
 03:12:20 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251105154107.148187-1-ggo@tuxedocomputers.com>
 <20251105154107.148187-2-ggo@tuxedocomputers.com> <20251106-lemon-kittiwake-of-freedom-dfcfdf@kuoka>
In-Reply-To: <20251106-lemon-kittiwake-of-freedom-dfcfdf@kuoka>
From: Ettore Chimenti <ettore.chimenti@linaro.org>
Date: Thu, 6 Nov 2025 12:12:09 +0100
X-Gm-Features: AWmQ_bk0LxY3qjnahgz6ixNPKz7DJgXQRgCibkCqf95T14Y4Ienoc9DL3NvbRxs
Message-ID: <CACBDSOW=_dudXh_+rHSOpbShKewKSr+va5+1Ng0hJRyC2vp==Q@mail.gmail.com>
Subject: Re: [PATCH v2 1/7] dt-bindings: vendor-prefixes: Add ASL Xiamen Technology
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Georg Gottleuber <ggo@tuxedocomputers.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Srinivas Kandagatla <srini@kernel.org>, stefan.schmidt@linaro.org, stephan.gerhold@linaro.org, 
	wse@tuxedocomputers.com, cs@tuxedo.de
Content-Type: text/plain; charset="UTF-8"

On Thu, 6 Nov 2025 at 09:05, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On Wed, Nov 05, 2025 at 04:41:01PM +0100, Georg Gottleuber wrote:
> > From: Ettore Chimenti <ettore.chimenti@linaro.org>
> >
> > ASL Xiamen Technology Co. Ltd. is a Chinese high-speed interface and
> > display system chip design company. Adding it to the vendor prefixes.
> >
> > Link: https://www.asl-tek.com/
> >
> > Signed-off-by: Ettore Chimenti <ettore.chimenti@linaro.org>
> > ---
> >  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> > index f1d1882009ba..278cb879781f 100644
> > --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> > +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> > @@ -176,6 +176,8 @@ patternProperties:
> >      description: All Sensors Corporation
> >    "^asix,.*":
> >      description: ASIX Electronics Corporation
> > +  "^asl,.*":
>
> So the prefix is asl-tek, like its domain.

Ack. Fixing in v3.

Best Regards,
Ettore

>
> Best regards,
> Krzysztof
>

