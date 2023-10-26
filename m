Return-Path: <devicetree+bounces-12152-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 126C97D81D8
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 13:34:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6E0F6B211CE
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 11:34:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 772962D054;
	Thu, 26 Oct 2023 11:34:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CcTu02xm"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 272ED2D03C
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 11:34:35 +0000 (UTC)
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 058AB1AE
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 04:34:30 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-32f5b83f254so569512f8f.3
        for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 04:34:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698320069; x=1698924869; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=guG/4XeVgfANKrbZu4mGuhf3LMfrQDPCzTLE4W9xTUQ=;
        b=CcTu02xmrvd6uRdisUSflC264cuI3LaRZaMPUmMAM0Le/0hRKug8zchKwTCFTJI+/W
         L7o5BqsG4o0FD3uLRbShrXzZtcZ2ijAlqBs2INot0WJ8aXeIs993Km7A/e2u34mnBpgU
         4PnvJaH//HnHLo+mXMa8Z7aIeRP1Svfm40UNRXiuf89TOTeMdFZ0XIaBrtGCguXiUIIb
         IYYjhnxKptGHiOkCH6RjX6lo049quIcPEN80G3YbR9PRdQ8gXb4B/s53wGmtznJ26kXF
         K9jQpRTymjG953grbhLwDthysc4vMla/ETH/qSE20qi6LOOi+agptyHlsHsYnIOHsDE0
         teJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698320069; x=1698924869;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=guG/4XeVgfANKrbZu4mGuhf3LMfrQDPCzTLE4W9xTUQ=;
        b=cAVphmdhNVhpN22rYV/syBMOqDUxteTU6kwOQg+kjDF8KF6wCqYwIJr8efXDh+1I1Y
         5GuVoRhLA62Hrp+tlsMqmLUUDLKPvgk5rqulF3/nx7ns/3eMUcgiGwKVyG3OHtCJndPd
         RXZ4crXBsLZhFflyclD6Rh+edmkWQTxNBm+taLGy17ajtiVtbC9TwiQgA7Knx4oP0o7W
         quyi9N0NFDtPC4oMegY8TETISH07T151gzOH8UtCDBcQhDUbZeKpUo40/rR84SdjhOAL
         UD3H4j1PDvxzy7KE+zG99urBGZPAvMpRoKrQnVnCJl1qqaswydXQcEdksaG6XKrmAOvH
         GOqw==
X-Gm-Message-State: AOJu0Yxis+H0OkiCEXZvXFDr7fvAU/EXHE7MFiohl61bIEzWefdg4mu7
	9kxUQF7EU2TE2kCJJcO6aoL6Ag==
X-Google-Smtp-Source: AGHT+IHSkVTTrHEK5sk3YvrLqIt1UC98bLaicwEdKbLfLHhFFxSyL8PtT3Zt2NSsN8z3RRf7Nbph4A==
X-Received: by 2002:a05:6000:a:b0:32d:8830:cda1 with SMTP id h10-20020a056000000a00b0032d8830cda1mr13865846wrx.63.1698320069155;
        Thu, 26 Oct 2023 04:34:29 -0700 (PDT)
Received: from [192.168.100.102] ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id w5-20020adfee45000000b00317a04131c5sm14075315wro.57.2023.10.26.04.34.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Oct 2023 04:34:28 -0700 (PDT)
Message-ID: <6d44b972-9337-472a-9010-71ebaa0d45cf@linaro.org>
Date: Thu, 26 Oct 2023 12:34:27 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND PATCH v4 3/4] clk: qcom: camcc-sc8280xp: Add sc8280xp
 CAMCC
Content-Language: en-US
To: Konrad Dybcio <konrad.dybcio@linaro.org>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, andersson@kernel.org,
 agross@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
 dmitry.baryshkov@linaro.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, jonathan@marek.ca,
 quic_tdas@quicinc.com, vladimir.zapolskiy@linaro.org
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20231026105345.3376-1-bryan.odonoghue@linaro.org>
 <20231026105345.3376-4-bryan.odonoghue@linaro.org>
 <20e2801d-df4f-436e-a677-2c81d43e3273@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20e2801d-df4f-436e-a677-2c81d43e3273@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 26/10/2023 12:21, Konrad Dybcio wrote:
>> +    .flags = HW_CTRL | RETAIN_FF_ENABLE,
> This should really be HW_CTRL_TRIGGER from [1]
> 
> and then downstream uses cam_bps_transfer_gdsc_control and
> cam_bps_get_gdsc_control to control hw (fast) or sw (normal) mode
> 
> similarly in drivers/cam_icp/icp_hw/ipe_hw/ipe_soc.c for IPE

I'm happy to do such a conversion if said patch hits -next, qcom-next or 
clk-next before this patch, otherwise I'd rather not gate this driver on 
stuff that's not queued anywhere.

There's alot of CAMSS stuff driver/compat/dtsi that is gated on having 
the CAMCC upstream, effectively all of the CAMSS stuff for sc8280xp.

Fair ?

---
bod



