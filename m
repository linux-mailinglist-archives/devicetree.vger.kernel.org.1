Return-Path: <devicetree+bounces-1725-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E53B7A7A1D
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 13:10:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 38284281A74
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 11:10:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3B0B16438;
	Wed, 20 Sep 2023 11:10:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A05D08465
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 11:09:59 +0000 (UTC)
Received: from mail-yw1-x1136.google.com (mail-yw1-x1136.google.com [IPv6:2607:f8b0:4864:20::1136])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5DBD6B4
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 04:09:57 -0700 (PDT)
Received: by mail-yw1-x1136.google.com with SMTP id 00721157ae682-59ed7094255so16287757b3.3
        for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 04:09:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695208196; x=1695812996; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZOJ/BJ2l2WZd3GigDvvKxccID8awaxn2aoWl6IQWUfU=;
        b=u+khXbP+lDfk7IFsUe8xUzx7l+UTa2cVYhph1pwZzdQTKbDLdG1BgkNsUWf/y6GLO2
         HgArdlGPFp/cZ+kJTwjkTQ8IOGB4AVHRHw8foqsBOyw6hRCYFaK3hagrlrL8aebmr2zy
         BIoh2kHw96sErPqRW1Mq1RCG78Q23RP601GqAims4GrpE0+m0QQe07EkKL45uanO5FPW
         o7CfJSA9NnFP7xVgiGxAnCAHktGZTwa0nZcVxT4i/ZSQpgIxuc2vI71kuErSolFM090f
         0D6GvAbGb6DUfUXSH80dyU4P7IEj87ubaFRdDGBryL/axWbPlmtItSLmjOLfKnj+22ry
         UwDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695208196; x=1695812996;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZOJ/BJ2l2WZd3GigDvvKxccID8awaxn2aoWl6IQWUfU=;
        b=nDnWAIZPuDSKW0mcRKi5i26Qk7cPqwQg2DNIKwnwJgKtCBIhOs2UQPXEuxhXNrbCNR
         PPFdKLCrzIDiBPQYdp0lBbMsU2NLFfJX5g3WTo/+3aowCmLVdRiV1mvOvyxe+gkexm7h
         wl6J4YdYoJbg8+sfmMppLjkxj2Cv06eDCwCyJucAJ7XZrNNyagleu19Gf4zZaJaMOt3p
         1BBITctL2qct6voJNaBeAoYLDHzFvwd5h1Qv4WMrZdX/w2ZeNezYCcJdyqkS7jTSoPwA
         Q1ZhCD5i3AexbdLCUbUemXt3ghzdhEJn2F9lP190WZgpSEgq35lQuL2WsdQCgIU3W3gm
         cQHQ==
X-Gm-Message-State: AOJu0YyI8RvN2oKM0wQzpTAyhWQJX+43WKXjumepapCbh09jMd6EJ7Uz
	KUoBbznYZetOfMLjyBXvo3z52ThZwLXuS35oDNjtUA==
X-Google-Smtp-Source: AGHT+IFhD3MUXYEzKxwtcQYWepb7sIaD75bCX88GQFGfrl1Lyt5ccFyOLbZ04EVfWGqQdYmL/4KLXdgi4IDi3ZH1xMs=
X-Received: by 2002:a81:6542:0:b0:58c:4ec6:f21e with SMTP id
 z63-20020a816542000000b0058c4ec6f21emr2259029ywb.23.1695208196594; Wed, 20
 Sep 2023 04:09:56 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230919101117.4097-1-tychang@realtek.com> <CACRpkdYtGhhNuBnP0MvMKiqP=wPsv=5K_ZBaWcgW3sssLrm2aQ@mail.gmail.com>
In-Reply-To: <CACRpkdYtGhhNuBnP0MvMKiqP=wPsv=5K_ZBaWcgW3sssLrm2aQ@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 20 Sep 2023 13:09:45 +0200
Message-ID: <CACRpkda_EVEOP=LCjiBcSgPY7-mU9ENiOcw5taskL7TcwkMkCw@mail.gmail.com>
Subject: Re: [PATCH v3 0/7] Add pinctrl driver support for Realtek DHC SoCs
To: Tzuyi Chang <tychang@realtek.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Wed, Sep 20, 2023 at 1:08=E2=80=AFPM Linus Walleij <linus.walleij@linaro=
.org> wrote:

> All patches look good, bindings are reviewed by Rob, my comments
> addressed: patches applied for kernel v6.6!

Sorry, kernel v6.7 at this point obviously. I can't keep numbers
in my head properly :/

Yours,
Linus Walleij

