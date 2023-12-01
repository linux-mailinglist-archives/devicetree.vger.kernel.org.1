Return-Path: <devicetree+bounces-20678-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D11B800874
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 11:38:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9B91B1C20F0E
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 10:38:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8856171C2;
	Fri,  1 Dec 2023 10:38:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="kEJAUXez"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-xe33.google.com (mail-vs1-xe33.google.com [IPv6:2607:f8b0:4864:20::e33])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 93D2B196
	for <devicetree@vger.kernel.org>; Fri,  1 Dec 2023 02:38:11 -0800 (PST)
Received: by mail-vs1-xe33.google.com with SMTP id ada2fe7eead31-4644f2e611bso662354137.2
        for <devicetree@vger.kernel.org>; Fri, 01 Dec 2023 02:38:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1701427090; x=1702031890; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UTTB5Qf3NGi+WB3GCJHG37DhU59Gl9ODLb3haNT1v/c=;
        b=kEJAUXezhcezJLZxMjtGjmmwIBcxqs+4A2DBK2At1NFG4VXACwh4I+X4Z5X6yja1lJ
         F2ESnvA0dnxy2jC87uy7dPz+HuVPHbcQLwsthM/Jjh13zRLzl+7WXan2CNE2w0aTDOX6
         2NVQENlG5BJw6FwWlmt2fkbh5kHFVpn8HOrrbzlTkxVX4P/TjecdWGfE3PB533uF++7H
         Sj7TIgNjvdESagMEbr41pg38lJ3JiC5rLFZj5Eg4dRm4Ez01/9rHHQdUO/gOb7My+ja6
         OuvuwWLdPBW3eWljkWFFNO/5gNi5S9rOv8cSTXx5d68se+xwosg0JzDSgEI9QMT9uJnz
         q4AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701427090; x=1702031890;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UTTB5Qf3NGi+WB3GCJHG37DhU59Gl9ODLb3haNT1v/c=;
        b=dE2njjoWO0xlPx8DNv8TlGHZvxo0AtFu+QYUYyxg1tb/aAr2rZp+amlrxPladMeDYt
         niF7pMkIWeQtr2pd3R2d7pfXZGonDQX7y9MBZCZg/EEe21xRS/6eD4C3pLwRgPQXQQhL
         ttl5+cOef1Hx7c6sQxyqOeBTMW8B0MLL9RBk+TJHpcmsWhZLLkh1Tw9oQYZ1Hawe2FJ3
         2xeRDqKjw1xz91PSUSxfqf6JBOVVSRREB8M8Jmn1jFXrVKFnYVhZ6uWa1uXqfKPnAi/q
         tqrYSanHaOTq8dKxjVqgr3CYHz/jFQH4EvfgORX7gGUgUFDunEcMMgfS/uxtD6H7cKgM
         OZ9A==
X-Gm-Message-State: AOJu0YwgLUSi0wpTc/sf/fhM8W8/3ZsWYN9PDGwpP1N1pcb/B3QW7dvB
	CrTASBZ8ZPKZFyixifn/kXp6BeCFiZLKt+0IIQjkIQ==
X-Google-Smtp-Source: AGHT+IHD3C4jeU8YUMrsywQzBJT50HuwUQ8yJRyHKKpw9tFA3HPIcqu/SHTN20FoIPSzlf2zVyUp/WJHxr0sgyP3xm4=
X-Received: by 2002:a67:bc19:0:b0:464:4891:cce4 with SMTP id
 t25-20020a67bc19000000b004644891cce4mr8735525vsn.20.1701427090706; Fri, 01
 Dec 2023 02:38:10 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <10db3021e8617c1f98eca51e26d350dc4b51b53c.1701335736.git.michal.simek@amd.com>
In-Reply-To: <10db3021e8617c1f98eca51e26d350dc4b51b53c.1701335736.git.michal.simek@amd.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 1 Dec 2023 11:37:59 +0100
Message-ID: <CAMRc=Md7iQnkOp+nB3=haakpt5jF_STtYgDAcxRVQJjYWnjFKA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: gpio: modepin: Describe label property
To: Michal Simek <michal.simek@amd.com>
Cc: linux-kernel@vger.kernel.org, monstr@monstr.eu, michal.simek@xilinx.com, 
	git@xilinx.com, Andy Shevchenko <andy@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Linus Walleij <linus.walleij@linaro.org>, Piyush Mehta <piyush.mehta@amd.com>, 
	Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 30, 2023 at 10:15=E2=80=AFAM Michal Simek <michal.simek@amd.com=
> wrote:
>
> Describe optional label property which can be used for better gpio
> identification.
>
> Signed-off-by: Michal Simek <michal.simek@amd.com>
> ---
>
>  .../devicetree/bindings/gpio/xlnx,zynqmp-gpio-modepin.yaml     | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/gpio/xlnx,zynqmp-gpio-mode=
pin.yaml b/Documentation/devicetree/bindings/gpio/xlnx,zynqmp-gpio-modepin.=
yaml
> index 56143f1fe84a..b1fd632718d4 100644
> --- a/Documentation/devicetree/bindings/gpio/xlnx,zynqmp-gpio-modepin.yam=
l
> +++ b/Documentation/devicetree/bindings/gpio/xlnx,zynqmp-gpio-modepin.yam=
l
> @@ -23,6 +23,8 @@ properties:
>    "#gpio-cells":
>      const: 2
>
> +  label: true
> +
>  required:
>    - compatible
>    - gpio-controller
> @@ -37,6 +39,7 @@ examples:
>              compatible =3D "xlnx,zynqmp-gpio-modepin";
>              gpio-controller;
>              #gpio-cells =3D <2>;
> +            label =3D "modepin";
>          };
>      };
>
> --
> 2.36.1
>

Applied, thanks!

Bart

