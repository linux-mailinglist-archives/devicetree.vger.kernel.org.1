Return-Path: <devicetree+bounces-113272-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E421D9A504C
	for <lists+devicetree@lfdr.de>; Sat, 19 Oct 2024 20:22:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A622728593D
	for <lists+devicetree@lfdr.de>; Sat, 19 Oct 2024 18:22:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 450D21917DD;
	Sat, 19 Oct 2024 18:22:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EVH2VriC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09242152E12
	for <devicetree@vger.kernel.org>; Sat, 19 Oct 2024 18:22:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729362127; cv=none; b=U4mOrSUZCwO9sQI1X7Of0YKqQNHDZE5Iz0vSkE8/sBeSZuKNi175Goa/cKFieBymdopyzaMls3vDnewoEv0VISzQc9oRrqtR7WfdfIw/EDnJ4SpV/LbUkWKjeXvR08V54hAkB9F/CFFlndyS1h+vHFIrIWbr2dSSMciPtYB3nLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729362127; c=relaxed/simple;
	bh=SoXVUCDnZHOHDl0yAjwiY+C9f+qwM4EE5fVc8drlwwA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bDA7cWN5Gf23idj0GpEDcJ/zNL2VzjMyOFiphcAGviIAhBU7cghOAzfLxrBf0ETLCxEXITiXrE+PbyNIU1jt4AvXRV0wpsOvyAU+4egu3aK/0cEduGu4YkLoJK8p4c6LmOvkEo5iqjFdGSVMdV2Hccp1IayKrKvPd8hVYE3izMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EVH2VriC; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-539e6c754bdso3160277e87.2
        for <devicetree@vger.kernel.org>; Sat, 19 Oct 2024 11:22:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729362122; x=1729966922; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d3vHOJUfq81Rbqx2e+mPXsky+2qXsdJBbCUk9Mrtq8g=;
        b=EVH2VriClJ2HBKzG0KWHxgywT9o9lbvsnhJk4APNv8LCBLOzbjmSxU5vzM1sTOU0iW
         1oipB8VKUMPZn30dj7d4SHfJ3CJuSZXSO6Cs6mO4vl//QLWox7k7mU7xOoBTB4N3pgRQ
         IgJwiIPxJblhtbDfngayeJU95Jfptx0R2BHTRPBun8HOVT+hJjUAzGe+q88VvnRaO1tK
         K6+Hi4koGZuZIM7HIALr7PvNicfLgdxeJwZay7J51jz7rUlah/2aE1+7HxR0UiS5ulLX
         3PQekIehuZEoM5G7QEQagbgPIQxC8/gOqw0PPxjXVKMXMY0TulY+n6jIUuQ0GgvbRyPF
         DnwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729362122; x=1729966922;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=d3vHOJUfq81Rbqx2e+mPXsky+2qXsdJBbCUk9Mrtq8g=;
        b=HxmXBHO1WLt2wDSyDQ89ghi1KZxIxnDcKZ9+sIGpHWowwfkJIuyGcT321HGrY3oaaB
         0qixj56DYmRRXMRu6OjwLzO+A7IQEfn96pvVA3Rig/WZ2+5oVRN2LzrFbB7pBAuxCbTa
         RTo9+DJQigIx/1qzmhGr2fTEfxA9ie2OKB0rlu2tc5RUKzyQaDm2JMV8l4nmlCIWsrbp
         KpLc4Zp3GIaDqvqK1r/7/c5AQKzPKyZIvtxhgscJVT/w8NI49SN66KAQiTBQzikDRMFQ
         bU5G6BePAS8IN1hI/ltN4DpRep4c483pLnssoFQDGQlP31ZhIvmECBmB+Ua+o23+mDxn
         qILg==
X-Forwarded-Encrypted: i=1; AJvYcCU53tJMwdSThl/DdkhQJCjeQ+Jw+Dy0RYz8mxkYyXxQtapafe4K2BGmKjjlh1NAMZqN1qHbzDJnJ4g+@vger.kernel.org
X-Gm-Message-State: AOJu0YwKFv/sHWXorUJFhqJCiT4J5+RUzJneGn3k2Dh0EkCEsrIkZiFJ
	Y7pOGabdo+snFEdI6DoJGXCDbDEW2p9ObZnuhtfQErptnj9CmLd/OxsxPXq5sGmVHi2QchNw2dp
	KEE5w2dIfROyko3+mvUvSQiErluhqdbtH6sYqLw==
X-Google-Smtp-Source: AGHT+IHvz18eqroQAt1gsqF0yINuU0ZL2Fi8sYutKrFzDIZXBs0v3mz9SJVaFryRy40ku4fDu9F/kuTJqtJcZCvo1k8=
X-Received: by 2002:a05:6512:33d3:b0:533:4689:973c with SMTP id
 2adb3069b0e04-53a15497022mr2837628e87.23.1729362121884; Sat, 19 Oct 2024
 11:22:01 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241017113942.139712-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20241017113942.139712-7-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20241017113942.139712-7-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 19 Oct 2024 20:21:51 +0200
Message-ID: <CACRpkdYAynE2k6LEYrmcvJcO1gJW+NH4wv-S7F_xa-SvsueDZQ@mail.gmail.com>
Subject: Re: [PATCH 6/7] pinctrl: pinmux: Introduce API to check if a pin is requested
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-gpio@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 17, 2024 at 1:39=E2=80=AFPM Prabhakar <prabhakar.csengg@gmail.c=
om> wrote:

> @@ -100,6 +101,10 @@ static inline void pinmux_disable_setting(const stru=
ct pinctrl_setting *setting)
>  {
>  }
>
> +bool pin_requested(struct pinctrl_dev *pctldev, int pin)
> +{
> +       return false;
> +}
>  #endif

You need "static inline" in front of the stub, that's why the robot is
complaining.

Yours,
Linus Walleij

