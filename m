Return-Path: <devicetree+bounces-16036-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7586D7EC95B
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 18:07:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2BAAE1F24906
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 17:07:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 970CB3FE58;
	Wed, 15 Nov 2023 17:07:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OAgleNmM"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DFA33308D
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 17:07:25 +0000 (UTC)
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DEDCF18E
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 09:07:23 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-32da4ffd7e5so673542f8f.0
        for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 09:07:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700068042; x=1700672842; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dB7xh8nk+eJb46EfbGktKWpgeMyfJEH/xs3+rQACfvE=;
        b=OAgleNmMysI+4IjxXxJVUMH7eSNNsmyVkMwS3VPHg3pS3EIUBuZH2NmtJLC+S1+29F
         cUn0KUXKNSgxx9MQoUQqWn/5Iq1G8df6UQ1tlNEdB7huWHDzzZFG7iD5apcRj2llu3rZ
         u6JPY3bQl7z1SYUQnVf45nS2eljK+SiXJn4YLKnp1xdGHCRdYI84ivW2JCoFghvSDYZ9
         1ahHIg94ZEmTgxnOpln0wxPK2bQejmIf9vekZvwN9MQmMlkqW2sKsuFA/NEVjhDKR96i
         aMUl/D7y/Pi+GTkZkBmca32OZUOU0DwyzakIfbBrly8h3FDt2G8DmirewIlOOkas1U4f
         mC6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700068042; x=1700672842;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dB7xh8nk+eJb46EfbGktKWpgeMyfJEH/xs3+rQACfvE=;
        b=u7no06Mwd1LrI9Qy2sshsnh5V04Jq6dQ6Ils/6S/djMWw63ObP4mA9eXmgupBnDgcp
         E8yoGPdP6N+/LigJ8GoPkcM9UDfp9k6NQ/hZT0FuHVxl/9o/4uZrZ4M69jO5sRQZxR3L
         Efg/8nCgqWGP9J8ZIYaagezV9ymwXJ7fuqoEYQ570r7tnHxxRxyGv9azeGzawmfFWAKf
         5t4rCf7JBhQ/Ug/4GNWFmrnQgQS3n1bU/2uzymZRNs7WeMYuHTDL/fKRDQSzOl5PJP7n
         QWfVRY4j0x+nxJgJMlCtxjwj8ylgK15U/ae8k8pBC2j4JULKN7h90IG58RAE8JQCYJxY
         AL9g==
X-Gm-Message-State: AOJu0YyyoTaosjJdaZMXf6JqFnv52KKWGXzbZ1BUt3mS52lZuxs707EP
	VzKbMGidjokwlE9+cdQAedPgJQ==
X-Google-Smtp-Source: AGHT+IGbUGtVGH7+Z3tfhZqIZqoIY32UXp082s8ffs6m2y9YdKNUEMx2b6pMMRQr9j+dTdTEFGsGpA==
X-Received: by 2002:a5d:5983:0:b0:32f:7eb0:2ed3 with SMTP id n3-20020a5d5983000000b0032f7eb02ed3mr5362719wri.5.1700068042339;
        Wed, 15 Nov 2023 09:07:22 -0800 (PST)
Received: from [192.168.100.102] ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id b11-20020a05600010cb00b0032f9688ea48sm11078327wrx.10.2023.11.15.09.07.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Nov 2023 09:07:21 -0800 (PST)
Message-ID: <ab2c54fc-6557-4c21-9f51-761e8491f4fe@linaro.org>
Date: Wed, 15 Nov 2023 17:07:20 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: qcom: ipq6018: add QUP5 I2C node
Content-Language: en-US
To: Isaev Ruslan <legale.legale@gmail.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <CACDmYyfOe-jcgj4BAD8=pr08sHpOF=+FRcwrouuLAVsa4+zwtw@mail.gmail.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <CACDmYyfOe-jcgj4BAD8=pr08sHpOF=+FRcwrouuLAVsa4+zwtw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 15/11/2023 15:38, Isaev Ruslan wrote:
> v1 -> v2: fix clocks typo; fix reg size warning. 
> arch/arm64/boot/dts/qcom/ipq6018.dtsi | 15 +++++++++++++++ 1 file 
> changed, 15 insertions(+) diff --git 
> a/arch/arm64/boot/dts/qcom/ipq6018.dtsi 
> b/arch/arm64/boot/dts/qcom/ipq6018.dtsi

When you added the v1 -> v2 to the patch you also caused a newline which 
prevents patch application.

Try

"git format-patch HEAD~"

then

git reset --hard HEAD~

then

git am < your-patch.patch

Resend when that works

---
bod


