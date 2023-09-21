Return-Path: <devicetree+bounces-2259-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 625847AA560
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 00:56:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 147E3281C44
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 22:56:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 946902033D;
	Thu, 21 Sep 2023 22:56:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BFFF168B3
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 22:56:49 +0000 (UTC)
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com [IPv6:2607:f8b0:4864:20::1029])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B76ACEF;
	Thu, 21 Sep 2023 15:56:45 -0700 (PDT)
Received: by mail-pj1-x1029.google.com with SMTP id 98e67ed59e1d1-27474f0f483so195847a91.0;
        Thu, 21 Sep 2023 15:56:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695337005; x=1695941805; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4zCeZx485dzIdLOwHMiftTCXeqlVFvIXzm9Bah+eei4=;
        b=SJItNGJtpe3sagY9924sjG+hiPPiHvDWjVm/p95TEgEasuGfE6oKSngjIs8TA+++of
         a8fMyb3hdnlPoz70ViZpbBByWbaX9PQ1oSle0c30ovR4vbXaJFxGCX8S4FxhF8qgrjlC
         xZwvDQs4kRln/o195i0uQbaq4av6DQmPk5cLeqETOpyBmOxhb2zuklOw/0J/pM5LedKS
         NtvdfVkEx01RM8ahWFpJDvKptYtNMpfZfziguarQ4W352ykM8fQ21ZZp958Hl/neYTRa
         GKapXPZBuRhZDe4jGnDCkx8pQlF1qKGjzMUjeAvW5Exr3OcCLgyqacgvx9NBZDF1jGfV
         UKkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695337005; x=1695941805;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4zCeZx485dzIdLOwHMiftTCXeqlVFvIXzm9Bah+eei4=;
        b=fuymh3NAEyTzSiHOSHze50dg2g5GMmOrijzYgkR7gbABIlZrxuRP8h+/WJm3qCxcjQ
         yvpVyOMix6eEja0CL9dqSFDDafx3sR3ip/GtdE7Qsz/QHThz4GFP5OHRsYDCteUZMBvf
         FkatN0tf8QLkTSNRJIl0/3gIpK3fgyj+HnR7Vd2YNoZhCwD9gy/715HmJWAnu7eNg9kp
         oG8vZVZs391q541g/LzSTC6MUIZI9W0YOV6eRGB2JhRqGlo5uE+K8YVM6oB18oGksMaF
         mGgl9/TLRSpCLeaW5hyBelma5C4gzfnXO06sUMNHIcaN4T/8dAFkEHwbTmRhVSJDy1+p
         4FJA==
X-Gm-Message-State: AOJu0Yydf42jFaWLQjRwyHRqW9CCCr6gab5+1Bp6/mnS8tIFtv5P1KoE
	ryf5maJo2Og0AKK1VrC9kED5pV6k703YnADjKO4=
X-Google-Smtp-Source: AGHT+IFlKgN/dwPJXZuDsc/8j9JD3kD9aIEkIBM4E3L9qNXtU9titNsVtfqZzZSzPga/oQH9zuZWSzxHhdGnDW1+Ol0=
X-Received: by 2002:a17:90a:6f61:b0:26d:4ade:fcf0 with SMTP id
 d88-20020a17090a6f6100b0026d4adefcf0mr6460502pjk.4.1695337004654; Thu, 21 Sep
 2023 15:56:44 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230921192729.71259-1-marex@denx.de>
In-Reply-To: <20230921192729.71259-1-marex@denx.de>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 21 Sep 2023 19:56:32 -0300
Message-ID: <CAOMZO5A2JOwnuRycKVSQQU04a6VGHgP-52PHXJ-x_Smwtx_G5Q@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: serial: imx: Document wakeup-source property
To: Marek Vasut <marex@denx.de>
Cc: devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby <jirislaby@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, NXP Linux Team <linux-imx@nxp.com>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, linux-serial@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Thu, Sep 21, 2023 at 4:27=E2=80=AFPM Marek Vasut <marex@denx.de> wrote:
>
> The i.MX UART can be used as a wake-up source, document the 'wakeup-sourc=
e'
> property as allowed property.
>
> Signed-off-by: Marek Vasut <marex@denx.de>

Reviewed-by: Fabio Estevam <festevam@gmail.com>

