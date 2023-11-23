Return-Path: <devicetree+bounces-18377-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F3C127F6411
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 17:39:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8960AB20F86
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 16:39:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD447321A8;
	Thu, 23 Nov 2023 16:39:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vg6XzRyp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-xb2a.google.com (mail-yb1-xb2a.google.com [IPv6:2607:f8b0:4864:20::b2a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 105D2120
	for <devicetree@vger.kernel.org>; Thu, 23 Nov 2023 08:39:05 -0800 (PST)
Received: by mail-yb1-xb2a.google.com with SMTP id 3f1490d57ef6-db4422fff15so541418276.1
        for <devicetree@vger.kernel.org>; Thu, 23 Nov 2023 08:39:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700757544; x=1701362344; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ILiBl3fw2ItmQ6qveZxg3Js/iA8qtmzSnw1HvX8bqaw=;
        b=vg6XzRypjX5xFTrQJC5rhS1YGwLkhjI5wjutcbK507mwytE1SQeMe6HYWUhpkQakC0
         qzBGi/kO7vJ1b2tn7bMrJEFafZRWikYAK4E6CqHmYndjr8eVIa456Mbz9xitZdfkUaq0
         3PbZ7EJ0W5rSrfaEtO6L34V2KqvUD4LafDP/GKJvJcWdWJ0vCxlEbYCfjDhDF2Zs63mM
         j5CEApFfPNkirRoZDbgX3jCmM/8STFZi4AwIdr5hgbLUp8ir5Uj/EdCSYujuPYH5Nt96
         KkOkbvXz3bS/TAcCMeW1HY1ywvofzvMaKDUCpKVj1kXx0XdvHT91C/lPlNih2Di23HDW
         22IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700757544; x=1701362344;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ILiBl3fw2ItmQ6qveZxg3Js/iA8qtmzSnw1HvX8bqaw=;
        b=fO1qNIEK2vN+EL2+5v0y0dbZyZMO/Hw69TpctC2FQjcc+3Mu1GWKTiRs7UkydoXVvT
         DzCb8Y3hnlpv4gnkxrujQI7b6nl/s/TM2EZ5CE2eiRpNAJgpl9LepRp0tSPAVMsZ+Fsw
         WC/pfHXyJGa/5m8HtzfOpIzzUFIL7ouS8tblvkOqJX+bDiTA3OZCPeq/ZcVIF65bNjua
         YCel/DOkR4Iu1Xgga9JkAJbOhbQc9H8uTAcMcy0RWDS4OdiW5jQacH6HlT2tpR8wm32I
         hz3sWrbcNLMmqECewvgphp+sr4e2lr/Ig7rPV1ot1kt4ohkRFAF4KNWMANDyygqMnUgo
         WGLQ==
X-Gm-Message-State: AOJu0Yw7da/U+Zt3p+OFmrSz7MbvghHALixC/GZtQelVWvn3ougwUBJu
	GSUoGggX981OMHT/t2BfrM2aBj8Y0NCBxErsk7WO1w==
X-Google-Smtp-Source: AGHT+IHyEIVYlN4F4vyQBH9BTfFozPqgQ9H3YOtEeJFgrrYDbBBfTUFwzsGY/k+etU5uqbsqanAFeQTZObkfBoTvB+c=
X-Received: by 2002:a25:8188:0:b0:d9a:6669:68ce with SMTP id
 p8-20020a258188000000b00d9a666968cemr5853600ybk.32.1700757544266; Thu, 23 Nov
 2023 08:39:04 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231123-topic-amlogic-upstream-isp-pmdomain-v2-0-61f2fcf709e5@linaro.org>
 <20231123-topic-amlogic-upstream-isp-pmdomain-v2-1-61f2fcf709e5@linaro.org> <20dee547-8358-4af4-ba90-c5e9a7367c48@linaro.org>
In-Reply-To: <20dee547-8358-4af4-ba90-c5e9a7367c48@linaro.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 23 Nov 2023 17:38:27 +0100
Message-ID: <CAPDyKFqcq4F_HtCOomiZK+X1me8KK1i6y9mXjn-Bzg9COzS-aA@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: power: meson-g12a-power: document ISP
 power domain
To: neil.armstrong@linaro.org
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
	Daniel Scally <dan.scally@ideasonboard.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 23 Nov 2023 at 17:19, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>
> On 23/11/2023 17:17, Neil Armstrong wrote:
> > Add MIPI ISP power domain ID to the G12A Power domains bindings header
> >
> > Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> > ---
> >   include/dt-bindings/power/meson-g12a-power.h | 1 +
> >   1 file changed, 1 insertion(+)
> >
> > diff --git a/include/dt-bindings/power/meson-g12a-power.h b/include/dt-bindings/power/meson-g12a-power.h
> > index 44ec0c50e340..01fd0ac4dd08 100644
> > --- a/include/dt-bindings/power/meson-g12a-power.h
> > +++ b/include/dt-bindings/power/meson-g12a-power.h
> > @@ -10,5 +10,6 @@
> >   #define PWRC_G12A_VPU_ID            0
> >   #define PWRC_G12A_ETH_ID            1
> >   #define PWRC_G12A_NNA_ID            2
> > +#define PWRC_G12A_ISP_ID             3
> >
> >   #endif
> >
>
> I forgot:
> Reviewed-by: Daniel Scally <dan.scally@ideasonboard.com>
> Tested-by: Daniel Scally <dan.scally@ideasonboard.com>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
>
> If needed I can send a v4 with those added...

No problem, I will add the tags when applying.

Kind regards
Uffe

