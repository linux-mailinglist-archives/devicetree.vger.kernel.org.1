Return-Path: <devicetree+bounces-5873-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C2D9F7B83BD
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 17:37:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 7434D2814C9
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 15:37:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E95FB19BDC;
	Wed,  4 Oct 2023 15:37:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82F0013AE9
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 15:37:44 +0000 (UTC)
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D58C5BD;
	Wed,  4 Oct 2023 08:37:42 -0700 (PDT)
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-59e77e4f707so27953757b3.0;
        Wed, 04 Oct 2023 08:37:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696433862; x=1697038662;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vYlbLmaEB096eu5KOHkpc83S+3akyKuaBcHKlJ33Mfw=;
        b=lYYfVgXxMptnt6Ir/CWfpOXatc0gahTLlnuyzX/SPVvaOhzSwyDyovoy18uq4kWhjJ
         mu+jgj67YPtdVDJ7XOuTfECmcsWjqS8NMQAYm5Q/EsTQj1Z89YEP26y8QbC2G/UcXI/T
         EsAxG0XQnCQtG6dRQFQU8KdqLksyKIMWdKS90NTRaulNRKu30IwNBcSvm9KtUnnOVCE/
         xDdnl2H2HuBHM4m4RN5y8QuaOx5Qf+dBDode6Bj0jaLl7edg05LCs02qUCNKuhCDCaSQ
         rYblNgY76nDTagGuTvumIBLyEK/gHHGEtqNYViJnZkYpThuadPev/HaqT/1Gx/j95A6N
         iKYQ==
X-Gm-Message-State: AOJu0YzJ0Aq+sn04tBhxRYiZniD0MTHfuAtLsSv4OJdJZYO7jPO1WHKW
	iE+fKwf2MQKejGrZXPnIb3Ih0hQU330fIg==
X-Google-Smtp-Source: AGHT+IFWrFUprdLQ8/KGUNk7xYLQl7Ne5co20rHcciP0oADoUZJFOQm6uwu+k5/Kotg4m9qadgaMrg==
X-Received: by 2002:a81:53c2:0:b0:594:e2e6:25e8 with SMTP id h185-20020a8153c2000000b00594e2e625e8mr2619383ywb.48.1696433861803;
        Wed, 04 Oct 2023 08:37:41 -0700 (PDT)
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com. [209.85.128.173])
        by smtp.gmail.com with ESMTPSA id u66-20020a818445000000b005928ba6806dsm1216455ywf.97.2023.10.04.08.37.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Oct 2023 08:37:41 -0700 (PDT)
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-59e77e4f707so27953607b3.0;
        Wed, 04 Oct 2023 08:37:41 -0700 (PDT)
X-Received: by 2002:a81:7245:0:b0:59a:e672:5a03 with SMTP id
 n66-20020a817245000000b0059ae6725a03mr2962158ywc.44.1696433861169; Wed, 04
 Oct 2023 08:37:41 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231004152751.3917-1-wsa+renesas@sang-engineering.com>
In-Reply-To: <20231004152751.3917-1-wsa+renesas@sang-engineering.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 4 Oct 2023 17:37:29 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXizSWkMnHJ6FKkyRQa5zpRZ-bpLJ1HDkothq2ont0Dpg@mail.gmail.com>
Message-ID: <CAMuHMdXizSWkMnHJ6FKkyRQa5zpRZ-bpLJ1HDkothq2ont0Dpg@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: renesas: r8a77990: document Ebisu-4D support
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, Rob Herring <robh@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Wed, Oct 4, 2023 at 5:27=E2=80=AFPM Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> Document properly that Ebisu-support includes the Ebisu-4D variant, so
> there won't be confusion what happened with support for this board.
>
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> Acked-by: Rob Herring <robh@kernel.org>
> ---
>
> Changes since v1:
> * fixed RTP numbers for both boards
> * added Rob's ack (thanks!)

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

