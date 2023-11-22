Return-Path: <devicetree+bounces-18083-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2514C7F5093
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 20:31:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C1747B20D90
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 19:31:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7FC05E0C4;
	Wed, 22 Nov 2023 19:31:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nkGHURid"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5B381A4
	for <devicetree@vger.kernel.org>; Wed, 22 Nov 2023 11:31:22 -0800 (PST)
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-5094727fa67so81513e87.3
        for <devicetree@vger.kernel.org>; Wed, 22 Nov 2023 11:31:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700681481; x=1701286281; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/3Hb4WPhSaSPAUoOT6lB75q1bgT44dZFwIpXm+KkGko=;
        b=nkGHURidAIDei8O3E5usUyMd4izr+Y45af4dYisXNK5Ucfn1/gj6m+kdZVLFBqLXWe
         5F6EZVtNzFR7Q8QeYQ/vSBLeWGv6rhy+C4DPUdL6VEqi/QKyQ4MKO1fcDsOTPCuTf866
         hJHkBREZxUS68gI+vKa9XtEeVPuRjt7B6qBmoECCD3Zg3i3i3arYJ+hbo7+ilGWu07s6
         7YomS69xxuAa9u+YWGY9wTze5n35lwPRo/jhZg27Dr806SafNOGSG+DEXpf0rcCnZoGU
         Y8S1zBSyhuyd9KA/+FjyggmHwgk3VF/kEFbwmvuHWFRE6D1ctZZkEEpE/7AvVedZEDng
         mLmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700681481; x=1701286281;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/3Hb4WPhSaSPAUoOT6lB75q1bgT44dZFwIpXm+KkGko=;
        b=Fr1TZy4T1/LzMtmmOygjNdXV5bmoLSxvjh5FmY9Cf9IOFljmSLuFeTuciJ2r+eaqBn
         cS3kP5enc+T/V1JRGtdmewEjwQ5Js/LvsbQJAX3Mnp2/3LlFQdQ9NkigCekDJohCHe9v
         ++ooZkzI1IZIG6olbEHb6vNZZ3dw6zTY7e22z7ZFIBaVvbGu0egZToqI0ci517QjL493
         IN1ETBDlrHGE7TxZgwTZKkmzehNocLYyWBmdCldyhIZwebr9i3SXBhpc5x3bLYPs/aUN
         8zmpvSI6RXX5luDecAVflptAyMIn8VuxudV+wNISCZRzmDUhJ9h5yvo3AlCdjzpk6U7b
         TVkA==
X-Gm-Message-State: AOJu0Yw6WbDMcekBYvUDsQzZrKWJ2fwg4C1oAixQrUohmDyV7/KqXpjM
	xfR9P7s2kH/2JQq5a9QT/E/VQ1E2KSWdgwxzcYZy6yCV
X-Google-Smtp-Source: AGHT+IG9PnDXoY4hN8COg/8KM91F4QysmaB1ycYccER3JxluzECblJt0qpgWnFM6mx7ZjbgcZ5+Ohg==
X-Received: by 2002:a05:6512:3b9c:b0:503:261d:eab8 with SMTP id g28-20020a0565123b9c00b00503261deab8mr2918554lfv.28.1700681481136;
        Wed, 22 Nov 2023 11:31:21 -0800 (PST)
Received: from [172.30.204.74] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id i4-20020a056512318400b005007e7211f7sm1938041lfe.21.2023.11.22.11.31.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Nov 2023 11:31:20 -0800 (PST)
Message-ID: <675bce4e-1270-4e9e-b520-f3f4c1c5ee8a@linaro.org>
Date: Wed, 22 Nov 2023 20:31:17 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/3] arm64: dts: qcom: pm8916: Add BMS and charger
To: Nikita Travkin <nikita@trvn.ru>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20231120-pm8916-dtsi-bms-lbc-v4-0-4f91056c8252@trvn.ru>
 <20231120-pm8916-dtsi-bms-lbc-v4-2-4f91056c8252@trvn.ru>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231120-pm8916-dtsi-bms-lbc-v4-2-4f91056c8252@trvn.ru>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Level: *



On 11/20/23 15:03, Nikita Travkin wrote:
> pm8916 contains some hardware blocks for battery powered devices:
> 
> - VM-BMS: Battery voltage monitoring block.
> - LBC: Linear battery charger.
> 
> Add them to the pmic dtsi so the devices that make use of those blocks
> can enable them.
> 
> Signed-off-by: Nikita Travkin <nikita@trvn.ru>
> ---
Acked-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

