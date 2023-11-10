Return-Path: <devicetree+bounces-14989-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BC2A7E7BFB
	for <lists+devicetree@lfdr.de>; Fri, 10 Nov 2023 12:50:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CC8A5B20DDD
	for <lists+devicetree@lfdr.de>; Fri, 10 Nov 2023 11:49:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3ABD91803B;
	Fri, 10 Nov 2023 11:49:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="V1Jdl+C3"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27836179BD
	for <devicetree@vger.kernel.org>; Fri, 10 Nov 2023 11:49:55 +0000 (UTC)
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E6D631E54
	for <devicetree@vger.kernel.org>; Fri, 10 Nov 2023 03:49:52 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-32fa7d15f4eso1236545f8f.3
        for <devicetree@vger.kernel.org>; Fri, 10 Nov 2023 03:49:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699616991; x=1700221791; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dnsyLuQheg+/3cWckMMZhRJ3W+3u+GfGV4x7we92iDA=;
        b=V1Jdl+C3z4Ec8wywSBc6E+1wXihOjgXL/Iz/T/GMZ6cLpRixVCxiyWky1gk59OGJ2q
         v1ZQf+mY9woTb3Ep2xvBvZj1slICFKcCAeouE5zljf5DJUHQ6V6/gRS92Tt5OsNXS1N3
         fVUvWY60uNZxgoJwnBOWAKeuH+YF17T41GWcG41lKHXXiyQi3wu2ek7m3wnZFnQsi7H4
         HMjz8pkp4UzamXsf/eBzbp9NosjhjOmy6mgTOCvXF6PyUXo2ym2qWww7SOsKZawneZDc
         nYcOspBTIIGpE4i3mSV5XZX2sEcLxdFEg63aTahg0Tcq5vSoE+zsAXkzPiWtm02HoBKM
         XRLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699616991; x=1700221791;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dnsyLuQheg+/3cWckMMZhRJ3W+3u+GfGV4x7we92iDA=;
        b=ZA2xLj6E9+tPFgZeCq8FsrSnYZFjxMbrC0LpaopARooJXsmyN9+vHjSY5hx7e/NxAK
         qS/QKhSPzgesy1E6te6tP9Sam02uNiLMl28vCauCYFrGUDr9wvdIhPXQRI5tqWhj+mt1
         PLNwOb1gT/QdH4plQ2SyMpETkLtInTqZUn5U20ihgP5HHlaUaRSxQ+8oLpqwTrlcRqsT
         Unx+iyvHsRPFzbyL9Ec9QeWkBpO/KuYYQ7Wt+qUWlmj5W8Wetc27BKYzBrBAqv2jIm0c
         KQyspmN9k4tBrDBFTBDXpu2sRBL8h6nMAr3d9GGeADSKj/QcAkdq90QQE+pDjHCNCC3I
         Xs8Q==
X-Gm-Message-State: AOJu0Yy1awOkhQbTwQBZZ50YQ7DUqtYifjy3h5xXuQveuBCJCpAyNO4+
	FSv8afER49Gc0tEqhYqbN5GdTA==
X-Google-Smtp-Source: AGHT+IFx+qOZ4g+ruh09/Sbp8yByrjwyQHAeeoLBHucqNe+XW9cf4CGy5NlDwW37k1ZjtwdvqHRvpw==
X-Received: by 2002:a05:6000:18ae:b0:32d:c09d:6ec9 with SMTP id b14-20020a05600018ae00b0032dc09d6ec9mr6686800wri.7.1699616990814;
        Fri, 10 Nov 2023 03:49:50 -0800 (PST)
Received: from [192.168.100.102] ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id b15-20020a5d45cf000000b003313069be5dsm1751210wrs.46.2023.11.10.03.49.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Nov 2023 03:49:50 -0800 (PST)
Message-ID: <31dac823-cc46-401e-85f8-d04544bd38c3@linaro.org>
Date: Fri, 10 Nov 2023 11:49:49 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] clk: qcom: videocc-sm8150: Update the videocc resets
Content-Language: en-US
To: Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
 Andy Gross <agross@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20231110065029.2117212-1-quic_skakitap@quicinc.com>
 <20231110065029.2117212-3-quic_skakitap@quicinc.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20231110065029.2117212-3-quic_skakitap@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/11/2023 06:50, Satya Priya Kakitapalli wrote:
> Add all the available resets for the video clock controller
> on sm8150.
> 
> Fixes: 5658e8cf1a8a ("clk: qcom: add video clock controller driver for SM8150")
> Signed-off-by: Satya Priya Kakitapalli <quic_skakitap@quicinc.com>
> ---
>   drivers/clk/qcom/videocc-sm8150.c | 4 ++++
>   1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/clk/qcom/videocc-sm8150.c b/drivers/clk/qcom/videocc-sm8150.c
> index 1afdbe4a249d..6a5f89f53da8 100644
> --- a/drivers/clk/qcom/videocc-sm8150.c
> +++ b/drivers/clk/qcom/videocc-sm8150.c
> @@ -214,6 +214,10 @@ static const struct regmap_config video_cc_sm8150_regmap_config = {
>   
>   static const struct qcom_reset_map video_cc_sm8150_resets[] = {
>   	[VIDEO_CC_MVSC_CORE_CLK_BCR] = { 0x850, 2 },
> +	[VIDEO_CC_INTERFACE_BCR] = { 0x8f0 },
> +	[VIDEO_CC_MVS0_BCR] = { 0x870 },
> +	[VIDEO_CC_MVS1_BCR] = { 0x8b0 },
> +	[VIDEO_CC_MVSC_BCR] = { 0x810 },

Are you sure this shouldn't be

+	[VIDEO_CC_INTERFACE_BCR] = { 0x9ac },
+	[VIDEO_CC_MVS0_BCR] = { 0x870 },
+	[VIDEO_CC_MVS1_BCR] = { 0x8b0 },
+	[VIDEO_CC_MVSC_BCR] = { 0x810 },

?

---
bod


