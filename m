Return-Path: <devicetree+bounces-7397-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F9557C3074
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 21:51:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EB929281A3D
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 19:51:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4928E321AB;
	Tue, 10 Oct 2023 19:51:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="D5XtSMeX"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D493F32192
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 19:51:31 +0000 (UTC)
Received: from mail-yw1-x112a.google.com (mail-yw1-x112a.google.com [IPv6:2607:f8b0:4864:20::112a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2DD258E
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 12:51:30 -0700 (PDT)
Received: by mail-yw1-x112a.google.com with SMTP id 00721157ae682-5a7be61fe74so14460887b3.2
        for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 12:51:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696967489; x=1697572289; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0t/gb0HX/wguZBehJ5edd61GQW9F6FisjpeCFW72vEs=;
        b=D5XtSMeXbmeae1DUwD0ohuJzaEE1w/skR4ngNwV2PfvtZL5hnVBR90UKzxAiQZ988e
         sj1D9LpxikgFTp7OMDGxcVM/b3Ku7oXMv8xfErTqX85QIq3ZfPeOZzt2N0cXFY1OdXK7
         6GVSLQ9esRI2tHfwoWLxKW0qTHua+dcy5ILVNr3ClO23oxDxhjG/OlpyU+RbMPJFwt9a
         +XJKxRV4ytVviTilxX66QQJdO9ikggHyH6xHloWKH6DZ4KBMNrPifZbwQEvY49iIInEs
         Wywllt/DmCGBZLGHLk/SppXOElDSUxXQfXepPBVUZbMBNZMLbb0jUmwnU0mwcMP41XxG
         qlNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696967489; x=1697572289;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0t/gb0HX/wguZBehJ5edd61GQW9F6FisjpeCFW72vEs=;
        b=ajMoIEvizkwkKPK4qYUYkwhC43id0Yad+9xpQv2YvaUkC6fMFnwQqmX6qAfKhCziPR
         6wHNCORR44/bSH+vNDyYY5U1R0DR2kb5rcGWAv3FOfSj8T4JFms3WvshFS883N11XimP
         yjTByniw8voW+TtOZwCLR1CCP1Rg7IwvD4SCNaULGOQrnj1s8p9/AcQ65e5ruZ6CBEvW
         Ci4zQVeapho/BlhA124Hpg3I151L/kvWxZBkqsuzg8rroS1QOEWr80aO+T7FVS20iUHh
         ok+f6OQ+BfbpIDxre+WYH/oC54NKGkHU6L3ULGBAFCL0RPpNcUmhcJx9FlYKwa+1fITu
         5hew==
X-Gm-Message-State: AOJu0Yx3zXfqsuHA0ikt2sxDb2cMER/m9Gb2OLsKpiSylc3nx4xQ/uLu
	kIsHHTgOJmU8poUzCzpUoLNlFpFVVeycc1DVr99lAw==
X-Google-Smtp-Source: AGHT+IEhCcAsDeMJoiEQZQ5RWxC0/XydGDUmR603fyri6YQ94GyZBsLD7Fzb80ytacETl1giUcWrYOVUQ45SVjw5mw8=
X-Received: by 2002:a81:b40c:0:b0:592:2a17:9d88 with SMTP id
 h12-20020a81b40c000000b005922a179d88mr21125891ywi.47.1696967489365; Tue, 10
 Oct 2023 12:51:29 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230918080314.11959-1-jagathjog1996@gmail.com>
 <20230918080314.11959-2-jagathjog1996@gmail.com> <20230924143710.7c6edc4a@jic23-huawei>
 <CAM+2EuJ8o5X2ucph8gic2=03bbLQmUCX=j3SFLrqD4Y6rwXs9A@mail.gmail.com>
 <20230930170530.0b8f185c@jic23-huawei> <CAM+2EuKzBVbTF2SrpYEYfzap1wrONboFV-QuTU9Fz7sVjqJLeA@mail.gmail.com>
 <20231010100002.0163d681@jic23-huawei> <CACRpkdY+K90mN1Q1tf38FLRgEsz3q8dK9SJYSQVwGe=PL3FaUQ@mail.gmail.com>
 <20231010154216.6032a1c2@jic23-huawei>
In-Reply-To: <20231010154216.6032a1c2@jic23-huawei>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 10 Oct 2023 21:51:17 +0200
Message-ID: <CACRpkdY4yJKmc_Sbr=4sJ0WseCEEBOQ7wKj4fBUMG2_cx-Xxbw@mail.gmail.com>
Subject: Re: [RFC 1/2] dt-bindings: iio: imu: Add DT binding doc for BMI323
To: Jonathan Cameron <jic23@kernel.org>
Cc: Jagath Jog J <jagathjog1996@gmail.com>, andriy.shevchenko@linux.intel.com, 
	lars@metafoo.de, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, Oct 10, 2023 at 4:42=E2=80=AFPM Jonathan Cameron <jic23@kernel.org>=
 wrote:

> We kind of lost the question along the way.  Wasn't so much about whether
> there was a generic binding but more about whether it is worth providing
> separate controls for the two IRQ pins?  Or just assume no one is crazy
> enough to play that level of mix and match.

Ugh no, that's upfront design for a nonexistent use case.

- First, to even consider open drain the designer need to be really
  short of IRQ lines/rails, and, despite knowing it's a bad idea, decide
  to share this line between several peripherals, even though it will
  require I2C traffic to just determine which one even fired the IRQ.

- Second, be interested in using two IRQs to distinguish between
  different events? When we just faced the situation that we had
  too few IRQ lines so we need to start sharing them with open
  drain...?

It's not gonna happen.

Stay with just drive-open-drain; and configure them all as that if
that property is set.

Yours,
Linus Walleij

