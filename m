Return-Path: <devicetree+bounces-5421-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 71F6D7B64B9
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 10:54:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 2310F281600
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 08:54:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1206FDDBB;
	Tue,  3 Oct 2023 08:54:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 210E3DDAE
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 08:54:00 +0000 (UTC)
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA6C6B0;
	Tue,  3 Oct 2023 01:53:59 -0700 (PDT)
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-59c268676a9so8399287b3.0;
        Tue, 03 Oct 2023 01:53:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696323239; x=1696928039;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l8o8DzwgdrA6omFlP0VYtaRwmSfSN6WL3r2SDxof840=;
        b=uyGUqCTFG5kCCJuwpQ4gUuzDTsJxhYwVsVIwPH8jn4IG4GM9y5p7FiN3vHOH0Nvs5c
         +U9edPC4zeK2T+YzSgSr0vEgtCAcF7wYp2jkb65Hm3URzYlpoog4lL7YueevqD67n7vL
         13bNBj7tw8WmYgHdtjWBesLEaNlaFCnjoPxC+TmtecCOfNSECVq64DmDuZTQ8nPlX9kk
         eAtQ9Y65+Q5cOEWkurZxjGxAq+TpgO1I2vbCJtTvaKABHT15q+7dxOIW/QmkOp5SdgAe
         ju7z7bTQc2u/F43QyyPPQ0ZQY/z7O5xTSURKe8BibRjk3grByUC40Y6CclnMO9y2LBg9
         eCnQ==
X-Gm-Message-State: AOJu0Yx/xcX/ySicq8O0QXuF8103fsrVENlPU78u5npnm1gExlV2a1A8
	jnGi3wVq9lNwOTRQMqpS/twWiNTb3Jd5NA==
X-Google-Smtp-Source: AGHT+IFLbxl4NL8dNcRWMnnTIt2fInDOrEMKsCrnZ5EHVPsR+BFuFyYPYoOuAAXuOb3rInyzDQj0cA==
X-Received: by 2002:a0d:d086:0:b0:598:bad6:8e67 with SMTP id s128-20020a0dd086000000b00598bad68e67mr12722727ywd.30.1696323238713;
        Tue, 03 Oct 2023 01:53:58 -0700 (PDT)
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com. [209.85.128.180])
        by smtp.gmail.com with ESMTPSA id t184-20020a8183c1000000b00589e68edac6sm240392ywf.39.2023.10.03.01.53.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Oct 2023 01:53:58 -0700 (PDT)
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-59c268676a9so8399187b3.0;
        Tue, 03 Oct 2023 01:53:58 -0700 (PDT)
X-Received: by 2002:a81:4e85:0:b0:569:479f:6d7f with SMTP id
 c127-20020a814e85000000b00569479f6d7fmr13469888ywb.43.1696323238163; Tue, 03
 Oct 2023 01:53:58 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231002165957.11388-1-wsa+renesas@sang-engineering.com>
In-Reply-To: <20231002165957.11388-1-wsa+renesas@sang-engineering.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 3 Oct 2023 10:53:45 +0200
X-Gmail-Original-Message-ID: <CAMuHMdU+1ox_6e65YQ0bCQMbqtWkYzsE2S88-En7OnYvomfJ2Q@mail.gmail.com>
Message-ID: <CAMuHMdU+1ox_6e65YQ0bCQMbqtWkYzsE2S88-En7OnYvomfJ2Q@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: r8a77990: document Ebisu-4D support
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Wolfram,

On Mon, Oct 2, 2023 at 7:00=E2=80=AFPM Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> Document properly that Ebisu-support includes the Ebisu-4D variant, so
> there won't be confusion what happened with support for this board.
>
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

Thanks for your patch!

> --- a/Documentation/devicetree/bindings/soc/renesas/renesas.yaml
> +++ b/Documentation/devicetree/bindings/soc/renesas/renesas.yaml
> @@ -302,7 +302,7 @@ properties:
>        - description: R-Car E3 (R8A77990)
>          items:
>            - enum:
> -              - renesas,ebisu # Ebisu (RTP0RC77990SEB0010S)
> +              - renesas,ebisu # Ebisu/Ebisu-4D (RTP0RC77990SEB0010S)

Ebisu-4D has a different part number: RTP0RC77990SEB0020S.

According to the schematics, the only difference is the presence of
four DRAM chips ("4D") instead of two.

The rest LGTM.

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

