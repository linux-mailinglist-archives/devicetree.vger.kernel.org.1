Return-Path: <devicetree+bounces-22750-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C657C808A2B
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 15:17:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 029BB1C20868
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 14:17:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DE8041234;
	Thu,  7 Dec 2023 14:17:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Hk6K+MZl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-x112a.google.com (mail-yw1-x112a.google.com [IPv6:2607:f8b0:4864:20::112a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DF0921991
	for <devicetree@vger.kernel.org>; Thu,  7 Dec 2023 06:17:22 -0800 (PST)
Received: by mail-yw1-x112a.google.com with SMTP id 00721157ae682-5d3644ca426so7873607b3.1
        for <devicetree@vger.kernel.org>; Thu, 07 Dec 2023 06:17:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701958642; x=1702563442; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=bsCcuGLo2J2I6ix+dXxn7SDWpUwAIlNPbaC4IivWIA8=;
        b=Hk6K+MZlCrBOJJDwgyumD2wg5DmNF82fqjyHW0SDGmzbrpjcmTPpeNyXN8UEL9dk6E
         naiq1grlAHhLSJvQlapEAxJojBDwtMLTjWcxCARqsVIlaTOPgNrlkReyzGG/37icBL8a
         EfJ+APQPxxTaNOBp6HgOWpe8ZSSVc6LOwla/8oHCb7Ayv6FBkNrgh7hrLBS1cA5Ircqv
         /bM5r1kztB9QQkaCG/yPkc8QjhAUSGd2PSE+scPTQlsarPjFlsK7wtwTCyAVAITRwBgS
         kRjsqgr8GMz6vpcjf5ynIV1lirq5/LwiggWcYgqwpRS/i6AcaEXOJz+jfBaP1YplDL3I
         XZBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701958642; x=1702563442;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bsCcuGLo2J2I6ix+dXxn7SDWpUwAIlNPbaC4IivWIA8=;
        b=EJ6UzvGrbYn7mX8E3zwqjCH61KHAI5NA/kqvaJykInKklL4V+iC+hlgoJNTQsQpt7g
         5JqRBLa9lpd57iAaYmLpLO4XV4+adNFoLLStphfHrPDJo3+b7yDxRFRT7aS8z09PaGBO
         rhnB/WaIx5dGXfjLzbOmITUcBzFoUh1e3Uz5UUJ6vw+7HS2wdB+O58jX85xFijMfem2x
         mmzdRt7sCXRA6XNRY4+bU3DaV1hjdUNU9p2Q0EvylPn7orvDzee7riAwn6cewGk8vUlz
         efTW16j1g6CbRavh1MDDuq7jRslI9xCahZOGqYwyUSu+xqh+szMoEQ+UFfAuFgrTnKrb
         GWpQ==
X-Gm-Message-State: AOJu0YwhMWxghDvV5XYfqgHsiqudgLGt7EJh13QDgAkHe+NiXir1Hw7i
	4wX7M2wFcIP26w2nG1FFEkjOTBncpcvaZgPMiQwmrA==
X-Google-Smtp-Source: AGHT+IEBRQ4AL/XFd1LTfykGK68U5ukkx7PsrewbOYUyuvwi8DZONr9x4L/XICW9RDrsS4gnNobATSOqQIlk4jIDe8A=
X-Received: by 2002:a05:690c:c0d:b0:59d:d85e:795d with SMTP id
 cl13-20020a05690c0c0d00b0059dd85e795dmr2665100ywb.51.1701958641855; Thu, 07
 Dec 2023 06:17:21 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231207063535.29546-1-axe.yang@mediatek.com>
In-Reply-To: <20231207063535.29546-1-axe.yang@mediatek.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 7 Dec 2023 15:16:46 +0100
Message-ID: <CAPDyKFoFexzhQ59O-v1X_QjgztYZbHfQtKqGKsHsnmU6Bf75YQ@mail.gmail.com>
Subject: Re: [PATCH v4 0/2] mmc: mediatek: add support for 64-steps tuning
To: Axe Yang <axe.yang@mediatek.com>
Cc: Chaotian Jing <chaotian.jing@mediatek.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Wenbin Mei <wenbin.mei@mediatek.com>, linux-mmc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	Project_Global_Chrome_Upstream_Group@mediatek.com
Content-Type: text/plain; charset="UTF-8"

On Thu, 7 Dec 2023 at 07:35, Axe Yang <axe.yang@mediatek.com> wrote:
>
> Change in v4:
> - for SD/SDIO, tune 64 steps by default
> - reduce some breaks to improve code readability
>
> Change in v3:
> - use BIT_ULL() instead of BIT() to avoid potential left shift operations
>   that could cause exceed boundary problem on 32-bit platforms
>
> Change in v2:
> - move the change made to document to the front
> - change mediatek,tune-step dts property type to enum for better scalability
>
> Axe Yang (2):
>   dt-bindings: mmc: mtk-sd: add tuning steps related property
>   mmc: mediatek: extend number of tuning steps
>
>  .../devicetree/bindings/mmc/mtk-sd.yaml       |   9 +
>  drivers/mmc/host/mtk-sd.c                     | 158 ++++++++++++------
>  2 files changed, 119 insertions(+), 48 deletions(-)
>

Applied for next, thanks!

Kind regards
Uffe

