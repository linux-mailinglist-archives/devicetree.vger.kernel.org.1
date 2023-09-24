Return-Path: <devicetree+bounces-2755-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A37B7AC640
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 03:53:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 7CD74B20A1E
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 01:52:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8D5662F;
	Sun, 24 Sep 2023 01:52:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C4E836D
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 01:52:52 +0000 (UTC)
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com [IPv6:2607:f8b0:4864:20::52d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 03BAA11D
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 18:52:51 -0700 (PDT)
Received: by mail-pg1-x52d.google.com with SMTP id 41be03b00d2f7-51f64817809so743231a12.1
        for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 18:52:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695520370; x=1696125170; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dFX/OgYM7IwO8fteCZvffmXmzwoI4hSdPDCBUxazj5s=;
        b=BZaJcu9aRLCiFFXlHFIEHMqp8N32EjE7kyoUMG5/1IIiVgL74Giojsy5ESEVpMgGPe
         je5iGj/r69s84gW+ACfKyi2TMrRZOEWxtf5U+NlqJwegbXeAUkoEkQ8nRBDB/Y4B85WN
         6XXGjeE/B39VOq61tPCGForFkkdnyqNUTY0f+KBr7ZJcL2aoWSDCaippbFPmYimHdqIu
         99/Of5oSOvDRLhpa7EwoOdg6zXi9T4vCPnRkqPeDZhUN60GRCHx82+s0gjB6Q6imwxpH
         r395TemJF8ZWTXMlX1UIj8Wj1Rew7SmSWw/jCPJUsOcehDyy7l7D3Eei8T25YbdXMeHD
         VhHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695520370; x=1696125170;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dFX/OgYM7IwO8fteCZvffmXmzwoI4hSdPDCBUxazj5s=;
        b=eh3XtZ4JmIe6oZumn6ydhi5iTI419Q4LaXe3uMet9blwZKAe8UbPkEGCOccRBy2ExT
         W32BaXpyqRR2qjjNVGgs8iX2uNgQEmG3sQ6wQ3ho705wJepSD2NzIBGr/Gj1vW+slVMe
         +zoms8QCpfKJz2Hl8/feY/c0s98MGz3tNg/qCTEl9cSmtefSOf5ApYqh6nX1o/NaUt8P
         jaMSlGmlnBbJ2BnZl+6lDk7bgvvO54oak4fmcShPo0PvpeSk5maJapFqwW+uBHDddmvW
         9ELQ+90arUaTdkjVSjaau6u39uWgpZ3PUlBx3RO4WS01fsc8h7t28zhw1wfUo8q1r554
         RdHA==
X-Gm-Message-State: AOJu0YyXsc9RPUlOXzI8d0x6wG+L82+9QHfhzspVZ/tQvZzb3S/PXouA
	71EOddAE+qQAyX9JFTM5Y7VYklDh40JlzUinKJw=
X-Google-Smtp-Source: AGHT+IF3aN9PPvrhuvkecR218YBkKQ4HT1rkvNA6Ts0jKs0vDEFUHdnqB2fLL1LfCoV0xkTi0b3CnynGOCvPCrbjEGM=
X-Received: by 2002:a05:6a21:33a7:b0:15c:b7ba:e9ba with SMTP id
 yy39-20020a056a2133a700b0015cb7bae9bamr5658336pzb.0.1695520370361; Sat, 23
 Sep 2023 18:52:50 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230811085401.3856778-1-alexander.stein@ew.tq-group.com>
 <20230811085401.3856778-3-alexander.stein@ew.tq-group.com> <20230920152023.GG11740@T480>
In-Reply-To: <20230920152023.GG11740@T480>
From: Fabio Estevam <festevam@gmail.com>
Date: Sat, 23 Sep 2023 22:52:37 -0300
Message-ID: <CAOMZO5DJXvh+aODuPo_d2jahqbD-7dsAUje5BurzEuVE5UnEtg@mail.gmail.com>
Subject: Re: [PATCH 2/3] arm64: dts: freescale: tqma9352-mba93xxla: add
 'chassis-type' property
To: Shawn Guo <shawnguo@kernel.org>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	NXP Linux Team <linux-imx@nxp.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Shawn,

On Wed, Sep 20, 2023 at 12:20=E2=80=AFPM Shawn Guo <shawnguo@kernel.org> wr=
ote:

> Do we have binding doc somewhere for this property?

It is documented at:
https://github.com/devicetree-org/dt-schema/blob/main/dtschema/schemas/root=
-node.yaml#L20-L29

