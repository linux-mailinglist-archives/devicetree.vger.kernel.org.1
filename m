Return-Path: <devicetree+bounces-3085-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C14567AD471
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 11:23:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id E50FF1C20456
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 09:23:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D29713AEF;
	Mon, 25 Sep 2023 09:23:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF2C310A0F
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 09:23:01 +0000 (UTC)
Received: from mail-yw1-x112f.google.com (mail-yw1-x112f.google.com [IPv6:2607:f8b0:4864:20::112f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E404E3
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 02:23:00 -0700 (PDT)
Received: by mail-yw1-x112f.google.com with SMTP id 00721157ae682-59e88a28b98so87729307b3.1
        for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 02:23:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695633779; x=1696238579; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ox7ph+it7sfvxCbDQN0D4pkcdG6TPz8qXQplM76i6ss=;
        b=NAm4GlbPxgovNwg9/SiI6u4XutR1CKY6L7/Q+CSfEhbZUu8DIXf/9yK3y+H6WiQwtd
         db2g0NipSlhG89s8pROVyb8V4e6TbMRJM+whZMX8Jggy4S+sjB13A8MAjTseiRwteaUM
         Za8dNp/PuU67ASd5+w1MuPq6pm9ka5ECPCR06ZXiLjJr3mf3an8A0LjDKtCS6jVF+STE
         WYIBwi/t6SzcEpQe07xPFuHP/SaRBxBr3S1MEyZ5/k9uLLyuH5prwkP6/6eaWcQgi8M6
         pf8XTq50psZR61VVNI2Pd9abbS6CVataN7thBVw4ZJa0LitMEnrb4a7bSUV0hLORaUSG
         vGdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695633779; x=1696238579;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ox7ph+it7sfvxCbDQN0D4pkcdG6TPz8qXQplM76i6ss=;
        b=XbkF77d0yE3iPd73FVv6tfc4BnFlb5a8tfXEOy1DnnyXvYFEU1cuENbYIF3TDnoHOm
         8/6XhsLQxJxbxXxJzwtb9mYCv8j+sN04EQHK9TyIXWEzfXz7In25eFs5odrECZkJleq3
         YDLo47LD4YHhOIu7f/tLyoPIziGmxW7EpdL7Ct0cMagHrhLl3kK09bGO5NIEY90i/3F9
         ErREaVhI8Od+08dDD21q/5yysAM9jvak8iZ6Mh+7SUqVU5MXaCPSvjIIOTe5OJnHCmhF
         k09y+PJfji6HfpabQvHUpPbc7YW9M0kxXF7E9NgDcIp3PO4DCAIT6QXedmH7PfeU3KwB
         8zvQ==
X-Gm-Message-State: AOJu0YzU2FnRdqu+hKnah7u9gP/DdSJ7HjzlonB61sNW9c7v/qjeFR+J
	4NPS32wp7M3aFVwnM6WwoXwmMiFWHHzmrKc2aSQP3w==
X-Google-Smtp-Source: AGHT+IFV5y9PGQ2YbkKawNC1OFKUbpRmrOrKqoUCzRadJUQ0zFHb+lmWRYZN0Okx2R8u/rtdSUYncjv3GF95Lx8HVjU=
X-Received: by 2002:a0d:e208:0:b0:583:aca3:469c with SMTP id
 l8-20020a0de208000000b00583aca3469cmr4782369ywe.2.1695633779694; Mon, 25 Sep
 2023 02:22:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230720115524.137944-1-krzysztof.kozlowski@linaro.org>
 <CACRpkdbhej07QXTdPE4sx9tvHT_wjzDoCiTVJn727HHbgVtZCw@mail.gmail.com> <9b00b686-f59d-490d-bb22-ae864ac1e150@linaro.org>
In-Reply-To: <9b00b686-f59d-490d-bb22-ae864ac1e150@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 25 Sep 2023 11:22:48 +0200
Message-ID: <CACRpkdYswy5zoLjDiySWPmNShufJFtbGqNSJH-cY0R70nnkfbw@mail.gmail.com>
Subject: Re: [PATCH 1/2] ARM: dts: st: href-tvk1281618: fix touchscreen VIO supply
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Sun, Sep 24, 2023 at 8:55=E2=80=AFPM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:

> > Patch applied!
> > Excellently shows how the schema files find real bugs in the DTS files!
>
> It seems it is not in the linux-next (one month later). Shall I take it?

Ooops. Just me not keeping track of my TODO list as usual.
Sent a pull request now.

Yours,
Linus Walleij

