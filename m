Return-Path: <devicetree+bounces-7150-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E233E7BF6CC
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 11:06:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9C983281429
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 09:06:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D288616401;
	Tue, 10 Oct 2023 09:06:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nrfdbGBF"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EE326120
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 09:06:43 +0000 (UTC)
Received: from mail-yw1-x112b.google.com (mail-yw1-x112b.google.com [IPv6:2607:f8b0:4864:20::112b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6ADB115
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 02:06:30 -0700 (PDT)
Received: by mail-yw1-x112b.google.com with SMTP id 00721157ae682-5a7bbcc099fso7736867b3.3
        for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 02:06:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696928790; x=1697533590; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fQlK5iZ1kMr7qlK2HcfibQa/huVAuMoMy3NGT8PTdgA=;
        b=nrfdbGBF691pPbC65Jvl7Omxzcr4BmueAGhbLpRgAeqHhtOtl+nt0+JFWGYnUeYS/v
         fG+lNOzUTERUMWlnzUjluSomckfL7AptYBRCASGqAHpe82//ulC/NpwrwnIoUMl0TApY
         8PfxFp/5Fr4hr6q3JhivWPTo/7ICz65pKwYsvvaemEG1G5nHGDOeuHoBS3RVHPkbZCBF
         bMNPQQP5RTDZs+kFCIn+DLWKimvSZjK+Qo3qqVJONQPvp48uKO3XJe7SED/KZE49s4wV
         /kyMkfQC6aga8npPUNy3RFppSfED8TMN6B0dtX12mHXmPiUaRoCHq/wwF5yM4OkPVLDp
         6g9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696928790; x=1697533590;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fQlK5iZ1kMr7qlK2HcfibQa/huVAuMoMy3NGT8PTdgA=;
        b=XVmOMpu32ooRd4QK4nAa5OFBWEYqdUXXodeNaix+Tslq6Mi2Wryy1aMMXGXGrje3AG
         ggjz3Q7mNcRgf2vCdRLtso9jk+8y5PfkPvmviP9hCTJvHJtDi3ROZcnzhMpERPNBfN2s
         i6XzQlPI0ulDpClxiMslm331Gza2tsxFFdINL5DQeNoszQ98/91hVlB27bUfCzV7ywga
         T7ny/KNJngHxKPqCwHSOqn8/3xBIRTBu4UUMBUonTV6aFE8RWHkrg5qV1pD7XQAnTGQ3
         Vl1tTuP2P0ZISpVNlYSVlXx0iyC5JwBBxoYCuwJR9IfR+BK8f7iu2YqlCyLx8eD0xdIj
         jr9A==
X-Gm-Message-State: AOJu0YzK3DPXM2o0Mxx4iFy9qH/9khH0G4+q7nFc64dJ0WGKGCIcqTjh
	i/UqqyttBsyYWrr6/320TcC8BzHQMY2lhNlEgtY9Zg==
X-Google-Smtp-Source: AGHT+IFFagfhuvrfar9pmA2I63nvMiiFkHTxpgGfOkcjEoSJ8S4dR5V05Zzl29TrGIlCqSNCIsh8speF4Dt9VsRhC2U=
X-Received: by 2002:a81:9149:0:b0:5a7:b8d4:60e1 with SMTP id
 i70-20020a819149000000b005a7b8d460e1mr2276265ywg.9.1696928789974; Tue, 10 Oct
 2023 02:06:29 -0700 (PDT)
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
 <20231010100002.0163d681@jic23-huawei>
In-Reply-To: <20231010100002.0163d681@jic23-huawei>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 10 Oct 2023 11:06:18 +0200
Message-ID: <CACRpkdY+K90mN1Q1tf38FLRgEsz3q8dK9SJYSQVwGe=PL3FaUQ@mail.gmail.com>
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

On Tue, Oct 10, 2023 at 10:59=E2=80=AFAM Jonathan Cameron <jic23@kernel.org=
> wrote:
> Jagath Jog J <jagathjog1996@gmail.com> wrote:

> > Regarding your earlier suggestion to have two different controls for
> > drive-open-drain, do I need to define sensor-specific drive controls
> > in bindings for both interrupt pins?
> > for ex: bosch,irq{1,2}-open-drain
>
> Hmm. We do have precedence for a single control e.g.
> nxp,fxls8962af.yaml as drive-open-drain.  So perhaps just go with that
> and if anyone is needs different values we can figure it out later.
> pin control (which is where that binding item comes from) seems to have
> examples doing much the same.  Sets of pins with a single drive-open-drai=
n
> entry.
>
> Linus, any comments on this as you've dealt with far more similar cases
> than me!

Also st,st-sensors use drive-open-drain.

And that in turn is used because the pin control subsystem use that
exact property. (See
Documentation/devicetree/bindings/pinctrl/pincfg-node.yaml)

So use that.

(I'm so happy to be able to provide a definitive answer for once!)

Yours,
Linus Walleij

