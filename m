Return-Path: <devicetree+bounces-85792-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EDD449316A8
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2024 16:26:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0AE33281A28
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2024 14:26:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4505718EA74;
	Mon, 15 Jul 2024 14:26:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RaQvv7fa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E97F18E74A
	for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 14:26:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721053575; cv=none; b=uYCTHcjx/n4nWJy5i3gnQ2o4sYlSEk6qJQhHxA9S7pwikbQZpS1dpK5P3cyGOSP5KTuCphKDTcv8/UjP5MWZVSwmj7FbhJPQjTDzgvnWOXfbROzivEUKK8jRvBQUSKubPm9dWdGJgU01DGKyE03TwdcppkFU0WCGkOS9u/JATyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721053575; c=relaxed/simple;
	bh=kU2ZagiLUrfwAO39oKX4wRm8eSpqgKhI8Ba212r+0Ik=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=p1+IDJ5TsACvR0/xnKHPYBJmsXWNle/D4LA6ZM8BYPzkcA9oSYAEwRH3L52YkD/C5XYTCHouETc1ptZW3jmb9v8FN/WYkJZhZM/o4F1AI8ixh9DaxAp8ULsdjcvceaQcy4tuQilYtjdYCX0trUEAtnS88E+Qs4gvycIDmz3HY3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RaQvv7fa; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-58ef19aa69dso5011530a12.3
        for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 07:26:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721053572; x=1721658372; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=ReuplKsh2s6OUCjToStTccnLppXzOH+9gugOECnvmWs=;
        b=RaQvv7faijzRylqKv75SH7720tnNXpbG2kHUgOH3uiGolExjEgJLIt3rWWlH1hiuzf
         hfyeWmSlvcZ338zBK4o/X6eDPw3Put+2MCoAFFGjyzL0OkQ9oT93oprhooH4XDxxTIC0
         u4S1T68J5P7A+DY7cDlhceBszbuT2k64WMcQRh4v6r45ej5jvph3LizbGQWFSSsNA+VX
         sKjuz50Aaw85BNxva9nozbVkDcFPBihskVayD2LGOKQMX75R9KjVee045WqPrCwCX22T
         NfpoirlXYUQW5wh+bp9xLjJtly3sWjQx2x4ZVyPg7J4W8VeALM90pEsSz6zorObrBROJ
         dvqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721053572; x=1721658372;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ReuplKsh2s6OUCjToStTccnLppXzOH+9gugOECnvmWs=;
        b=M4D//P+CWI1K6hz36Q3G7KfYl1e23dc9ztV2aWp8U7Ol/5IhTPDYiVlq6kv7DPVl+p
         jeTjPNf3tijnGyw51He6YJ94JCy56++/JI6e3B+ailI67ZtR50Ynp84r3c8qZsTDItk+
         nAA1De185GPLp4EaLFwlWSyg49L2oLySwN8fVAe5bCGb3U8D+dLUV2BnCDtmkKziZBO0
         fV95kc1DAJKHZvMObYQMvqUKU/DLjyTKsmpCRQDcMTyp7K5t7RxTq9OnJGBgXB7iWWzo
         /ftKcu454TMOUGaoAfsgw3eNSzLxYCrxXZULBfUNsDVD4PGZ0bZb8WoQaM5FFEIl1JQo
         7bAw==
X-Forwarded-Encrypted: i=1; AJvYcCVYox8MgzNCXKofCOfsVMrOqCSVtB/WRiofLDgPy3xBz+4sMkCCBgEpI4+qtOI7q2QgprZCRm/aN7FNz9u+dZi3ffdXThD4JQmz4A==
X-Gm-Message-State: AOJu0YwlVcvX17NsOGc2BKiAPM17OrK+Rfi+oZPF6lJFOW3IA8KRBo83
	YaYt17Rr4QAk3O1GxknO7hvZCamxdi/ExxW3MtX73pxH/JNc4nh8e5M4JFwatAo=
X-Google-Smtp-Source: AGHT+IHx+jl0YZrf1lKHWcG/xRFxLWNnBR1s0qLqbWag0UR/wqjdfunUT3uFtHohIHsFW3YVgdrNLw==
X-Received: by 2002:a50:f613:0:b0:57d:2207:a55 with SMTP id 4fb4d7f45d1cf-59e96c83e17mr49149a12.15.1721053571648;
        Mon, 15 Jul 2024 07:26:11 -0700 (PDT)
Received: from [192.168.105.194] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-59b24a76c96sm3384764a12.18.2024.07.15.07.26.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Jul 2024 07:26:11 -0700 (PDT)
Message-ID: <78766304-65d6-4988-a357-4f539643827c@linaro.org>
Date: Mon, 15 Jul 2024 16:26:09 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] ARM: dts: qcom: apq8064: drop reg-names on sata-phy
 node
To: Rayyan Ansari <rayyan.ansari@linaro.org>, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org
Cc: Bjorn Andersson <andersson@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, Rob Herring <robh@kernel.org>,
 Vinod Koul <vkoul@kernel.org>
References: <20240715130854.53501-1-rayyan.ansari@linaro.org>
 <20240715130854.53501-3-rayyan.ansari@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240715130854.53501-3-rayyan.ansari@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 15.07.2024 3:01 PM, Rayyan Ansari wrote:
> Remove the reg-names property in the sata-phy node as it is not present
> in the bindings and is not required by the driver.
> 
> Signed-off-by: Rayyan Ansari <rayyan.ansari@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

