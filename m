Return-Path: <devicetree+bounces-11718-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D23BA7D6658
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 11:11:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E11CB1C20A3F
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 09:11:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96617208D4;
	Wed, 25 Oct 2023 09:11:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ikYhvwT6"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 420553D72
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 09:11:34 +0000 (UTC)
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D482198
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 02:11:31 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-2c501bd6ff1so75960311fa.3
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 02:11:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698225089; x=1698829889; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=58tDLmUrp1Y7zKHRzVWCThNpjHf0swWESRGPN2hl8k8=;
        b=ikYhvwT6E2UT7IvlVSPtnXgyyit9hMaQWAXvNiz3gshRB4iiGJX2nugNxzo+ZOP4Da
         5GQT/ZS+vCDRq+L8wc7ZzDoGYZm+GU84lKQLEszSFr5DyZbwHxfP4C94P6yL7H5UQI0Z
         PYWOHeAgiMCqubgxjxgoK5Hn93LEbrOPMQ8JsPoUDh66WKEFAgYLZDtrN49mYhmk0ELn
         JmC5wjRJdP2fC4+xDp4TAw3ZdxHNsvH4bWLYKUwV/i9F7h27qy/n1T7Il5VszdfJWd9/
         wLXHzqZsES4CwjyZinzYLboFiHqgCnrLmThEbzTp97368bHoJAXHTVwK9GqYwKlXP/zq
         7Img==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698225089; x=1698829889;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=58tDLmUrp1Y7zKHRzVWCThNpjHf0swWESRGPN2hl8k8=;
        b=P+R50GP+1msiS7fc75KkiIf3FQSNSi0/ww8v+CY0KhF8n8rkfAvjWN3MFFpLEkcdGD
         oMKYGBdOW43APwoyxaQZyor3BLkwor5fYIgVf9lj5EvEcIDhXyrlYXmh2SkVHzkRxvHX
         Sj3DcUuidgxRjsAIrgRaTREpmKKeDj/8W/4Gywb8/8IPmX4elbqMT/3Pj4gJSEubh7SE
         jkkRDMi4jSthangRN/o1c28ycrHHYFnqCJyLSOeHqd5NsyJCFODrRCVpJYY25KjIXzGQ
         lAacjxvuAKsvI/QKhYM6TUCmjn9zBE7I04dSCnNZljVg00r4kk87Dx+m8dsdsuJJ6NGn
         NKRQ==
X-Gm-Message-State: AOJu0YzzMUJMTXCyv2cT9hLNCDAsRGYvBuF0JGFWsl878hUj/qWF6Kcj
	j4tT8Fnydh5h3i1vdFOOt9YuzA==
X-Google-Smtp-Source: AGHT+IGwm/5mxEe7WZa0vxAR3paFKN2FpTQaJQxGkpm+6IK9mESTyICa0N5VUaXSkpjYALGda73ANw==
X-Received: by 2002:a2e:b88b:0:b0:2c5:380:2a10 with SMTP id r11-20020a2eb88b000000b002c503802a10mr11884563ljp.25.1698225089059;
        Wed, 25 Oct 2023 02:11:29 -0700 (PDT)
Received: from [172.30.204.57] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id d24-20020a2e3318000000b002bce87faca9sm2354356ljc.57.2023.10.25.02.11.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Oct 2023 02:11:28 -0700 (PDT)
Message-ID: <c98a3141-13a2-4cb3-bbd0-74ff63446183@linaro.org>
Date: Wed, 25 Oct 2023 11:11:27 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 7/8] arm64: dts: qcom: sm8650-mtp: add interconnect
 dependent device nodes
Content-Language: en-US
To: Neil Armstrong <neil.armstrong@linaro.org>, Andy Gross
 <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20231025-topic-sm8650-upstream-dt-v1-0-a821712af62f@linaro.org>
 <20231025-topic-sm8650-upstream-dt-v1-7-a821712af62f@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231025-topic-sm8650-upstream-dt-v1-7-a821712af62f@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 10/25/23 09:47, Neil Armstrong wrote:
> Now interconnect dependent devices are added in sm8650 DTSI,
> now enable more devices for the Qualcomm SM8650 MTP board:
> - PCIe
> - Display
> - DSPs
> - SDCard
> - UFS
> - USB role switch with PMIC Glink
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
[...]

> +&ufs_mem_hc {
> +	reset-gpios = <&tlmm 210 GPIO_ACTIVE_LOW>;
> +
> +	vcc-supply = <&vreg_l17b_2p5>;
> +	vcc-max-microamp = <1300000>;
> +	vccq-supply = <&vreg_l1c_1p2>;
> +	vccq-max-microamp = <1200000>;
You should amend these regulators' nodes with loadsetting
and allowed mode properties

Konrad

