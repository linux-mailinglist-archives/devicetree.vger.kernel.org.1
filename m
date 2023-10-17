Return-Path: <devicetree+bounces-9298-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EC577CC8BB
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 18:25:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 28E17281994
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 16:25:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D78E4734C;
	Tue, 17 Oct 2023 16:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cR5IqRLh"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAD67450DE
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 16:25:31 +0000 (UTC)
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2EAEED
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 09:25:26 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-2c523ac38fbso31194391fa.0
        for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 09:25:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697559925; x=1698164725; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=R2vb1XTNsfZ5m/BsQX9yIiGSsnUXjkotdRfEp1ocJIc=;
        b=cR5IqRLhXGkfi0FuhyZRet7dGDLQ7a8XepbPVmgGmacw3y7tSzzNX4u1aUwZqphsWM
         aj0ZizpigWJ0XelbmCRrxxX8kOoRBu5EORw8XXx7pRgUHNh7xXNtUAas+slDtiUGNebJ
         SZB7GlxUfJm3GBNNuKY5zCMc/tM6EIU7YZMwl5+fssdInoUdrhiS8iPVwhlaSGD8AoRB
         dB5yk8D3BKnegugzujD0V1k1LI9ntR0hE/Ky6svY1R58SVRrpwSmnUF3zI6I/bII70rg
         nP3E7cfLhk4EHFjVCOFXJ4RSKQVxsYjkV94dvyuM7MPeDt30Qis4DsnbJQoagnQWNUmL
         rxEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697559925; x=1698164725;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=R2vb1XTNsfZ5m/BsQX9yIiGSsnUXjkotdRfEp1ocJIc=;
        b=sEYklDwfRYXs3cMX4jj0iHyWLzOtnR25JC6UK6/W+BOLcQcBDIchyK+CA1sy5vqFW4
         X8Rc3ZCywi4HuuADIJJmsTIIHPz/VnlmTSwZB4SrQY5ruXzue3x1guuRgRNtPAUKs1qj
         CIJYHmCxgTHukXufYSIp6P0J3uzlDaDUwhgAMxYHf2T5ZAjbvI1y4B/tqSGMMxmOY+kl
         Cat4TSa1JIyQvWiRA+Q9V24XQ7JMj+efFMSk1e2L/xQs8rD7NT9aKyWmvaOXUy9mIwdL
         kImnlFj/d8AQjKY7nBBtFtXwQFwEWgMda0L1x9NQqyh8GgI+rwk3WmMW2zGZrVqJA4NQ
         vFlQ==
X-Gm-Message-State: AOJu0Yw2+t13JVMDEJvGT8YcQidW9QQsmgbBTSc/ZpL4ZxDXrL9cyoBh
	DJknUd5qlifsb9QMXW4jOn9Whw==
X-Google-Smtp-Source: AGHT+IHWYI3YdD4u17EV22k+TxJ8a4G31u0Rd7E+oANUptnfVtuZcNmNr3WukHh7GNrQrXXXJplpWg==
X-Received: by 2002:a2e:9bce:0:b0:2c5:1f57:1ef5 with SMTP id w14-20020a2e9bce000000b002c51f571ef5mr2280248ljj.39.1697559924923;
        Tue, 17 Oct 2023 09:25:24 -0700 (PDT)
Received: from [172.30.204.57] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id f12-20020a05600c4e8c00b0040772934b12sm10459334wmq.7.2023.10.17.09.25.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Oct 2023 09:25:24 -0700 (PDT)
Message-ID: <3aede886-3219-4b9f-a44d-0c414979c260@linaro.org>
Date: Tue, 17 Oct 2023 18:25:20 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: msm8939-longcheer-l9100: Add
 proximity-near-level
Content-Language: en-US
To: =?UTF-8?Q?Andr=C3=A9_Apitzsch?= <git@apitzsch.eu>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org
References: <20231016-bqm5_prox-v1-1-2acdc732be9d@apitzsch.eu>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231016-bqm5_prox-v1-1-2acdc732be9d@apitzsch.eu>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no
	version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 10/16/23 22:18, André Apitzsch wrote:
> Consider an object near to the sensor when their distance is about 4 cm
> or below.
> 
> Signed-off-by: André Apitzsch <git@apitzsch.eu>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Out of interest, what is it set to by default?

Konrad

