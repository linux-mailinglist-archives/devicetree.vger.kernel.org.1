Return-Path: <devicetree+bounces-7195-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 67D2C7BFA7D
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 13:59:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 230A82818C1
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 11:59:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96F931944E;
	Tue, 10 Oct 2023 11:59:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nexus-software-ie.20230601.gappssmtp.com header.i=@nexus-software-ie.20230601.gappssmtp.com header.b="WxL/1dmb"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D49D9DF44
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 11:59:42 +0000 (UTC)
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A22B8A4
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 04:59:38 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-32799639a2aso5425234f8f.3
        for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 04:59:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nexus-software-ie.20230601.gappssmtp.com; s=20230601; t=1696939177; x=1697543977; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ij+DjJh1Cv+/0xPPGQ3pr7Ec12kvcxyGu0/MP2I6gEY=;
        b=WxL/1dmbLbcHbia5KHXkoPZDkqJiNNtDad/laM6Wub2XnSOkrrBpLy2vbC47hKG5p9
         hXB67OaCsc90x53qyJVrpQ0sH8m+ZHvCDxNHXad8O4CmzWVD0eKSZMw8+Zb6jcvjgSEt
         GjQgD2XbHJiRTeUA49Gevw4ZMMc/04OqjE7QCkYeh12bbHB5veX3d67hzAfks5ltlpqA
         WF75Gs2WUcv152YNNGUG6Najf8Hyj/gzCpNMSFxSG6qP1nYP6WY2WVd6B2YDQ7dAsiOH
         XnUpCAoPHuJUA4fJ0/7hiPbsE6oLd5uk0nqTvEtcFez0LYzZR4C+1tdsIsuhk1DXnNE7
         V5gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696939177; x=1697543977;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ij+DjJh1Cv+/0xPPGQ3pr7Ec12kvcxyGu0/MP2I6gEY=;
        b=mSOM/oPqLCmICMNhbSyi7eCgnGdtXiM8aGyyNJ2dXONqaQXcYUdQe56EE9RfWshnrZ
         aHC4dnc2xa+CW3GTKgXFSswkXTjQc5hH8g4SadPDxI2VfHn1TSAAWZ3kZIsBc6K6l6p5
         ItQHoV+6muJ+5IWt8nJzip99ev26g7o1EAsc33O3p206MBqjaaj1OL5OWfAUr6Y829gJ
         4r8dn575n+U/j9twrL4eeIABDbsbTZ75TInCc7AOrORWUR4JZaxaFv176ELA4Daaxu6G
         yEA0UeMLnu74QzB3zhtNYq8+T0lnIqu2mvj76ajx4713962YPA4zqMuQpTIdLOgQprpj
         XpdA==
X-Gm-Message-State: AOJu0Yz41yR9eM0k5DNqB/F8p38c/ZGGtrVSKBGh9pRCL5YmHdzIthQ3
	d+ZnLA75EaQx1vL5cu7D/cmqh8DY42wcIeiuxiQ=
X-Google-Smtp-Source: AGHT+IHFA86yg5RxNmYmm2h7/cVQ1VgFwmfHjOd0f6IUSrUdWBNY1qh2/GmlHtkcXrQFXHRv4MZuDw==
X-Received: by 2002:adf:e383:0:b0:314:3e77:f210 with SMTP id e3-20020adfe383000000b003143e77f210mr15862043wrm.59.1696939176895;
        Tue, 10 Oct 2023 04:59:36 -0700 (PDT)
Received: from [192.168.100.102] ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id x8-20020adfcc08000000b003296bb21c77sm11912247wrh.80.2023.10.10.04.59.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Oct 2023 04:59:36 -0700 (PDT)
Message-ID: <deb0e97c-2874-4388-80ce-7b2076c66e32@nexus-software.ie>
Date: Tue, 10 Oct 2023 12:59:35 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: qrb4210-rb2: don't force usb peripheral
 mode
Content-Language: en-US
To: Caleb Connolly <caleb.connolly@linaro.org>, Andy Gross
 <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20231010-caleb-rb2-host-mode-v1-1-b057d443cd62@linaro.org>
From: Bryan O'Donoghue <pure.logic@nexus-software.ie>
In-Reply-To: <20231010-caleb-rb2-host-mode-v1-1-b057d443cd62@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 10/10/2023 11:46, Caleb Connolly wrote:
> The rb2 only has a single USB controller, it can be switched between a
> type-c port and an internal USB hub via a DIP switch. Until dynamic
> role switching is available it's preferable to put the USB controller
> in host mode so that the type-A ports and ethernet are available.
> 
> Signed-off-by: Caleb Connolly <caleb.connolly@linaro.org>
> ---
> base-commit: 6465e260f48790807eef06b583b38ca9789b6072
> 
> // Caleb (they/them)
> ---
>   arch/arm64/boot/dts/qcom/qrb4210-rb2.dts | 1 -
>   1 file changed, 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
> index a7278a9472ed..9738c0dacd58 100644
> --- a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
> +++ b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
> @@ -518,7 +518,6 @@ &usb {
>   
>   &usb_dwc3 {
>   	maximum-speed = "super-speed";
> -	dr_mode = "peripheral";
>   };
>   
>   &usb_hsphy {
> 

No fixes tag ?

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

