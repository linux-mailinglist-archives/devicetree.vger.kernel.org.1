Return-Path: <devicetree+bounces-5691-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DF787B7839
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 08:54:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 00814281447
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 06:54:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78D22613C;
	Wed,  4 Oct 2023 06:54:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40FD0610E
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 06:54:41 +0000 (UTC)
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com [IPv6:2607:f8b0:4864:20::432])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D0130BF
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 23:54:39 -0700 (PDT)
Received: by mail-pf1-x432.google.com with SMTP id d2e1a72fcca58-690fe1d9ba1so363860b3a.0
        for <devicetree@vger.kernel.org>; Tue, 03 Oct 2023 23:54:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696402479; x=1697007279; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6YbF45exUihM3V8J++Yr9N+b7S0JorXYJc7FhvfdAn8=;
        b=AmDVBf/H8f8WKjyGbYytQvbe+rQ6zHNCMm5GWG3fXJPZkRZgFEjGvzupjU/7oU25JO
         rSho2wrUtFNZb4COW18b4FzArv1oYz+UoPKmTgKXcQ78oNeoSlIQ4BkkzHRsN0qSWQom
         t8sjWgiCgcY8/qS9FJfeA3y1+qRTJLJX7Ioq7oOp9X87u4gd906PXWd9WJwkXmxMPLIm
         vk43XxftF82lIvqkXTui+/M5uQb9X9K16DBO18m8XlnbUDc67Uc31SRmg8pd9XI5P1Fz
         K5t6kHu0IsbmOyvAsUQEVyYtfH6XntMNQEanqzDoCAnfqalOQ9pmHF13NpViLhMvqIdg
         cwQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696402479; x=1697007279;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6YbF45exUihM3V8J++Yr9N+b7S0JorXYJc7FhvfdAn8=;
        b=DsbTYMH0TPzElxYKGKSdWgvq62TdhVj29l8VCfbNDNC/XdfckIfn9wxz+zGJ/EsyIO
         qr0FL1/N9Nyc0H7pMpYhl5lAHeRBeCkdctHbm2Va/8atndRRoV0UmUa50v0rWLw7/fcl
         Jht+i9DhirMlxo5a61MBB10kua8CtOAppwkPlb3rj+RfxKQMMree8hkWcDVAzxSfWcKE
         jmaz1bWQGg2dpnDDA5PS+S/7UbfhXMqj+A+q27BjT3DmyvCLN5WsrOFXbPO6R01WUHKQ
         2Ddj5BPXuZIAMEg61gzQdeSMS4gGG+N1GgF5o5C61iJvP3mtnruPZjKy8sILmBjyKiMG
         yslg==
X-Gm-Message-State: AOJu0YwnqMvli2H59rbQKrNLerBGERKGQfcxhqvWKwvLxQ+cwwR694Vp
	XNwtFBjRtKto3XPn9eeNpwrusQ==
X-Google-Smtp-Source: AGHT+IEDXNokAKn8nzCNvCbNOIUSolppsI+K2w+sGFIw9BHV5d5Ibkooq38MxAM5oAiTWM73Hlc0Tw==
X-Received: by 2002:a17:903:244d:b0:1c5:cd01:d846 with SMTP id l13-20020a170903244d00b001c5cd01d846mr1709840pls.3.1696402479192;
        Tue, 03 Oct 2023 23:54:39 -0700 (PDT)
Received: from octopus ([2400:4050:c3e1:100:81c4:ac5:bfc9:67a3])
        by smtp.gmail.com with ESMTPSA id y5-20020a1709029b8500b001b54d064a4bsm2815058plp.259.2023.10.03.23.54.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Oct 2023 23:54:38 -0700 (PDT)
Date: Wed, 4 Oct 2023 15:54:33 +0900
From: AKASHI Takahiro <takahiro.akashi@linaro.org>
To: Linus Walleij <linus.walleij@linaro.org>
Cc: sudeep.holla@arm.com, cristian.marussi@arm.com, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	Oleksii_Moisieiev@epam.com, linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org
Subject: Re: [RFC 1/4] pinctrl: define PIN_CONFIG_INPUT
Message-ID: <ZR0MKfr+xPT1Nyg8@octopus>
Mail-Followup-To: AKASHI Takahiro <takahiro.akashi@linaro.org>,
	Linus Walleij <linus.walleij@linaro.org>, sudeep.holla@arm.com,
	cristian.marussi@arm.com, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	Oleksii_Moisieiev@epam.com, linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org
References: <20231002021602.260100-1-takahiro.akashi@linaro.org>
 <20231002021602.260100-2-takahiro.akashi@linaro.org>
 <CACRpkdZsQN5V0Nt46dQmUiQo-co81Z_TrzWW_9CPJEbF+X-vnw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CACRpkdZsQN5V0Nt46dQmUiQo-co81Z_TrzWW_9CPJEbF+X-vnw@mail.gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, Oct 03, 2023 at 10:49:10PM +0200, Linus Walleij wrote:
> Hi Takahiro,
> 
> On Mon, Oct 2, 2023 at 4:17???AM AKASHI Takahiro
> <takahiro.akashi@linaro.org> wrote:
> 
> > This allows for enabling SCMI pinctrl based GPIO driver to obtain
> > an input gpio pin.
> >
> > Signed-off-by: AKASHI Takahiro <takahiro.akashi@linaro.org>
> (...)
> > + * @PIN_CONFIG_INPUT: This will obtain a value on an input pin. The returned
> > + *     argument indicates the value.
> 
> We need to specify that this is the inverse of @PIN_CONFIG_OUTPUT,
> that setting a line into *input mode* requires the use of
> @PIN_CONFIG_INPUT_ENABLE, so the config can never be set
> but should return an error on set, and that the argument returned is 1 for
> logic high and 0 for logic low.

I will add more as you suggest.

-Takahiro Akashi


> Otherwise I think this is fine!
> 
> Yours,
> Linus Walleij

