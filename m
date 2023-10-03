Return-Path: <devicetree+bounces-5600-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F3EA7B6CE8
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 17:19:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id 903451F20986
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 15:19:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79C7034CCF;
	Tue,  3 Oct 2023 15:19:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C33EDDC7
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 15:19:31 +0000 (UTC)
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com [209.85.219.169])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 67CA3AD;
	Tue,  3 Oct 2023 08:19:29 -0700 (PDT)
Received: by mail-yb1-f169.google.com with SMTP id 3f1490d57ef6-d8162698f0dso1132636276.0;
        Tue, 03 Oct 2023 08:19:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696346368; x=1696951168;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BBKViIdg/9cDLzuM95X5V6V6ZzYcdpIf1IK/GDtHoe0=;
        b=XQEdsdt8nFLPyUMPfeTEYr4ILJbJo8SxtdDg6re9zcrsrH49no2NKFsJzltloln0mN
         n/vXwsTSon1terKNTQRRuI8nyjrNyZf93V/O0jn7UvV5u0sIn0cfCsFYD3b6MNZ6gFJ4
         v2A4oMZnzmvnFg7CrGsBeXcSQzdtzfqvQYZ+0hXvhsnY5faNOhBR9oTRYMcXFQhVw18u
         FL9o4zBHseUUBvu83no6N+UPS+xVfYA2fGOQ6uQ/1LZ53m3vz6ns9CIZ1qXgkG+8is7R
         sYeqObLy6FCa7g5/6E7dug8cYPa8KrvwEQWIPrcoiMq/Hx/qtUQvpnX9zv7LeQTg9Nh1
         Lk0g==
X-Gm-Message-State: AOJu0Ywvo/Sn59aZsUhZPW7Suy+lrwb7aQFla3LY7XUNjoMbZcE696Az
	dDKAVNlszl6v39fdWU7KCYHEI3gzEoGwSQ==
X-Google-Smtp-Source: AGHT+IHFnV1zRGLHP66GQTrNH644jljVi4HcTMCI/GaAXQTCckrj7rGC2KB68Ym7wD6dC6pVbLn7Xw==
X-Received: by 2002:a25:ae21:0:b0:d7f:c4ed:d6af with SMTP id a33-20020a25ae21000000b00d7fc4edd6afmr14373219ybj.40.1696346368281;
        Tue, 03 Oct 2023 08:19:28 -0700 (PDT)
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com. [209.85.128.169])
        by smtp.gmail.com with ESMTPSA id t1-20020a252d01000000b00d7e339ada01sm460433ybt.20.2023.10.03.08.19.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Oct 2023 08:19:27 -0700 (PDT)
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-59c268676a9so12899207b3.0;
        Tue, 03 Oct 2023 08:19:27 -0700 (PDT)
X-Received: by 2002:a25:553:0:b0:d36:58a6:3281 with SMTP id
 80-20020a250553000000b00d3658a63281mr11873855ybf.39.1696346367086; Tue, 03
 Oct 2023 08:19:27 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230929053915.1530607-1-claudiu.beznea@bp.renesas.com> <20230929053915.1530607-5-claudiu.beznea@bp.renesas.com>
In-Reply-To: <20230929053915.1530607-5-claudiu.beznea@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 3 Oct 2023 17:19:15 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXM7=sMgLJVXpa7maa0ybc=KsOt7-RpdPL6OpMeW6aULw@mail.gmail.com>
Message-ID: <CAMuHMdXM7=sMgLJVXpa7maa0ybc=KsOt7-RpdPL6OpMeW6aULw@mail.gmail.com>
Subject: Re: [PATCH v2 04/28] clk: renesas: rzg2l: trust value returned by hardware
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
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Fri, Sep 29, 2023 at 7:39=E2=80=AFAM Claudiu <claudiu.beznea@tuxon.dev> =
wrote:
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>
> Initial value of CPG_PL2SDHI_DSEL bits 0..1 or 4..6 is 01b. Hardware user=
's
> manual (r01uh0914ej0130-rzg2l-rzg2lc.pdf) specifies that setting 0 is
> prohibited. The rzg2l_cpg_sd_clk_mux_get_parent() should just read
> CPG_PL2SDHI_DSEL, trust the value and return the proper clock parent inde=
x
> based on the read value. Do this.
>
> Fixes: eaff33646f4cb ("clk: renesas: rzg2l: Add SDHI clk mux support")
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> ---
>
> Changes in v2:
> - Used "return val ? val - 1 : 0;"

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-clk-for-v6.7.

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

