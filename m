Return-Path: <devicetree+bounces-5825-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FCDA7B80FD
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 15:32:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 3678D1C2081B
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 13:32:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0AE014A90;
	Wed,  4 Oct 2023 13:32:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E26E013AF9
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 13:32:32 +0000 (UTC)
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com [209.85.128.170])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5EC8D7;
	Wed,  4 Oct 2023 06:32:31 -0700 (PDT)
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-5a229ac185aso25343277b3.1;
        Wed, 04 Oct 2023 06:32:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696426350; x=1697031150;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pMucO+yN7Gt13UiaJENaqz62Z68eTMF8lPfTcKOke+k=;
        b=oRLPNvXuqmede9FU9mBxdgq2RhtW2RJbjuTOqxBx4c2Il4KphckXqPC/K93VcyZ0FV
         SXtawQqJh/6XL96u9jz+wTpkuzjY2Km//O8M/JVIFUsC0y+EZVN1CIWcaX2OpqMUzzeW
         rkqBzKg0/1fQEQtkduVuUFt0UEXUBei0mHPtTs50criJewdMgB09zLCzu2K/nBi8TePO
         kDWdvudL4IulYKbz3DX53p1xnILiqV3BwhOjlRM22CbzmiHgCcRiE43V36CpEDjysUOG
         ei/NoKhBAx9Iq9VjTXemtnYIx31j53f0zQjrRRy2r+c017Cq/pJAdyRW5my5pBCQvV3p
         jUYQ==
X-Gm-Message-State: AOJu0YwDcnlTjWlL88acVsD19+e7vLjqkl+5gxya3GCdI6fEE+FTL8hT
	MvguyymqNnJ+K8z3N9duXlAwkYJnDnMIFw==
X-Google-Smtp-Source: AGHT+IGvPTSRsbjDZGMcZ/3KloGs0hp2+x7zOKMCqouJzG+ZiwJSBoLSFzoyPUsNhZriDroTGviqag==
X-Received: by 2002:a81:49d8:0:b0:55a:574f:327c with SMTP id w207-20020a8149d8000000b0055a574f327cmr2808275ywa.13.1696426350500;
        Wed, 04 Oct 2023 06:32:30 -0700 (PDT)
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com. [209.85.219.169])
        by smtp.gmail.com with ESMTPSA id i127-20020a0dc685000000b0058e37788bf7sm1145364ywd.72.2023.10.04.06.32.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Oct 2023 06:32:29 -0700 (PDT)
Received: by mail-yb1-f169.google.com with SMTP id 3f1490d57ef6-d865c441a54so2251184276.1;
        Wed, 04 Oct 2023 06:32:29 -0700 (PDT)
X-Received: by 2002:a05:6902:1890:b0:d89:4368:aa1 with SMTP id
 cj16-20020a056902189000b00d8943680aa1mr2554867ybb.53.1696426349589; Wed, 04
 Oct 2023 06:32:29 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230929053915.1530607-1-claudiu.beznea@bp.renesas.com> <20230929053915.1530607-27-claudiu.beznea@bp.renesas.com>
In-Reply-To: <20230929053915.1530607-27-claudiu.beznea@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 4 Oct 2023 15:32:17 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXqUNNbwV_SVqT+WAJVm6C1XgeFOpWDsBeYHxvp1hUxvw@mail.gmail.com>
Message-ID: <CAMuHMdXqUNNbwV_SVqT+WAJVm6C1XgeFOpWDsBeYHxvp1hUxvw@mail.gmail.com>
Subject: Re: [PATCH v2 26/28] dt-bindings: arm: renesas: document SMARC
 Carrier-II EVK
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	linus.walleij@linaro.org, gregkh@linuxfoundation.org, jirislaby@kernel.org, 
	magnus.damm@gmail.com, catalin.marinas@arm.com, will@kernel.org, 
	quic_bjorande@quicinc.com, konrad.dybcio@linaro.org, arnd@arndb.de, 
	neil.armstrong@linaro.org, prabhakar.mahadev-lad.rj@bp.renesas.com, 
	biju.das.jz@bp.renesas.com, linux-renesas-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-serial@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Fri, Sep 29, 2023 at 7:40=E2=80=AFAM Claudiu <claudiu.beznea@tuxon.dev> =
wrote:
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>
> Document Renesas SMARC Carrier-II EVK board which is based on RZ/G3S
> SMARC SoM. The SMARC Carrier-II EVK consists of RZ/G3S SoM module and
> SMARC Carrier-II carrier board, the SoM module sits on top of carrier
> board.
>
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> ---
>
> Changes in v2:
> - this patch is new in v2

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.7.

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

