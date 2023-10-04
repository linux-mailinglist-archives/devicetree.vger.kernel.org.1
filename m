Return-Path: <devicetree+bounces-5872-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 644B37B83B7
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 17:36:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 1499E2814BC
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 15:36:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B41E19BDC;
	Wed,  4 Oct 2023 15:36:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F3E533FB
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 15:36:19 +0000 (UTC)
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D842198;
	Wed,  4 Oct 2023 08:36:18 -0700 (PDT)
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-59c215f2f4aso27690447b3.1;
        Wed, 04 Oct 2023 08:36:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696433778; x=1697038578;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=E1DdlhuqR3JN6uSIXuCO9eqHb8GCx2/yO+mSSn2zYgQ=;
        b=srLs/8yCgUxhMAURFDVfU0+2pRt+lSkNUJ1n7XOhc/YVwU7RX0jq8cU9dz91cLEjZk
         KcVo7mI9JqWmqbv9cB1nWz+blOMBRxc8ayu/qu0EItR44ekBq6bspHT2kXX+2EIxFiaP
         BGZNebQuAUYvtY9fDRxxlUuAyU4KHjWmDhPc5t2+OL1OT0ZJOgYW9fdTWzIbzWfHqYyc
         2C2KLrar8cTtTNfGEEBZQv6aXhVxjmDXEXbzzi1dDK59xWjtkUdjFCmjkXwYpVTNB0/q
         PQHIjjvLOXtRCq2s5MO2TG/Dk/+87AULBP8QLvZC80t6XfGDgNInpOBnA0ElOqWGLz5q
         Jt5g==
X-Gm-Message-State: AOJu0YznlqqFF5sfCuBYbJ69tB7X3IpWcIguqMqHLyMRlgw9K7AR2sJd
	Zy/Nn3nkNOx7we2ZyObT21fzI6bB/zEUuw==
X-Google-Smtp-Source: AGHT+IFJN/pUOe7Ed9W2W6RxupIa7W9uDqUAVG6lZqDx/bM0qOOjQXQX8RRhZoMDk0ZAOWpBMVS1dw==
X-Received: by 2002:a0d:f645:0:b0:59f:761a:fe70 with SMTP id g66-20020a0df645000000b0059f761afe70mr3041092ywf.19.1696433777861;
        Wed, 04 Oct 2023 08:36:17 -0700 (PDT)
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com. [209.85.128.177])
        by smtp.gmail.com with ESMTPSA id t130-20020a818388000000b0058ddb62f99bsm1235589ywf.38.2023.10.04.08.36.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Oct 2023 08:36:17 -0700 (PDT)
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-5a24b03e22eso27837227b3.0;
        Wed, 04 Oct 2023 08:36:17 -0700 (PDT)
X-Received: by 2002:a0d:cad2:0:b0:59b:f744:f158 with SMTP id
 m201-20020a0dcad2000000b0059bf744f158mr3013260ywd.15.1696433777258; Wed, 04
 Oct 2023 08:36:17 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231002165957.11388-1-wsa+renesas@sang-engineering.com>
 <CAMuHMdU+1ox_6e65YQ0bCQMbqtWkYzsE2S88-En7OnYvomfJ2Q@mail.gmail.com> <ZR2DQYvwTbADM0zX@ninjato>
In-Reply-To: <ZR2DQYvwTbADM0zX@ninjato>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 4 Oct 2023 17:36:06 +0200
X-Gmail-Original-Message-ID: <CAMuHMdW7xYh7EFczC3OBFDCRCa5OhW50iLhC2f3p00goetoTHQ@mail.gmail.com>
Message-ID: <CAMuHMdW7xYh7EFczC3OBFDCRCa5OhW50iLhC2f3p00goetoTHQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: r8a77990: document Ebisu-4D support
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Wolfram,

On Wed, Oct 4, 2023 at 5:22=E2=80=AFPM Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> > Ebisu-4D has a different part number: RTP0RC77990SEB0020S.
>
> Oh, then the elinux wiki entry is at least vague [1]. I checked against
> it and it says "This is the Wiki for the Renesas Ebisu (Ebisu-4D,
> RTP0RC77990SEB0010S) board," which I read that the the 4D is 10S.

Yesterday, I checked the schematics.
I guess I created the wiki page based on the DT bindings doc.

> But I'll fix according to your information.

Thanks!

> [1] https://elinux.org/R-Car/Boards/Ebisu

I updated the wiki page.

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

