Return-Path: <devicetree+bounces-10562-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F58F7D1EAB
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 19:35:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8BCB6281C38
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 17:34:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE1731B28D;
	Sat, 21 Oct 2023 17:34:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YalzfpQG"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D74B85667
	for <devicetree@vger.kernel.org>; Sat, 21 Oct 2023 17:34:52 +0000 (UTC)
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D300124
	for <devicetree@vger.kernel.org>; Sat, 21 Oct 2023 10:34:44 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-32ddfb38c02so1346925f8f.3
        for <devicetree@vger.kernel.org>; Sat, 21 Oct 2023 10:34:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697909683; x=1698514483; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lAD8koNag2d2JiuZzDEdme1uco389oMcfmj0tVw3ir0=;
        b=YalzfpQGXQ6NOgnlTaIEwX1Dc12UFy6oBKITgvJ5jET9H9W+K+PlYjIhhFI3BOT3JT
         C7jBJV6SyQOR/5+Fq98faQXj7og1xxv8jEqjCJNoQy0Nlq+7Ilwc5KYs1e3eHyvUMY+H
         KpTiqcqPlZHHgAK2UInrlKlRWQku3YrFHvVENDTOO4klmJ9+GoD5WnNjQ2pXpQ4N4rsR
         1HPjEHUXZWxEjGg/WvVyMy4M6Ej5kjuHJIIIKmvkjXbRme9Mv+I4tLwrjEHjbgMZM73L
         kLW6xZFNSBdi/xoZ6s4+os6E2VM+k9DSFDt7BFVNmFlvK/ZRDLO2VyXLjhtJW+pin/dA
         REpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697909683; x=1698514483;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lAD8koNag2d2JiuZzDEdme1uco389oMcfmj0tVw3ir0=;
        b=DI2XGo/tbSt+8Ni6kCF9I9f5q/uqvGRD4qofpKAyQaGi5Q7RHTKly0usb6layVU8hH
         8SRxudOlSoZKkii9lOi7LbPIMJH4li+ZRdrSu0LAkwrs053WYS6cLhYK3LhY6f5IIwJ2
         WRhNsRYxpkMhpF2q/L01rJ1Sp9YNq3ktOyWwT0EosE3FBvAsveD/dcW+5KUJcgnxBZ6h
         /HSxx3mM9XmVaO+2oeutiN76ZdV+PBUrkEdflOeOssagrimIqQvAq0YOgaZub1DvyN7m
         kd47zWntGsbvT5utNtCbamkFwNN+RMtZb9EkUVsBQrD8ja2KlhdGVsRkrWAzPTFOhkUB
         EKWQ==
X-Gm-Message-State: AOJu0YxG0+pZhTnAeWhLqu7OyByx8ba7KlQs9ThOZEwdT4B0B77ADI9P
	TWa3Te8ZAawsFBHQS6i0XcJUJoEY46wIsQ95CeOQaw==
X-Google-Smtp-Source: AGHT+IEdWOZfR7p1w9Gb6XxLwAdNTGUgNWToaW2hfYQYWWvy8WPkZ2M5RTmKk2TbFj+qKJVFImmR2w==
X-Received: by 2002:a5d:5691:0:b0:314:dc0:2fca with SMTP id f17-20020a5d5691000000b003140dc02fcamr3367064wrv.29.1697909682769;
        Sat, 21 Oct 2023 10:34:42 -0700 (PDT)
Received: from [10.66.66.3] (9.ip-51-91-159.eu. [51.91.159.9])
        by smtp.gmail.com with ESMTPSA id h12-20020adff18c000000b0032d402f816csm4019129wro.98.2023.10.21.10.34.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Oct 2023 10:34:42 -0700 (PDT)
Message-ID: <5e148fb1-c04c-4dd1-bcbf-27c7475d4f01@linaro.org>
Date: Sat, 21 Oct 2023 19:34:39 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: msm8939-huawei-kiwi: Add initial
 device tree
Content-Language: en-US
To: Lukas Walter <lukas.walter@aceart.de>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 Raymond Hackley <raymondhackley@protonmail.com>
References: <20231021143025.77088-1-lukas.walter@aceart.de>
 <20231021143025.77088-2-lukas.walter@aceart.de>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231021143025.77088-2-lukas.walter@aceart.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 10/21/23 16:30, Lukas Walter wrote:
> This dts adds support for Huawei Honor 5X / GR5 (2016) smartphone
> released in 2015.
> 
> Add device tree with initial support for:
> 
> - GPIO keys
> - Hall sensor
> - SDHCI (internal and external storage)
> - WCNSS (BT/WIFI)
> - Sensors (accelerometer and proximity)
> - Vibrator
> - Touchscreen
> 
> Signed-off-by: Raymond Hackley <raymondhackley@protonmail.com>
> Signed-off-by: Lukas Walter <lukas.walter@aceart.de>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

