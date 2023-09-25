Return-Path: <devicetree+bounces-2928-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id F1E207ACEBE
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 05:41:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id 63C341F241AA
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 03:41:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E2F85690;
	Mon, 25 Sep 2023 03:41:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC2107F
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 03:41:12 +0000 (UTC)
Received: from mail-qt1-x82e.google.com (mail-qt1-x82e.google.com [IPv6:2607:f8b0:4864:20::82e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5D855C4;
	Sun, 24 Sep 2023 20:41:08 -0700 (PDT)
Received: by mail-qt1-x82e.google.com with SMTP id d75a77b69052e-4121f006c30so37114961cf.2;
        Sun, 24 Sep 2023 20:41:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695613268; x=1696218068; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5PLBn0yYlxfEY2BUUTSRuAq0bGO1rEdFQ2dy2FEYG60=;
        b=L73eyGzlO7Q1k6Acu0XzD0KiPjYDnOFVvN1wHOF5d/iPFW+VgxbF6jhOehYubUYRbD
         2H0zlVsbJOB29xHRyBmoxJ1ERDUlrkIOqaflNnWicitWGq57R7m0J9fVTF3gsnkyU9Sx
         kRORvvF60tW/8utOrjMPZBykGUghUz59p+UCudDKvXjKVHlKCPSvdiJhffYokheEer/f
         Ns8s77wq93ZptdoC3WXXzOGPyjA4UrTAN+o5F/BduK1xhv+0awykegGAfl1/N7FuEo68
         H4sGA936mL5mTH0e5VvwLFQ3UYbPwFNbH8mmKes7MhAi2zdzHOgJ+pvifCvZpwu0AAPI
         ThMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695613268; x=1696218068;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5PLBn0yYlxfEY2BUUTSRuAq0bGO1rEdFQ2dy2FEYG60=;
        b=bUkZCTFR6YL1LaovOE4B/7afpmuv5LMAMPdm65iDIpm7pnEKWHzKKsy3zWC6IaEOkp
         JEKriNIbXuDQRQhZ9uFl3jpH10/0ZrCyI0nn1Pvai0C6P24AMbnz9SOuglUQfUYrF2CP
         1uC1nUHnQnC2FwYaq8vL2moDV6N+KOIuTl9he8GPpK/5LEcG6KE8XuhpRbvxGrxuAzBA
         Oq6WbaWv4FYtOesOmagfepJuFuWUtRjSxKecDUWyiyh6KyciuwHpV7CoyKAxNYXy+JSz
         rR8ShqekBQxaFuG5YA8oynqXeifsu0X8m5hf19XYJlFbAKPF4h49JDhCCHa08+irkfu6
         bhXg==
X-Gm-Message-State: AOJu0Yw0ZgX7TQedJbaeq4TESy8vI+/uMdDvsR7axPc8V2bEJ6Gl3Gnt
	H29SMMOWQP79twkFOrscjJ36CuifWA8QmFy44oY=
X-Google-Smtp-Source: AGHT+IGi8+aSCezg+sYFwJ/HbV59G5QdoE5ZQFsFU9Sb2HqH1hpu2W+U+OnUE2F4C3hXg84ax7F7HspN9VuAyX9NEUA=
X-Received: by 2002:a05:622a:589:b0:417:add1:c0a3 with SMTP id
 c9-20020a05622a058900b00417add1c0a3mr6340288qtb.55.1695613267973; Sun, 24 Sep
 2023 20:41:07 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230921055611.1459374-1-james.hilliard1@gmail.com> <20230925033344.GH7231@dragon>
In-Reply-To: <20230925033344.GH7231@dragon>
From: James Hilliard <james.hilliard1@gmail.com>
Date: Sun, 24 Sep 2023 21:40:55 -0600
Message-ID: <CADvTj4qWHzjvp6BYarHWF2R=gRqD6WdLt4EhbEx93nu3up6=kA@mail.gmail.com>
Subject: Re: [PATCH v9 1/3] dt-bindings: arm: fsl: Add VAR-SOM-MX6 SoM with
 Custom Board
To: Shawn Guo <shawnguo@kernel.org>
Cc: devicetree@vger.kernel.org, Pierluigi Passaro <pierluigi.p@variscite.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Conor Dooley <conor.dooley@microchip.com>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, Marek Vasut <marex@denx.de>, 
	Tim Harvey <tharvey@gateworks.com>, Stefan Wahren <stefan.wahren@chargebyte.com>, 
	Marco Felsch <m.felsch@pengutronix.de>, 
	Christoph Niedermaier <cniedermaier@dh-electronics.com>, 
	Markus Niebel <Markus.Niebel@ew.tq-group.com>, 
	Marcel Ziswiler <marcel.ziswiler@toradex.com>, Bjorn Helgaas <bhelgaas@google.com>, 
	Philippe Schenker <philippe.schenker@toradex.com>, Li Yang <leoyang.li@nxp.com>, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
	FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Sun, Sep 24, 2023 at 9:34=E2=80=AFPM Shawn Guo <shawnguo@kernel.org> wro=
te:
>
> On Wed, Sep 20, 2023 at 11:56:06PM -0600, James Hilliard wrote:
> > Add support for Variscite i.MX6Q VAR-SOM-MX6 SoM with Custom Board.
> >
> > Cc: Pierluigi Passaro <pierluigi.p@variscite.com>
> > Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > Acked-by: Conor Dooley <conor.dooley@microchip.com>
> > Signed-off-by: James Hilliard <james.hilliard1@gmail.com>
>
> Applied all, thanks!

Just verifying, you applied my v10 and not my v9 right?
https://lore.kernel.org/all/20230924044800.2199524-1-james.hilliard1@gmail.=
com/

