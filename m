Return-Path: <devicetree+bounces-34173-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 47865838E5B
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 13:18:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DD6C01F24AF5
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 12:18:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB4505DF18;
	Tue, 23 Jan 2024 12:18:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zaFv2H3l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com [209.85.219.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6169B5DF08
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 12:18:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706012310; cv=none; b=UrEILjv7K3QOSrkqxaCb/e89u5TrsQreMemtr+9NjFplkqpd3wz2cBj6pytb1YP8nt/6WdYhYwScrwe+5+ZB+tkirDikEVilLwEzXrYtGHJkL3vXPguCsJTTTdKVvsFb0JhY7cneSIVaM6JcYcbpgtTClRuZtPhBHfPatZyfj8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706012310; c=relaxed/simple;
	bh=2V+Bx4FIrH1pc364z+9nImn5SzIBGQp/BaM/gj1sj74=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Zqhkc1s24JNjvpdrU7yF4leM+nlu5Hj4rGjVeIc5zWZEV0/0Gpsve91V40662MEP9TAmHLlsxZ+rFDp92e1jI7AZbCby7jFOi7cSqRFtinUxFD5mFO5nu0x9SyrX+lN/huMNBBmLBiKqjVzN/gfrbpRIbfbgiRuvC2fWdjd76sk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zaFv2H3l; arc=none smtp.client-ip=209.85.219.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f169.google.com with SMTP id 3f1490d57ef6-d9b9adaf291so2798878276.1
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 04:18:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706012308; x=1706617108; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Gh62vRSBG030L7L0RyJ3ueU0okLJVyWTJjLMCyBYbyQ=;
        b=zaFv2H3lY3gABTnim+cZ7p7QZGduWasw8MPaooj0p39PDsq41Juu/MbsiS3eLvGWDC
         UoUzDK64eFNlK88tnlfhzSekUweYP1csobrEpfVVPoiH53zaXmRkiwkQh13bAQxuyEJB
         gJ+97+7BIrLannpyPKn+lXFtGnSCyiGa5wK5uOFPnmydgS1tZEJWnzmuzqfILH+/H40z
         y/GcaRL5oH9aE4HrQHl3XKcSatiRq8s6XYgHo1bLUIY0/mI1U/d76NHpIqfNfC7Rlhob
         rXLX5Og9wjuDFEyZ7Ip8NrjqcfMQ1bFBWyzErVq5vCVL7Y6hVFNKUz5XdHd5QfFNwO/P
         JC8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706012308; x=1706617108;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Gh62vRSBG030L7L0RyJ3ueU0okLJVyWTJjLMCyBYbyQ=;
        b=HzP0ik+58b4SXu61v8pSeQxqDAgMumW0rqDVihUTyQh8WHFEhE13UsmKKcSF6LJ21z
         n53xS0e4vnmBdpG1Ytr6hMN2UFW3wYyDBl0lYkt/nQ6w8PMwhU58nvmLbBcz3s56Avqo
         JsoRcqlRjeAnQe2x5ODuZlqEGIPrNTtTlPqpubDQL95ZorzPYke5kdhSdw+FQjmts2sa
         JHKUBttse9fckfOQUU6sHOZL8u9A/g7YTexm/acX/EfetnPbdWpVRmLNQJ9Wbe3adslI
         ThUGIk1tmGsn16jyi7J4W6yS3JQ3LrZjPgoL4KHaNfRgZ25QN6+8SlzFkrxiR+gL4Kx8
         OyhQ==
X-Gm-Message-State: AOJu0YyVoS4aAUOhEuxV4PTH3FPtho2bn8uTKKmDbMyUPqFSoUqrcAUu
	yeDf6q4q0wIWejUWabOCKk+6NnLyLmXkUUqQj32hOtLqMI+yzqS1f3+O/Kkf2t/LKCRGVZCRQVj
	OsYidgSEI9j+4U8c6Pw8ztw8dDY5QX6TtO7p7CA==
X-Google-Smtp-Source: AGHT+IE3HOE1WBjbwtEXORZxD29BZLU+G+gsdsCkXBrEeww2LPidC5QdtJcqX1/Wzpcr8U8LXecicY1xPGse7G9nY4E=
X-Received: by 2002:a25:c791:0:b0:dc2:3cf6:9bc3 with SMTP id
 w139-20020a25c791000000b00dc23cf69bc3mr2811724ybe.58.1706012308255; Tue, 23
 Jan 2024 04:18:28 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240123102817.2414155-1-quic_uchheda@quicinc.com>
In-Reply-To: <20240123102817.2414155-1-quic_uchheda@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 23 Jan 2024 14:18:17 +0200
Message-ID: <CAA8EJppwboaEbKFFACr3LO0OHg4iOJPapKRqoH2EGEYcjV6HfA@mail.gmail.com>
Subject: Re: [PATCH RESEND] arm64: dts: qcom: qcm6490-idp: Add support for
 PM7250B PMIC
To: Umang Chheda <quic_uchheda@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Kamal Wadhwa <quic_kamalw@quicinc.com>
Content-Type: text/plain; charset="UTF-8"

On Tue, 23 Jan 2024 at 12:28, Umang Chheda <quic_uchheda@quicinc.com> wrote:
>
> qcm6490-idp platform supports PM7250B PMIC as well.
> Add support for the same.

The platform can not "support" PMIC. Please fix the commit message.

>
> Signed-off-by: Umang Chheda <quic_uchheda@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcm6490-idp.dts | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/qcm6490-idp.dts b/arch/arm64/boot/dts/qcom/qcm6490-idp.dts
> index 03e97e27d16d..2a6e4907c5ee 100644
> --- a/arch/arm64/boot/dts/qcom/qcm6490-idp.dts
> +++ b/arch/arm64/boot/dts/qcom/qcm6490-idp.dts
> @@ -5,8 +5,13 @@
>
>  /dts-v1/;
>
> +/* PM7250B is configured to use SID8/9 */
> +#define PM7250B_SID 8
> +#define PM7250B_SID1 9
> +
>  #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
>  #include "sc7280.dtsi"
> +#include "pm7250b.dtsi"
>  #include "pm7325.dtsi"
>  #include "pm8350c.dtsi"
>  #include "pmk8350.dtsi"
> --
> 2.25.1
>
>


-- 
With best wishes
Dmitry

