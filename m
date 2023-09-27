Return-Path: <devicetree+bounces-3709-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 46D957AFECF
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 10:43:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id ED2202837B7
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 08:43:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0374C14A8F;
	Wed, 27 Sep 2023 08:43:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3FF9F4E3
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 08:43:13 +0000 (UTC)
Received: from mail-yw1-x1130.google.com (mail-yw1-x1130.google.com [IPv6:2607:f8b0:4864:20::1130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8846CC
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 01:43:11 -0700 (PDT)
Received: by mail-yw1-x1130.google.com with SMTP id 00721157ae682-59bc956b029so130848187b3.2
        for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 01:43:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695804191; x=1696408991; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tbZf2fFA2FQ5qrsMA6J+4jlQPmdMuMWJbNxXkcx0woQ=;
        b=ttxs85YMPPlc891Jam9KQgtHLayUWR9Y8PTt9jjRiyfrzIc3ou/w/TM2pwe3w+c6Zy
         BRfu3Qhap3uw/i7IISn6kNQoO54OXPyiouk248Dhb2zqRz3FzK6c4V6f+jiX22I/14ep
         os1MxLf9tYs2kbEwNIjiTD9gfSnvR5lP/xwPRL3+KuIAshXxqH95yJqKYoH2hJhPgCIx
         w6V+XoYbzGnw3hM5Do+NT8eOZV+wRO7lKHEHXv3GJyB3/bgm/PBtjO83XieBntqGBGgJ
         HwYUNxqL6XRLx+n60pRXrYk+qiVxlS+Md1t5U56Np5VzCZVIbyvxU+FjP3YmDgzNGi7+
         Dgtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695804191; x=1696408991;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tbZf2fFA2FQ5qrsMA6J+4jlQPmdMuMWJbNxXkcx0woQ=;
        b=Msqy8I50kcMYwDqkES0Se97+7i8KSV7OnfGzshilK1gQyp3Ptja5riuszQ4OGDjHON
         1dq7ymHDFmOgcV7LD+XDSN76vuCcPDzRPXHJ+NO7xEn3sjeuW67EC3XwOp5TeCAFzotq
         JsRZHW6yt5VfjjC/lQYi1mRIlDQPU1XPof/ED3ERUlDF9LkthwS7yVoqqZyZ0FF+QuFu
         PomNDgY54slTmXFiLfDDteq61WYnVv0NVpTMg6VLRYZKJ6uAlH4NmkvJWA3IwE5R2avy
         JlCC1lQeDMgFdEb9AGMLNS62//rVi0xqrANAFHaL25VlhTAVGkdAQ6MnZ5+VK2ZNT0UT
         DohA==
X-Gm-Message-State: AOJu0YyENkEJdWpLsw6qyufxainEwv81kIKVJ+PTT8oGPVSKDfZXx+WI
	V8BAjjT13sWXBtOyEdccE5pQQYEJsB2kK2YQ1JEnXg==
X-Google-Smtp-Source: AGHT+IGARZ/ws1fRu2Yb4a4UQx44nHbRJFszxMdFAdC60oItaObm/kXlaW74QXdyzbXLViFp8x3ekZb9MDLlCcs2TJI=
X-Received: by 2002:a81:5d87:0:b0:59b:cff1:a8eb with SMTP id
 r129-20020a815d87000000b0059bcff1a8ebmr1698986ywb.34.1695804191087; Wed, 27
 Sep 2023 01:43:11 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230922-msm8226-i2c6-v2-0-3fb55c47a084@z3ntu.xyz>
In-Reply-To: <20230922-msm8226-i2c6-v2-0-3fb55c47a084@z3ntu.xyz>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 27 Sep 2023 10:43:00 +0200
Message-ID: <CACRpkdZHjsm8HLg9B1KYHnhstcjwd18r0bE5GF0_Z4EqcuAWWA@mail.gmail.com>
Subject: Re: [PATCH v2 0/3] Add blsp1_i2c6 and blsp1_uart2 to MSM8226 SoC
To: Luca Weiss <luca@z3ntu.xyz>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
	Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Fri, Sep 22, 2023 at 6:56=E2=80=AFPM Luca Weiss <luca@z3ntu.xyz> wrote:

> Add the I2C bus and UART interface found on the MSM8226. For the I2C bus
> we also first need to add the pinctrl function in the driver.
>
> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>

v2 looks fine and ACKs in place, so patches applied!

Yours,
Linus Walleij

