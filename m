Return-Path: <devicetree+bounces-65380-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A051E8BE15D
	for <lists+devicetree@lfdr.de>; Tue,  7 May 2024 13:48:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 40EDB1F23903
	for <lists+devicetree@lfdr.de>; Tue,  7 May 2024 11:48:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C0C2152DEA;
	Tue,  7 May 2024 11:48:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Uf9H3qsB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EA4F150995
	for <devicetree@vger.kernel.org>; Tue,  7 May 2024 11:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715082518; cv=none; b=LrYmyN08q7u+kWY8fyIVGGF7UvB2PhsdEZp+7eOI0Y+jtdf84UrkWA+M5j6APb7ur31ISKrLXzcxKOn+O51cbayXHGWcZRyT4/ba97LkjEeRj35+XoKgf3GfTeGL24H/4LlDU6/JYIF/6euraWKWFa5e6bImRqIciDlhPZfE/RU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715082518; c=relaxed/simple;
	bh=ZvJC+HUC23cfgfMiVTigE+cAqOZWAnz9vZbxnvZ8ru0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Wm+eyVc/Adjp6QeNekc/JMmTg+btoeQ5+HGhTybQzDotH78fcDA6h2s8KUvwlANN5lc6PJ3IIvDEX0CT8ne95hJyM2UrAA4LpheZCY5lLmISxFxnUDaLz0Eq8PP1GqxJuDQxq+rIIHDw8YN5mdqu/dUk+qBg9DKx1roEt4KNDug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Uf9H3qsB; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-5206a5854adso2348293e87.0
        for <devicetree@vger.kernel.org>; Tue, 07 May 2024 04:48:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715082513; x=1715687313; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=72j6zNVVvGNrYMrCouTEzvFzVcRHh6PlR7ef9XOXTgQ=;
        b=Uf9H3qsBB1mG3WF0plN0CboxxB8ch2s0qKwTRYjag5C+BU+IlXgsKM7hYhx0tiDts2
         qc5GbbkGrphWjfcS+9odIxupiYn3+72eaOnbOPvQApgPU0thtOqJlCDYUz1XGu+dDaAH
         Huc5tLjXXOFf2KLEjD28m96nOAVqIW7n0/sfFcMoSK8GYpQbS0s1RNUZb1eADTOmrwuz
         8DuYQ7U+k5T+XgM60SVoz92dVdmP3eZeZh/Rxt+VwAlk0G6GyUUTIawqDpPuhDZL7exM
         wtfjhEQwpPR0lbTGLdPgex00KjwZGJe/yoEJtW1tBOfEVywhncSXW2k1RYA7Lg1XzDiS
         hyew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715082513; x=1715687313;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=72j6zNVVvGNrYMrCouTEzvFzVcRHh6PlR7ef9XOXTgQ=;
        b=oMoLRQf+ILLCrdz9ukJHIUiy3NVXBDbDzIloAG18Ho3TWxUW3MpRIg02rK2oF3RNw0
         0VZHkZ0ER4Ke2s4Z19pMKPIRsBEzmLBC22npQGNYpOEisE73qNIG2WNWhmvWIuPNQCvs
         aiZCHD/Z8Z2SldebTy95WDx9UHg1Kir+quavzsr+7Zyhpa6zsjGqTIbmgYWazhPtYx8r
         qAYQGSewPMX4oHgnZDtUY1xVb9zNaRUt2Hckpvqi6zsmi7IwRgORvDK0ENTNmLqlyvgR
         EfoKCSmo53hH+ZAejLlWaZQNc/JvtPBq79xZ5vJSK95r8/8kY7vVS7QmU+QCxR9JIgk8
         XTEw==
X-Forwarded-Encrypted: i=1; AJvYcCXqmU+l1uoTcbhlGOHjwuP9JtBHeKv64z65JQ0mM8NAfuwfCSb6qyT3gHkdo5Mxf1rAo8JRD3MwicjgztdoxJ4sT7mZzzF6Hx5Q2Q==
X-Gm-Message-State: AOJu0YyMAOuIdWQjZ1p3tvXcX9uss8tmw/EmXSTZMOHi4amvFsyfClch
	DrujDHzNSrWAtaVsWMqfeu96HqW25ULIfZ1gUfFGeDSlHPmZJDI9mzKNnPcc7Mg=
X-Google-Smtp-Source: AGHT+IEztQUsixU46vbtT83NzSNtDU2V2kQ90UiEWc9l8x732HZwYxqrdp6DKhIl1y8iyklIcrQtPg==
X-Received: by 2002:a19:f713:0:b0:51d:3675:6a08 with SMTP id z19-20020a19f713000000b0051d36756a08mr7293073lfe.66.1715082513172;
        Tue, 07 May 2024 04:48:33 -0700 (PDT)
Received: from [172.30.205.144] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id b15-20020ac2562f000000b0051884ea2a32sm2086190lff.31.2024.05.07.04.48.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 May 2024 04:48:32 -0700 (PDT)
Message-ID: <6dc632b0-792c-49c8-9f66-43f7a14789cc@linaro.org>
Date: Tue, 7 May 2024 13:48:30 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 12/13] regulator: add pm8008 pmic regulator driver
To: Johan Hovold <johan+linaro@kernel.org>, Lee Jones <lee@kernel.org>,
 Mark Brown <broonie@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Das Srinagesh <quic_gurus@quicinc.com>,
 Satya Priya <quic_c_skakit@quicinc.com>, Stephen Boyd <swboyd@chromium.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org
References: <20240506150830.23709-1-johan+linaro@kernel.org>
 <20240506150830.23709-13-johan+linaro@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240506150830.23709-13-johan+linaro@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 5/6/24 17:08, Johan Hovold wrote:
> From: Satya Priya <quic_c_skakit@quicinc.com>
> 
> Qualcomm Technologies, Inc. PM8008 is an I2C-controlled PMIC containing
> seven LDO regulators. Add a PM8008 regulator driver to support PMIC
> regulator management via the regulator framework.
> 
> Note that this driver, originally submitted by Satya Priya [1], has been
> reworked to match the new devicetree binding which no longer describes
> each regulator as a separate device.
> 
> This avoids describing internal details like register offsets in the
> devicetree and allows for extending the implementation with features
> like over-current protection without having to update the binding.
> 
> Specifically note that the regulator interrupts are shared between all
> regulators.
> 
> Note that the secondary regmap is looked up by name and that if the
> driver ever needs to be generalised to support regulators provided by
> the primary regmap (I2C address) such information could be added to a
> driver lookup table matching on the parent compatible.
> 
> This also fixes the original implementation, which looked up regulators
> by 'regulator-name' property rather than devicetree node name and which
> prevented the regulators from being named to match board schematics.
> 
> [1] https://lore.kernel.org/r/1655200111-18357-8-git-send-email-quic_c_skakit@quicinc.com
> 
> Signed-off-by: Satya Priya <quic_c_skakit@quicinc.com>
> Cc: Stephen Boyd <swboyd@chromium.org>
> [ johan: rework probe to match new binding, amend commit message and
>           Kconfig entry]
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---

I'm a bit lukewarm on calling this qcom-pm8008-regulator.. But then
qcom-i2c-regulator or qpnp-i2c-regulator may bite due to being overly
generic.. Would you know whether this code will also be used for e.g.
PM8010?

Konrad

