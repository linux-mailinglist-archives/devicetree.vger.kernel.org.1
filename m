Return-Path: <devicetree+bounces-3714-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AE0CC7AFF2A
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 10:58:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 607FB281645
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 08:58:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4A051D6BF;
	Wed, 27 Sep 2023 08:58:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8725913ADF
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 08:58:08 +0000 (UTC)
Received: from mail-yw1-x112f.google.com (mail-yw1-x112f.google.com [IPv6:2607:f8b0:4864:20::112f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2274BBF
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 01:58:07 -0700 (PDT)
Received: by mail-yw1-x112f.google.com with SMTP id 00721157ae682-59f57ad6126so91283807b3.3
        for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 01:58:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695805086; x=1696409886; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y4Qt7MPKUZBp7gXinhRZHu894kl5p4OlGl8pyoVCVvw=;
        b=PSQCUa4zSz9zdkYl+3UDVCmwQISAkb+w8sFU5aKVoEc0sgMZtODT1kw4VrXFOSyRth
         85Uun9MjT09IcWH7298B4sNWtKrSEz0q55baMLNFaiY8oTVXFdBJxXFxxDN4dqFYoCEt
         ALpyUbtTBXiG7oHVaXk+M3J8vZyCyPH2iathfT4drvfQzCDpWcHC5QB9Xte9jsvj3D69
         qS+9WRZEmJbFG8Q+nd+RdQgUAO4npr6cuL3f+GRVmbo9S1kYQwLdGLkpe/egOpD+JJ0E
         KfOw/wBhENPbSk6DM4DEV6kpnxmkFL1DYcdiaLcKP3xgnlNHPZbF1Jtd63dYgXn8o+1i
         fiJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695805086; x=1696409886;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=y4Qt7MPKUZBp7gXinhRZHu894kl5p4OlGl8pyoVCVvw=;
        b=jZ/c0J/IXqR4oFjmeNQb8vsfOleqbx0hrll/vDoT8EKCECfzuwaknR7ns5nFxYWy+n
         XZ6mNAOI1qyCvJbTXKHKqcTth+ljHTGWZAHTOM3vGlucLs2e9GP+Dxo+Tm6OmER46aI4
         a2EmDpITZ7BSKZ+LlwCaX4wfZVnbn2teZnPDRSGEaBKLU65PHN39n+dbHGaBZG7Mby+6
         43Zn6HfVZDhHzB4csXRhkGgyYzTSD3JzWsn29IVjI1mhHGxr4jFbDp9O9BwLLuq1KFxt
         ML+cuZI+FZ5yTITzQxiPLXEFtRM+5XMbVAzC2LtjOLf8cpw8ktcGpcUyNs/9hkcQJeZd
         r8FA==
X-Gm-Message-State: AOJu0Yz7ctqhKs6WeONNnByC5vJle+mBfRZM9Vooxl3OAzrCMbqG+6tk
	wjI8VlABvXpvhe42COteH8v02xUdKKdwe7FrNG4Nag==
X-Google-Smtp-Source: AGHT+IEUmKO2BsqC37PrNycNqioSf/28nUrv3FZyiL1k0/yaHaLFkmQkRcbVXqDppaKLaYKSl/j7y7Gt5sdoNpGrogI=
X-Received: by 2002:a81:48d8:0:b0:59f:6212:e170 with SMTP id
 v207-20020a8148d8000000b0059f6212e170mr1641107ywa.10.1695805086311; Wed, 27
 Sep 2023 01:58:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230919-fp5-initial-v2-0-14bb7cedadf5@fairphone.com> <20230919-fp5-initial-v2-5-14bb7cedadf5@fairphone.com>
In-Reply-To: <20230919-fp5-initial-v2-5-14bb7cedadf5@fairphone.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 27 Sep 2023 10:57:55 +0200
Message-ID: <CACRpkdap7ZC=KokB4ysgvDVPRYP0ns3Dqz6p4d6cQqGmWWX2EQ@mail.gmail.com>
Subject: Re: [PATCH v2 5/7] dt-bindings: pinctrl: qcom,sc7280: Allow gpio-reserved-ranges
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: cros-qcom-dts-watchers@chromium.org, Andy Gross <agross@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Viresh Kumar <viresh.kumar@linaro.org>, ~postmarketos/upstreaming@lists.sr.ht, 
	phone-devel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org, linux-pm@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, Sep 19, 2023 at 2:46=E2=80=AFPM Luca Weiss <luca.weiss@fairphone.co=
m> wrote:

> Allow the gpio-reserved-ranges property on SC7280 TLMM.
>
> Acked-by: Linus Walleij <linus.walleij@linaro.org>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>

This patch 5/7 applied to the pinctrl tree!

Yours,
Linus Walleij

