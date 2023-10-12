Return-Path: <devicetree+bounces-8221-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ECD67C7346
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 18:42:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7220C1C20B8A
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 16:42:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9818B28E18;
	Thu, 12 Oct 2023 16:42:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZJS9bGyU"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 311CC20E5
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 16:42:11 +0000 (UTC)
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9CD19A9
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 09:42:06 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-2bfea381255so14622171fa.3
        for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 09:42:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697128925; x=1697733725; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dg7mdO3+bBBGRgz1JJW3EWOQYH5H024kENOkHNU4kLA=;
        b=ZJS9bGyU78/AYtxhqYj7bVywM/lXcS7GgCK0Ae6mQ3nwl7n6Izbbmeb8yrrdlJGZn8
         9p8vehdzeRlnXGLbVXPh9qX2dQiZ3AALf6av1YH4vzQQrcU7H0IvnTv0yzChXjXqwjMW
         jchhPZ8YLvrCJD5zuB7Uqgks08scAaij9KQBdkhPQlBg0kO6C5UUAKu2cjpKHSGvT4Xf
         tlYT/a3x9wVxyrVNjVI0t5s++l3duxBWhv1fIUz2rFeTjFgGByZNDNFF11XvxnAxNarL
         G41pryUAXjl9xMVJwTlsj1oCzXQ8setzO+TPwtExnWsIirlC6iqtsW8ZVlT9ye+8dXws
         X3zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697128925; x=1697733725;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dg7mdO3+bBBGRgz1JJW3EWOQYH5H024kENOkHNU4kLA=;
        b=wmf59WfEzojJ42/nBTKPih0j0ll+yyC13v+8Tcf11ZoXOBXK8vOgvhvoH2ndV9EOVB
         XTZjQeDpcj2J3p0fVbYRQhbUjEn5f4gKAjNX+mCZD3QHTL0ai+RBagXE+/MDFUKNl6Tg
         50Zm2tXFGBTUbgHC8dDKBOHV1ZthSqoB0gRh6cOF0xD3HpDuQcXcdB2dVg9ljfUDC+fH
         jPIs3d+E3bCsanykRO5143KzL5YrKhEXPms1WkJ0N7YZWWHy4pOu9xEVX9aT4k2gd9U5
         x0/rCdTgc89F0qls4rPIQJd5/ulNRD/3XC50wSA3gpd0XG6q7kJbDpN2nXgoidtQP0os
         GUwA==
X-Gm-Message-State: AOJu0YykTX0uu6vAkGxuPJG1YKfOw1K8EkLNMkzArkto+KEeumeS8nUw
	R1TYm6s4FlFOZlekEvwRpicVgw==
X-Google-Smtp-Source: AGHT+IFBI9TpG5PuveaJYdzlvucg89JDXICF1SOKwex3xKjc7Qqn+pw4LfQpHoFOKn4cw2WXH+IZDA==
X-Received: by 2002:a2e:8798:0:b0:2c0:cfa:a1a0 with SMTP id n24-20020a2e8798000000b002c00cfaa1a0mr20926580lji.46.1697128924867;
        Thu, 12 Oct 2023 09:42:04 -0700 (PDT)
Received: from [172.30.204.175] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id p9-20020a2e7409000000b002bfe8537f37sm3633373ljc.33.2023.10.12.09.41.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Oct 2023 09:42:04 -0700 (PDT)
Message-ID: <02de745f-d648-497d-b520-712450f4ad9c@linaro.org>
Date: Thu, 12 Oct 2023 18:41:44 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v13 10/10] arm64: dts: qcom: sa8540-ride: Enable first
 port of tertiary usb controller
Content-Language: en-US
To: Krishna Kurapati <quic_kriskura@quicinc.com>,
 Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Felipe Balbi <balbi@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>,
 Johan Hovold <johan@kernel.org>
Cc: linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 quic_pkondeti@quicinc.com, quic_ppratap@quicinc.com, quic_jackp@quicinc.com,
 ahalaney@redhat.com, quic_shazhuss@quicinc.com
References: <20231007154806.605-1-quic_kriskura@quicinc.com>
 <20231007154806.605-11-quic_kriskura@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231007154806.605-11-quic_kriskura@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no
	version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 10/7/23 17:48, Krishna Kurapati wrote:
> From: Andrew Halaney <ahalaney@redhat.com>
> 
> There is now support for the multiport USB controller this uses so
> enable it.
> 
> The board only has a single port hooked up (despite it being wired up to
> the multiport IP on the SoC). There's also a USB 2.0 mux hooked up,
> which by default on boot is selected to mux properly. Grab the gpio
> controlling that and ensure it stays in the right position so USB 2.0
> continues to be routed from the external port to the SoC.
> 
> Co-developed-by: Andrew Halaney <ahalaney@redhat.com>
> Signed-off-by: Andrew Halaney <ahalaney@redhat.com>
> [Krishna: Rebased on top of usb-next]
> Co-developed-by: Krishna Kurapati <quic_kriskura@quicinc.com>
> Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>
> ---
>   arch/arm64/boot/dts/qcom/sa8540p-ride.dts | 21 +++++++++++++++++++++
>   1 file changed, 21 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sa8540p-ride.dts b/arch/arm64/boot/dts/qcom/sa8540p-ride.dts
> index b04f72ec097c..6904a4c201ff 100644
> --- a/arch/arm64/boot/dts/qcom/sa8540p-ride.dts
> +++ b/arch/arm64/boot/dts/qcom/sa8540p-ride.dts
> @@ -503,6 +503,18 @@ &usb_2_qmpphy0 {
>   	status = "okay";
>   };
>   
> +&usb_2 {
> +	pinctrl-0 = <&usb2_en_state>;
> +	pinctrl-names = "default";
> +
> +	status = "okay";
> +};
> +
> +&usb_2_dwc3 {
These additions are not quite sorted alphabetically, it seems

> +	phy-names = "usb2-port0", "usb3-port0";
> +	phys = <&usb_2_hsphy0>, <&usb_2_qmpphy0>;
property
property-names

With that:

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

