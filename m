Return-Path: <devicetree+bounces-24988-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CFDF6811DB3
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 19:58:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ECA661C21414
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 18:58:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D860A64CEA;
	Wed, 13 Dec 2023 18:58:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wL2/tvgl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D09BDC
	for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 10:58:46 -0800 (PST)
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-50c02628291so7792112e87.0
        for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 10:58:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702493925; x=1703098725; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Z9DowOQy/Sxl1JmlMV31xqpgcOa6MjD1E5V4uWjGVTE=;
        b=wL2/tvglytQn4XXQaXnjOfyh7LNUVZusOBiktTp6SLSeVwa09JwgKbw/xGIobEJSuI
         SYF8wmOV7wOiFHCQTwGQxNxNqBdhmPXbUSmD9pKuZYhjOGRiRUrEBwZo8uRpXy4gpQP0
         SPf1xw+sUOqkdnyrSXS6kyPfjJkGRSv1cKV4KHUPyAplDuY9Ua7fX4v0H0lCOaiTyczx
         GcWNmNIaJNyj5I02IJd8s8rcZb7CV8dmjCDIc/rpT80ffz9LvJhFV9UmciSl0Zuc0N6Y
         zUBmD/BxvmQskVBb5f5HLd70erbUc0Cy1kTJqkhaZ4kebLSXH40qLbRr12haEtdlMwIb
         Sy2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702493925; x=1703098725;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Z9DowOQy/Sxl1JmlMV31xqpgcOa6MjD1E5V4uWjGVTE=;
        b=aWXUZeEoeEO72BIIUbAfZNOJ7qPSQu6xbmIAmOIAcARPPvmBgauzZsMJbL7TZeTWgj
         W05YRaoGzJpW0CdIKIugw1GCu3PuWnP0mlqRlnrOP8sljVUAz8lv3hf4jSeme1LK1k20
         rJ3TPUkPUcRNxZsvkg4IHXmHPnmOMdvNYOWyr9EqxQoyAZtlnUl/yb3ekGsQ0U/EvsF0
         AWURSD9cTJi7GWSpTYmM3xPXjosSFTEVTEkRag8yiyqwvY3A1pVTOXbVtTtFw4DujJeR
         +s9ayem7VIn59sAA91ktFdYTyXZK0bWEjFzk2HZf441RJGo+hxo3AytG91au0Rp7/f4H
         z0cA==
X-Gm-Message-State: AOJu0YxucJ1O8eG8dz3GZ/wSNZB6ZbSXd53NX54rKJl+jWtRA2SVAuLQ
	+ZMwmZgu0ayyywLpQv55dSItwQ==
X-Google-Smtp-Source: AGHT+IG9XuroAkQ9UfAcWZUQQ+IDHc4FOLDEE14HErVjpjowcti0RuDxYZzjAuJXvBGAJCWeEMO03Q==
X-Received: by 2002:a05:6512:39cc:b0:50b:ec63:8cf with SMTP id k12-20020a05651239cc00b0050bec6308cfmr5992226lfu.21.1702493924800;
        Wed, 13 Dec 2023 10:58:44 -0800 (PST)
Received: from [172.30.204.126] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id u4-20020a05651206c400b005009c4ba3f0sm1680336lff.72.2023.12.13.10.58.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Dec 2023 10:58:44 -0800 (PST)
Message-ID: <fcdf32a5-4efa-481f-9387-df94f08db7b1@linaro.org>
Date: Wed, 13 Dec 2023 19:58:42 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/5] arm64: dts: qcom: sdm845: fix USB SS wakeup
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Krishna Kurapati PSSNV <quic_kriskura@quicinc.com>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
References: <20231213173403.29544-1-johan+linaro@kernel.org>
 <20231213173403.29544-4-johan+linaro@kernel.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231213173403.29544-4-johan+linaro@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 12/13/23 18:34, Johan Hovold wrote:
> The USB SS PHY interrupts need to be provided by the PDC interrupt
> controller in order to be able to wake the system up from low-power
> states.
> 
> Fixes: ca4db2b538a1 ("arm64: dts: qcom: sdm845: Add USB-related nodes")
> Cc: stable@vger.kernel.org	# 4.20
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
Matches ds

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

