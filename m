Return-Path: <devicetree+bounces-4580-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D42797B3322
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 15:12:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 78F9F282450
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 13:12:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 496BB1A58F;
	Fri, 29 Sep 2023 13:12:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE9A411737
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 13:12:45 +0000 (UTC)
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 726C9B7
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 06:12:43 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-9a64619d8fbso1919956766b.0
        for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 06:12:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695993162; x=1696597962; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=W+V6aJ381tI2A5gtE2dQcrFHINgoS2cHdZ6PB5Ir1HE=;
        b=hfBS3KD9GSiK9c4ULe9G3pmoF8MBkXPdWndTICFI2xP+4I4UGdLTTLxFXPylahVkyU
         pmpJImbF/lAmWZvLOkHcNFbfEJZeihslZPMgDru4QmG3B3Q0kwI2bYIG09zQwNWA5NtU
         FM8oUs7f1pQ/gvPfkdFg5Omion+W/JNI2YwtJfWJH+g73OcBZCWP0mANbAYE7Z019Srf
         pReI7yjKZyI1CZ9XW95EfqGOPwys1J0sxEFFHGsWEl2PoqKokyZajmCfgLmQK5X2GJud
         QgcZcC4E82/ogvxhhM7Pwn/s8pz/4GZn2ziB1fVw4kWHNGH54XP59mNmTaMgvAr3DlMN
         iG4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695993162; x=1696597962;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=W+V6aJ381tI2A5gtE2dQcrFHINgoS2cHdZ6PB5Ir1HE=;
        b=Cc1ukddVw2P40hyH9VStAvFt/J86TXNuqG8YsASd0N+WSgqy+K5UGwt1cw49b9+wbY
         lN1ZR2wvC4+94CjvPsFSVI74zVNFLUOosk+cSruY8PXOh1MYFHIUD0a1vavRsi7vApdR
         bustlKG9OriShdUxj95qpO9MFUzYK1DuqNB09+gAGlyMHuRTxqVoGA8Alf/MHhW0GTKQ
         Ycn39bSlcukl3YbnVVQ6nycsLs9PW3UOGk+GA/oVy/vc2M6jp7fYi38CG36zEtKVKTJN
         TNCe//2Lw1vjhgoR+4Cr+1agJn/Vcjud8wO2196aPUiwE/IlEHwVkXCLwCNy9iSrhUD1
         JpmQ==
X-Gm-Message-State: AOJu0Yxiu6GL3yZDo7oRl1AsFPNvk8lByo3Gg6OKS1GhJfR1wu1vgF0i
	S6NpzPBcFtZj+95Wlx9z05K41Q==
X-Google-Smtp-Source: AGHT+IEuvHg+LC2h/UL9ELESKzXJdbw5aHzvCxcQVIdD5DW+GAnoxIHa8/c/fNRjcF1LIqJ4V9Pniw==
X-Received: by 2002:a17:906:2216:b0:9ad:ef31:6efc with SMTP id s22-20020a170906221600b009adef316efcmr4144816ejs.21.1695993161872;
        Fri, 29 Sep 2023 06:12:41 -0700 (PDT)
Received: from [192.168.33.189] (178235177217.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.217])
        by smtp.gmail.com with ESMTPSA id rh27-20020a17090720fb00b009930c80b87csm12606288ejb.142.2023.09.29.06.12.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Sep 2023 06:12:41 -0700 (PDT)
Message-ID: <cac1b912-e08b-4643-b081-834fdee30ea7@linaro.org>
Date: Fri, 29 Sep 2023 15:12:39 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: qcm6490-fairphone-fp5: Enable UFS
Content-Language: en-US
To: Luca Weiss <luca.weiss@fairphone.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20230929-fp5-ufs-v1-1-122941e28b06@fairphone.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20230929-fp5-ufs-v1-1-122941e28b06@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 29.09.2023 11:52, Luca Weiss wrote:
> Enable the UFS phy and controller so that we can access the internal
> storage of the phone.
> 
> At the same time we need to bump the minimum voltage used for UFS VCC,
> otherwise it doesn't initialize properly. The new range is taken from
> the vcc-voltage-level property downstream.
> 
> See also the following link for more information about the VCCQ/VCCQ2:
> https://gerrit-public.fairphone.software/plugins/gitiles/kernel/msm-extra/devicetree/+/1590a3739e7dc29d2597307881553236d492f188/fp5/yupik-idp-pm7250b.dtsi#207
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
> I'm not 100% convinced about the regulator range change. For sure with
> the original voltage range the UFS fails to initialize, but looking at
> downstream kernel during runtime (debugfs) we see the VCC voltage
> switches between 2.4V (idle?) and 2.952V (active?). But even with this
> change in mainline the regulator would always stay at 2.504V which is
> for sure lower than the downstream operating voltage of 2.952V. Behavior
> wise I don't see a difference between ~2.5V and ~2.9V.
> 
> Should I just constrain the regulator here to min=max=2.952V? Or just
> say it's okay as-is?
> 
> Depends on: https://lore.kernel.org/linux-arm-msm/20230927081858.15961-1-quic_nitirawa@quicinc.com/
> ---
There's a little funny hack inside the driver

#if defined(CONFIG_SCSI_UFSHCD_QTI)
                        if (vreg->low_voltage_sup && !vreg->low_voltage_active && on)
                                min_uV = vreg->max_uV;
#endif

so, when the ufs is in use, it's pinned to vmax

Konrad

