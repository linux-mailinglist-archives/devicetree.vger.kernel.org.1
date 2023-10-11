Return-Path: <devicetree+bounces-7836-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C71A47C5B51
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 20:29:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 80239282434
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 18:29:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CD6C2232C;
	Wed, 11 Oct 2023 18:29:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="l34vBeqb"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A96122326
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 18:29:27 +0000 (UTC)
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B8CBA4
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 11:29:25 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-5031ccf004cso229972e87.2
        for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 11:29:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697048963; x=1697653763; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eejRC5jkkP9a/cnnUiuXlShL9G58ptQE16Rjy2o31Kc=;
        b=l34vBeqbHEJoZnXc39NmqowIFcSAYkwnXNfrs3eKZSehQL8dUP2dGuy6TPHXypCwju
         xdHKIb+KkKitz+04WtiZAmG7dLJoEA1Z4q0nue/pgt4KQYRglENVQcd0lSy5htF0K2pP
         Mb+MEqyM+AwsMePnzjISyu/ujYj/xvMNJ9uEVgUTw6MJLdmHUzwJffaP6YoZtOcDeXKX
         xgYRq9TD2TsH99Q8scVFw5pmVFCKBnR4nBjP+OWyf4r1jEzQU9njy1D2oPFbe+jD35q7
         J8zLBoMssjLXJoIiA4iwXPhEZ6DrmQCTiL+oUO4JbwIvK+6o8bW/6B3x/ESp69ZnNiQo
         cupg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697048963; x=1697653763;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eejRC5jkkP9a/cnnUiuXlShL9G58ptQE16Rjy2o31Kc=;
        b=hw3+mLzazy73TEXkReuwuWoZNgoVDXGEvFkld0UQD9EPpvSjMRax1GlN03+VKVlGYi
         h8Y0gJRAB8uHcgokScvQmWJHnNoJ5C3NO83usBG86litRCXten+HZf8o4cgwBtnNk13F
         +PsoKYQCEvAL1kTRC/4m/Dsfj4KuQcGy6bty4GQ0Ip2nP7RohKQw+opC/FVFwg/GvX9F
         BCxg5AM4N4oFLsZJcTRrvr+Ss0cnR2od9ILQG2PI8BdFgsg54T29DKRIYEJZFmYYgy6e
         +HFXs0VpB7+0Q41cIE/nXGFPEv0nsARNHnoAYCykzjV+CWmys72IYMkRw+vk29+naEQb
         5Umw==
X-Gm-Message-State: AOJu0YwnuyFZbB84BWDCM4r9n3k9FgmR3AtQiNrpKuEaXsFhtMbMHLCT
	SsLmGad2fJX8ePuoTZPRB0am2w==
X-Google-Smtp-Source: AGHT+IGMLQlG/2YqVwq9AN9IBYY2DekPXLj3trGyLQFjz0c/WVT0DhBhXpaKl81zyKyxcOyvuuabeg==
X-Received: by 2002:a19:7917:0:b0:503:c51:74d7 with SMTP id u23-20020a197917000000b005030c5174d7mr15013587lfc.17.1697048963200;
        Wed, 11 Oct 2023 11:29:23 -0700 (PDT)
Received: from [172.30.204.35] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id b21-20020ac25635000000b00503fe93fb56sm2368604lff.228.2023.10.11.11.29.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Oct 2023 11:29:22 -0700 (PDT)
Message-ID: <9e781059-bc86-4485-a9e5-80fcd14113fc@linaro.org>
Date: Wed, 11 Oct 2023 20:29:19 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] ARM: dts: qcom: msm8226: Add watchdog node
Content-Language: en-US
To: Luca Weiss <luca@z3ntu.xyz>, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck
 <linux@roeck-us.net>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Sai Prakash Ranjan <quic_saipraka@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-watchdog@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 =?UTF-8?Q?Matti_Lehtim=C3=A4ki?= <matti.lehtimaki@gmail.com>
References: <20231011-msm8226-msm8974-watchdog-v1-0-2c472818fbce@z3ntu.xyz>
 <20231011-msm8226-msm8974-watchdog-v1-2-2c472818fbce@z3ntu.xyz>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231011-msm8226-msm8974-watchdog-v1-2-2c472818fbce@z3ntu.xyz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 10/11/23 18:33, Luca Weiss wrote:
> From: Matti Lehtimäki <matti.lehtimaki@gmail.com>
> 
> Add watchdog for MSM8226 platform.
> 
> Signed-off-by: Matti Lehtimäki <matti.lehtimaki@gmail.com>
> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

