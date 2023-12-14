Return-Path: <devicetree+bounces-25555-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DC2C78139D5
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 19:21:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 999B82821E0
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 18:21:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5E2168B6A;
	Thu, 14 Dec 2023 18:21:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zn8E1Llk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3DD0510A
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 10:21:19 -0800 (PST)
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-50bf82f4409so933221e87.0
        for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 10:21:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702578077; x=1703182877; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tafX2xO3xAurBh49KG+2mvpDK4q6+JAcQjqSwoaxrcE=;
        b=zn8E1Llk7e16Y2Ks60uDFwB7lFGJG6HFJbO+9bXwNt6mQTr0KIFkxNnRsQvTMmS1+F
         ppKne+Ghdj2Hcj6vsK3HppfJ6DUowUFZQZ9mT3xmJdxAD86+zmb7y9xtpI4I0BuVHsHJ
         zB5KuYebQr6p9dig46St7KGucp2fQPnKZAuwE++smd+GH6V7C81WQLPL4BV9bxsuRNwI
         etEbZt+daZ2vmFVBZJHi+RKQYgTLKqTlP2IEYQXIdtsbELgZiXd/PefFNHGJjT8EB90A
         c8uLoh3FxvDH2BeaW33WPyCqC+VpBAvMinr1AH0kCADyv56uNfYiBV1dN4NjGapVi8Qb
         TfjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702578077; x=1703182877;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tafX2xO3xAurBh49KG+2mvpDK4q6+JAcQjqSwoaxrcE=;
        b=Wr9lG8sun0ossjg3Nd1eFwc0DvFK3QSXkuMmC1lZQw4au3qCPFmjdO18F3bt/bVHvY
         COsoA6Kp9RZkEPFjyTqiUAUcgTnlgpM7ESl311JYdj0rEBwpT3YeNMCfvG08dw2bfSx2
         cen/80kLfmHiO7x49qoZ2U0eVr4KBM+1bK2zTJAwiwEsZdaMkojsZz7FOjuHlAFk3k4m
         hYdlr3Ox6lrZvHvj9/RvFtyi5Xe+AhwUmCK6ydAagv7bnKXqqRdRmqHlC29uoCsBM9Xh
         TWpzc7cPJ7KCpb3pPy0qqxsl020DciUYz8M2G9u/KBUbtV3hPGnyub5lhrCPjRSVBOK7
         bh7w==
X-Gm-Message-State: AOJu0Ywzju7hbQlGRit2OXp0wIf0sEO1a0BGLxtLfjwJZtQG7lo4zj6C
	826flNj+p7/wV8H4dcYO4GVVDQ==
X-Google-Smtp-Source: AGHT+IE1OD2xsxB9RWQXbOqrcXcuu2XkumezDuYt6qOI7ak3ltyNiq6bYWnvuZG3s3zDZDMzhCMgbA==
X-Received: by 2002:ac2:46ce:0:b0:50d:1842:551d with SMTP id p14-20020ac246ce000000b0050d1842551dmr5027987lfo.13.1702578077527;
        Thu, 14 Dec 2023 10:21:17 -0800 (PST)
Received: from [172.30.205.72] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id i10-20020a056512340a00b0050be8d89aefsm1929877lfr.309.2023.12.14.10.21.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Dec 2023 10:21:17 -0800 (PST)
Message-ID: <37f704fa-b5e5-4c2e-9576-0bd37c9ad624@linaro.org>
Date: Thu, 14 Dec 2023 19:21:14 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/5] arm64: dts: qcom: sm8550-mtp: Add pm8010
 regulators
Content-Language: en-US
To: quic_fenglinw@quicinc.com, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, kernel@quicinc.com
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, quic_collinsd@quicinc.com,
 quic_subbaram@quicinc.com, quic_jprakash@quicinc.com
References: <20231214-pm8010-regulator-v2-0-82131df6b97b@quicinc.com>
 <20231214-pm8010-regulator-v2-4-82131df6b97b@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231214-pm8010-regulator-v2-4-82131df6b97b@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Level: *



On 12/14/23 03:59, Fenglin Wu via B4 Relay wrote:
> From: Fenglin Wu <quic_fenglinw@quicinc.com>
> 
> Add PM8010 regulator device nodes for sm8550-mtp board.
> 
> Signed-off-by: Fenglin Wu <quic_fenglinw@quicinc.com>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

