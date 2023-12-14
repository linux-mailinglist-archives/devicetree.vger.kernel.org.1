Return-Path: <devicetree+bounces-25611-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 27DC7813E57
	for <lists+devicetree@lfdr.de>; Fri, 15 Dec 2023 00:37:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D8968281EDC
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 23:37:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00DD16C6F7;
	Thu, 14 Dec 2023 23:37:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gNvqmDHn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E2C76C6EA
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 23:37:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-40c3ceded81so1109845e9.1
        for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 15:37:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702597063; x=1703201863; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7VVO89L9VZTI3O6OBS8Xb5DAR6WYttB1FJb4u0vyyCs=;
        b=gNvqmDHnjciakuczgS9s0H+VShnwqyzKY2n/vKDg5BNFE/qyvp9zYA0JZAYiv4PHC4
         s/4lsex5L2Wqohr7/yzFuYUgu21PlH3rOliZacLb7pa5IL2eM2iJpgzsX++FDkEVA6Q3
         aI7D49bYa+he3WTuMFqSytOzEQX8Mt5Po9r5+dt17wfYWEx5aWiUGDfN+sFVfJ7NoI70
         c/wQeewZK68jpd4xpkMzoYe0AEQRughb4rtyu3rV5/fWiKotdCg8nn5w7D1m1BcDKlQ6
         UmxGgIYvurvbjvrtD4QNBbv4MeQtgJ73xF3ddosHy7Db134uFbluNXMa4FlcmWTE3Wr8
         9NxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702597063; x=1703201863;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7VVO89L9VZTI3O6OBS8Xb5DAR6WYttB1FJb4u0vyyCs=;
        b=JoW/g47YHFSYComsWrtSG0rkajaVC30Oc7+SCvu52HQwf8a8j/Wi7iMG4goWS0zDOR
         kju7MRkL3yUJbnDHx2tmvEpebar/PkrSVuXGXlL823lnLrd1HgPWChWwvZUPwBDkXLDf
         U7o9ioMyTEgxXKKa09h4K/GEpH3TDQ9x3n1NS55WiOywWO6JrjxAQYllc6DG5+R5MNM4
         7PnepKXpdMqmCwEuHiadNhovhQvNlrmk5RX1ofO/R51LLhmU1R3HrQiIPz5hbn67/aRO
         eaqEBLhL/QLDzipquGXKTx3tNlxeh5ob7LwVDe2EJO7mtJWbMK9xNt2+5fRFMbwy5E23
         CqXg==
X-Gm-Message-State: AOJu0YxSep3kEFL5ak5IGgn2D6QxtMjCKGCkfwW21PiDyhnMfl5yxatG
	PKN3keFZYQ5B8tu5dZVhc1zPIni4gLLUJ5/b1L+LPQ==
X-Google-Smtp-Source: AGHT+IEIw6fODakxs+SDKFkkOz22erjEWVpm1FcZcPyyqFr5OfNKp0LxnOkROs9ikxtK6hyVPI59WQ==
X-Received: by 2002:a05:6512:3408:b0:50b:fa1d:aecc with SMTP id i8-20020a056512340800b0050bfa1daeccmr4627770lfr.29.1702597042079;
        Thu, 14 Dec 2023 15:37:22 -0800 (PST)
Received: from [172.30.205.72] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id f33-20020a0565123b2100b0050be242f50esm1981318lfv.58.2023.12.14.15.37.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Dec 2023 15:37:21 -0800 (PST)
Message-ID: <f6eb7bf1-7592-4313-9fe0-a3a8b8039ab5@linaro.org>
Date: Fri, 15 Dec 2023 00:37:20 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] ARM: dts: qcom: msm8926-motorola-peregrine: Add
 initial device tree
Content-Language: en-US
To: =?UTF-8?Q?Andr=C3=A9_Apitzsch?= <git@apitzsch.eu>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
 ~postmarketos/upstreaming@lists.sr.ht
References: <20231214-peregrine-v2-0-a35102268442@apitzsch.eu>
 <20231214-peregrine-v2-2-a35102268442@apitzsch.eu>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231214-peregrine-v2-2-a35102268442@apitzsch.eu>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



On 12/14/23 21:59, André Apitzsch wrote:
> This dts adds support for Motorola Moto G 4G released in 2013.
> 
> Add a device tree with initial support for:
> 
> - GPIO keys
> - Hall sensor
> - SDHCI
> - Vibrator
> 
> Signed-off-by: André Apitzsch <git@apitzsch.eu>
> ---
Excellent, thanks!

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

[...]

> +		pm8226_lvs1: lvs1 {
> +			/* Pull-up for I2C lines */
> +			regulator-always-on;
> +		};
just one q: is this intended to stay a-on, or will it be bound
to some i2c host (presumably camera)?

Konrad

