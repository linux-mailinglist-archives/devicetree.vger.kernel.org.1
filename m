Return-Path: <devicetree+bounces-4757-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 122B57B3C1F
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 23:51:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 2BF211C20828
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 21:51:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C89E667296;
	Fri, 29 Sep 2023 21:51:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8106B67291
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 21:51:05 +0000 (UTC)
Received: from mail-yw1-x112c.google.com (mail-yw1-x112c.google.com [IPv6:2607:f8b0:4864:20::112c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C7AD1BC
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 14:51:03 -0700 (PDT)
Received: by mail-yw1-x112c.google.com with SMTP id 00721157ae682-59c268676a9so177287637b3.0
        for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 14:51:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696024262; x=1696629062; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Hskw88hLeAFbdhf2MCWNUtrnHOIlmXUQ4ZL1O7T/y0E=;
        b=M2ygEO2xao9bi1LsQy8OB5+84c6hVswvmjJwxCoJHSHOM/pIbKXoenew8o0NL1JgGW
         kxRUK8At0IKdWg2TuKHOrVi9ymb9Eeckmr211X/KOAYMMyfc2BuOyCkWnBdDxVs/c60r
         m9FF3Q0Vz6Q8ZqFB+m5MxoSLqtg0PwzRA9arXKzXvO3KYW3enAZACmKI8MFDldD05HNl
         Qd0ZDPm4RbB2K8CtconqBtn0QE/xeC2UiSp5KDOFODfrbEXgRUs/GU1BCMqnMEguarnd
         4GZn0piAkt8redRma/jLzZza9yszARRsyaXGc/C03Phckc79/4p4X/pbUDWj+zqg6sPk
         RpdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696024262; x=1696629062;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Hskw88hLeAFbdhf2MCWNUtrnHOIlmXUQ4ZL1O7T/y0E=;
        b=TECIvNy4u9P/3WCOJmenLP+yUL1Ge0kGBeO+kQEccLx06WftbtTt5IiwsG07F9TrW5
         aOGMrtQdTgMEjzmEl5bFNlW2pmAj/yWl09g03zZZBkqWPiB4VXbzdJNW+5XhGn04iAYK
         CMBlR/eXWUKPtnrxqiz5pru02J6+WQ8s5l+AIDgsfhHzxJ2eNPVbQNKozae8FNoVQiw/
         QdcvI+KFLTSTc6T5X/59YqavW5YPqRKVdDzVzeV+BPJFefo0Fnsf85BCoOD+w4eQhXMF
         ARs4iqhKR29glY0e8H+XE93tDgFNIcR6g03VcYdtsKfaOsDHLX2+4Zq4VgSoJ4Zqhc4D
         VVow==
X-Gm-Message-State: AOJu0YxeCxkzSPWTDMUDjbhTP4G1JRq1gWmCW1k46XM/lhKZFO5tkVdW
	Rd0NFjNpxYGhgx5YyGzGFi/AiiQUm3FwotLTnWTnuA==
X-Google-Smtp-Source: AGHT+IE63fBH+1dNUwDRNH6iqlkLqEfx/+NHRsl/1r9uDgfQ0bqotCuiv4a9l+YPI2jFuA031iE6BeH9RXt0OKpKTI8=
X-Received: by 2002:a0d:dd11:0:b0:59b:e97e:f7ce with SMTP id
 g17-20020a0ddd11000000b0059be97ef7cemr5210736ywe.22.1696024262418; Fri, 29
 Sep 2023 14:51:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230929-pxa1908-lkml-v5-0-5aa5a1109c5f@skole.hr> <20230929-pxa1908-lkml-v5-2-5aa5a1109c5f@skole.hr>
In-Reply-To: <20230929-pxa1908-lkml-v5-2-5aa5a1109c5f@skole.hr>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 29 Sep 2023 23:50:51 +0200
Message-ID: <CACRpkdbgbu=1kD=+f83NUZwXZ80-yjGOdH2CR7Lbg4rhubaR0g@mail.gmail.com>
Subject: Re: [PATCH RESEND v5 2/8] clk: mmp: Switch to use struct u32_fract
 instead of custom one
To: =?UTF-8?Q?Duje_Mihanovi=C4=87?= <duje.mihanovic@skole.hr>
Cc: Robert Jarzmik <robert.jarzmik@free.fr>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	Andy Shevchenko <andy@kernel.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Lubomir Rintel <lkundrak@v3.sk>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Tony Luck <tony.luck@intel.com>, 
	"Guilherme G. Piccoli" <gpiccoli@igalia.com>, linux-gpio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-hardening@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
	phone-devel@vger.kernel.org, afaerber@suse.de, balejk@matfyz.cz, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Fri, Sep 29, 2023 at 5:42=E2=80=AFPM Duje Mihanovi=C4=87 <duje.mihanovic=
@skole.hr> wrote:

> From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
>
> The struct mmp_clk_factor_tbl repeats the generic struct u32_fract.
> Kill the custom one and use the generic one instead.
>
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> Tested-by: Duje Mihanovi=C4=87 <duje.mihanovic@skole.hr>
> Signed-off-by: Duje Mihanovi=C4=87 <duje.mihanovic@skole.hr>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

