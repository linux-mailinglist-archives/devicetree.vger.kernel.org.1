Return-Path: <devicetree+bounces-165780-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 12EEDA856D6
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 10:42:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B652D7B108C
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 08:38:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D0B3293B7A;
	Fri, 11 Apr 2025 08:39:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="KfdbVQKB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C041293479
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 08:39:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744360749; cv=none; b=lwqjJD8lYCEdOeMbw8YCbbG8NvWwoTacvzn2FE3F/DtdPxk7PrH4jn6MqzRgvz1txLA3XqwN7GP7JZjN+6irL7JwgvAeANCw1puhwPUErHMZqW9YBYk29JRz54AR5MHecf2rVn7FaZlufbWU6E3DdRy3a5/oO5p0DiqJxllwslI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744360749; c=relaxed/simple;
	bh=a4nmPV125IR5vsAfrV5WUXEQFwK/wU5UXjFm3L+FsTs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=StcMHylHNuUrM8a55XPI9gXt4AjdHrPpE9tK/PKlVB3qC+emk6+wV6wW+ZdCz+QlXJsn136XnBLrgoVOv8fTZSvroGdc40OjlU6XJI+uVIqrY9w8BVm4BKX6SC6eJpR1MDygCAc3AuedDQURixVIsuPdjm5NRb8NmVF40NWvcP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=KfdbVQKB; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-43d2d952eb1so13391125e9.1
        for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 01:39:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1744360745; x=1744965545; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=UbqhHpDGnLPGkVsMmvEXgPCxtKOy8gFGjV4mEQUjUaE=;
        b=KfdbVQKB2dxgBZ3SfOuSEQKEmjBgt+qxGHl7zDMsRkTxEV3yEfr1+5Z3XXQUd+wagy
         b6FRxkovX/AOB0L9V94dq8dR6tqI++df761C90MUZMu3Yvnl65jueUDk7frGfpfEoq1o
         327d21ZJGEyhj0Utx9yLUflV6cBEZbo++K+EnTYJEatu1PeVLyCnIGDhCw2Rvd5wIr02
         URPAraj8RJGkxPomejqKTJ1aeSE8YEVa5yZ4hloDogEpTsYgjQGTxhmUZQaZs8e0qDri
         wg69T1OCyloM5ELh7IS8iDWN6xLw5JMfQW6hhAcYpC4qmj0LwNTWnh2H6WB9evwqmpWs
         zxeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744360745; x=1744965545;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UbqhHpDGnLPGkVsMmvEXgPCxtKOy8gFGjV4mEQUjUaE=;
        b=PEQV/x2IuAYOlpQTmj9Tz/5lKT4uNFVjRH9UVDiHbaXPTJLI9TrhbYOizLjZKgg00r
         pVv3KuQtC4YOs/yxtOA/29dXViKDxNibVsbICK+y2H8zRaRpIG0YVH0TkEoKGv6ojR8+
         p/+GmCzDC2htyp0Ib3o7oYOYbKAuJFVsaqwGm46HLmBie61g4AT/k69H6w65h13JsUhK
         IUxM8wtkNloIqDYGzav5K1vYDHpgd8vmD7MNkqnVOjkX2CUm57Jj8LvDqsts2lMF9qYO
         L0kSkE0RN891++ISqeAJu6vWzzU8RQNMHyWwurKU65HCwc87f/+n72gfyPjYqu9UmiDQ
         hsOA==
X-Forwarded-Encrypted: i=1; AJvYcCVyRzPOY/N/PFpKEPP7PP7QWdHUToyeLMoumKhbk6MIJ4yDGbcMDOKH//9bQPFYIGO8FMJ5bROM+4Di@vger.kernel.org
X-Gm-Message-State: AOJu0YyDrLXzKxrO/dtugsEihvVvlrY2TL2BCjzvucaWfUqV7oc3AQoS
	0SKtoyQq8co1NLHKeasc8LOclOkXAVRGAG//O76Pgyi9Ee+XSTEz6S35Il897zw=
X-Gm-Gg: ASbGncsJn0QzsEjjiy44YSFfgaCRqBDa1O0yvqCYNXWKGKZ7Rm2C8z7FrpGWebcot8z
	6T6GpEmBdA2OGxKSfkUuTQsAF4zXmFBN9bB8mcx4lFEmbqu4rpH5e+JvmvZ5RJE/zSfnrnu0wvG
	4ciE0aYe4CQAXR6gyPr5Vr7Ur5mJKhFLjSqM4gTtMYgred2z7oJSIn2LnkU5XX739vlm2qTP1ce
	rCtowlIUJgeupeeMKDiRlXrcM5a9bllOi/KFCytvPVb3dBtPLNpz8PLMQ11lAfeB/nam36fwmGY
	on1kl+vZkcOA55LhvoY+WaNuz97+Fice3xzIpQ==
X-Google-Smtp-Source: AGHT+IFbch+LgCuDELs3WvE9MRNvWpRzSp1CQ1o92LxtiZcQYdnuekpCyYt/EYUT5l/w0OVuxllPbg==
X-Received: by 2002:a05:600c:350c:b0:43c:ea40:ae4a with SMTP id 5b1f17b1804b1-43f3a9b02a8mr14817275e9.31.1744360745461;
        Fri, 11 Apr 2025 01:39:05 -0700 (PDT)
Received: from [192.168.2.177] ([81.0.8.231])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43f207aed49sm78118455e9.34.2025.04.11.01.39.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Apr 2025 01:39:05 -0700 (PDT)
Message-ID: <99ba6e9e-463f-47d0-8d1d-52d097808098@suse.com>
Date: Fri, 11 Apr 2025 10:39:03 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: s32gxxxa-rdb: Add PCA85073A RTC module
 over I2C0
To: Ciprian Costea <ciprianmarian.costea@oss.nxp.com>,
 Chester Lin <chester62515@gmail.com>,
 Ghennadi Procopciuc <ghennadi.procopciuc@oss.nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, s32@nxp.com, imx@lists.linux.dev,
 Christophe Lizzi <clizzi@redhat.com>, Alberto Ruiz <aruizrui@redhat.com>,
 Enric Balletbo <eballetb@redhat.com>, Eric Chanudet <echanude@redhat.com>,
 Frank Li <Frank.Li@nxp.com>
References: <20250410144826.73651-1-ciprianmarian.costea@oss.nxp.com>
Content-Language: en-US, ca-ES, es-ES
From: Matthias Brugger <mbrugger@suse.com>
Autocrypt: addr=mbrugger@suse.com; keydata=
 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
 PVrr2NoUqi/bxI8fFQJD1jVj8K0=
In-Reply-To: <20250410144826.73651-1-ciprianmarian.costea@oss.nxp.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 10/04/2025 16:48, Ciprian Costea wrote:
> From: Ciprian Marian Costea <ciprianmarian.costea@oss.nxp.com>
> 
> Add support for the PCA85073A RTC module connected via I2C0 on
> S32G274A-RDB2 and S32G399A-RDB3 boards.
> 
> Note that the PCA85073A RTC module is not battery backed.
> 
> Signed-off-by: Ciprian Marian Costea <ciprianmarian.costea@oss.nxp.com>
> Reviewed-by: Frank Li <Frank.Li@nxp.com>

Reviewed-by: Matthias Brugger <mbrugger@suse.com>

> ---
>   arch/arm64/boot/dts/freescale/s32gxxxa-rdb.dtsi | 5 +++++
>   1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/s32gxxxa-rdb.dtsi b/arch/arm64/boot/dts/freescale/s32gxxxa-rdb.dtsi
> index ba53ec622f0b..4587e1cb8835 100644
> --- a/arch/arm64/boot/dts/freescale/s32gxxxa-rdb.dtsi
> +++ b/arch/arm64/boot/dts/freescale/s32gxxxa-rdb.dtsi
> @@ -153,6 +153,11 @@ pcal6524: gpio-expander@22 {
>   		gpio-controller;
>   		#gpio-cells = <2>;
>   	};
> +
> +	pca85073a: rtc@51 {
> +		compatible = "nxp,pca85073a";
> +		reg = <0x51>;
> +	};
>   };
>   
>   &i2c2 {


