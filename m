Return-Path: <devicetree+bounces-14229-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E81337E2F36
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 22:51:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9FA92280D27
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 21:51:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09DB52EAE6;
	Mon,  6 Nov 2023 21:51:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="CE9lsqMn"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9031E5247
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 21:51:44 +0000 (UTC)
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2BE78D77
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 13:51:42 -0800 (PST)
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-2c509d5ab43so71879771fa.0
        for <devicetree@vger.kernel.org>; Mon, 06 Nov 2023 13:51:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1699307500; x=1699912300; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3tAMDqknfv0vEM+WD/A4RK8RK4wIL/waFYE/2+elq7Y=;
        b=CE9lsqMnbS9j8expWLy88BPYLbPTDibwuChjNs/sKzFgqzFtdP10gyUMQYjLZlugRI
         BUSE5zpEuD4RRLCPaviHWVg1bxye4em3FtY5tOLrP9WJHnxNeHJbTU9SWr0b3PrALnYS
         a6rx7W/KXUj1m1hxh7pOStELrw3E2vJyAxdGs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699307500; x=1699912300;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3tAMDqknfv0vEM+WD/A4RK8RK4wIL/waFYE/2+elq7Y=;
        b=Q3agC4bkhXVvCUIL0fmC/7e0/KKANLoZzdFtuBsZ7HEYVPaUiPd9AnRx2xh0njPU2D
         U7g61SH5JSM4FlJghXSFDnzfR9heKjXG/Z2Ux3uEyTYUreNYKpvsKXAsQeS+zNN/pxLU
         7xQjGoPCDKNrkdPWc/0qZIOqlliq+hWhnPu7iLcr3yxhdEEsr1PLjtR+Jqj0itk06bNj
         bj8fI8unFEGvFTlAWqkAQCRxWL1JzAtwh5HgxtMl4J2SHbzw5tkgz9nAJLWxt4h4J2Ix
         pyytteprzeD25OmNC1qJ9EThWoosQQreg61c98Ne/UEbyPTd3JaNlul7looJzPPDy0Q3
         ygrQ==
X-Gm-Message-State: AOJu0Yx7HuawxsXsx7hz0y6R2edYuZ8bHj6JsD8xhJ41kEa9WDYK4PMN
	69BrGZyR3A76Rw1Wv2xTRuOoT+jwfet4JsRVXSHqMQ==
X-Google-Smtp-Source: AGHT+IEzZiYip1rnWEk6cQSXdXsIWKsogiosY05SaYbtbuG48mMM14HfsqLI/yBfxMn4MyQlZLutwBenOUDMZkOHSN8=
X-Received: by 2002:a05:651c:617:b0:2c5:2184:c53d with SMTP id
 k23-20020a05651c061700b002c52184c53dmr20234523lje.25.1699307500372; Mon, 06
 Nov 2023 13:51:40 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 6 Nov 2023 13:51:40 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <20231103163434.6.I909b7c4453d7b7fb0db4b6e49aa21666279d827d@changeid>
References: <20231103163434.1.Ic7577567baff921347d423b722de8b857602efb1@changeid>
 <20231103163434.6.I909b7c4453d7b7fb0db4b6e49aa21666279d827d@changeid>
From: Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date: Mon, 6 Nov 2023 13:51:39 -0800
Message-ID: <CAE-0n51rvrwVBTurVj5HqZKd0v9mgKE=FLitzEuapzokn-UBSA@mail.gmail.com>
Subject: Re: [PATCH 6/9] arm64: dts: qcom: sa8775p: Make watchdog bark
 interrupt edge triggered
To: Bjorn Andersson <andersson@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Douglas Anderson <dianders@chromium.org>, Guenter Roeck <linux@roeck-us.net>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-watchdog@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	Rob Herring <robh+dt@kernel.org>, Wim Van Sebroeck <wim@linux-watchdog.org>, 
	Andy Gross <agross@kernel.org>, Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Quoting Douglas Anderson (2023-11-03 16:34:32)
> As described in the patch ("arm64: dts: qcom: sc7180: Make watchdog
> bark interrupt edge triggered"), the Qualcomm watchdog timer's bark
> interrupt should be configured as edge triggered. Make the change.
>
> Fixes: 09b701b89a76 ("arm64: dts: qcom: sa8775p: add the watchdog node")
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>

