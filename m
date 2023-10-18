Return-Path: <devicetree+bounces-9783-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 339277CE70B
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 20:43:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 007E01C20D41
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 18:43:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39E8D3B782;
	Wed, 18 Oct 2023 18:43:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81D4047356
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 18:43:24 +0000 (UTC)
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C695F7;
	Wed, 18 Oct 2023 11:43:23 -0700 (PDT)
Received: by mail-yb1-f172.google.com with SMTP id 3f1490d57ef6-d9c7bba32beso1282321276.1;
        Wed, 18 Oct 2023 11:43:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697654602; x=1698259402;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EzAw4DKXW1u+vvSXADlvSYINv0hYvkwGHrJ3bJrdSu0=;
        b=JKLt+1MDasX+YZHdKhxhWRd7OgjCoQABKBq5zapCHd4CzifG5cNQrUGikFvOKTGKkX
         KE8xugbR55ALaeR99nwoVo8NzC/XMGfhkusQ8igZyfPST+sRz4osuwuHat/XP0dS8cZS
         xJ+N3tBEzfh1ldR7TOX9mRpGRD6/estixdakfdgBSdGdcXatmRBraThFv6AKyXZhLmWQ
         MnoQPTaKDiDG3tutz/CGiiU6xhf39DMJ1sTnm7EJqTwxBqbWwjzRSy4CyTWxhYo0zG6x
         P6TFGJAEG3HDRUcEAEee2OSx7bbg9s5PZ3Glu6auPrr1naJnsAVu627PGtr9NjbH7nmg
         5UGg==
X-Gm-Message-State: AOJu0Yy5gAzlk0Pp4H4AKSE11bX1TQjNSjiI4vbIQtjSexklH88C0Ff4
	vnlV45vtEJ7GNSiouauegtbCBBGZ82jxxw==
X-Google-Smtp-Source: AGHT+IGP4gmC+HyQ6AsL2gTo/WJI8XkB1rz+lZJW61r0HnqG/4xRCSLrvJWMBgmQpJYHSxGk2ZU8oA==
X-Received: by 2002:a25:b411:0:b0:d9a:5c30:c1e9 with SMTP id n17-20020a25b411000000b00d9a5c30c1e9mr243164ybj.35.1697654602310;
        Wed, 18 Oct 2023 11:43:22 -0700 (PDT)
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com. [209.85.219.169])
        by smtp.gmail.com with ESMTPSA id u14-20020a252e0e000000b00d9a43500f1dsm1463731ybu.28.2023.10.18.11.43.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Oct 2023 11:43:21 -0700 (PDT)
Received: by mail-yb1-f169.google.com with SMTP id 3f1490d57ef6-d9a58aa4983so8525035276.0;
        Wed, 18 Oct 2023 11:43:21 -0700 (PDT)
X-Received: by 2002:a25:404d:0:b0:d9a:3bee:2eeb with SMTP id
 n74-20020a25404d000000b00d9a3bee2eebmr174788yba.60.1697654601726; Wed, 18 Oct
 2023 11:43:21 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1697199949.git.ysato@users.sourceforge.jp> <2c63fdae1d2c60f478212d07898768b68f01b3b0.1697199949.git.ysato@users.sourceforge.jp>
In-Reply-To: <2c63fdae1d2c60f478212d07898768b68f01b3b0.1697199949.git.ysato@users.sourceforge.jp>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 18 Oct 2023 20:43:09 +0200
X-Gmail-Original-Message-ID: <CAMuHMdU7GkqZQ14ExvaY7U8pEE5RJ=WJFH9TpNz1zLBY-2D=HQ@mail.gmail.com>
Message-ID: <CAMuHMdU7GkqZQ14ExvaY7U8pEE5RJ=WJFH9TpNz1zLBY-2D=HQ@mail.gmail.com>
Subject: Re: [RFC PATCH v3 27/35] Documentation/devicetree/bindings:
 vendor-prefix add IO DATA DEVICE Inc.
To: Yoshinori Sato <ysato@users.sourceforge.jp>
Cc: linux-sh@vger.kernel.org, glaubitz@physik.fu-berlin.de, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Sato-san,

On Sat, Oct 14, 2023 at 4:54=E2=80=AFPM Yoshinori Sato
<ysato@users.sourceforge.jp> wrote:
> Signed-off-by: Yoshinori Sato <ysato@users.sourceforge.jp>

Thanks for your patch!

Please use a one-line prefix that matches the history of the file:

    dt-bindings: vendor-prefixes: Add IO DATA DEVICE Inc.

> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -657,6 +657,8 @@ patternProperties:
>      description: Inventec
>    "^inversepath,.*":
>      description: Inverse Path
> +  "^iodata,.*":
> +    description: IO DATA DEVICE Inc.
>    "^iom,.*":
>      description: Iomega Corporation
>    "^irondevice,.*":

For the actual change:
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

--=20
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

