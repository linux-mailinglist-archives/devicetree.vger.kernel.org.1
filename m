Return-Path: <devicetree+bounces-4408-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B44857B26E2
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 22:53:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 2F07A282C1D
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 20:53:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2303715BA;
	Thu, 28 Sep 2023 20:53:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD1079CA76
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 20:53:41 +0000 (UTC)
Received: from mail-yw1-x112e.google.com (mail-yw1-x112e.google.com [IPv6:2607:f8b0:4864:20::112e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 035D219D
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 13:53:40 -0700 (PDT)
Received: by mail-yw1-x112e.google.com with SMTP id 00721157ae682-59c0b9ad491so166522337b3.1
        for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 13:53:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695934419; x=1696539219; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WOwNzxsGPfo7cMZUYR/AlrykeFdMS8Jk3CVApYaoi44=;
        b=ACiYCNyiLRw/Jzqs0QhvgknXDJFRbOImkMdqjtj5crHlLiRPlspIpFAJVb///+N24E
         8lB1YU7/v1UMOuGoFVr6WkKVbmYxBn/wf5qbuhECopANVW+Qwm+UIAaeQGKA8Aaaws7N
         jvzw8QnqAiVXa+p2ikoWBZLMMT+a+7kn+x9xucmSxWBN1PBMoBAMtC7ZPVECID8bYbSp
         fsTGnxRDXsshn6PpJuHSyZiKUKSjqBV4eyxXdwJbu2ufBI7D1+Xwl8FLPaBA2rX6ITfc
         bpkKEkIg0Dv9TUaMwMQ1kThm0C1k3QuJYn+UwAi9Tvg7IQMWc3jdc1kaqcvi3llpyL2i
         /qeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695934419; x=1696539219;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WOwNzxsGPfo7cMZUYR/AlrykeFdMS8Jk3CVApYaoi44=;
        b=mxS0Ne8qekGzFVnOnpN+hGXSNM2zcaMmw2OapGngrDykNJwxC6CNLFvuu1awDSh9MG
         oC58GxHzX584vm0nTi16VD3Je0AaWxZRJUIfI3dlSNmI9l3v8dgDVpEci7zb/VWij4Ah
         t+kGEjKMEnMonKSdb1FO+QdYEGnMuK6D6OG3AFFF1PE+teOrUueW2ReMB5rZoSNNMljQ
         ibJ7tpFPCI+8B8n3uvJrFvXM7o3YYk4aI7Wxf3g77boFfkyxy46gNFqFroLOaM8Xid/S
         q1XERKzmqIpXn7CTXV+CTx46Nq1kLnjwRsTUTHH0DbnBnNLAISV2oTHIVSTEkkUDeyfe
         omGg==
X-Gm-Message-State: AOJu0YxCWk3BUsIydkgdW8JGX9jrWSA0cnVftb5hshAww89dOtj9uvd5
	gEjd4pGyg0g3/1juBID7UlhYfO4OCckakzSvKf/Riw==
X-Google-Smtp-Source: AGHT+IFSlI6fRsLGLuQpuzlTwFu9Bu8WQ8PXxZtdccuFVKar/m1+t8x/SiSa1P8A8iTwCj70M5BysQnL9i8vZ+snw9E=
X-Received: by 2002:a25:ef07:0:b0:d8b:1407:f61d with SMTP id
 g7-20020a25ef07000000b00d8b1407f61dmr1638744ybd.26.1695934419047; Thu, 28 Sep
 2023 13:53:39 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230926-vf610-gpio-v4-0-b57b7f6e8368@nxp.com> <20230926-vf610-gpio-v4-1-b57b7f6e8368@nxp.com>
In-Reply-To: <20230926-vf610-gpio-v4-1-b57b7f6e8368@nxp.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 28 Sep 2023 22:53:27 +0200
Message-ID: <CACRpkdbvXXJX48nuCQNU_HVJztnH_qQ=QuJWOWp3ZBzN_JsWHw@mail.gmail.com>
Subject: Re: [PATCH v4 1/7] dt-bindings: gpio: vf610: update gpio-ranges
To: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Stefan Agner <stefan@agner.ch>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, 
	Marco Felsch <m.felsch@pengutronix.de>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, Peng Fan <peng.fan@nxp.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, Sep 26, 2023 at 5:28=E2=80=AFAM Peng Fan (OSS) <peng.fan@oss.nxp.co=
m> wrote:

> From: Peng Fan <peng.fan@nxp.com>
>
> i.MX93 supports four gpio-ranges at max. To fix below issue:
> "gpio@43820080: gpio-ranges: [[30, 0, 84, 8], [30, 8, 66, 18],
>  [30, 26, 34, 2], [30, 28, 0, 4]] is too long"
>
>  Update the gpio-ranges property
>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

