Return-Path: <devicetree+bounces-17066-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E98E7F113E
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 12:03:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 57D3E1C21624
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 11:03:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E97D011CB7;
	Mon, 20 Nov 2023 11:03:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kWsUuo/O"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E44A85
	for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 03:03:47 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id ffacd0b85a97d-332c46d5988so687293f8f.1
        for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 03:03:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700478226; x=1701083026; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SJvB4sdAi/jLk1JCRFuGNm+4SWox2Y2BPXbersr3knw=;
        b=kWsUuo/Odrw8SDtRiiK62UnDFFLceWJzOtkC0dRy6QnCUg4+l1OJS91k2pXt01ySO4
         Ce5mYbO6xwjI9fv43hdFkZdXSKEGSJ8hWnluuEKK3U3VoiGRc5ouOxeJH/JNtoJ2RPkR
         3uGcuU7ZqRyaohHdH/6GS9ErmEXAp5DOKlAlEiteezbAI8bNxVWoUJzljn7FXDMAmUI1
         LD4fOj8ZNxil0/bQhdXZZJqGPDoxVMoAuttkw2neJhGE+PBUhm10ZR7oEmRXAsEl1Qxg
         b6dX3jNXb5Kz9/3yCiHYEYNywcpSL5o9waofxYfapYx3M77oeukYsjgdWiEMLXxvV5Wx
         CSJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700478226; x=1701083026;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SJvB4sdAi/jLk1JCRFuGNm+4SWox2Y2BPXbersr3knw=;
        b=F3qbFy1n/dHfxSJ+NlCvEvl1yEYiROCy3oE/NmQjfBsnP9OKfbC7RNhzwF8kmkARJ2
         mYJ4TuEQ6Bfru3PWF/JOxLtzOvIirJ7enUEmlF/UYWkiTSaoDMx/dLl6b2NqRYEI/ld0
         fq+6rHGPM22NM8GgX7bZDEfqzFuZhDxOmImfzhqZPU0/Xduyb4FTzW6DmZOMPQvJURpk
         zsjBks/JOx8csXny6f7PT75dNAA8vVHJ5seeYwSdUi4iAzBtgTB80r1b38Ewi7l2Rcms
         vkUv/TKTSI86vkLpe+KO/qZmexQWPYDmIgya7zz8VFUq7aGSWo5XZ9JBd3ike6c0qah7
         PqMA==
X-Gm-Message-State: AOJu0YzvcnupDguYpM2aiMsu7E/4Z3eHh1n+SW42vf1Fq+AgVf9RqSc3
	wU0vWqEjYs/rhAOyTcOdgvwRzA==
X-Google-Smtp-Source: AGHT+IHljDZI7pMKErfkRq93NyuVgn+V5paosGBX7S0hIYwBfzX+b8EbFcZhgq/wqFr4EgRY+Lj48Q==
X-Received: by 2002:a5d:694f:0:b0:32f:99f4:ebac with SMTP id r15-20020a5d694f000000b0032f99f4ebacmr4497109wrw.18.1700478225919;
        Mon, 20 Nov 2023 03:03:45 -0800 (PST)
Received: from [192.168.100.102] ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id b11-20020a05600010cb00b00332c0d256c5sm5916490wrx.80.2023.11.20.03.03.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Nov 2023 03:03:45 -0800 (PST)
Message-ID: <2a912e97-c0e5-47b2-9e3c-99f675283650@linaro.org>
Date: Mon, 20 Nov 2023 11:03:44 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V2 2/4] clk: qcom: Add Global Clock controller (GCC)
 driver for X1E80100
Content-Language: en-US
To: Sibi Sankar <quic_sibis@quicinc.com>, andersson@kernel.org,
 konrad.dybcio@linaro.org, mturquette@baylibre.com, sboyd@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc: agross@kernel.org, conor+dt@kernel.org, quic_tdas@quicinc.com,
 quic_rjendra@quicinc.com, linux-arm-msm@vger.kernel.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, neil.armstrong@linaro.org,
 abel.vesa@linaro.org, quic_tsoni@quicinc.com
References: <20231117092737.28362-1-quic_sibis@quicinc.com>
 <20231117092737.28362-3-quic_sibis@quicinc.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20231117092737.28362-3-quic_sibis@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 17/11/2023 09:27, Sibi Sankar wrote:
> From: Rajendra Nayak <quic_rjendra@quicinc.com>
> 
> Add support for the global clock controller found on X1E80100
> based devices.
> 
> Co-developed-by: Abel Vesa <abel.vesa@linaro.org>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> Signed-off-by: Rajendra Nayak <quic_rjendra@quicinc.com>
> Co-developed-by: Sibi Sankar <quic_sibis@quicinc.com>
> Signed-off-by: Sibi Sankar <quic_sibis@quicinc.com>
> ---

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>


