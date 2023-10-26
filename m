Return-Path: <devicetree+bounces-12242-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7781C7D8899
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 20:56:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 305402810E7
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 18:56:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C03653AC03;
	Thu, 26 Oct 2023 18:56:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ct9/PgAj"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F6AF1D68D
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 18:56:13 +0000 (UTC)
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CDF4E1A5
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 11:56:11 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-507cd62472dso2757677e87.0
        for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 11:56:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698346570; x=1698951370; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XX0o5SH/u4zUmUnFynVSLwt8JJsmyB5ifz1RY8kYi4I=;
        b=ct9/PgAjQEuZy7MIOoE85jeGpsgNwWdUBgLW3fRZ0CA8q8ygQJFc1YQPAK4HHKjhL5
         ttUqmqvA+DBpHQafSwzbvq4nJ2Sx4M6Vz9bgaVU+AtkworC4OuRIHmzJe5lCILuYdY5N
         TKggE6WGZBbRsqref8b6tQpXvFRMmPR9LcgfZXNUsL8CBS2fKOgUS6oxAw1FD/UTF2x8
         jvOdf0sQK0DxduUjdoBKRAz2zm14jyuwErDBwVfABhqtLyWPzK5gzKYAjxaB4TqTyuF+
         fzJ5k6NCsPkJOvPvELKUNHdR28JeHENwXHaxuF4axDu4Ommfcj47E0Pn6xWKBxKSlqlR
         lpsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698346570; x=1698951370;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XX0o5SH/u4zUmUnFynVSLwt8JJsmyB5ifz1RY8kYi4I=;
        b=mTKFjiEz22BeOpcjJTgHNC0dNBhQMC4BoP6nQhEz+DtFpfc9TDA/BiRK3wvITIlO+M
         FYQxDHcndF6Fb9JPTwsUKcI7kM9mKW8675zwArzAb7HFyi28zYJTOaBLmc1QEcCetHwz
         +q1rzjxxahjL3b1XJMPgLTuzb3/Umzwarwg76Uf6YS8P5Nr4IBP00Npc7d+q0IUT6RVs
         mda/hXLEu4v0/wz3mlmJeV+hTdJXUJsM/zAp0/0yAr3ddSp7ZiI8CSJA6lJ8DQ2BvfaV
         ui8pakfVGhoJTk7UDQX46gZH1piGLnwSZawG8LcEJtotqKNq/2HcufoI4/Lnczo5ext/
         iKrg==
X-Gm-Message-State: AOJu0YwIIqB3KSzQ23YGVRipllJ8i1d4qGOPWU3CAbuxIaVjmJ7s5pAI
	vS1y+3TXvhjBL8X1Bfj/fRBTkw==
X-Google-Smtp-Source: AGHT+IFKNInBH0+wVI9usnvM3zIPeA2ufDrxdwj06joslGu94sQIaI+AGsW2hSgXOumEWzGSUSrg8Q==
X-Received: by 2002:a05:6512:2210:b0:507:cd54:e93e with SMTP id h16-20020a056512221000b00507cd54e93emr268710lfu.2.1698346569919;
        Thu, 26 Oct 2023 11:56:09 -0700 (PDT)
Received: from [172.30.205.8] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id q18-20020a194312000000b0050797cbfa82sm3122255lfa.17.2023.10.26.11.56.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Oct 2023 11:56:09 -0700 (PDT)
Message-ID: <9439252a-4dbc-417f-99a8-fa7c5f11a3d8@linaro.org>
Date: Thu, 26 Oct 2023 20:56:07 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: qrb2210-rb1: use USB host mode
Content-Language: en-US
To: Caleb Connolly <caleb.connolly@linaro.org>, Andy Gross
 <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20231025-b4-rb1-usb-host-v1-1-522616c575ef@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231025-b4-rb1-usb-host-v1-1-522616c575ef@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 10/25/23 13:58, Caleb Connolly wrote:
> The default for the QCM2290 platform that this board is based on is OTG
> mode, however the role detection logic is not hooked up for this board
> and the dwc3 driver is configured to not allow role switching from
> userspace.
> 
> Force this board to host mode as this is the preferred usecase until we
> get role switching hooked up.
Does that not kill usb internet and similar?

Konrad

