Return-Path: <devicetree+bounces-36271-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B04118405C2
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 13:56:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 663001F22AB6
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 12:56:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2F4764CD7;
	Mon, 29 Jan 2024 12:53:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lZNpLXw/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0520364CCE
	for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 12:53:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706532795; cv=none; b=QSNjj6vWtjLqGQMBmr74bIoQEnMKUTON0vu1vLoqioh+5qUM+0jQ7wFStZXZUu7Yp/Vo8r6EZMIv4EtjsNVecWLOv6/zWUewjUf8kqNRUVJiCu8FKoiWPa0c/X40++t+Xq8TLCnp3PIm5wfgiSFaerCgdOvB2bhu6xMHIp3Vl7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706532795; c=relaxed/simple;
	bh=KroOacCdu2ZA86CNRDamGPo4cG4+JEigTyyM8PMovL4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IdBeZkbgupgpM6ROq+kuIR8t5aNb7pY3CfE1HE9+0A9fec4CZT783XuQ5m8G/nk9zfDRNiGO6OCeqWR5S2l9pQpWNT65ge54jMC6MKVh8vHltDmheQb9G+82KTFVJwe/JxmAr1jnbpBRlW/b2sTZ+vXLc0O4jvCXKxSRAX+rUqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lZNpLXw/; arc=none smtp.client-ip=209.85.219.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-qv1-f51.google.com with SMTP id 6a1803df08f44-68c44100327so11362926d6.2
        for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 04:53:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706532792; x=1707137592; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y6yW26oSt7/NM1Cy4RXMzke9upnPad+ksE3lOYBG0Qc=;
        b=lZNpLXw/LwyqnL8SowEvzusml8Ezml7alSpcgIxA6PeU/qZ7uSIiT4IYt8XyHNZAv3
         c+2rGE/pTikIyE/x9f2bygzproSWzPPc9DAESJsH9Mv4ja3jMfpn4vX5ZLSkO2zJMBYo
         aGEgNT6cjXfHfpydeDD1Y4c1ohJRFDsE5QzNQu99JQfKurakDR9Jwki1AH4FRvFM92NU
         5xbnHLtGeF58xopMGB2tm9y8kIJtQwR2wi5POdmYp4iGJcbpfNj0LB/njb8mdaXoFdbB
         rl5d7n1eTh7REfQbXCr2cnpew75kp/VU1ZFuGyDnf0jWDR4fwqkqy2SREIICS3VUXaSg
         FazA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706532792; x=1707137592;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=y6yW26oSt7/NM1Cy4RXMzke9upnPad+ksE3lOYBG0Qc=;
        b=fVhwgv1DeRSENtXf1ciquOdgDa+AINkOklVbIc81S6fzW3qKg2nFz3y18apvrsEuqW
         4dtwmVU66lunyCeMNvUw2kR5339ptTroDLvmPXMuHqlqGu5lB3aT2GwcFU/a7ZQuDWxl
         RhFlD6rFqEC0YvA7KAwXDkdOLgD61EuqSH/OhpBjKFKpWccvYgxxQlCHTv2uQTl080n/
         7EqAi35RSA1Ne/JMLeyF/ecVFowNCBTTTIYcI+Ex5ShXOU77dsL8vamwnI5UCejO45o1
         1Q85cmgCpAC3fA+uV0OFmpV87HNhWD+Ng/+lugGRRYmqpALopGmnB5OeuMra4AzPu505
         kWJQ==
X-Gm-Message-State: AOJu0YxdraZnNbufWIVQ/shE2ExiLaGQ69yxHZJC3pUkBt0SDb+gErFT
	h40OXNiQThJRegz8xvxLdcmHoXQB0IunLLzzn106MbDNeZ1D45GpMpAvLCqdWTwUogAM+OQHQqY
	zcZfeXkPRMqws8Aqun7hpr8QqDRII4PBuyi0Pcg==
X-Google-Smtp-Source: AGHT+IHaTbedJRWq3pLve5Uwkk1A3p87XLbvR2SU1L7KPzQbeRRz4TTsTCOmsE1SzDacGL8OW16099YRwNP2A8GD5NY=
X-Received: by 2002:ad4:5aa8:0:b0:682:d676:e971 with SMTP id
 u8-20020ad45aa8000000b00682d676e971mr6470001qvg.110.1706532791889; Mon, 29
 Jan 2024 04:53:11 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240127001926.495769-1-andre.draszik@linaro.org> <20240127001926.495769-4-andre.draszik@linaro.org>
In-Reply-To: <20240127001926.495769-4-andre.draszik@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Mon, 29 Jan 2024 12:53:00 +0000
Message-ID: <CADrjBPqbVei7jMwjJxiXk=b-OwDHpxduM0zJdXSM0Dg8kvKXUA@mail.gmail.com>
Subject: Re: [PATCH 3/9] clk: samsung: gs101: add support for cmu_peric1
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	linux-kernel@vger.kernel.org, kernel-team@android.com, 
	tudor.ambarus@linaro.org, willmcvicker@google.com, semen.protsenko@linaro.org, 
	alim.akhtar@samsung.com, s.nawrocki@samsung.com, tomasz.figa@gmail.com, 
	cw00.choi@samsung.com, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, 27 Jan 2024 at 00:19, Andr=C3=A9 Draszik <andre.draszik@linaro.org>=
 wrote:
>
> CMU_PERIC1 is the clock management unit used for the peric1 block which
> is used for additional USI, I3C and PWM interfaces/busses. Add support
> for muxes, dividers and gates of cmu_peric1, except for
> CLK_GOUT_PERIC1_IP which isn't well described in the datasheet and
> which downstream also ignores (similar to cmu_peric0).
>
> Two clocks have been marked as CLK_IS_CRITICAL for the following
> reason:
>     * disabling them makes it impossible to access any peric1
>       registers, (including those two registers).
>     * disabling gout_peric1_lhm_axi_p_peric1_i_clk sometimes has the
>       additional effect of making the whole system unresponsive.
>
> The clocks marked as CLK_IGNORE_UNUSED need to be kept on until we have
> updated the respective drivers for the following reasons:
>     * gout_peric1_gpio_peric1_pclk is required by the pinctrl
>       configuration. With this clock disabled, reconfiguring the pins
>       (for USI/I2C, USI/UART) will hang during register access.
>       Since pingctrl-samsung doesn't support a clock at the moment, we
>       just keep the kernel from disabling it at boot, until we have an
>       update for samsung-pinctrl, at which point we'll drop the flag.
>     * gout_peric1_sysreg_peric1_pclk needs to be hooked up to
>       sysreg_peric1 in DT which will be done in a followup-patch, at
>       which point we'll drop the special treatment from here. We're
>       adding the flag temporarily here so as to not break the boot (due
>       to pclk otherwise getting disabled).
>
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
>
> ---

Thankyou for being verbose on this reasoning behind CLK_IGNORE_UNUSED
and CLK_IS_CRITICAL flags

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>

