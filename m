Return-Path: <devicetree+bounces-14224-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C417D7E2F1F
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 22:49:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CD119B20A3F
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 21:49:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 326812EAE0;
	Mon,  6 Nov 2023 21:49:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="fEtKcaBi"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE753522D
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 21:49:08 +0000 (UTC)
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4FBDCD6E
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 13:49:07 -0800 (PST)
Received: by mail-lj1-x236.google.com with SMTP id 38308e7fff4ca-2c51682fddeso63297171fa.1
        for <devicetree@vger.kernel.org>; Mon, 06 Nov 2023 13:49:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1699307345; x=1699912145; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iMUtXedtMfHyVhpNXb+9y7B6UprnYxiJrIY/x/1tAbY=;
        b=fEtKcaBijM5yRdeB72nVnob3ImfXVWOdIGpNtRTrqZsEirDoanhYDVaXUCUli/qLZx
         Dz5ki8EzfTMSNP5pXZlRVr+yC1bSk/ysNq1B7iHexm0fl6+6c9f4j00TuQkqOxrpXNgL
         NoaT8eWUbxoGnFDZvtqkOIESybUndGAcPWGzw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699307345; x=1699912145;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iMUtXedtMfHyVhpNXb+9y7B6UprnYxiJrIY/x/1tAbY=;
        b=NC7WN9+2SmwBtoysi/q+OqNYTsnPVgM3dY/pS+q6sr4Oukc+71wJtFgeJMxlTgcfJF
         qyDgfD4HAq2l+UoJkMkyBmD1FfmsJhAHx8KCiuNfajEBfDZtfj9jbm/neGhr4AkArODz
         CAL4vlsh8PA3/8BIjKNYm7uZ9DBxmP+s2jlgjaya3a0Yez0X5C2Yz+S+7QQjtlxjtTro
         R7oX6b3P8aSXAxlA/nALoao0cZiTMQx0T5+FbVlSxIUsldvGkeF9V+BBqIw3P/ImlR5A
         vg4oFOjTRBDq6rEqqWXZmAaW1s1Y81FTjv/TQWqw74YnnYPj0rINRmyXbUDuYh99qk2y
         oFmg==
X-Gm-Message-State: AOJu0YxfVFHo4cNKbNF6u3FI205JELWs4hU/oLCgyuYeLjZ2OHcz/Wd+
	5DCzXGdL933Pxp+qESqbJThB378TyCRpago+a55iqw==
X-Google-Smtp-Source: AGHT+IHCr0f4oobPmpg4io2bupLLG0IzNyyolPOrELq/1yG34ld0ri2ZpgidIQCoT1Gj/+EHt+le3Xj3RzSVW9Xl5Dc=
X-Received: by 2002:a2e:978d:0:b0:2c5:2357:c6a7 with SMTP id
 y13-20020a2e978d000000b002c52357c6a7mr253471lji.17.1699307345582; Mon, 06 Nov
 2023 13:49:05 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 6 Nov 2023 13:49:04 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <20231103163434.1.Ic7577567baff921347d423b722de8b857602efb1@changeid>
References: <20231103163434.1.Ic7577567baff921347d423b722de8b857602efb1@changeid>
From: Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date: Mon, 6 Nov 2023 13:49:04 -0800
Message-ID: <CAE-0n50vtad5hkkAuV-hvsnm+tTevd_4OSr3iGofBa5L8A0RQw@mail.gmail.com>
Subject: Re: [PATCH 1/9] arm64: dts: qcom: sc7180: Make watchdog bark
 interrupt edge triggered
To: Bjorn Andersson <andersson@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Douglas Anderson <dianders@chromium.org>, Guenter Roeck <linux@roeck-us.net>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-watchdog@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	Rob Herring <robh+dt@kernel.org>, Wim Van Sebroeck <wim@linux-watchdog.org>, 
	Andy Gross <agross@kernel.org>, "Guilherme G. Piccoli" <gpiccoli@igalia.com>, 
	Kees Cook <keescook@chromium.org>, Sai Prakash Ranjan <quic_saipraka@quicinc.com>, 
	Tony Luck <tony.luck@intel.com>, cros-qcom-dts-watchers@chromium.org, 
	devicetree@vger.kernel.org, linux-hardening@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Quoting Douglas Anderson (2023-11-03 16:34:27)
> On sc7180 when the watchdog timer fires your logs get filled with:
>   watchdog0: pretimeout event
>   watchdog0: pretimeout event
>   watchdog0: pretimeout event
>   ...
>   watchdog0: pretimeout event
>
> If you're using console-ramoops to debug crashes the above gets quite
> annoying since it blows away any other log messages that might have
> been there.
>
> The issue is that the "bark" interrupt (AKA the "pretimeout"
> interrupt) remains high until the watchdog is pet. Since we've got
> things configured as "level" triggered we'll keep getting interrupted
> over and over.
>
> Let's switch to edge triggered. Now we'll get one interrupt when the
> "bark" interrupt goes off we'll get one interrupt and won't get

"We'll get one" twice?

> another one until the "bark" interrupt is cleared and asserts again.
>
> This matches how many older Qualcomm SoCs have things configured.
>
> Fixes: 28cc13e4060c ("arm64: dts: qcom: sc7180: Add watchdog bark interrupt")
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>

