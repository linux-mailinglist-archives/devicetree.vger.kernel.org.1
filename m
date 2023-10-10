Return-Path: <devicetree+bounces-7193-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B6B397BFA68
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 13:54:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EA0691C20B3C
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 11:54:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA28A19445;
	Tue, 10 Oct 2023 11:54:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="a3VQbTEn"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 194D115AE8
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 11:54:10 +0000 (UTC)
Received: from mail-yw1-x112b.google.com (mail-yw1-x112b.google.com [IPv6:2607:f8b0:4864:20::112b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D46499
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 04:54:09 -0700 (PDT)
Received: by mail-yw1-x112b.google.com with SMTP id 00721157ae682-5a7b91faf40so11672947b3.1
        for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 04:54:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696938848; x=1697543648; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uDIZK2JgNL/4fmh5x4TEGivcbBKztGUQajvuvg54oRA=;
        b=a3VQbTEnJC+7cQjfm4S3VJSjObAz82XvDeqHRINZQaneF6XoXRHsb485kTU/hN14ri
         b7ZvpsrLHqs76+NuIoB4aCxDTmv7Vg1eJWgNYdGRfkt0QeUAOrkEOOzB/NfYa6U1EdTt
         nEDluPz5zLj49F6p3MHDvgXNJ7v55epocWrexgwapHRfsybvUuJ2WlioqQWUE0IFGRaN
         4rBR8KBrZeNW/3jXVOAxYrbiBLpmuAD180mNTaD4cFkxMgRjvsRuc/3/XhV4z364mZ+D
         aGiGOWji/s+PTsq7YTgphaNt8nhik0om5nq6PACZ7pGkAJb0VNZh2I7Fk2iu56GoWI7o
         dIcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696938848; x=1697543648;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uDIZK2JgNL/4fmh5x4TEGivcbBKztGUQajvuvg54oRA=;
        b=jUUBw8oJucmFH2AiE6622mxyd1I1i4daQ9HRXHJAr457iIGKwd/X0mRvIx19/HrRjE
         P6K8dkl1nSMWDhuE+34Ap+UPTQO+HQgg2alh2y9LlYZyWLhwtSe2pwS4vgVel1/IXprk
         L+naRxuUiCHybNNA8s8lS2yR0JmlZ13OPjsVTeIvmQNSRKp6i7GNhYyY/DYoJ2CrAOIg
         WFVY8M0EPVE6qcvB11ULLIGtcGxtozdK+ixJZDVNh62qFqYfZxD9A+zFXGNFbVMVe2RC
         QQk7tU7qkPLABxvtaPfv0NK/EoUPT34jPeoNQXpMbjsYDYSUmB0PYPnaZkUmk6Huxg8f
         rgWw==
X-Gm-Message-State: AOJu0YwiYUDW2z8iRLKh04KWgkytCFaTblAjIe3p4zcAQ+gTif8QYGMd
	nRBrN1WY2/pNIDd3+bEVPnVEazrpW2mqI7Jk9j8G3Q==
X-Google-Smtp-Source: AGHT+IGJLeCEgyssCwkr1IRA6nE/61tJtIYUAQpXlv6Sm1fP8byIFDZgaogCvc1s1fl7Wj6hcZI7Vh16BAo3bPi/WUA=
X-Received: by 2002:a25:a344:0:b0:d78:f32:5849 with SMTP id
 d62-20020a25a344000000b00d780f325849mr15719479ybi.24.1696938848554; Tue, 10
 Oct 2023 04:54:08 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231005025843.508689-1-takahiro.akashi@linaro.org> <20231005025843.508689-2-takahiro.akashi@linaro.org>
In-Reply-To: <20231005025843.508689-2-takahiro.akashi@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 10 Oct 2023 13:53:57 +0200
Message-ID: <CACRpkdYQefGqb3UUyoK6sf6FRUH0m_2xLDzUKO7rQ6dXyeGTww@mail.gmail.com>
Subject: Re: [RFC v2 1/5] pinctrl: define PIN_CONFIG_INPUT
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
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Thu, Oct 5, 2023 at 4:59=E2=80=AFAM AKASHI Takahiro
<takahiro.akashi@linaro.org> wrote:

> This configuration is intended to be used to allow a pin controller based
> GPIO driver to obtain a value at a gpio input pin.
>
> Signed-off-by: AKASHI Takahiro <takahiro.akashi@linaro.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

