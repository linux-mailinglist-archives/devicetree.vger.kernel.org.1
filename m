Return-Path: <devicetree+bounces-14230-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7251B7E2F3A
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 22:52:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A1B041C20506
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 21:52:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69A112EAE9;
	Mon,  6 Nov 2023 21:52:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="iqc3+7oK"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 373D75247
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 21:52:07 +0000 (UTC)
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 91FC710C1
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 13:52:05 -0800 (PST)
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2c523ac38fbso67090561fa.0
        for <devicetree@vger.kernel.org>; Mon, 06 Nov 2023 13:52:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1699307524; x=1699912324; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VVo57WCE+yBWdXW5ghNzBlHgiWxC34iujY28VT0smV8=;
        b=iqc3+7oKU4kHraZOapHcnQqqgntWU7YOVd0E331q++lT62cw8oOlw4d2qsOse/2zbB
         tTo3mxLu/1KLZ+PBkwRRDmSzWAu96zHJv+pEMxcxj1btGTU21n463zRbArBsKmQ/QrGX
         bNyRUTtXwzjyPJdFWG8TY49MIo8SKItVsNyXE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699307524; x=1699912324;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VVo57WCE+yBWdXW5ghNzBlHgiWxC34iujY28VT0smV8=;
        b=FldYTuyLnaqpQ/ZtiKbQhtDslEB4/LhShxpJGIjUeDUGfrKcRhCZ0hacj7VnRzLTl7
         rPa6V1fZyvn6NuxLM2yQR6oaA7Wt49/o0YFALWC8z0tabT2PDfEJzLYscxIgayHy/egn
         Bxbd+X8bRyc9Zcbe+jV+9wsgCeibTI6VPvc3ujr2fzYzSn+1d3EseTTV9QJmvkkYF3eS
         o5YE/uBRizFNsZd76SBHTF6aSSKyadJyWO2oVAfZRrM77OoFeerUt4lIVp3Zvqoo52Qv
         LTFOxYlC9mwmDC7StX3mnHv2WrLhdpzphprLvfHETvyLirxDUGFdMCALoe+I9o5ZGDBm
         v/XQ==
X-Gm-Message-State: AOJu0Yz7Bed+yzMYPuiPEI/XO/1SvR2jJuIlBYkJJJtcUFMN2UGMo8G2
	Mg7LtBTt+0k7woaCeKkOj5ZwYMgYgbMSmfkID4YuuQ==
X-Google-Smtp-Source: AGHT+IGoMZmXlof3qRXKV3ga7L59JCpBeZOTOn5oG9PGcBaLBsDEVxZfnY5MhzKLTYDK+MK80v8JRpm8XVUK+TZhSLM=
X-Received: by 2002:a2e:a7d0:0:b0:2c5:18ed:1802 with SMTP id
 x16-20020a2ea7d0000000b002c518ed1802mr30702923ljp.34.1699307523959; Mon, 06
 Nov 2023 13:52:03 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 6 Nov 2023 13:52:03 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <20231103163434.7.I1c8ab71570f6906fd020decb80675f05fbe1fe74@changeid>
References: <20231103163434.1.Ic7577567baff921347d423b722de8b857602efb1@changeid>
 <20231103163434.7.I1c8ab71570f6906fd020decb80675f05fbe1fe74@changeid>
From: Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date: Mon, 6 Nov 2023 13:52:03 -0800
Message-ID: <CAE-0n51TUvm0J6TSydNoXVwo0gihKNGOXPT8=XHJCe9ALwgyxA@mail.gmail.com>
Subject: Re: [PATCH 7/9] arm64: dts: qcom: sc8280xp: Make watchdog bark
 interrupt edge triggered
To: Bjorn Andersson <andersson@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Douglas Anderson <dianders@chromium.org>, Guenter Roeck <linux@roeck-us.net>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-watchdog@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	Rob Herring <robh+dt@kernel.org>, Wim Van Sebroeck <wim@linux-watchdog.org>, 
	Andy Gross <agross@kernel.org>, Johan Hovold <johan+linaro@kernel.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Quoting Douglas Anderson (2023-11-03 16:34:33)
> As described in the patch ("arm64: dts: qcom: sc7180: Make watchdog
> bark interrupt edge triggered"), the Qualcomm watchdog timer's bark
> interrupt should be configured as edge triggered. Make the change.
>
> Fixes: 152d1faf1e2f ("arm64: dts: qcom: add SC8280XP platform")
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>

