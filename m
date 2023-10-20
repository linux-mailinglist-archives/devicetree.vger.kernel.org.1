Return-Path: <devicetree+bounces-10358-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B2867D0E2C
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 13:11:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 156D628136F
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 11:11:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 454AD18B04;
	Fri, 20 Oct 2023 11:11:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="y4DMfBrj"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8F0218E00
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 11:11:35 +0000 (UTC)
Received: from mail-yw1-x112e.google.com (mail-yw1-x112e.google.com [IPv6:2607:f8b0:4864:20::112e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E1941AE
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 04:11:34 -0700 (PDT)
Received: by mail-yw1-x112e.google.com with SMTP id 00721157ae682-5a82c2eb50cso7223347b3.2
        for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 04:11:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697800293; x=1698405093; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=238BGF/tc90S5r9KIjhwqf0Ln5fMccNmQ3YyMRe3cHM=;
        b=y4DMfBrj1hvn174C5nx08iCxmQ+1IlNAv2L4kQOtHTQ4u3LhQ23gjms2AlAXDfuXcu
         savYhDfFU488UFg30aLuSGhS4y1aPl2JyGe3ZVvQMfsBiLq69erK7rVGlfi5cSdHtM2B
         nP29chVgg5KTL7Jaq6qeTCvPcD+At0/tr6AONXniu5MyZR5U9t6EwcEsOevJnjg11qsC
         uYNKgZ8ol5zjWmQg3px5BONDGgYe73avmxIf37H8cL9R2oD0AM0HYfAghlUyPFqabuXr
         y5DoNNVl9opOMSnxxifI5iLqvWztcBqBlHYx7oOHik+8SL+GtyT630rbxuVVxgMOzA2B
         6S+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697800293; x=1698405093;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=238BGF/tc90S5r9KIjhwqf0Ln5fMccNmQ3YyMRe3cHM=;
        b=omCRVX3mKsJ3Xwlb5lnwzmz0Akpq0NNEMBeoxCiBAGAOg945mUZDhbBvn5bB51n8wq
         QMYXO1rP4FWq5GCktAUaSbqfsqzh8va56nFY18N5GIDO5iAHGPWeByiMrxqifsNq2mMj
         zSM3Czsjd/1QkLAHEE3pLHLOb5JlmFHyddZ0ITB9scA4o7AM2j57sX8//5F8h+biRy0p
         TMioKcAb5u+09y9BCLe1bHrOlw46+lB7/9OF1+OpLNQEIwIMlmgzMYL9z3B2W4MODlxD
         st4T/yxHwNABvHjxg9xs/Os8SaPdHegGYx1VhPpy4DpHLg9Tgk7skS+38kbl71+32NBF
         sJ9g==
X-Gm-Message-State: AOJu0YxDI7o6QYjw3EMaruGSs2ZeHF5S76Ye7vTor8ElkCW1wB3NUIfQ
	gR59C0RruRAuO1DDxfwTwnCM97qd4CMK/63qE6LQUg==
X-Google-Smtp-Source: AGHT+IHrTRBukRUSX+tX4qVyHMfQ0ol4wLNSh8CW2fcwseZZ9etXJsyey59rz+FklqB+EOylNKE9GnrwX/uU3HCDcEE=
X-Received: by 2002:a25:acd4:0:b0:d9a:5f91:c615 with SMTP id
 x20-20020a25acd4000000b00d9a5f91c615mr1338698ybd.18.1697800293306; Fri, 20
 Oct 2023 04:11:33 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231013091844.804310-1-yangcong5@huaqin.corp-partner.google.com> <20231013091844.804310-2-yangcong5@huaqin.corp-partner.google.com>
In-Reply-To: <20231013091844.804310-2-yangcong5@huaqin.corp-partner.google.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 20 Oct 2023 13:11:21 +0200
Message-ID: <CACRpkdb93nGB=Owx9k6KepAVd_n=TgD5BHSZvuRv4+RGAs1CFw@mail.gmail.com>
Subject: Re: [v4 1/3] drm/panel: ili9882t: Break out as separate driver
To: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Cc: sam@ravnborg.org, neil.armstrong@linaro.org, daniel@ffwll.ch, 
	dianders@google.com, hsinyi@google.com, swboyd@chromium.org, 
	airlied@gmail.com, catalin.marinas@arm.com, will@kernel.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Douglas Anderson <dianders@chromium.org>
Content-Type: text/plain; charset="UTF-8"

Cong, Doug,

thanks for fixing this up, I'm very pleased with how it turned out.

Yours,
Linus Walleij

