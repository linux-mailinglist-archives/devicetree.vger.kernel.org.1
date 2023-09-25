Return-Path: <devicetree+bounces-3186-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B0277AD98E
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 15:51:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 364AD1C203A8
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 13:51:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32BF914A8A;
	Mon, 25 Sep 2023 13:51:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B00F210795
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 13:51:16 +0000 (UTC)
Received: from mail-yw1-x1133.google.com (mail-yw1-x1133.google.com [IPv6:2607:f8b0:4864:20::1133])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 229EE11D
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 06:51:15 -0700 (PDT)
Received: by mail-yw1-x1133.google.com with SMTP id 00721157ae682-59c00b5c8b2so77759217b3.1
        for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 06:51:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695649874; x=1696254674; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4bUGxBdoZWk95GXxSCfS15Sr8JU25TCNaLxBll4hkMI=;
        b=ptAt+gHHIn9LW28THWUmY57jeepiiKB86dhK5cmF8Vi8ZbTQMuxzpxbjoXh0449NO0
         Czyo9cG+/V2+HUgv5NKCwgmia/W8XiLqTJ+BwptGhUvMe0CR+fDRI4M3y8HujuJ01iSZ
         G0y9oavUVEZCwV0+nVvJC5gUhhMHfqjGnc+iz4uSb8ep1W/8JrlnE5WpilAca8x3jWCs
         eEjqw22TdSluv4znAPVpPiW7Pd6FxGU/GJic30ec/gzM41Z5pk/HcDfuGPfJcNBVd4hO
         xKSXZahSfiwGpLyeESXSQTv9JtIc9cJRT2abLJE9DvtIQnVpohv5ChY9PFdI7sSILp7C
         J2jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695649874; x=1696254674;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4bUGxBdoZWk95GXxSCfS15Sr8JU25TCNaLxBll4hkMI=;
        b=MpkuhzvXIcGGb57PDS8SmeTbilG6kfv09KslWfPw5cgzOtm/qTAAGnxOvC/x9zbJr6
         O4CIQTLUGNhp9YUOKFrepvIQ0IBFbuISzdZIxdOz81OoaVsFPbvSFbEJ+DmVQ2vbtSTO
         VDAgqdoUcLQtqv16Mx4MOBFvuioxyBlYKJh8I93WjWZ9VnDSOm/mzbZF8/DRmwUAIkVJ
         l3w8fW7k5NUse+fOoDo4SMR45QCqlUpxjuO7/tx66X2Na867YCEM3GnRQ/t1PEO5M5fo
         0J2psdiDzkgs97vcZGzbqQNhE9JcnlyqOTF6WzNgKGku84armue+eFgGkn2Mcg9JIk6N
         pLIA==
X-Gm-Message-State: AOJu0YwsKbgsJ6jcCPU3uOejFlxnOkmHMOckkSsh6Iko2io9ooWaniuK
	ANinKHq2vv2mttfNMpGjeQsb1uUPJUlwwo5bKxsY0Q==
X-Google-Smtp-Source: AGHT+IGq9PF+eLdL5exgxFzGnnWVmXtEx1HNmz2junPvjtsrRkl+q2gThKlLXAcV7rSLXfb0Ef3kqT5/OTf7L0j2rVE=
X-Received: by 2002:a05:690c:360d:b0:59c:682:78e5 with SMTP id
 ft13-20020a05690c360d00b0059c068278e5mr6471226ywb.18.1695649874286; Mon, 25
 Sep 2023 06:51:14 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230922094342.637251-1-huqiang.qin@amlogic.com>
In-Reply-To: <20230922094342.637251-1-huqiang.qin@amlogic.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 25 Sep 2023 15:51:03 +0200
Message-ID: <CACRpkdZ7UpF_U5OaVstJAOHc7_RVnnBT+daNm0FOgL7g3piCbQ@mail.gmail.com>
Subject: Re: [PATCH V3 0/3] Add pinctrl driver support for Amlogic T7 SoCs
To: Huqiang Qin <huqiang.qin@amlogic.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	neil.armstrong@linaro.org, khilman@baylibre.com, jbrunet@baylibre.com, 
	martin.blumenstingl@googlemail.com, brgl@bgdev.pl, andy@kernel.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Huqiang,

On Fri, Sep 22, 2023 at 11:43=E2=80=AFAM Huqiang Qin <huqiang.qin@amlogic.c=
om> wrote:

> Huqiang Qin (3):
>   dt-bindings: pinctrl: Add support for Amlogic T7 SoCs
>   pinctrl: Add driver support for Amlogic T7 SoCs

These two patches applied to the pinctrl tree!

>   arm64: dts: Add pinctrl node for Amlogic T7 SoCs

Please funnel this through the ARM SoC tree.
If you need dependencies, the SoC mainatiners can pull
in this immutable branch:
https://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-pinctrl.git/lo=
g/?h=3Dib-amlogic-t7

Yours,
Linus Walleij

