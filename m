Return-Path: <devicetree+bounces-127733-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 155939E621C
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 01:21:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EEA461675D9
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 00:21:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBA0811C83;
	Fri,  6 Dec 2024 00:21:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CvR0lFNd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2938C7483
	for <devicetree@vger.kernel.org>; Fri,  6 Dec 2024 00:21:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733444489; cv=none; b=l/ym8EIzOiCv878EsiKl/eHAPXmY/uckIUbpAwCruidCgNMvTgal9VeJKgOx6qJstRA8EIgRtzHjRrNg3fE8Ds7/xE83aew9/hBQGJ8y0z1YRjsH/vJtGYFUofqo8K6Qrr1NoTczbrwrUeJUpYZakhM7Lwy2xoNYvbJBNIn+W50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733444489; c=relaxed/simple;
	bh=ECFPlpYx6xTXivoepudOakBW955sadKB6u8Jl+brS2Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fi8hEul8mdFHeLdB88CvetF0Go2xecvjwCQcp0y1cUdTnzBV1AJgmmdBvG/RR2qSEpnsMxsYB6e6jbaQqya+zTobeQmkH5qR9zng3u9vnMGenBk7iJSOIlI+n/OQy0FNxcu6JXekpemDIwwTO/6x91kNDYpU5eLFPrI4uPInAPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CvR0lFNd; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-385e25c5d75so889819f8f.1
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 16:21:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733444486; x=1734049286; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iluXuUMeyOtUOSmbmFOhlAadIgL8iqOWZsl/pbKsiiU=;
        b=CvR0lFNdKd35z2F1dCnTp3pqQa05tWI8AlIP7Tfv9NRJGk4s+J7OAtwCkdn2YfYgoY
         wErxx62BoO+ZDNzn3qnui32djJ8NbO5Q6rvrLVq5H56qbOWmUSBD8t0Gp5he+/fIUJ3b
         MDKbC6iD4VMtxjSmzQ5Ctgyx8C2O/5JemBALinH1LovEdPlcQpZzA2dSCyUzDDa030dO
         JACxC6yzEyoGoRf49QZ6b3Bc4OIYp6MnJeX23J+1O09B8eue5qES2SgyvAWDy+euj+s+
         193rEwEmns21bPChnuV6gCHqfpngGm9s4vXH6E2iA3Va3rX6qyV6/dKUI/x8bisfiTQv
         +MYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733444486; x=1734049286;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iluXuUMeyOtUOSmbmFOhlAadIgL8iqOWZsl/pbKsiiU=;
        b=darzNwQ++JGEOdLw20fVxkm4un/+oFVHKC/oVoNw7wDVb8h0b409wtohA6TY+inKdu
         bNU8CXBJNY+Y2Y8YmFBNcByqeVcacvMhuvS+bPQ/aezby6mcryvjXc66KJQkqfDG9Yli
         EoZtLL+drOO3hCHHaihRezp2EnwbaOjjkhYBlRu+5tkaG9LnUtgKSw9IThk1kxGCoUjM
         KxlNu38xfN+oKuH4d8aybh5sZawcyXjjFtJAkQyUBHLgvQbL4b8rIFqA1pnvUDCy78QR
         6FL1/IgP6yMO3FWtRbOVbeB8GFc/hfW8nGEZgLMUvojqqM0FNC8DeYP6hpAXT4LXMWBC
         wh9w==
X-Forwarded-Encrypted: i=1; AJvYcCWftfz77Ip6RhA76ukT3c+RvQMwMY/i3+ncx1t/lWCKPDSFo0chZaDxy26Wzb9UGAWAjxy2ATbjUZaU@vger.kernel.org
X-Gm-Message-State: AOJu0YxpR2YTXl60WBLJKUXirhsibWDzE5Wdl52DDAjaugHJeMcZx/6L
	1+aIIaQbeep7MIRRt+AuiD5mAe/oagvX5vZb8oFN7dq96mbqHr8kVDPFfSTh060=
X-Gm-Gg: ASbGncsTIB7gLjnfxW6jh4uhIsyXXvbKuj9IxS6PtCd/2+wwTgejy4m32JD0kV9T3H5
	u1WvZtMAtSc9myyL+69Fu4GB9gnRCgiw0sLnjWPEpVIpbUwykJcXcahZf/bp3v+EqwpWDrDG9Ka
	WVBnlWMTBORZ/f///t+P/MowWJns60Jn3Ez8GWwksbrc1I5kdu4qO6bA9rDBwjVij4eVNlCxjn+
	k65+JvOQFygS9lDTlamnk1q3/Y8fWlNMfPihJdC8rh1e9+tktGQyc8ipmuBejo=
X-Google-Smtp-Source: AGHT+IHHgaIuslDJ05D+6hCUGtryGORItnAkhst5F4QETKpbtAasAT/SV3liDYCmlprOqkATMFDkhw==
X-Received: by 2002:a05:6000:401e:b0:385:dc45:ea06 with SMTP id ffacd0b85a97d-3862b35104bmr666619f8f.13.1733444486436;
        Thu, 05 Dec 2024 16:21:26 -0800 (PST)
Received: from [192.168.0.40] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434d5273199sm76779865e9.14.2024.12.05.16.21.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Dec 2024 16:21:26 -0800 (PST)
Message-ID: <636ef629-2298-44cd-9e0c-d009379a72a6@linaro.org>
Date: Fri, 6 Dec 2024 00:21:25 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 12/16] media: qcom: camss: Add default case in
 vfe_src_pad_code
To: Depeng Shao <quic_depengs@quicinc.com>, rfoss@kernel.org,
 todor.too@gmail.com, bryan.odonoghue@linaro.org, mchehab@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 vladimir.zapolskiy@linaro.org
Cc: quic_eberman@quicinc.com, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@quicinc.com
References: <20241205155538.250743-1-quic_depengs@quicinc.com>
 <20241205155538.250743-13-quic_depengs@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20241205155538.250743-13-quic_depengs@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 05/12/2024 15:55, Depeng Shao wrote:
> Add a default case in vfe_src_pad_code to get rid of a compile
> warning if a new hw enum is added.
> 
> Signed-off-by: Depeng Shao <quic_depengs@quicinc.com>
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>   drivers/media/platform/qcom/camss/camss-vfe.c | 4 ++++
>   1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/media/platform/qcom/camss/camss-vfe.c b/drivers/media/platform/qcom/camss/camss-vfe.c
> index 58e24a043e81..1c9b6569fbe5 100644
> --- a/drivers/media/platform/qcom/camss/camss-vfe.c
> +++ b/drivers/media/platform/qcom/camss/camss-vfe.c
> @@ -404,6 +404,10 @@ static u32 vfe_src_pad_code(struct vfe_line *line, u32 sink_code,
>   			return sink_code;
>   		}
>   		break;
> +	default:
> +		WARN(1, "Unsupported HW version: %x\n",
> +		     vfe->camss->res->version);
> +		break;
>   	}
>   	return 0;
>   }

Please re-order your patches here.

Generic fixes in a series to enable silicon are _fine_ but such fixes 
should come before the silicon enabling portion of the series.

So this patch should come before "[PATCH 11/16] dt-bindings: media: 
camss: Add qcom,sm8550-camss binding"

---
bod

