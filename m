Return-Path: <devicetree+bounces-14233-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C15917E2F46
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 22:53:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F1E421C20432
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 21:53:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF3702EAEE;
	Mon,  6 Nov 2023 21:53:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Y4LFiymO"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B87705247
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 21:53:10 +0000 (UTC)
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EAFFFD73
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 13:53:08 -0800 (PST)
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-2c4fdf94666so66078481fa.2
        for <devicetree@vger.kernel.org>; Mon, 06 Nov 2023 13:53:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1699307587; x=1699912387; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7HkpT9CEuO4oeNZA+gSVgeEf0FhGOZvNqxNd+YET8As=;
        b=Y4LFiymOWRC2pu3q2VSajhW0uMEzKAIBDRJ2iDwBT/HkuZtKfOZs0r4RiaaldqQCNu
         o38LrxcMxL4w54KJ70mFQCgq71IZLpYHRShs0RbYEYlmrA8d9ybUHKUBgk1eMhBssPpW
         zaxEW6ijxLPNjFAIEHesjqSXq6WKSsa+TsnpM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699307587; x=1699912387;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7HkpT9CEuO4oeNZA+gSVgeEf0FhGOZvNqxNd+YET8As=;
        b=km5HFaBZQvuiKwjPzTV93EEZ8pZOts8jK7nNo06bfE3Tkxi8S60eO7SCbTkW3eIFFK
         g32cmWFqdv/VqDNJy8gpouU6OFy5iM2jk9sxreFYhhwfxRKT9k2P4S9okOxmQKiM0V8S
         R/CskOM0TkrDtQONwmAqufrJjmSJ43c5A4lZv2E48XED+SZz/XzChv3yyrC/lVvTuP7r
         OYUSLlz2QztRHx/yDhQqanDXAOe7o+/xY5g/wbQOAVl2ryk5Jwu+KW9P0sDu+SmG9kQI
         HNMto0piNaywe6gHdZLi4tk1gqD3GevRa0qIumh10tfZpSEvtAOwNC+jrfvgPuL1tlh+
         m9RA==
X-Gm-Message-State: AOJu0YzCATmmg/YL9YudZptTXddlz82e2WkGepfU8Wn6zuIY/icJJzfn
	GupNyuYm7hGr8P0k62XFjhDeex6uiYkM4PrWt+7rjA==
X-Google-Smtp-Source: AGHT+IGEYZHpN00c0KgUsD5iQRhHvicn/ICGk0KN/ggpV7HrCoK86ByDRWhJrLAgBNTSz+IcwgxmJBHJeL02KHkN+M8=
X-Received: by 2002:a2e:9bd8:0:b0:2c0:1bf9:3c94 with SMTP id
 w24-20020a2e9bd8000000b002c01bf93c94mr22279646ljj.50.1699307587215; Mon, 06
 Nov 2023 13:53:07 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 6 Nov 2023 13:53:06 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <20231103163434.9.Ie30c1d3f780666f6906fd2fd7c437632c229d987@changeid>
References: <20231103163434.1.Ic7577567baff921347d423b722de8b857602efb1@changeid>
 <20231103163434.9.Ie30c1d3f780666f6906fd2fd7c437632c229d987@changeid>
From: Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date: Mon, 6 Nov 2023 13:53:06 -0800
Message-ID: <CAE-0n50cJZO3945tuLg+KrraBdp6zSzfnhSNpjju-ZPsBrooKQ@mail.gmail.com>
Subject: Re: [PATCH 9/9] dt-bindings: watchdog: qcom-wdt: Make the interrupt
 example edge triggered
To: Bjorn Andersson <andersson@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Douglas Anderson <dianders@chromium.org>, Guenter Roeck <linux@roeck-us.net>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-watchdog@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	Rob Herring <robh+dt@kernel.org>, Wim Van Sebroeck <wim@linux-watchdog.org>, 
	Andy Gross <agross@kernel.org>, Sai Prakash Ranjan <quic_saipraka@quicinc.com>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Quoting Douglas Anderson (2023-11-03 16:34:35)
> As described in the patch ("arm64: dts: qcom: sc7180: Make watchdog
> bark interrupt edge triggered"), the Qualcomm watchdog timer's bark
> interrupt should be configured as edge triggered.
>
> Update the example in the bindings.
>
> Fixes: 7c631cdff391 ("dt-bindings: watchdog: qcom-wdt: allow interrupts")
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>

