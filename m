Return-Path: <devicetree+bounces-5654-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B3ED7B72D3
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 22:53:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 538B7B207CE
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 20:53:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18F2E3CCFF;
	Tue,  3 Oct 2023 20:53:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AB2E30FA6
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 20:53:03 +0000 (UTC)
Received: from mail-yw1-x1134.google.com (mail-yw1-x1134.google.com [IPv6:2607:f8b0:4864:20::1134])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E8A5CE
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 13:53:01 -0700 (PDT)
Received: by mail-yw1-x1134.google.com with SMTP id 00721157ae682-59f6041395dso17274267b3.1
        for <devicetree@vger.kernel.org>; Tue, 03 Oct 2023 13:53:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696366380; x=1696971180; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yt14wylIoWnbcXhDHRlgibumbtrD/L6WB2BDNq/uwc4=;
        b=Q3cDbYlqd9LAsD+g7YS+1sBhTT2bt3ZotGmQIG3aHsbpxLadUWwQMjev3sc9uS6HAx
         sDOor30yfP98HIIkQ8tp28uspiH3lIwo/PjFuVp0SmSrxOnyJYe85rYGZHGzJVhdZW6N
         y53dRYm197/nQ8VyaE25YmREl5aKcSW3JfOHBE4WoU7EQR8MS1GlGnNKUrs++TmJJ7XU
         sAzPr4E6vuNsIcSDDP7U8HYAfqPZMkRFGJRU9xgvd9fEpyQBjttQF2I8lxLvZxFwTjHM
         jhfx2AwGZw5aKwW6YMI7soPa3VUe8eSSuq/skm1i1YAduA9KgVeXJrtUCY+1Q7MCCfRU
         MdaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696366380; x=1696971180;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yt14wylIoWnbcXhDHRlgibumbtrD/L6WB2BDNq/uwc4=;
        b=VyYwO7Fsmwx01/5CiX4OGq2qL1Of2G61BLRTt9nh3xu+GQ0fViNXtPtMNv66ArUyIn
         ExtrZFBS9g7RHQhnEHvFpY1+7HzeJUseAbmR9PD02qBPMWevxYmdW5L7N0JQIrh9z81e
         X3ZBVQkuKCt+yCOs8GtOAiPGShrs3lBuqlKI9MXw1IF2BNDNEugsJUN3Vjs2dd8e4Bps
         mUPqPVPRFrB/nhK2xsoAvjpA0c8AQ9ZFHQtvykayGZs1qNIVY3uQQ76qNuP0mgFOFRhO
         4ZGTYHchzKRZYPg02i/hhJ13mP39HtkdFjxYvU6ziy05KMzG3ow2RMxQDFQSWcmrsRXJ
         z1kw==
X-Gm-Message-State: AOJu0Ywstvrw8yzQow8kSkLVel5ywd1/YJTB2aRwmFCdc0dqEnahTSUr
	Lf2ZyjfMj8WX4iCeFYskB9nJHp+jKTCRDjJ7LijFcA==
X-Google-Smtp-Source: AGHT+IGltDHvoagwvELuhiXRm3gPHaNjqQ8ydWenusCYp5p2iPnIMX62XJICRXgdqR/Og5UsqkzHiiwDO8oYfsIhKho=
X-Received: by 2002:a0d:f387:0:b0:589:c065:b419 with SMTP id
 c129-20020a0df387000000b00589c065b419mr734080ywf.34.1696366380636; Tue, 03
 Oct 2023 13:53:00 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231002021602.260100-1-takahiro.akashi@linaro.org> <20231002021602.260100-3-takahiro.akashi@linaro.org>
In-Reply-To: <20231002021602.260100-3-takahiro.akashi@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 3 Oct 2023 22:52:49 +0200
Message-ID: <CACRpkdY1NwE-jw_HqhwAAiLJHmz-kjzjB-SyqgwR-0n4gbWG6Q@mail.gmail.com>
Subject: Re: [RFC 2/4] pinctrl: add pinctrl_gpio_get_config()
To: AKASHI Takahiro <takahiro.akashi@linaro.org>
Cc: sudeep.holla@arm.com, cristian.marussi@arm.com, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	Oleksii_Moisieiev@epam.com, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, Oct 2, 2023 at 4:17=E2=80=AFAM AKASHI Takahiro
<takahiro.akashi@linaro.org> wrote:

> This is a counterpart of pinctrl_gpio_set_config(), which will initially
> be used to implement gpio_get interface in SCMI pinctrl based GPIO driver=
.
>
> Signed-off-by: AKASHI Takahiro <takahiro.akashi@linaro.org>

Makes perfect sense for what you are trying to do.
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

