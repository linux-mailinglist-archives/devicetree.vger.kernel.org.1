Return-Path: <devicetree+bounces-28158-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C17EF81CE29
	for <lists+devicetree@lfdr.de>; Fri, 22 Dec 2023 18:53:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7C39E28AAA0
	for <lists+devicetree@lfdr.de>; Fri, 22 Dec 2023 17:53:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C508728DDA;
	Fri, 22 Dec 2023 17:52:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="h7iDilPN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59BCB28DD3
	for <devicetree@vger.kernel.org>; Fri, 22 Dec 2023 17:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f182.google.com with SMTP id 3f1490d57ef6-dbdc52f2359so1924517276.3
        for <devicetree@vger.kernel.org>; Fri, 22 Dec 2023 09:52:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703267572; x=1703872372; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HMCbd/diw1/PZRPtQ076d98pKtkN7WoHEgmPA7lfsto=;
        b=h7iDilPNXwKqlmQBzl9RCtwYM99oZppwAQNoigfy8F6gB0Mnci3OMvD8XOWSe3qtda
         E4tpGF7fxulgFfdjuWt83EtZc7sDndV7GImknZkTiYZrnnAtxsSJdt0/12aRVvNV4xxe
         MMLdgj5hVAylSPZZSAqctyyvxY4urqsJF7j9XmV+yZGM9Glu0nPU+D0t4HVQi0f4+3l8
         k2xz3rc66t2Hclt6cJaO/ox3wfXsvRMF8qF3ZoFvOJ4V+oQQ7J/gGtoOy/6kELKUFmlj
         db7c3AEKvhXsvr83KGCyh1GEJtZnBvbwzQfctN/XyP1vrJ9SsCxOVIsRbpMCSoafL679
         3esw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703267572; x=1703872372;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HMCbd/diw1/PZRPtQ076d98pKtkN7WoHEgmPA7lfsto=;
        b=Y5HYJfxMvAaGzkSYy/UDQ53Xoo9YVdFrPivU+JyV220t4AUZlgOBCkXMkhXviTh/uC
         wt1+4PZ+JMB2KlKqadDc40l0ds3huBQjO5zeC2DfogpW8jWX2nx3h52qF23t+2k8PSsc
         7CJ6x1dd6Fs+m9Vs/xSUuXpw8XaObspQINRIJ1peDPI6BESpIAzcZ4RGr/BEqMkKcF94
         eBPGCswv7W1cDeokQ2erKQbZyFrLdOu7QLsTmG5hiJhm9BGnlkwkQlwDh/oQ4cWB0ygQ
         5/6Sh3iF48JtcMJz68wdc9m87y1baQ9ZxVE9Ir3DZlrlbahNnSebxsiFp+rdZWamk98X
         AMZQ==
X-Gm-Message-State: AOJu0YyF7JbDOG9jS7enNCznBP0urW2q4G5WzrQyxFqalzRUlZM5pppZ
	N9DwRQbvCYuf31zwDQb5yH0B6ZY9EkWdQ0O0wdme0NyjTGAKcw==
X-Google-Smtp-Source: AGHT+IFn3hVwv10mifvBnkB0e8lClyIXHpLdBggu6vKgEMkcL1Pe4gtnuC8RSU6VC0aIt5quwrzNgOtAZu7lo6WOISo=
X-Received: by 2002:a0d:d812:0:b0:5e9:4c7a:5036 with SMTP id
 a18-20020a0dd812000000b005e94c7a5036mr1610808ywe.85.1703267572347; Fri, 22
 Dec 2023 09:52:52 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231222095258.33369-1-eichest@gmail.com> <20231222095258.33369-2-eichest@gmail.com>
In-Reply-To: <20231222095258.33369-2-eichest@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 22 Dec 2023 18:52:41 +0100
Message-ID: <CACRpkdbPjA+atjWt101f_o8hFkeUsUXL_raGdd802g_+n4FYOw@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: input: atmel,maxtouch: add
 poweroff-sleep property
To: Stefan Eichenberger <eichest@gmail.com>
Cc: nick@shmanahar.org, dmitry.torokhov@gmail.com, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com, 
	claudiu.beznea@tuxon.dev, francesco.dolcini@toradex.com, 
	linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Stefan Eichenberger <stefan.eichenberger@toradex.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 22, 2023 at 10:53=E2=80=AFAM Stefan Eichenberger <eichest@gmail=
.com> wrote:

> From: Stefan Eichenberger <stefan.eichenberger@toradex.com>
>
> Add a new property to indicate that the device should power off rather
> than use deep sleep. Deep sleep is a feature of the controller that
> expects the controller to remain powered in suspend. However, if a
> display shares its regulator with the touch controller, we may want to
> do a power off so that the display and touch controller do not use any
> power.
>
> Signed-off-by: Stefan Eichenberger <stefan.eichenberger@toradex.com>

This LGTM:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

