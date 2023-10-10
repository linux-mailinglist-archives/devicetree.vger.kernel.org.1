Return-Path: <devicetree+bounces-7198-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BC7317BFABF
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 14:05:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 50862281AF8
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 12:05:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBDD219457;
	Tue, 10 Oct 2023 12:05:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="B46f57eI"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F4AB18C2F
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 12:05:24 +0000 (UTC)
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 428E39D
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 05:05:22 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-5046bf37ec1so7462916e87.1
        for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 05:05:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696939520; x=1697544320; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pokStYMDFDRvYsa5xe9xzjCMtzvcpQsjPKyHOxO1S3k=;
        b=B46f57eI6pBV7xbhbvwKH4p+uyRgPnbdV1rMcZ6iqkp0zKc69ibfcm3QMcFdpZ5iZe
         ywp9J7RbSiQSibwgc1d/jKUsckCfU1S2iuFTy2OIiH10sb5CX/Kxz0rjkSJHcn0OAH/4
         rWJLtF7HtLP3Sj8/I68zePIqicxwG3eXXD4EfXSgN2emOps+ARYLx41q+rGQMCLeMYIN
         n21HkXjF9gfKYpAhEl94e1Z2FmtN82j4s0U9OLvghnb2OWUDlVTQBCN9/18nsmJTnT8Q
         hzwyKOLjifLFQDK6q9MLL7CyYkQiGazIdyp2GwgL00CwyiHU4Usf6p2ZTzCw7e2q2jN+
         aifg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696939520; x=1697544320;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pokStYMDFDRvYsa5xe9xzjCMtzvcpQsjPKyHOxO1S3k=;
        b=gtyIBdYY1APdGiz0NK1yljY7hRvldGVpoX7O3VoSHcCApA5wxRRnMqEtjxr9vk/aeG
         tJvM/NJRJZWfEEUJUhxuDQfw4PWgP0pI2aZvIXGBHqn/g7BvPfppnLO08gAvDJRk27i9
         Ka5tyq+JOdF/Xxkw/pry8wbQSxpKarN5olbHcA+RpF1lvRPFbR4pivFhBe3Z02vqrXgA
         a19hp14vlohdzDogKBuCMYs8BeecaOaT5UjLgmPan53Y2yobGtk3HP5q3V4Vh0ZacN+C
         al9YjBzBhliSs0UmGD/wx4rhnlSWKSbV12bE/k7kKXeYbH40qywukVzb43xMEoqpNn+Y
         M1fg==
X-Gm-Message-State: AOJu0YwO9tHTl7BZZNXGywNTeboW8L1m0cB/oW6Po+9LCxVmRybaXEap
	/4D/AWdi5dX/XbuNLrxx/96dIQ==
X-Google-Smtp-Source: AGHT+IFaKBupOOKe3q0dsFxnIDxmHu7fHWGOSecpE6w6RECCPhgXqhgGmvxuhdiayv2olOh1/gMu9Q==
X-Received: by 2002:ac2:4f0f:0:b0:500:ac0b:8d58 with SMTP id k15-20020ac24f0f000000b00500ac0b8d58mr17158472lfr.18.1696939520423;
        Tue, 10 Oct 2023 05:05:20 -0700 (PDT)
Received: from [172.30.204.192] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id q1-20020ac25a01000000b00501c77ad909sm1785227lfn.208.2023.10.10.05.05.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Oct 2023 05:05:20 -0700 (PDT)
Message-ID: <f3a100f7-a876-45d8-a3b9-e64b2ddc33d6@linaro.org>
Date: Tue, 10 Oct 2023 14:05:18 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: qrb4210-rb2: don't force usb peripheral
 mode
To: Caleb Connolly <caleb.connolly@linaro.org>, Andy Gross
 <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20231010-caleb-rb2-host-mode-v1-1-b057d443cd62@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231010-caleb-rb2-host-mode-v1-1-b057d443cd62@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 10/10/23 12:46, Caleb Connolly wrote:
> The rb2 only has a single USB controller, it can be switched between a
> type-c port and an internal USB hub via a DIP switch. Until dynamic
> role switching is available it's preferable to put the USB controller
> in host mode so that the type-A ports and ethernet are available.
> 
> Signed-off-by: Caleb Connolly <caleb.connolly@linaro.org>
> ---
Fixes: eaa53a85748d ("arm64: dts: qcom: qrb4210-rb2: Enable USB node")
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

