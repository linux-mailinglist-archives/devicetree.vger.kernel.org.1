Return-Path: <devicetree+bounces-170004-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 89E2AA9948C
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 18:17:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 82DC317BD8A
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 16:10:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D60920D4F8;
	Wed, 23 Apr 2025 16:09:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NH7V23Pn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 488B5381AF
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 16:09:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745424550; cv=none; b=AdNK4lsG024QF/EVQZMxxmVPt+QLXlVIKa2tHm9nWweGKsichfi6YtY21/M7yyi0ttmDkQ5doS8eIGs6WJwKWCNQ2AAO5OuoHNuaxScW25W3ghaFkwCSJn+dK70xwPDZ2l+jP7SFIpjS8wRkt80LwUZQGnagiTARXVu5Xqm8nPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745424550; c=relaxed/simple;
	bh=6C2WruQbnruVUvUmNXf0D+YaVW6T/QQf/Sp/kmZLHXY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=S91URP8e0CKm42gpxYslpp8bUNCYBb0/Z4efyrVtVkW4mLvTmZAyHGvuwJh1sPavqhGzBBENHY3P6uYJNBvDv0mF/Or4ldXCfPVKgHOaON9FOuYS8DRhxBtQWGl2oEm3KWynSOW9mGLJMXcNrza3qheF9UqQbzdlGWCPIh8nSAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NH7V23Pn; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-39d83782ef6so896601f8f.0
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 09:09:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745424545; x=1746029345; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ORF2CP6OomLWk1e3FvUJDGLD2Zyr1DBGn5dtUvbKU8k=;
        b=NH7V23PniSMOHIH0enPZd43lAHQWYV/F57q9+jtie9LLBIvz7ypkuH/etPZxLCIgIG
         XM6wYvExR7tCxKJ+rOk/RcAoLRJE0ZfBGVULsQYudSSqFr4DsLRCWGm53w0ClP2lpAPn
         6itrEnf9rjc1glviVLUiSy/Pwa7bGZXFj0mUcSh8/oqXDQInSAKZ9BZf9s4IWuUMeJY6
         OwOyNmGHRzcGXhkxXMikUcAsq7hzwaUVd1hfG9NQwARJp+1oPsrGuycYtCvETm+YXKjv
         MClsKxiYToPmYkJofYIFB1v5m54LnumJNfAPocE6PLtQFPCMCy1j8yBmeeUYHynu/F/J
         wpSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745424545; x=1746029345;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ORF2CP6OomLWk1e3FvUJDGLD2Zyr1DBGn5dtUvbKU8k=;
        b=vKwHUaS/bSjuN0FGrzGGiGMNd1lv/n5jdkrNFygnJwtBAzsUtOtrP1bx+p4ZL0Af59
         VrsEDgDI378CtZOSv4Bf1cZKcrKQnWGyXJI2Em7fccVcRpwicGYhHsrp+AsFM5VBsMUV
         mmQhCk1OnHablTlCcAJWB/stOD0+WM1uwpI8st53Q6xc3Nv4vVgUnMYvobD/08XTtjVD
         Eof7XKpJc1qJ2ipZg2FZ46qdfdtuZv1F6HfVVp3nxmM/Zo0B84MX44Hh1hHUBsz+RaLi
         k9S85EemjgTfI//vnII/5QujzklrCECDZqWqmbM4A8cO465gMlMJsryu6KqSDxrt/Ygy
         H0TQ==
X-Forwarded-Encrypted: i=1; AJvYcCVV5Htce5PBYWilOzinCOJpVMzsyUvcnFqeMiF3eaGmvDb2p9kEriV0n98Sgg9l9IWF1uFy/Awb2p73@vger.kernel.org
X-Gm-Message-State: AOJu0YyUhZf4lqa1dDkQ9bal2d9kCgPJifBb0k2qBqslX9zY7eWbWXQd
	V3Pml69NNh+z1GKbiSb5yDrnWo05FsFbtWwnyKEKha/8fE6XaACa8sm7Q07GHb97S+DE381zUkV
	CXTw=
X-Gm-Gg: ASbGncs2sWJeIBJ3s7Xu4Qd+5LorPhcPF9TlWKj2t02cPAI1KUzPfn/4sGSTQMffjxR
	FKmg3qfiDvvxsVNuuTH6C+s8cq++KojUqqKvk4fxjXAMjbmsNIhd1u9oRQICTb3wwUpwnpwsiB3
	pxx1WDFZpJ/l8XgVLlj9l1Fuq+zr1FCRcGVo+PdwyIfOO/b6+SUfqq5fOOLswi6QU+JWoDOY3SX
	0H6PWkOmJyDHJxZcRW/N/pJeo02+lah3o1oS12lQFV8XtagqTjGGkIJDO9rbEFV3atyWQLSgjYT
	pNFoKEDitw+G5d+RNnHUoW9GM9AWR7a5yfIs83u8zl6jrkIhLwJ2CPPey7nfBCX9f5LTzzmZlz/
	9OVpixfxOwU7ox5oe
X-Google-Smtp-Source: AGHT+IFD1qn4MEpH3wlqbTJMbw5sAArPinlMyJX/VVOG6Uxi7wIwgbVxMU66H+xq9iPQlQCcNDplcw==
X-Received: by 2002:a05:6000:420d:b0:39b:f44b:e176 with SMTP id ffacd0b85a97d-3a0672927f4mr3220079f8f.24.1745424545592;
        Wed, 23 Apr 2025 09:09:05 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39efa421c79sm19064267f8f.1.2025.04.23.09.09.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Apr 2025 09:09:05 -0700 (PDT)
Message-ID: <55f49107-e7bd-45dd-af1c-5d9a5b2020a4@linaro.org>
Date: Wed, 23 Apr 2025 17:09:04 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/6] media: qcom: camss: Add support for TFE (Spectra
 340)
To: Loic Poulain <loic.poulain@oss.qualcomm.com>, rfoss@kernel.org,
 konradybcio@kernel.org, andersson@kernel.org, krzk+dt@kernel.org,
 robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, dmitry.baryshkov@oss.qualcomm.com
References: <20250423072044.234024-1-loic.poulain@oss.qualcomm.com>
 <20250423072044.234024-2-loic.poulain@oss.qualcomm.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250423072044.234024-2-loic.poulain@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 23/04/2025 08:20, Loic Poulain wrote:
> Add support for TFE (Thin Front End) found in QCM2290.
> 
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> ---
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

