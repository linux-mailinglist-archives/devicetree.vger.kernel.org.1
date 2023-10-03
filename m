Return-Path: <devicetree+bounces-5544-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F1ABE7B698B
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 14:54:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 25B62B20953
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 12:54:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3306423767;
	Tue,  3 Oct 2023 12:54:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 916032915
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 12:54:50 +0000 (UTC)
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com [209.85.128.170])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1DCE09B;
	Tue,  3 Oct 2023 05:54:49 -0700 (PDT)
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-59e88a28b98so7677187b3.1;
        Tue, 03 Oct 2023 05:54:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696337688; x=1696942488;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AouaEjNbrWT+IIWDo5Nh2aKtA+C2KgC1xP/O35IsO54=;
        b=AUQHdBazy42HWGFGrL9sEX9tS+YL7n8xEgbt4Fh4yvw292u+K+KqUvM2cMqTN8AbFw
         8HZt8V+gNfGxRqAW5OdFw3bp4RyWsaPewxQa3JHNOO4ZkwsgZtGs+Bt5hR0/qgB+ZmYJ
         ogRXPUbrY+bEotQYwHL14GBmo9GQLJFaRGFdOkYu7RfAIrZ5PNbQqPStoXiMUj8hzVcB
         DJW99ST8OfsWpV/DOogdp6W9VSo3iFAd8FKii0J2hQa0iqp1Bl+WBvadkNmXshMA9WO9
         RrM1wdK8vYyHZWBG3GQQdhbZsUrRIPXrsG3PJr5TReocxLRiUcEdHWQZNfXfFBBc08U+
         irMQ==
X-Gm-Message-State: AOJu0YweRgjpN4Uc7Ri6Yi/03CGje281/z8JDnIy0/8jDEU5ZjLKTAke
	9YXq5Zxyl0YPry5e9quoxXGjdg9czvUGag==
X-Google-Smtp-Source: AGHT+IFRB3LfMfcOxgx5sMvrhj2qWIutrilIRsUHzh9D9dkodcak0bOovV7ISo3V5kSG4fpL1F8rnw==
X-Received: by 2002:a0d:d994:0:b0:59b:e9d5:a41c with SMTP id b142-20020a0dd994000000b0059be9d5a41cmr1993245ywe.22.1696337688128;
        Tue, 03 Oct 2023 05:54:48 -0700 (PDT)
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com. [209.85.128.171])
        by smtp.gmail.com with ESMTPSA id d63-20020a0ddb42000000b00579e5c4982fsm362314ywe.36.2023.10.03.05.54.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Oct 2023 05:54:47 -0700 (PDT)
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-59e88a28b98so7676957b3.1;
        Tue, 03 Oct 2023 05:54:47 -0700 (PDT)
X-Received: by 2002:a0d:cb8e:0:b0:594:fc45:b4c4 with SMTP id
 n136-20020a0dcb8e000000b00594fc45b4c4mr1930761ywd.19.1696337687616; Tue, 03
 Oct 2023 05:54:47 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <87v8bofna8.wl-kuninori.morimoto.gx@renesas.com> <87pm1wfn8z.wl-kuninori.morimoto.gx@renesas.com>
In-Reply-To: <87pm1wfn8z.wl-kuninori.morimoto.gx@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 3 Oct 2023 14:54:35 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWHNo-yFOzv8qjGQxkQxjW5-2j-gKgk0LR8rUReTehFzg@mail.gmail.com>
Message-ID: <CAMuHMdWHNo-yFOzv8qjGQxkQxjW5-2j-gKgk0LR8rUReTehFzg@mail.gmail.com>
Subject: Re: [PATCH v4 4/4] arm64: dts: renesas: Add R-Car S4 Starter Kit support
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc: Conor Dooley <conor+dt@kernel.org>, Hai Pham <hai.pham.ud@renesas.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh+dt@kernel.org>, Tam Nguyen <tam.nguyen.xa@renesas.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, Yusuke Goda <yusuke.goda.sx@renesas.com>, 
	Michael Dege <michael.dege@renesas.com>, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, Oct 3, 2023 at 4:33=E2=80=AFAM Kuninori Morimoto
<kuninori.morimoto.gx@renesas.com> wrote:
> Add initial support for the R-Car S4 Starter Kit with R8A779F4
> SoC support. Based on a patch in the BSP.
>
> Signed-off-by: Michael Dege <michael.dege@renesas.com>
> Signed-off-by: Yusuke Goda <yusuke.goda.sx@renesas.com>
> Signed-off-by: Tam Nguyen <tam.nguyen.xa@renesas.com>
> Signed-off-by: Hai Pham <hai.pham.ud@renesas.com>
> Co-developed-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
> Signed-off-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>

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

