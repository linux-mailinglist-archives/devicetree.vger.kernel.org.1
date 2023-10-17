Return-Path: <devicetree+bounces-9291-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EC0457CC85D
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 18:06:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A649C280EDD
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 16:06:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55FEB45F4A;
	Tue, 17 Oct 2023 16:06:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pQnEVIr0"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF1E6450F9
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 16:06:29 +0000 (UTC)
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CEAD4FD
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 09:06:25 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-507ac66a969so3106873e87.3
        for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 09:06:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697558784; x=1698163584; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8xvYIvKO+3mIU3EAawcs2ywj4vAenzsPefTCCzUDayw=;
        b=pQnEVIr0Xlan6GcNIOcP1aBX2wZxu2MaS4pBcb0hT2EmSlTCsbEtj7PnDDJi+gqbaj
         jR1R8D3j6eczOG2ps5A4M2V5oPE4Zxw+TztolhBNwsUThOeD7ujq8G2bqEHTm0evIa88
         IXzsAvD6et/w+twWTVa4WAZWKN5L5cgaHqZVWCMeLweKhrWBrAqtQjkG07etlGJ2yAOa
         HjcRzXfv6FKf2lneHtcqLWkBH/odjsQx6uyvfvZzQ18JSUdcScGevWPCXZQxedT9SgbY
         Qzm1muaiVgy7/3GP0sf2dqA2RZKxGFI6O6yY5sixfGVCw6dm3fl/qiqfL55uPzlotSQ9
         NNbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697558784; x=1698163584;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8xvYIvKO+3mIU3EAawcs2ywj4vAenzsPefTCCzUDayw=;
        b=SOFRY9R/DU1BgVnSiFccLlzYE5337fzLnN1EDa0yJrK86Qbr2nrMja904Sqjt6zIrY
         PdY4ZIDxt7bcMpGfefwEdQMaN/L50/U/HHdxLbyPi9gdcSGDQMHXTTIlyMRHbOv5tcZO
         HUw3zD6sYNKrCXlyXeN7xd2AXfgy+Q9d/n7Vcqet69ax5Z3euwsIItyHC6gC3jzrpE9U
         T1CJGdf6jxtO7zdXQn2Re4DApi5iCB6vgOtHOeP5iw0GX5XYVKNR6TzOc5dRop0cT7kJ
         lExyNZoSp/SZoWUj+yLJawxS2bso2r3ZsSq8Vm1wP4vO3YRCOBKWkW4Mp/eBide4r/XF
         Vx/A==
X-Gm-Message-State: AOJu0Yx241+2jm8HMGVs5sWZ++oBf6msAssLs38brWfkypJAZPFrVUcq
	hQMxujpZbvdDCrvhyYaKZ/m+xg==
X-Google-Smtp-Source: AGHT+IHhQNyrTYgGeequm9qL3R/xX0Qa+zpfneS2Tc5Nq7DmGCHtImf+Fy/36eKebqA5lYzx+mCbPQ==
X-Received: by 2002:a05:6512:3ba4:b0:503:221:6b1a with SMTP id g36-20020a0565123ba400b0050302216b1amr2485376lfv.0.1697558783795;
        Tue, 17 Oct 2023 09:06:23 -0700 (PDT)
Received: from [172.30.204.57] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id w26-20020ac2443a000000b005030c533843sm329505lfl.154.2023.10.17.09.06.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Oct 2023 09:06:23 -0700 (PDT)
Message-ID: <dfa1699b-271e-42b8-a8f3-17baef37f417@linaro.org>
Date: Tue, 17 Oct 2023 18:06:20 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/5] arm64: dts: qcom: sm8350-lemonade(p): new devices
Content-Language: en-US
To: Luca Weiss <luca.weiss@fairphone.com>, Nia Espera <nespera@igalia.com>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Kees Cook <keescook@chromium.org>,
 Tony Luck <tony.luck@intel.com>, "Guilherme G. Piccoli" <gpiccoli@igalia.com>
Cc: linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, phone-devel@vger.kernel.org, Rob <Me@orbit.sh>,
 Clayton Craft <clayton@igalia.com>, ~postmarketos/upstreaming@lists.sr.ht
References: <20231016-nia-sm8350-for-upstream-v1-0-bb557a0af2e9@igalia.com>
 <20231016-nia-sm8350-for-upstream-v1-5-bb557a0af2e9@igalia.com>
 <CW9WUOLK18R1.2HI2MM4P47HPV@fairphone.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <CW9WUOLK18R1.2HI2MM4P47HPV@fairphone.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no
	version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 10/16/23 15:50, Luca Weiss wrote:

[...]

> You never plugged the device into a USB 3.0 port? Should be trivial to
> test I think?

The biggest blocker is usually the lack of an actual USB3 type-C cable :P

Konrad

