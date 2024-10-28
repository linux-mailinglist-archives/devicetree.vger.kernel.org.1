Return-Path: <devicetree+bounces-116680-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 813129B39CA
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 19:58:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3F7E828596C
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 18:58:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E76231DFE32;
	Mon, 28 Oct 2024 18:57:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="I5ndG5x8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f47.google.com (mail-oo1-f47.google.com [209.85.161.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E299B1DFE0F
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 18:57:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730141879; cv=none; b=BwCzuILMuyUi/TRCoe1CuLrvkG2wOGrMYihkJVLhfmUPgJxQfCpo952j0mbqp/DgwjuIJF6BogPsb3N9WZW7nKxGbruBDbNrbKAsVz5lGj41l9ho50vmTLxsB5EjFNtCD3IMotarYOBa94uwrKAJsYrDeg2LXJyR9iLhSG28Vg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730141879; c=relaxed/simple;
	bh=ZqOIymdW7AOFGrkkZotyqe8mFhuss0YMD8c1cAdy6hM=;
	h=MIME-Version:In-Reply-To:References:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RmmLrRoXTEeAu/XDm88x/3gqKfKMsgDoWYJYCPfDeqhE5gJEhLJXZi7ts5PaB4HA8nnwT/dTC46Bmy9fLjcJS+C42iTBywVunjJajnhWJ/KX7H2sscwvY6ah9R/DUfNsMQJ0A+iJSt8mvOzNss6l3PpQi2TlFmHaV9p33vZcF7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=I5ndG5x8; arc=none smtp.client-ip=209.85.161.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-oo1-f47.google.com with SMTP id 006d021491bc7-5ebc0dbc65dso2776310eaf.1
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 11:57:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1730141876; x=1730746676; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:from:to:cc:subject:date:message-id
         :reply-to;
        bh=d2LfEYca0SVAQ5XFZmx5kmUvCRKMJSdnjq6kZ9JePCA=;
        b=I5ndG5x8bk8g9vlRPHBXSkKBj1M+LSvxp3YEpMcaC8MietUnPAMMrj5vUjWrpYXpVI
         N84oWd0GRM8sbYxRJ1u8hnLavW4E0iAJws4k/Es5EiIR8FYbxot7OD1UmNE6PSV0Uv0+
         T6wYH/alg+2mWvuv+fXcurNMPALq/rmUvJHOk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730141876; x=1730746676;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d2LfEYca0SVAQ5XFZmx5kmUvCRKMJSdnjq6kZ9JePCA=;
        b=VYtWECctdofzpUY/f1jKY/fJpF385CBAODBl9wku2dHhRZkczkClWN9zAbGX7M2LkY
         mdawHQoEL5zDObFiJc3WLqpy9e/DJd6igqB2SfXEizwQwniPuhFH6N/kr7ViZHBqGwgw
         aA6+gta8YAAnq0j/onmItmnWgnDr6hjchzN+L4yceAp+rAA9hDFTuhRdqi0Y+7P0Gbwu
         +z6F/yDghZXxgUGCxn0LM3Y0lZTvXoBid8aCwJ2zdHYbp64MQgfpmvSV/AAmKU/vMN1+
         tGxZtL2OBBLH8HraB5/gGhDst/LlnzFclwhWthzhCEahWaItmfPIUeR5dvw4eRPjkwRV
         eGAQ==
X-Forwarded-Encrypted: i=1; AJvYcCWoPwY0AxHq6ozXdbQua7/Bcf1sTryO/bslzeOSGT42a4SMHHKp5HkQR2ayq1VSG53nqtGntN4zcspQ@vger.kernel.org
X-Gm-Message-State: AOJu0YxWp5IzkagCGajIjWGZdDRYF6Fw6OtHbUEwX2GQu7hs54OKUAw9
	Canvaw+OUu4IvOybUqGfwIgYe34lOqdgCdJnBRJ8nHPOnqvi0VPk+g4kXYet81Q4fg3iO6puvjc
	Wpjif2VZ2dPB3leahKztlG1iyyuFlRsgl7mgh
X-Google-Smtp-Source: AGHT+IFvmYBtQn6VF/6ueDr0Mul6XafO9LMXlXZyFfebnMWZxAt0RxG3GM+9mJwqrZJNTpm99hm2yO6Tjm648OHps4A=
X-Received: by 2002:a05:6358:41a1:b0:1c3:92d9:db9a with SMTP id
 e5c5f4694b2df-1c3f9dfc925mr362147255d.10.1730141875928; Mon, 28 Oct 2024
 11:57:55 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 28 Oct 2024 14:57:55 -0400
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <20241028-arm-psci-system_reset2-vendor-reboots-v7-3-a4c40b0ebc54@quicinc.com>
References: <20241028-arm-psci-system_reset2-vendor-reboots-v7-0-a4c40b0ebc54@quicinc.com>
 <20241028-arm-psci-system_reset2-vendor-reboots-v7-3-a4c40b0ebc54@quicinc.com>
From: Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date: Mon, 28 Oct 2024 14:57:55 -0400
Message-ID: <CAE-0n52buO+oJfesc+025hogm7BygMp4dO6b2_6aAoXVKRBs7w@mail.gmail.com>
Subject: Re: [PATCH v7 3/5] firmware: psci: Read and use vendor reset types
To: Andy Yan <andy.yan@rock-chips.com>, Arnd Bergmann <arnd@arndb.de>, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, Bjorn Andersson <andersson@kernel.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Conor Dooley <conor+dt@kernel.org>, 
	Elliot Berman <quic_eberman@quicinc.com>, Konrad Dybcio <konradybcio@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Mark Rutland <mark.rutland@arm.com>, Olof Johansson <olof@lixom.net>, Rob Herring <robh@kernel.org>, 
	Sebastian Reichel <sre@kernel.org>, Vinod Koul <vkoul@kernel.org>, Will Deacon <will@kernel.org>, 
	cros-qcom-dts-watchers@chromium.org
Cc: Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>, Melody Olvera <quic_molvera@quicinc.com>, 
	Shivendra Pratap <quic_spratap@quicinc.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	Florian Fainelli <florian.fainelli@broadcom.com>, linux-pm@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Quoting Elliot Berman (2024-10-28 11:44:57)
> diff --git a/drivers/firmware/psci/psci.c b/drivers/firmware/psci/psci.c
> index 2328ca58bba6..2d7b6efc8743 100644
> --- a/drivers/firmware/psci/psci.c
> +++ b/drivers/firmware/psci/psci.c
> @@ -79,6 +79,14 @@ struct psci_0_1_function_ids get_psci_0_1_function_ids(void)
>  static u32 psci_cpu_suspend_feature;
>  static bool psci_system_reset2_supported;
>
> +struct psci_reset_param {
> +       const char *mode;
> +       u32 reset_type;
> +       u32 cookie;
> +};
> +static struct psci_reset_param *psci_reset_params;
> +static size_t num_psci_reset_params;

These two can be __ro_after_init

> +
>  static inline bool psci_has_ext_power_state(void)
>  {
>         return psci_cpu_suspend_feature &
> @@ -305,9 +313,38 @@ static int get_set_conduit_method(const struct device_node *np)
>         return 0;
>  }
>
> +static void psci_vendor_system_reset2(unsigned long action, void *data)

Can 'data' simply be 'const char *cmd' instead?

And can 'action' be dropped? It isn't used in this function.

> +{
> +       const char *cmd = data;
> +       unsigned long ret;
> +       size_t i;
> +
> +       for (i = 0; i < num_psci_reset_params; i++) {
> +               if (!strcmp(psci_reset_params[i].mode, cmd)) {
> +                       ret = invoke_psci_fn(PSCI_FN_NATIVE(1_1, SYSTEM_RESET2),
> +                                            psci_reset_params[i].reset_type,
> +                                            psci_reset_params[i].cookie, 0);
> +                       /*
> +                        * if vendor reset fails, log it and fall back to
> +                        * architecture reset types
> +                        */
> +                       pr_err("failed to perform reset \"%s\": %ld\n", cmd,
> +                              (long)ret);

			return?

because we're not going to try another one, right?

