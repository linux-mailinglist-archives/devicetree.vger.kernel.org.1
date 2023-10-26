Return-Path: <devicetree+bounces-12132-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 166177D80E8
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 12:38:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4738C1C20EEF
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 10:38:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97B8C10E6;
	Thu, 26 Oct 2023 10:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="c+/FmvCm"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E67C28DB4
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 10:38:21 +0000 (UTC)
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9499E1AE
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 03:38:19 -0700 (PDT)
Received: by mail-lj1-x236.google.com with SMTP id 38308e7fff4ca-2c50ec238aeso10294711fa.0
        for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 03:38:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698316698; x=1698921498; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JfmsBpRttI4bG7wY3IkTMsP9d4S4e9ZlWHpBoPQs8Js=;
        b=c+/FmvCmPBKHxp7hqB4IXfrGWCghvM5TV42YR3eGCC2evWFSk8C45TXG4xSDEtNW0l
         9FUD1XQU7kaHoNmq3t6R35+QPClHisy23152MX/L33N0OCK0ZXEKwo8s8oHzvavoOJcE
         4aEqusnNo9rQgUOAP9CT87nDdZeMfuaXPD0hLL6iFEvOg8w92tElrpVWslDoHW40eNRk
         Rge0YgEyxtKvcXxO1TCIyRqFHPp1j1iux+13M37UbOXyB9yHhhgjFSRYPf9mDufKkfDI
         uttpiR8UHuRhC9KMnqb5/mnKBrSBqsuI1wAIsBF2P3kebS8Z6CTqDR59WrHFeXEnwjJP
         +V3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698316698; x=1698921498;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JfmsBpRttI4bG7wY3IkTMsP9d4S4e9ZlWHpBoPQs8Js=;
        b=njMwYE3nOwneo61Z3S9ld4INp33BSuI4NobnLt2EbbWIFJ7jKkfzbqn5kgOUdXpTa3
         TxkJTXVash5hnQwE35Hk/YDojLTBIOpoXPgkv9wB9t0yZKGov5COgD4EfzOXiKYxIx/4
         FRre1mB5+0oGhCg6JYnWYnziJi5wjzKlKthF84QZzLdf9DCfxbfqg4y3FRX1Qq5CrX/9
         +mtUczsq0pOv3G87Mr8NN3TEBqaXoaihmQxy5tn1GuTZecRLbwny0FulX3q/4Okj3O4i
         zhQ1GFfd62NnDdr1K0jtUmvps8JKlXDXJP+1LU7p/f31hNnwPLYhiVydRZzLNuZP9YxI
         PsPA==
X-Gm-Message-State: AOJu0Yzjggos/irAG/Qroms66u8vAW3fx0+DjJ5xtl6wXsMCiFQgbrWT
	clUQTNL7zKeP2xfQDZmggWLNPA==
X-Google-Smtp-Source: AGHT+IFb3s99g9tdjSUdEoZkLS81bC+uDFir7+4WiZXWRXUV0iEEKdr5KFx/XN0gnEeeq3D1MwzGVw==
X-Received: by 2002:ac2:5619:0:b0:507:9a05:1aed with SMTP id v25-20020ac25619000000b005079a051aedmr12840492lfd.4.1698316697735;
        Thu, 26 Oct 2023 03:38:17 -0700 (PDT)
Received: from [172.30.204.123] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id n24-20020a05651203f800b00501c8959f6asm2954228lfq.98.2023.10.26.03.38.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Oct 2023 03:38:17 -0700 (PDT)
Message-ID: <5eb61cce-8b3f-43bc-8e23-a63bf6f2c772@linaro.org>
Date: Thu, 26 Oct 2023 12:38:14 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] arm64: dts: qcom: sc8380xp: Add Compute Reference
 Device
Content-Language: en-US
To: Sibi Sankar <quic_sibis@quicinc.com>, andersson@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 catalin.marinas@arm.com, ulf.hansson@linaro.org
Cc: agross@kernel.org, conor+dt@kernel.org, ayan.kumar.halder@amd.com,
 j@jannau.net, dmitry.baryshkov@linaro.org, nfraprado@collabora.com,
 m.szyprowski@samsung.com, u-kumar1@ti.com, peng.fan@nxp.com,
 lpieralisi@kernel.org, quic_rjendra@quicinc.com, abel.vesa@linaro.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 quic_tsoni@quicinc.com, neil.armstrong@linaro.org
References: <20231025142427.2661-1-quic_sibis@quicinc.com>
 <20231025142427.2661-5-quic_sibis@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231025142427.2661-5-quic_sibis@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 10/25/23 16:24, Sibi Sankar wrote:
> From: Abel Vesa <abel.vesa@linaro.org>
> 
> Add basic support for SC8380XP CRD board dts, which allows it to boot
> to a shell.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> Signed-off-by: Rajendra Nayak <quic_rjendra@quicinc.com>
> Co-developed-by: Sibi Sankar <quic_sibis@quicinc.com>
> Signed-off-by: Sibi Sankar <quic_sibis@quicinc.com>
> ---
Pretty much same comments as previous patch (on the QCP part)

Konrad

