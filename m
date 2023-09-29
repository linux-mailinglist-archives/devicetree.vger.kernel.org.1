Return-Path: <devicetree+bounces-4532-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D418A7B2FB0
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 12:07:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 3D1D8B2099F
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 10:07:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9B21154B3;
	Fri, 29 Sep 2023 10:07:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F714C13E
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 10:07:28 +0000 (UTC)
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 366901A8
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 03:07:23 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-323ef9a8b59so4336263f8f.3
        for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 03:07:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695982041; x=1696586841; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=saeVjZKnNIdT5X2zsR9LIVhUYqk+dCAG4klu5qT+Ffg=;
        b=lRFS8YZw2YXxaLiLUcmc8FelgGsR4YKETDVJ/Fi9XKvFK06VD8bHY2wWojQ65gEfx5
         7kapsYcNlWnnZh7hmAs8sSu3pPfzSMrV50oa9na/IMavd8nvkRGxvx1Rph0nfyaMPk5j
         xMNTg1Gcq8phChu5zytFNilTmC5jnOdXyojyglIR7UBLPnuzn8grk5/IykNEO8S5G3/w
         seWsx0Y4z8oouBHIwO8gy9Ypag+4hQtoETPPrfIJTzm7CcyH7VEZJVI3UvVLxp8FaGzG
         V8gx+19FQ59FsmOPM55ALeyhHlCJQ2Q7qx9dRV05Q8LtTk+7jo4aDiGn36FiTB8nE3Pu
         QdOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695982041; x=1696586841;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=saeVjZKnNIdT5X2zsR9LIVhUYqk+dCAG4klu5qT+Ffg=;
        b=v13Ad7+U3LTIPDcoMTyPjKugTZhSY8It6SnMulaJWvkpO8MSqWEte8JYQq2QbZxFxm
         gemgNBp9WzvipT5+dR2agijxouTqTOLNxRpOau8s9XMN54RN0C1R4DIaSHp2E3lrbeJt
         in7ZBTud6n6RJvGQQ5uX1HoE+oLAPdns6SJtqQHe50Wi+IUybVeArdJL88Q3lH8MGAHA
         /s8rxBBfycyve2Pep6caHeUYXseWhxKVrlqkRprBK+2K/Z3lwxWqIf5XyFtj++NyaRd3
         4AglQ3wPg4ShtvM2xQFs0b0RaogqPh9lo/czWKmfcI6m2EV023Ic/o6USBXFZ0hrA+4v
         8QfA==
X-Gm-Message-State: AOJu0Yyof3WsSOrAzJ+wvHltU0wHp+5pzo13wxTLEZ3mucBjgWk8d89X
	Rf9pDFdTReuBWZTVn9ko52sUCw==
X-Google-Smtp-Source: AGHT+IERNMlExukG/RveR36j1SNOU9On3l/LWyUL6FUPZWyOQjBBFEni+g6TLCYEFZZRLr9PU0SzYw==
X-Received: by 2002:adf:f08f:0:b0:323:1d06:38e5 with SMTP id n15-20020adff08f000000b003231d0638e5mr3438326wro.55.1695982040734;
        Fri, 29 Sep 2023 03:07:20 -0700 (PDT)
Received: from ?IPV6:2a05:6e02:1041:c10:c49e:e1a5:3210:b8c0? ([2a05:6e02:1041:c10:c49e:e1a5:3210:b8c0])
        by smtp.googlemail.com with ESMTPSA id m4-20020adff384000000b00321673de0d7sm5852687wro.25.2023.09.29.03.07.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Sep 2023 03:07:20 -0700 (PDT)
Message-ID: <ae6d5f5b-bd06-c55b-b970-f1f7e39fd749@linaro.org>
Date: Fri, 29 Sep 2023 12:07:19 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v3 1/2] dt-bindings: thermal: tsens: Add sa8775p
 compatible
Content-Language: en-US
To: Priyansh Jain <quic_priyjain@quicinc.com>, Andy Gross
 <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Amit Kucheria <amitk@kernel.org>,
 Thara Gopinath <thara.gopinath@gmail.com>,
 "Rafael J . Wysocki" <rafael@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 quic_manafm@quicinc.com, kernel@quicinc.com
References: <20230926085948.23046-1-quic_priyjain@quicinc.com>
 <20230926085948.23046-2-quic_priyjain@quicinc.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20230926085948.23046-2-quic_priyjain@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 26/09/2023 10:59, Priyansh Jain wrote:
> Add compatibility string for the thermal sensors on sa8775p platform.
> 
> Signed-off-by: Priyansh Jain <quic_priyjain@quicinc.com>
> ---

Applied, thanks

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog


