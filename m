Return-Path: <devicetree+bounces-1460-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E725B7A6688
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 16:23:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B32F41C20A5D
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 14:23:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25B2653A1;
	Tue, 19 Sep 2023 14:23:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC7C93715D
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 14:23:29 +0000 (UTC)
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 322E91B9
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 07:23:27 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-99c93638322so1244173566b.1
        for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 07:23:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1695133405; x=1695738205; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7/FEvYyM2EeHOdSQPD/GJAyv/Ms6P3+0S37WW9XjZPo=;
        b=WYEvT1QC6WNNf3Ei4n+pj8mRM6nVsIfcU5IqY0MOfOxD3yIcE5XyQPDPVGzXfUa6WP
         4z/bG6tg8ECF/lDBTj9uQCCOsc9Tb/NLzBszpyxVVLtxDw0FGXM9/gt/WF0ph1lI5/nY
         bKuVLIR4zIIn4bNI+xM5ejfeI8QfYiAmO7tUk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695133405; x=1695738205;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7/FEvYyM2EeHOdSQPD/GJAyv/Ms6P3+0S37WW9XjZPo=;
        b=AtPU9NOdBXMSFT2O4lHzbvrZqUS4VE1s1L4wcbPnA22V95o+Vg1xgf47cbJgoiVzpE
         8C022hc93e/phLUUFn+TYbcnjUdHsr2qrjR3OJ1B5qDZYnMrPH+gcr92ytye4m+69H4+
         A/p1pf56C5XKw14Zx+qjkqbnRfDYhlRdVrlEg0oBOlrRLtRs3IkXVu+jj0OAPM+LDYBx
         ayYOZ7XjLIyCgmYfFxS2hr8A8kpL+b7A7/qJYcsRhRAuo+QmyH5MntSazcqIV/kkN8sV
         +DmWlTfflFTdOY1qVVts9Jr8oWv5NsHAoGnMsllBSSges8OaTEEOQXIk56bmZC+1coLD
         BVkQ==
X-Gm-Message-State: AOJu0YxL0HX0gxfyIi9FnrxY8Q9wucp2cUmmaezKDswu88fkSHNSsH2k
	LP6a5zedgZJ+0dq6WwwzavzveLlG974svxV6WXAbjt3H
X-Google-Smtp-Source: AGHT+IG2NvAz7xoyQEzdKCNhvycWz/vc5pHryTPZJJRmn4EJB8lh7M1QNESIfsOzK8YBxlOTbF5o9w==
X-Received: by 2002:a17:907:a056:b0:9a5:a543:2744 with SMTP id gz22-20020a170907a05600b009a5a5432744mr3630872ejc.33.1695133405066;
        Tue, 19 Sep 2023 07:23:25 -0700 (PDT)
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com. [209.85.208.44])
        by smtp.gmail.com with ESMTPSA id qq7-20020a17090720c700b009920a690cd9sm7829236ejb.59.2023.09.19.07.23.24
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Sep 2023 07:23:24 -0700 (PDT)
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-52fa364f276so11642a12.1
        for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 07:23:24 -0700 (PDT)
X-Received: by 2002:a05:600c:3d0b:b0:3fe:f32f:c57f with SMTP id
 bh11-20020a05600c3d0b00b003fef32fc57fmr110023wmb.0.1695132919977; Tue, 19 Sep
 2023 07:15:19 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230919-fp5-initial-v2-0-14bb7cedadf5@fairphone.com> <20230919-fp5-initial-v2-2-14bb7cedadf5@fairphone.com>
In-Reply-To: <20230919-fp5-initial-v2-2-14bb7cedadf5@fairphone.com>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 19 Sep 2023 07:15:02 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UmW8QwcT=YN8VSffuds2ib5zYPr6O2oQ=kUJkKa=5Bmw@mail.gmail.com>
Message-ID: <CAD=FV=UmW8QwcT=YN8VSffuds2ib5zYPr6O2oQ=kUJkKa=5Bmw@mail.gmail.com>
Subject: Re: [PATCH v2 2/7] nvmem: qfprom: Mark core clk as optional
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: cros-qcom-dts-watchers@chromium.org, Andy Gross <agross@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, Linus Walleij <linus.walleij@linaro.org>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>, 
	~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi,

On Tue, Sep 19, 2023 at 5:46=E2=80=AFAM Luca Weiss <luca.weiss@fairphone.co=
m> wrote:
>
> On some platforms like sc7280 on non-ChromeOS devices the core clock
> cannot be touched by Linux so we cannot provide it. Mark it as optional
> as accessing qfprom for reading works without it but we still prohibit
> writing if we cannot provide the clock.
>
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  drivers/nvmem/qfprom.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>

