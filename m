Return-Path: <devicetree+bounces-84181-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4323592B472
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 11:53:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6670A1C218F4
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 09:53:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F260156880;
	Tue,  9 Jul 2024 09:52:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Z7BaNsTN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7472B15665E
	for <devicetree@vger.kernel.org>; Tue,  9 Jul 2024 09:52:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720518748; cv=none; b=AoNvy7znnx9PL0fC8XaR+Fz6XPnfENGgnowRU7l08zUZ/1ODt7B5/dNCApYYpHLpdzdb+SHm/Gqg0bqgl3TBf9HPiWhyXf+xJu1WMHdE/Gxl4P7SRRoKaGaSEMRgepTTZa0jL6PdcDuVPfxt9Qk3lYMi/QmxTLfLE3ydvOkCLkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720518748; c=relaxed/simple;
	bh=n5AvZ1ZDFjGi/4dq6GjWJJme1GYCQMnLOvMIhq0HJ4U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=k1BYC5bqTQshKe/S1Nd7m+pkywcYTQn8p1Oio9lm5oL4PlHi0dhVToVwj46PLA7DDv49OJDsIp8LPnz+SDlgyO7W0Vp/Fi89/snsAyGufak1YMKbGHU8/hMjiLb+kBNw/iHbmjHKVk4xAbAstYx06FWXa+V93qZRQDF0UbZbRzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Z7BaNsTN; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-a77e7420697so355911966b.1
        for <devicetree@vger.kernel.org>; Tue, 09 Jul 2024 02:52:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720518744; x=1721123544; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=Qm1fRwVMxfaZmMNjZt3K//vjMYOKWNcEdkADWSvwrZs=;
        b=Z7BaNsTNfJXAllGr8ZAiG1BoDwUx1yCnl2yaq5Wip8kWlzWPhRnVinZuvUXnPTpdmx
         7+yUj6Lo88mJk16a6Lu0a33iOBeUDLKwLTABoui+LqNPirIIS6UWmtE03TJGuj0dREtf
         6T/2sHOmYKxUoESUqzz31d5T+jOmsYAzC0Inul1nDEB3UXDkqF0LpjpJzl1L9B8pZgaU
         kp8EJqjdQOl4q2iEnFA9Z6MdIpHYMmW2+99LQT1MWYAxyGmg8sdFuhsLFlKEImC+5HY9
         /6GY4QaIZ+4VZp8WsRfcOXWvNcVN8e7VCmwoOKAW19iMxbjA9pBmhK06Y1KIiQA8j/3A
         dwQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720518744; x=1721123544;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Qm1fRwVMxfaZmMNjZt3K//vjMYOKWNcEdkADWSvwrZs=;
        b=LKKHi6vrm1/qooGlZmJnahvFF64668I27Y+4Inivt8db7R9KCblXbA6u8foZ5OD70F
         EDbLEdLx2a3vbtYZSrN2HHpMF6v6m9KKsLfOmVFB83HAHjI9CtZpWJGl3FZ1qLh5lwei
         PBdkTawlRl9ltDRzmtkwV3Rld9vDOfWTQ+URDn28z8VJYgw91n3z61YEEmLzV06jOfSO
         BsfU+3eXWq7I30jPJALmB5t8m6AXPv2IflCpRvlq/TuRAZFBuMhfzY714Vg7ftPSTxhO
         u+x9IUw3Ri6AWx6kPOyKYLBgzqdIxN2UNllvwgmB7ctNX0UfAu2agY4OOF3tevgiicPx
         wBnA==
X-Forwarded-Encrypted: i=1; AJvYcCWsun+CVL3t7CPAR0UG0GeZYnnn2PN6SC4zpghAvb7+OoK4+B8y930lbSlOu8rqQI7xq5Zf08FOpPLAe8JImVUrdhjt0lldqWu4+Q==
X-Gm-Message-State: AOJu0YxRSHC+qMs8supBm9oH6kJGx+ItaEcudcBYIHE6xpL1bHpLxeWX
	2apxYyHSet1lCAADgZjO7MddSlSU/2wOHxxK1qVIEALfn+5u0bHKnVgJuOgRXCE=
X-Google-Smtp-Source: AGHT+IHAklP0DIIRUgPGcAs7MD7V/1OUzHE3dRGjz84TSjvi++Vip0G/F0oWzUHqJqhEqljGGmQSXA==
X-Received: by 2002:a17:906:390e:b0:a77:ddce:e9b1 with SMTP id a640c23a62f3a-a780b89d430mr122703366b.75.1720518743625;
        Tue, 09 Jul 2024 02:52:23 -0700 (PDT)
Received: from [192.168.105.194] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a780a6e58e0sm63125666b.85.2024.07.09.02.52.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Jul 2024 02:52:23 -0700 (PDT)
Message-ID: <57dadb35-5dde-4127-87aa-962613730336@linaro.org>
Date: Tue, 9 Jul 2024 11:52:19 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 05/10] pmdomain: qcom: rpmpd: Add IPQ9574 power domains
To: Varadarajan Narayanan <quic_varada@quicinc.com>, vireshk@kernel.org,
 nm@ti.com, sboyd@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, angelogioacchino.delregno@collabora.com,
 andersson@kernel.org, mturquette@baylibre.com, ilia.lin@kernel.org,
 rafael@kernel.org, ulf.hansson@linaro.org, quic_sibis@quicinc.com,
 quic_rjendra@quicinc.com, quic_rohiagar@quicinc.com, abel.vesa@linaro.org,
 otto.pflueger@abscue.de, danila@jiaxyga.com, quic_ipkumar@quicinc.com,
 luca@z3ntu.xyz, stephan.gerhold@kernkonzept.com, nks@flawful.org,
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-clk@vger.kernel.org
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
References: <20240703091651.2820236-1-quic_varada@quicinc.com>
 <20240703091651.2820236-6-quic_varada@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240703091651.2820236-6-quic_varada@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 3.07.2024 11:16 AM, Varadarajan Narayanan wrote:
> From: Praveenkumar I <quic_ipkumar@quicinc.com>
> 
> Add the APC power domain definitions used in IPQ9574.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
> v4: Add Reviewed-by: Dmitry Baryshkov
> v3: Fix patch author
> v2: Fix Signed-off-by order
> ---
>  drivers/pmdomain/qcom/rpmpd.c | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 
> diff --git a/drivers/pmdomain/qcom/rpmpd.c b/drivers/pmdomain/qcom/rpmpd.c
> index 5e6280b4cf70..947d6a9c3897 100644
> --- a/drivers/pmdomain/qcom/rpmpd.c
> +++ b/drivers/pmdomain/qcom/rpmpd.c
> @@ -38,6 +38,7 @@ static struct qcom_smd_rpm *rpmpd_smd_rpm;
>  #define KEY_FLOOR_CORNER	0x636676   /* vfc */
>  #define KEY_FLOOR_LEVEL		0x6c6676   /* vfl */
>  #define KEY_LEVEL		0x6c766c76 /* vlvl */
> +#define RPM_KEY_UV		0x00007675 /* "uv" */

The "uv" key is handled in qcom_smd-regulator.c.. I'm assuming on this
platform, it accepts level idx instead of the regulator properties
and this is intentional?

Konrad

