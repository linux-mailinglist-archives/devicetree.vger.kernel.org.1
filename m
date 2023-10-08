Return-Path: <devicetree+bounces-6818-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E96877BCF36
	for <lists+devicetree@lfdr.de>; Sun,  8 Oct 2023 18:00:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A5255280DF6
	for <lists+devicetree@lfdr.de>; Sun,  8 Oct 2023 16:00:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E138F11C9C;
	Sun,  8 Oct 2023 16:00:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dekOCAvp"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DB442F27
	for <devicetree@vger.kernel.org>; Sun,  8 Oct 2023 16:00:52 +0000 (UTC)
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com [IPv6:2607:f8b0:4864:20::1032])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D5F8BA;
	Sun,  8 Oct 2023 09:00:49 -0700 (PDT)
Received: by mail-pj1-x1032.google.com with SMTP id 98e67ed59e1d1-27755cfa666so689314a91.0;
        Sun, 08 Oct 2023 09:00:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696780849; x=1697385649; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q4xeCS5HpiZkQUPngiqxH/g8Efp0tcvqhifnJ6yqluY=;
        b=dekOCAvp/m6XQB5Qkqm+OfRWuYX5NoYn0OKkJTbIVcudAUZOtsLiTbhovErj+X6bFW
         zfAaTKF68tG6Gvl8N4ZvccsgLYMum4PDxSyBOJ3nPJewc1uF+Yo0ykRwhJs/Nq1ejRvZ
         nmQnTu5JGxY/suG3DklOOAjzqoz3IbOtbQsYTSDphMhjr7T/TdiAVv5ItgteBcxTob4k
         0tRWEJwAWLwnXXgdTcQFBZWLE7C8ZH2rHgS0J3UpEMwqCdWf+EuJcmMUMsIYK3GwDMOS
         mRVQeVG5GkgujcQqGKW2GWlFxapsxoDUyTkwTapmT7UrB/7wSTW5kKRPY8mWCkbm+OPP
         mDFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696780849; x=1697385649;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=q4xeCS5HpiZkQUPngiqxH/g8Efp0tcvqhifnJ6yqluY=;
        b=rgi920ZCy30O164slk6ZQ3pTl6pSSs9kqWEow+DoSTUqAoNv744ccUuiMNxc6tELc4
         GhyUsDPTN3b4oXwCrZuVOnYaxq/aDqV/zY5agldBwHwYlBwYMe/BwK+9ChguAzM9GU+u
         y/BI4rp9KxNGzDWl+edRkBTeEkqbwhdBCVFMFZ+mD/NcHevLWObT6gaphgXmEMvP1/tc
         GSDoLEKVY1otnv50d3R6dtkApWkBeHSdBmhhqJhPLIxg1eGOBgOxWC48AsPSQpsciDqQ
         eU9v7ewDjjtCnn3+qtLWn6N+KEXobPB/EgTbdYQuhxe80Fs6AntaW+DDg5WPM6Ro5RIL
         0htQ==
X-Gm-Message-State: AOJu0Yzz5kslKffDlGbO7SuElTQiUmzOJA4Zr/Wq8j8MRoe6y6Oy+gNK
	YOKxcYSEtZCLzd7Cr6od/VvKdNPeOpvYU6f8tRk=
X-Google-Smtp-Source: AGHT+IHP+8PFYcox8BLl0isX86dfR57PI4ma+M0orQi/n/wJ40vMYhNC21Mn/8KuagGKT7VTn9+FqNMd6grUzifoRqE=
X-Received: by 2002:a17:90a:7b86:b0:26d:4312:17ec with SMTP id
 z6-20020a17090a7b8600b0026d431217ecmr11528315pjc.1.1696780848666; Sun, 08 Oct
 2023 09:00:48 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231008140239.6601-1-aford173@gmail.com> <20231008140239.6601-3-aford173@gmail.com>
In-Reply-To: <20231008140239.6601-3-aford173@gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Sun, 8 Oct 2023 13:00:37 -0300
Message-ID: <CAOMZO5A8xZ7Sg6Gb=QT65kXxTafxr4LpX+O-FQpQy6OLST5N-Q@mail.gmail.com>
Subject: Re: [PATCH V3 3/4] arm64: dts: imx8mn-beacon: Add DMIC support
To: Adam Ford <aford173@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, aford@beaconembedded.com, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Sun, Oct 8, 2023 at 11:02=E2=80=AFAM Adam Ford <aford173@gmail.com> wrot=
e:
>
> The baseboard has a connector for a pulse density microphone.
> This is connected via the micfil interface and uses the DMIC
> audio codec with the simple-audio-card.
>
> Signed-off-by: Adam Ford <aford173@gmail.com>

Reviewed-by: Fabio Estevam <festevam@gmail.com>

