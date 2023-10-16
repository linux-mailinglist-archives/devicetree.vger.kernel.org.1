Return-Path: <devicetree+bounces-8789-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D943B7CA11E
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 10:00:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2003C1C202E7
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 08:00:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7623818048;
	Mon, 16 Oct 2023 08:00:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57400A2D
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 08:00:16 +0000 (UTC)
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D0D0A1;
	Mon, 16 Oct 2023 01:00:14 -0700 (PDT)
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-59e88a28b98so35301167b3.1;
        Mon, 16 Oct 2023 01:00:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697443214; x=1698048014;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=btMRsKTHsZdLmcavs42DtOcp7fEFbpSLSg3f+uNZoIE=;
        b=RCd3kHlgl9Xa7yngThkrI2YHKWGUrRD6X/Y08fnCb49bqDoNigngLO1wlL7Y1OI9Px
         MdLI41aYSOGPKNbYl7G73mJmPEgvVoJd6ygpSy/HuVRnt4FqVMQuvpZExXY6BfEnE4fi
         B7jxTKcIMhKKM8CXuKBdDLiixbZKifgrUAfgR1PA3zvQA1U+BnSY8Qc6LFmI6azctqd6
         c5WT1IcC3XL5Al0R+SW21CLWpArKE3lCX8y+c3ehpVTM4OM1Zg6hRNMDKhJDNo6h/w50
         evrQJKASFF1lJu5Xg9k4oSrluL6baPkw8yaHeRrKpwRuskvJ6HlmRrBnp7esyAzYRF+w
         fMrQ==
X-Gm-Message-State: AOJu0Yy0aNV0DnxgDCjU2ipCmNZsqWQXsrJffJTPCrwM45nDP8vEEnSc
	eDdhQDQXeNAucBsqsp9qqfPk9dPELUKhxA==
X-Google-Smtp-Source: AGHT+IGOmGWdItEcsIGoknY6yH3hoT6EX0h75yIHP6ToRIdeeRnRucIb+qzcCXu/ckiPdFd9NymnwA==
X-Received: by 2002:a0d:df43:0:b0:5a7:fb66:61ff with SMTP id i64-20020a0ddf43000000b005a7fb6661ffmr3571836ywe.21.1697443213827;
        Mon, 16 Oct 2023 01:00:13 -0700 (PDT)
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com. [209.85.128.179])
        by smtp.gmail.com with ESMTPSA id n7-20020a0dfd07000000b005a7c829dda2sm2006671ywf.84.2023.10.16.01.00.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Oct 2023 01:00:13 -0700 (PDT)
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-59e88a28b98so35301107b3.1;
        Mon, 16 Oct 2023 01:00:13 -0700 (PDT)
X-Received: by 2002:a0d:df43:0:b0:5a7:fb66:61ff with SMTP id
 i64-20020a0ddf43000000b005a7fb6661ffmr3571828ywe.21.1697443213449; Mon, 16
 Oct 2023 01:00:13 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231016061654.22267-1-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20231016061654.22267-1-krzysztof.kozlowski@linaro.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 16 Oct 2023 10:00:01 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVTFpqbXc0L--Kz3URrfpSm9NX8th9zAp+th1Tv1+027g@mail.gmail.com>
Message-ID: <CAMuHMdVTFpqbXc0L--Kz3URrfpSm9NX8th9zAp+th1Tv1+027g@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: serial: re-order entries to match coding convention
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby <jirislaby@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thierry Reding <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-kernel@vger.kernel.org, 
	linux-serial@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-tegra@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, Oct 16, 2023 at 8:17=E2=80=AFAM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
> The DT schema coding convetion express in

convention expressed

> Documentation/devicetree/bindings/example-schema.yaml expects entries in
> following order:
>  - properties, patternProperties
>  - required
>  - if blocks, allOf with if-blocks
>  - additionalProperties/unevaluatedProperties
>
> Re-order few schemas to match the convention to avoid repeating reviews

review comments

> for new patches using existing code as template.  No functional changes.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


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

