Return-Path: <devicetree+bounces-7041-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EBD437BEC4C
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 23:06:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2A0BE1C20A11
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 21:06:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECC1A3FB33;
	Mon,  9 Oct 2023 21:06:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qoo5paBd"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 717943E481
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 21:06:17 +0000 (UTC)
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26546E9
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 14:06:15 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-2c1854bebf5so62295771fa.1
        for <devicetree@vger.kernel.org>; Mon, 09 Oct 2023 14:06:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696885573; x=1697490373; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0vKTUsS3jt/q9uog8W3h3j1F1pdGaoyiXk9H6Hdeahc=;
        b=qoo5paBdSuhxwQzbead5PeTeeqTF4AeNPC6C/bM/VGZ+noCR04iXHMy15U8C/z3gnb
         o8dMaCw4qPNOyeFyRkZYIAMgH00RbeZXttW/1sdce+EJqmBJ4dnygXm78HTEbY7z10bI
         8grNMahj4InEYVN0OyHnOKm0OVIyT6AfLfV6+QxiBE8O6xbE8bn/jOFJKHtPN+VGGWLr
         X+68imrvuuUpIZxkMZN9/Ues4xI5YJrYc6NODE4ucW8DywwPdU2J4VbmBjMZolIBQGmm
         xbVT+NoI4Bq/yHFYWdGoSy8LYvI1ecXpjsrSw62JlXvrYFcW22uT/LgR5qdLttt+f0Aq
         BT6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696885573; x=1697490373;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0vKTUsS3jt/q9uog8W3h3j1F1pdGaoyiXk9H6Hdeahc=;
        b=gBhYWWg9ZIL9oTPAHD9H9xqK078zNLmLXZS6yedKB3RQ68xLiHfHRhkrCJZXWDxNLR
         qa5oMksQzBBXkwjdvTjtcN6eP1BB3WEDWqFUjVv2pDnBfw7S6CJfKj33NFzBFD4G505l
         I0NCSq8EORZBIvyT9NBCJ6fWYqM8Kjulq/889J4XnSqt5qTG9OEUp7qhYL9GvO4ONMTV
         gmZnipAkC+8ixeK+ZLkDgURihL+lTQCqDddYDubvBBb1UJ1QuQLQQWzpEkj+2BW/1/wQ
         Xti7jXA41kEMl0i7rhudmLQv+oxh1/IB8oe8F6sFtcquwFfqhW+lJV6OHSGa/tTjp+nJ
         /WYg==
X-Gm-Message-State: AOJu0YxAY6XRLyjdhB8OlZjlUiUtNsYmlhl497Vyy6VvwlIvMuWYrd9u
	Sdqv9BXOZ8chXO5Ba+re7WvCfw==
X-Google-Smtp-Source: AGHT+IG/ozHt6pvCAggbUKSVRh8/+ylUdcFfhhP61eq+Dq3YRvE7aSZ6waTDkD4RLdRmJHm6EZ5QSQ==
X-Received: by 2002:a05:6512:2022:b0:503:1be5:24eb with SMTP id s2-20020a056512202200b005031be524ebmr12031818lfs.50.1696885573272;
        Mon, 09 Oct 2023 14:06:13 -0700 (PDT)
Received: from [172.30.204.90] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id a15-20020a056512390f00b004fddb0eb961sm1549081lfu.18.2023.10.09.14.06.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Oct 2023 14:06:12 -0700 (PDT)
Message-ID: <6509775a-e45f-40ce-8295-40f696819e09@linaro.org>
Date: Mon, 9 Oct 2023 23:06:11 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: pad generated DTB files
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20231009172717.2695854-1-dmitry.baryshkov@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231009172717.2695854-1-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no
	version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 10/9/23 19:27, Dmitry Baryshkov wrote:
> On Qualcomm platforms the bootloader populates device tree with some
> extra nodes / properties (like memory size, boot time, etc). Usually
> default padding is enough for the bootloader. But in some cases the
> board will fail to boot if there is not enough padding space.
> 
> Add `--pad 4096' to DTC_FLAGS so that all Qualcomm DTB files get this
> extra padding space.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
> 
> This is primarily necessary for SA8155P, but I have the feeling that it
> might be better to be enabled on the global scale.
> 
> ---
Every day I discover something new that makes me lose hope in this 
software stack

Acked-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad


