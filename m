Return-Path: <devicetree+bounces-7749-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 09CCF7C54A1
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 14:59:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B9D432820BD
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 12:59:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 523651F17E;
	Wed, 11 Oct 2023 12:59:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QbLC9nt7"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4E2FF4E5
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 12:59:35 +0000 (UTC)
Received: from mail-yb1-xb2a.google.com (mail-yb1-xb2a.google.com [IPv6:2607:f8b0:4864:20::b2a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 043E4A4
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 05:59:33 -0700 (PDT)
Received: by mail-yb1-xb2a.google.com with SMTP id 3f1490d57ef6-d84d883c1b6so827582276.0
        for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 05:59:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697029172; x=1697633972; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1EaY0sE2Pei5NhN4+5VkCTT2XVv3gRIOvmlCGAn/8ks=;
        b=QbLC9nt7HqpCz8+Wga+dCd0EDL4TUoIsoDqy07go+wlutRaBW+hv31jV+3hFaOHqoc
         KKPvhIv7XhoRGb+wFFun9F3xyLXAdMzAw/B+IP9iS6gpsjxXTG0wJhGZ+gAyFonc6O11
         KHk2VPxOvFH0FjvOxdoWmGWnWOnBXndf+QCErgw/Ure3JyfqftMV/NYmZx8WTDYXamjB
         6qmsnde2JhBGg2rYq0QX6E694FI5nwIottUxK/z2frw1IgLy4sHfzdKhqPXZKXfvYHM/
         0YiubrW84bDyXy+JKt3+ZQpJMu33gYvmvCbX6/sJezTJquU1hPDHhQEBoMA1IB8C4OZl
         d3vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697029172; x=1697633972;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1EaY0sE2Pei5NhN4+5VkCTT2XVv3gRIOvmlCGAn/8ks=;
        b=TnXAbIr9QXv207u72gs8L+VgOBkzwD4NdvQHktS2FWP3F8WWaRy8FqrMXOirUM/Z1Y
         CHKQO+9u8uiZE8Jwsdfwor88faGIIfDQVJ2XvyOjO5k6sn9jXyGZLbkvU5TYWH32r/aA
         clTXQ5fDWk4Gyq2gn6qv2uuQqWxus6sZ3INQX7SIuQG/GUHzbJErFbaFYHYQ+iMrK9Aj
         JYXu5bxfTSnVl4L9M/SkdX5KILXSMdv/OxIuWnKhzGNtGM8+Uppr4xU5EvLwQvCpwOnG
         p8/MG6FWqg4ZC3Te0/9WKfgOHOLVWe5oMkVArx2vNef1wXbBrF3R9kgWx04EYnucmmnd
         cYkw==
X-Gm-Message-State: AOJu0YyraGh0bj+oPiLSmSvInKavlsvDPbMHiHlGZH7Oij+pVRbf1jdV
	fCbl5U8eOu+qjAFKrPdkELHxbf5+QkkmaFw4Hr7utA==
X-Google-Smtp-Source: AGHT+IHK3TsRkckFS5x9fV4NSgNoHc3y3+i7/whwE2O1SG/00B7HMp4A/4j1w/7wk6qdfTsknd318X6DKYpMZIoJHxE=
X-Received: by 2002:a25:1e43:0:b0:d4b:a962:76a3 with SMTP id
 e64-20020a251e43000000b00d4ba96276a3mr11483916ybe.29.1697029172104; Wed, 11
 Oct 2023 05:59:32 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231011112726.166052-1-dmitry.baryshkov@linaro.org> <CAL_Jsq+HdceLczej4_q-wjg2870v3y-e_E+jEq0xbetDguaXAw@mail.gmail.com>
In-Reply-To: <CAL_Jsq+HdceLczej4_q-wjg2870v3y-e_E+jEq0xbetDguaXAw@mail.gmail.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 11 Oct 2023 15:59:21 +0300
Message-ID: <CAA8EJppCO-q=swYOH+O2fOdUDbNzd1yz9ZoTEBswV7RmvFJifA@mail.gmail.com>
Subject: Re: [PATCH] of: export of_find_next_cache_node() for modules
To: Rob Herring <robh+dt@kernel.org>
Cc: Frank Rowand <frowand.list@gmail.com>, Ilia Lin <ilia.lin@kernel.org>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Andy Gross <agross@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Wed, 11 Oct 2023 at 15:52, Rob Herring <robh+dt@kernel.org> wrote:
>
> On Wed, Oct 11, 2023 at 6:27=E2=80=AFAM Dmitry Baryshkov
> <dmitry.baryshkov@linaro.org> wrote:
> >
> > The qcom-cpufreq-nvmem module uses of_find_next_cache_node() function,
> > so export it to be available to the modules.
>
> You really should be using the cacheinfo API which has already parsed
> the cache nodes.
>
> Also, why do you need a platform_device? I don't see a driver.
> cacheinfo already creates a struct device, so kind of weird to have 2
> devices.

The driver is pending as a part of the series at [1]. We need to scale
the L2 supplies and clock frequency following the core frequency
changes.

[1] https://lore.kernel.org/linux-arm-msm/20230827115033.935089-9-dmitry.ba=
ryshkov@linaro.org/

--=20
With best wishes
Dmitry

