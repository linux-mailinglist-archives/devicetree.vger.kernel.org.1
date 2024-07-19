Return-Path: <devicetree+bounces-86868-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F5F1937C93
	for <lists+devicetree@lfdr.de>; Fri, 19 Jul 2024 20:41:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EF7DFB20D54
	for <lists+devicetree@lfdr.de>; Fri, 19 Jul 2024 18:40:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD46E147C86;
	Fri, 19 Jul 2024 18:40:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jQpZHZM3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FBBD12D76F
	for <devicetree@vger.kernel.org>; Fri, 19 Jul 2024 18:40:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721414450; cv=none; b=RgIzSkFgp17/0knOxrIU9YsjNyNTPQiKaJ4r9dA/HnmBvTlqCQrvbsXFRNE8V1DMMsv2HPoWMlu6SYxkmcRQNNIg0+zCMis7LDuDACYTLIRhZYLGNbuZ6JW7E0N2JL8jpJCRswZsF0JAe8rLWJ4nlMNHw8lot6GLMAXmf9N5y0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721414450; c=relaxed/simple;
	bh=XX1jAWjCcKii67DLBo/W1AnuLPC++cWcmF3Yn2K+zaE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CXVYRDN0R5mfBUixVOzhc57omNGddcMa/zYmzz5gzMHkAiSwRMmge4midK8dgd8MEpOnuBEEW64g690H82iv0uQbYhvot87ogaWbCRsFe9CaA7mh2amDO5dr3vGiDJ4C4fP+5Imzx56YSXxqgk1Opn249/icMK1AUZUrtcqM4SM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jQpZHZM3; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5a1f9bc80e3so577097a12.2
        for <devicetree@vger.kernel.org>; Fri, 19 Jul 2024 11:40:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721414447; x=1722019247; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=u1hVqqEpX01vxnIQk7bKheH7JfBVKu556U4cNc0pHgg=;
        b=jQpZHZM3TcW1nX4m6GKygLGVTdxgCIVI44LaBnMqv1I06FtHgEs6Wqw1nG/6wL72FK
         owIjtdIhA8Yk3vMRc4XRy3/y3TXXDw4D00RA27x3bMPSKTush430Mn4z3iYQrNRYRxOu
         1romwaBBPwdC1P8/rrYvmvT8kCt2lTmb8Yt2o6xrmycXIKk17sLKfX+mpHW/t1Mg0l7F
         dUTLXvyzXr/8up9/hGY5pAmucNTEF3FtS3T3tn3D1t9200Eskm3toFEYd+xQIc0pAnaa
         MKcSFkvyrDqwLYvix5MmjiJNTV3JT6YKYTI6Ho9BDhovsTg14y15bUq1xgC4XsZdFqsB
         Ld0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721414447; x=1722019247;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u1hVqqEpX01vxnIQk7bKheH7JfBVKu556U4cNc0pHgg=;
        b=aU9UEpTj+kPJK+44s6/qMXmanjQq5qLUHCzVNvlTR1B3bvQwJkBoyBxtFvgQt+fBje
         k3PuwqvWRNCExP7nWnch+tKXkiVqhQxSRdQVY+obg7f0AFr6usvTiOudDp8PIeZ6QH6s
         u89ZTQTq6lKRH24EvgMDfPD3KK1CEjUXjP1ssptberU8z+TJrGWJE5W4AvbdN7FDv1g3
         3fl1x7WbvZajl6hnEl2BoP5HDOrjJ804Ohil4qd6TDMTdtGaATkZGotT7WZdU+LHfTUo
         lpWF8z8PuoesL/UUaNGcGUoaAtQB1ozHFt1Bg4rLn8hn0b+EXX52tIoT4lf9ImmTOmkI
         MXVg==
X-Forwarded-Encrypted: i=1; AJvYcCW0gz8vdbRWnOob+oym84uH4gzmRqLtMZoopL/Vn0u6fJiMjXXcq9lquViIdE6YAoY/WepKTNj0cDnW/5dpkbe9oUQf0IfijYk1FA==
X-Gm-Message-State: AOJu0Yy83H0eSzACmON4Qwi+O4AOLQWhWEgsvLnpSjbKygReSbpGetSY
	aJaqon7jLl9VD7IU1fk4J0IcYvuNYy9Ls5pI6LbTStKXvlHIxlU5e1c+hdKjXK8=
X-Google-Smtp-Source: AGHT+IGce7gHCGbi/RSV1XHH0SbzSaDNl0woeD9Z6H8pw4ue1jii5nmsIclsqkCtVc3/LHvHKvIqRQ==
X-Received: by 2002:a50:8a81:0:b0:5a0:e303:8f0f with SMTP id 4fb4d7f45d1cf-5a0e3039036mr6700514a12.10.1721414446656;
        Fri, 19 Jul 2024 11:40:46 -0700 (PDT)
Received: from [192.168.105.194] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5a30a4d6c17sm1551897a12.5.2024.07.19.11.40.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Jul 2024 11:40:46 -0700 (PDT)
Message-ID: <29406ac4-0cca-4d4b-a164-148b7c70e140@linaro.org>
Date: Fri, 19 Jul 2024 20:40:44 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] arm64: dts: qcom: sc8280xp-crd: disable PCIe perst
 pull downs
To: Johan Hovold <johan+linaro@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240719132522.9176-1-johan+linaro@kernel.org>
 <20240719132522.9176-2-johan+linaro@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240719132522.9176-2-johan+linaro@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 19.07.2024 3:25 PM, Johan Hovold wrote:
> Disable the PCIe perst pull-down resistors to save some power.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

