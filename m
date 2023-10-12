Return-Path: <devicetree+bounces-8010-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 99EFB7C674B
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 09:59:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 53840282670
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 07:59:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF55714A83;
	Thu, 12 Oct 2023 07:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C82BD533
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 07:59:53 +0000 (UTC)
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6765DA9;
	Thu, 12 Oct 2023 00:59:49 -0700 (PDT)
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-5a7a7e9357eso8594917b3.0;
        Thu, 12 Oct 2023 00:59:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697097588; x=1697702388;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bNdfcf5RJbVw3euD+r2W2z32tRPcDJdoEVJcQdZ60Yk=;
        b=MYcze3xpTW5gTQj1dq/kDXSiX5FjG8qKWsz6EHzxzEa2swAA4Q4LFms0r7tZhYYgsO
         QVbpxOMwJHlDZQyn3EL+meJz4lhmXleuVdBoFHIfU2HVQFxMSxEJHksDQnWRqMaLCFam
         rYPaLDXLZRn4dl6/5QlMhfTuZZ9WyyyGWNtPge/p/XfnGdzjVXpt/NEd4k3xT+8ZOI1Z
         Xx5uchJj8GsFDg6kYaMq+hNAXbu+EnJBDy1hMm41361Eh9QGC9Qw8A2LfUcas2tQx7zN
         Vct2doIr/AgB2TERkNGWh0rOUNNZe2ly4UOA/oDEpRSMfri0p1QNTKQ8xBG37hePQ5yS
         utPQ==
X-Gm-Message-State: AOJu0YxkILFpTv5hwiD2bLrSDc+TL4lE9y1Isp/Yh0hLbQLHpdNzxzSu
	2Vxwt8pTkxBcyzJkLDuuKgONKMfqpH71qg==
X-Google-Smtp-Source: AGHT+IFQAs8e5QSaZ+RGLIac7ReKdfC4kXP91j2xzSMlXtqKYo+VDYS8QrhiuPsNZTgzBvmnd+X8hw==
X-Received: by 2002:a81:79ca:0:b0:5a7:b930:16a8 with SMTP id u193-20020a8179ca000000b005a7b93016a8mr8342391ywc.4.1697097588468;
        Thu, 12 Oct 2023 00:59:48 -0700 (PDT)
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com. [209.85.128.179])
        by smtp.gmail.com with ESMTPSA id e12-20020a81dd0c000000b005845e6f9b50sm5667158ywn.113.2023.10.12.00.59.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Oct 2023 00:59:48 -0700 (PDT)
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-579de633419so8279187b3.3;
        Thu, 12 Oct 2023 00:59:48 -0700 (PDT)
X-Received: by 2002:a0d:cb49:0:b0:5a7:c97e:39e3 with SMTP id
 n70-20020a0dcb49000000b005a7c97e39e3mr6477357ywd.15.1697097587925; Thu, 12
 Oct 2023 00:59:47 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231012065822.1007930-1-javierm@redhat.com> <20231012065822.1007930-6-javierm@redhat.com>
In-Reply-To: <20231012065822.1007930-6-javierm@redhat.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 12 Oct 2023 09:59:36 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVR=aM-fr6SLfZMyA-Mdw23Tv+rX-iQQmw5u5U3vW5Ajg@mail.gmail.com>
Message-ID: <CAMuHMdVR=aM-fr6SLfZMyA-Mdw23Tv+rX-iQQmw5u5U3vW5Ajg@mail.gmail.com>
Subject: Re: [PATCH v2 5/6] dt-bindings: display: Split common Solomon
 properties in their own schema
To: Javier Martinez Canillas <javierm@redhat.com>
Cc: linux-kernel@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>, 
	Conor Dooley <conor@kernel.org>, Peter Robinson <pbrobinson@gmail.com>, Rob Herring <robh@kernel.org>, 
	Maxime Ripard <mripard@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Rob Herring <robh+dt@kernel.org>, 
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Javier,

On Thu, Oct 12, 2023 at 8:58=E2=80=AFAM Javier Martinez Canillas
<javierm@redhat.com> wrote:
> There are DT properties that can be shared across different Solomon OLED
> Display Controller families. Split them into a separate common schema to
> avoid these properties to be duplicated in different DT bindings schemas.
>
> Suggested-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>
> ---
>
> (no changes since v1)

New patch in v2.

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

