Return-Path: <devicetree+bounces-8814-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DFE9F7CA39F
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 11:10:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 56306B20C8B
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 09:10:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 715811A5B7;
	Mon, 16 Oct 2023 09:10:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UzW0mQ18"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFF4A15ADD
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 09:10:33 +0000 (UTC)
Received: from mail-yb1-xb32.google.com (mail-yb1-xb32.google.com [IPv6:2607:f8b0:4864:20::b32])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8088DEA
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 02:10:30 -0700 (PDT)
Received: by mail-yb1-xb32.google.com with SMTP id 3f1490d57ef6-d9b9adaf291so1315429276.1
        for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 02:10:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697447429; x=1698052229; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=guQPwERqmbSLzSooVd6YufMruj6qPUsQ0NJuOYONZV8=;
        b=UzW0mQ18HYp6YBW86q5rAqSxVT7feh4y7gARycMHDhoFl+QI2kpxPQOlGdl2pRKYF6
         zauv5e5rmcw6uVE/bUEuzDEBjkHWuQAChwT8v0P84nJMt4elO1DSWC8maafSqZMKJyzy
         ewR5N3FCRmd0sp0PsGhyENJvFhvXHkzocDzYp122X2fw9in3W/4YqkcjaDS3Ok/bB8kD
         OpBECv30SQkgv8fpN2bgnATmweSQQlsXHrxq4JGyrJjx9rsJqGPiO4ADAcE/OULABbII
         Qt0xnzRVUr4hXAj86p3xWUxBHDdXuAvklJjdn5qJM1olstXCHTVDKZ9OsxvNZxjCGzdS
         N3Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697447429; x=1698052229;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=guQPwERqmbSLzSooVd6YufMruj6qPUsQ0NJuOYONZV8=;
        b=tgPW7kBkrRbKZUIidn4n9ilE3qoGElkv2sgw49H4K7UO7CW2tDOvnoCN3XremSVnjq
         H4K8lLS+j0TFNcMNK7qGZ+0yF5wwBe5UBH6cMBSnlGCDtZ6embrVSbs0CvWBJ0ryoWK5
         dqtSoxF+IkW6mMMFVydTGHyBWJ+FpghlrZUZj5CIFkGaWNhGQopjUw8UuAbSiFb07gqT
         fD55IYDQcZrjdp4Cbbsz5lr3KrBVNcjjX22BXr9bYRMuierq48hfezCTGuJD5edz6GIh
         2pNjK1PjNk3taCz5tOrkywwl/VS/AzYC4jxNYeyNBjBwiNv3VcO+qcBwXBlwgRWEUfUB
         OkUg==
X-Gm-Message-State: AOJu0Yxd8BRZ41F0VuyYJAWY04HGaBfYoNfBS5jkRg6UoW6ftYnv7SY7
	plKZmMnnl/GWM0zIMrfojWlaJp1rISmGo1BNL/NmKw==
X-Google-Smtp-Source: AGHT+IEipLFuUHaj03dCPa+NLWOhQ2iBypofZTx9FT231tcwWJ3nORz6xeMQ828d5I4aN/9HcL4F2UL/3nAKisR9Nto=
X-Received: by 2002:a25:bcc6:0:b0:d9a:4da4:b793 with SMTP id
 l6-20020a25bcc6000000b00d9a4da4b793mr16728922ybm.62.1697447429585; Mon, 16
 Oct 2023 02:10:29 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230929-topic-x13s_edpphy-v1-1-ce59f9eb4226@linaro.org>
 <CAA8EJprXCzVyaU49qgVcVfF0-FJ3QqAfTMZj5CEZm187hoi4=g@mail.gmail.com> <ZSz7---IW_7Oj2Zr@hovoldconsulting.com>
In-Reply-To: <ZSz7---IW_7Oj2Zr@hovoldconsulting.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 16 Oct 2023 12:10:18 +0300
Message-ID: <CAA8EJpr=HQOs8Ho_s_34y0-krCHwq3MThMkUzhOkPVdOSMQ62A@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sc8280xp-x13s: Use the correct DP PHY compatible
To: Johan Hovold <johan@kernel.org>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>, Andy Gross <agross@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Johan Hovold <johan+linaro@kernel.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, 16 Oct 2023 at 12:01, Johan Hovold <johan@kernel.org> wrote:
>
> On Mon, Oct 16, 2023 at 11:51:33AM +0300, Dmitry Baryshkov wrote:
> > On Fri, 29 Sept 2023 at 19:03, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
> > >
> > > The DP PHY needs different settings when an eDP display is used.
> > > Make sure these apply on the X13s.
> >
> > Could you please clarify, is it the same PHY type, just being
> > repurposed for eDP or is it a different PHY type?
>
> Same PHY, just different settings AFAIK.
>
> > If the former is the case (and the same PHY can be used for both DP
> > and eDP), it should carry the same compatible string and use software
> > mechanisms (e.g. phy_set_mode_ext()) to be programmed for the correct
> > operation mode.
>
> Possibly, but that's not how the current binding and implementation
> works:
>
>         6993c079cd58 ("dt-bindings: phy: qcom-edp: Add SC8280XP PHY compatibles")
>         2300d1cb24b3 ("phy: qcom: edp: Introduce support for DisplayPort")
>         3b7267dec445 ("phy: qcom: edp: Add SC8280XP eDP and DP PHYs")
>
>         https://lore.kernel.org/lkml/20220810040745.3582985-1-bjorn.andersson@linaro.org/
>
> And you'd still need to infer the mode from DT somehow.

If it is the same hardware block, it seems incorrect to have two
different compat entries. For example, for PCIe RC vs PCIe EP we
specify the PHY mode from the host controller driver.
I'd say, we need to fix the bindings for both DP/eDP controller and
the PHY.  See the `phy-mode` DT property for example.


-- 
With best wishes
Dmitry

