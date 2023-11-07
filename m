Return-Path: <devicetree+bounces-14445-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 37AF47E4AB8
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 22:30:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 661ED1C20A1B
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 21:30:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39CA3A21;
	Tue,  7 Nov 2023 21:30:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UkthJi1J"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE5842A1D2
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 21:30:38 +0000 (UTC)
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 111B910C1
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 13:30:38 -0800 (PST)
Received: by mail-lj1-x22a.google.com with SMTP id 38308e7fff4ca-2c6b30acacdso82111681fa.2
        for <devicetree@vger.kernel.org>; Tue, 07 Nov 2023 13:30:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699392636; x=1699997436; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=R+nOvxmuweBRjq2vUStISHnZywHlhJnRPwpNYjj7p00=;
        b=UkthJi1JXmBp8n8hbwus38uz+etGSx3u5/TGAqJvt3fktCVAwocJzGfM/gY7VbdcF8
         VWgER6Y/B2OOZE/8SMOwaxhbroqVk/VrPa6OnbnjQ9PWOqVxl68OKqbOPdTT9ZARe4zL
         78yBzLbu9Ypnh9xpWbw9Idarpcye3Na+ewgQ9D33kmbE2VwRe57ETapXFYL4V0eg3tEB
         nDqo3ENyZstheWfszDu10nQnElDq/GUzEAb7lQFvXI9EmnfzzssB/4Ts92ajLAj5Td9f
         hhoRcjA93ROqH/nu2fT2GrafWo4cgamsVQFHVI0eVpxSMpSQeTKAgOfxoGSrDQucCmg8
         u74Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699392636; x=1699997436;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=R+nOvxmuweBRjq2vUStISHnZywHlhJnRPwpNYjj7p00=;
        b=vaHWl+Y5lyM0Hcr7D8psU1merX/xNaCVaciCR/wjrL/gRu953RJJRjjCl2FT15E0aE
         y1oyhDa7YjPs9s8smQ9YiYyRo+xLWhvTICKosHb0BvFep+CryCmS5Iersw0RCCFTqzrz
         EvgwxBwfGWXbaUvsWWpHpg8eCIwbrqvE3UBe9KBcWUYl0ZlSUVZniUYvMu/ae4B39x9C
         oXDyYRYF1XSgXwN723xjtdgICarpHWUOXZM2gWtMpqI3GFzktA2C2x17npUmDpkdw1Jp
         +uKgUstd8GvPMTfS48HJP4QElK00x+rWMpx3SdUbGqDKqUW7Skm/vkx3bHa5vzhi2gSQ
         qUMA==
X-Gm-Message-State: AOJu0YzBFoOZveOjjXA6aygWEQPnsJ1A3+CmLr1tgx/bUB5JGnfBLaXn
	b5If62p7NMUyIyghYn158RyjhQ==
X-Google-Smtp-Source: AGHT+IEuV2CgwxVmGo9JIry8jyCKk97ZVrQayqVbs2dbHteycCTo7HbZRfs/DYqnLy0foJ0Zlv1rPg==
X-Received: by 2002:a05:651c:446:b0:2c5:1542:57e9 with SMTP id g6-20020a05651c044600b002c5154257e9mr159980ljg.41.1699392636422;
        Tue, 07 Nov 2023 13:30:36 -0800 (PST)
Received: from [172.30.205.109] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id t4-20020a05651c148400b002b6daa3fa2csm1607587lje.69.2023.11.07.13.30.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Nov 2023 13:30:35 -0800 (PST)
Message-ID: <6715dfd5-acf5-434c-a9bd-0a5bcdd72010@linaro.org>
Date: Tue, 7 Nov 2023 22:30:34 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 8/8] soc: qcom: socinfo: Add PM8937 Power IC
Content-Language: en-US
To: Dang Huynh <danct12@riseup.net>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Lee Jones <lee@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Robert Marko <robimarko@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20231106-pm8937-v1-0-ec51d9eeec53@riseup.net>
 <20231106-pm8937-v1-8-ec51d9eeec53@riseup.net>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231106-pm8937-v1-8-ec51d9eeec53@riseup.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 11/6/23 13:08, Dang Huynh wrote:
> The PM8917 and PM8937 uses the same SUBTYPE ID.
> 
> The PM8937 is found in boards with MSM8917, MSM8937 and MSM8940
> and APQ variants.
> 
> Signed-off-by: Dang Huynh <danct12@riseup.net>
> ---
Are they secretly the same thing? Do you know somebody with a PM8917-
equipped device to check that theory out?

Konrad

