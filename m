Return-Path: <devicetree+bounces-4715-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C1E827B3876
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 19:17:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 719602833E4
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 17:17:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0805516CB;
	Fri, 29 Sep 2023 17:17:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B42E41745
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 17:17:09 +0000 (UTC)
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B3F53193
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 10:17:06 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-9b281a2aa94so1331878766b.2
        for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 10:17:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696007825; x=1696612625; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MCBBShUT4W02J7jpHyBvljZ5v8OF4qTE4nEXAa9+HQo=;
        b=DaAeUPWNbLAXcSnbKtKx9k8tzmju5BvjLVP25dVmy8l+DFvm76lTKxfAl4T4xtTx3E
         qsuVXfZC+7cK+JFpbY22SXCCTxMt548VZiL9+4LLDwWNR/oyR9v4Q+yKh0KTlU6s5LpS
         oHQJSpKiVxdJ7F8OqxY7EKiKlEn5SZjmYWdUG4RIE6w/FE6gyyucPHvQMmfd84a7A8ER
         qWS5wsIDNrWUjTqU75K0BUbWxKRvaWRuu2VFiNNzO9gN8//VvCLABv7TP6mHnCIkLWiC
         sqcYpdWFqMG63AofWuj0H2LpUuJhmA9OMgKqAV2MXJ160ZRTw+TmiOTVbCF08fcmy96P
         aHEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696007825; x=1696612625;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MCBBShUT4W02J7jpHyBvljZ5v8OF4qTE4nEXAa9+HQo=;
        b=r39I7/BTh70SjRiX2vOKwmQtb0JKbRh9BqalPT1NU473jfOLSatoU27v1viSMEGU4P
         jqNm9BRI8rlcvpnjxm/wbjdq50mpRYXVqAV3ooR4j1vfHlUAdRIopzlOgvvqTH3RKTQY
         m30+kQuHrrUL8eXFzWBBwIS5fQBB7lDL6+D3Kkli3PHXPAghS7zfQPXwBQ+5J+2W997O
         QOesgq6xxa4t5USlzfUaWZsgFpTs4GuGycJOQcE5wqnfC3foztxbgw7+tDzDfD2KTSRE
         OzbpMjcT0dequt2N7iAK+b4f3yLvWn3rpH6bzsuB7svgpxMdnCuDs57X7yC2UrvMZcU2
         aPxQ==
X-Gm-Message-State: AOJu0YwtqzyDyKybY+RcI8npU5rUV7W4v/uD8IvcYQgTRCqX2moantm6
	uEmM2jOPDVrucG+hwbp5RNlCeg==
X-Google-Smtp-Source: AGHT+IEVlmhe5KkcPsN5ToZ63pYahJO2Raan9LFaPXvJE+ynl/eQtYlDRZyRCc8/A1/gF4lPC1pYmg==
X-Received: by 2002:a17:907:2cd4:b0:9a1:abae:8d30 with SMTP id hg20-20020a1709072cd400b009a1abae8d30mr3849432ejc.47.1696007825199;
        Fri, 29 Sep 2023 10:17:05 -0700 (PDT)
Received: from [192.168.33.189] (178235177217.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.217])
        by smtp.gmail.com with ESMTPSA id v5-20020a1709064e8500b00993470682e5sm12602370eju.32.2023.09.29.10.17.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Sep 2023 10:17:04 -0700 (PDT)
Message-ID: <30066188-3787-4277-914e-e06c95fe2e1c@linaro.org>
Date: Fri, 29 Sep 2023 19:17:01 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/4] thermal: Introduce Qualcomm Thermal Mitigation Device
 support
Content-Language: en-US
To: Caleb Connolly <caleb.connolly@linaro.org>, Andy Gross
 <agross@kernel.org>, Bhupesh Sharma <bhupesh.linux@gmail.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Amit Kucheria
 <amitk@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Sibi Sankar <quic_sibis@quicinc.com>, Manivannan Sadhasivam
 <mani@kernel.org>, Thara Gopinath <thara.gopinath@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org
References: <20230905-caleb-qmi_cooling-v1-0-5aa39d4164a7@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20230905-caleb-qmi_cooling-v1-0-5aa39d4164a7@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 29.09.2023 18:16, Caleb Connolly wrote:
> The Thermal Mitigation Device (TMD) Service is a QMI service that runs
> on remote subsystems (the modem and DSPs) on Qualcomm SoCs.
> It exposes various mitigations including passive thermal controls and
> rail voltage restrictions.
> 
> This series introduces support for exposing TMDs as cooling devices
> in the kernel through the thermal framework, using the QMI interface.
> 
> Each TMD client is described as a child of the remoteproc node in
> devicetree. With subnodes for each control.
> 
> This series is based on previous work by Bhupesh Sharma which can be
> found at [1]. I'm sending this as a fresh series as it has been a
> year since the original version and I have rewritten most of the driver.
> 
Since you're adding support for funky hw, it would be appreciated
if you also linked to a tree that has the dt bits hooked up, the
schema example may not tell the whole story

Konrad

