Return-Path: <devicetree+bounces-187671-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A1B12AE0E31
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 21:48:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 52D4117048E
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 19:48:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE900242923;
	Thu, 19 Jun 2025 19:47:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dwEye9gg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8EF021CA04
	for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 19:47:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750362475; cv=none; b=lphMUS7oPtLJZ4mfDliQ/Ov+6+7dq/vA5+fksre/Gl/77aCB5lDnT0lEeZNWJZQe1nk4shzsggsdJqk9QlZFYnhi0NJNKqegOh3WAa8nEkmNUHSiPu0AxZqkUyv+pvp66oG/UovVTmoiMKd8JWDm47EPvS+xfTB6euo11gbdh20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750362475; c=relaxed/simple;
	bh=WEPqgysH2b56sy2q0Oh6sv/OxKTLVLnKJ64jI4P+DPQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=azOfune4hMspCUITnruU5Bd6TIxZlummp/3yHosL0D9aHoPwk6cPJ7OPumL99z9yCBGxCE2aw4C5RgNjLT2ITl/jT5l75qg9nw+d1NDO9J+Cu+0YYL+P7aVIUH5Sxf/NEskv06scAOWoNdJTGOQzjt44ZwhIejGPdNoQ2+JAork=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dwEye9gg; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-3a36748920cso1006212f8f.2
        for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 12:47:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750362472; x=1750967272; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=N/YzQSu8b3RwwM7ONT/x5qPkpdt9kdrbaTFvzXRTwOA=;
        b=dwEye9ggOs4K4wDRVsUmMxZzQBJ212ilel6aAN3PMsQweFlnRvaTzQfPl40N/Onsma
         mLP5GReYoWzMX16XZkPbAZY03kjEdL0n56O5fMj3kWHiERUfJbnrD6p9iY1N64x4UJWM
         Cq9F6SuIMNu85q0qp0SWwkSOxRaZDXWiAQFNXYllEvmtZkw9UR4ahU3yRHD3kEr5drDQ
         4F+uwrNYbcmC5Rp7nTg5A50s1YOFfuVfhHwAkeLQfZcCm3SHyLQ9vh6u3/M3kkacVCmo
         H4ozFbTZLhJ6Y5nXT2a0c4fhLlj6ZUlQ4LL/fMECqrKmjzPjGcTbHxyOTxWPvcKvzkYe
         vvWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750362472; x=1750967272;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=N/YzQSu8b3RwwM7ONT/x5qPkpdt9kdrbaTFvzXRTwOA=;
        b=CVkeFSaOhDfh4JIFT8fMdpjAHygajkY+y0A39ng306rAvB95zJ1rEJtMnJkhEaUf3D
         S2pn2aCdpNhBf5RZunjXWhJu2UQoG6v9w6gkA0COe3dEm0JgDyqJP2LTnhx3ovKj6D+U
         cyWfqO213IvSzJ1Ytolpt5lDyNIgvY+EyejjAQmyS2rxGMySraHgZAOBKcUosoZpFWxA
         PxTPFZIKTyZU7NA6nUy+ilKynoN8Y+FU+hnHlIlcvlOk/NyaaRj2PZIiQuuySSyHbU3s
         PG03OUdpjboWTTV7yn3rVZ6pI1/LNjufd7SFOdX4ksRqvH7F1i8xhvMOfOlrMjzP+Sfu
         r5eg==
X-Forwarded-Encrypted: i=1; AJvYcCW+gq5SoRUGXIghJFgDVYqmXkMZ0LCuHFmx2Q8Cc1AmUifT3xrSbXEAypQEPs1cpDIrwfjZN+ew8Cek@vger.kernel.org
X-Gm-Message-State: AOJu0YydO0ivMUtm2MNGpINByaOWa7BZJCYBqeTke70YHsA+Zev79sFU
	8uDMB/f9PJEEQnXx0+HRk1d/dRP+HghgCbvgrqvTFSCfB73zgtClxsUlhccdxbzcvbA=
X-Gm-Gg: ASbGncuAy95wpP7RisoXHr7J5wJH87lH30n+cvOyA2KYB9m37Z8JimrHEkr+B10TRrv
	bdZUL/ye2wDQAszrYy9GYBLOnZ1cJsqsxudD7khkwrar92FWJTA5uvNKO9bKV2q8Xyi2vKHWjkk
	kGrPbP0VbiGNbPC5e9VgQwNcJ+JJHR3Y0chquAX5zzsSaQOYKb99dqFj3RQzcmE5kyT+a7vwYcs
	FRxqNmYBUBtNTMHvI8XumhNr7XMyVbeyTx0hlHYOB0eH0NKfSUNePiT2iiHPl3c9bWPUmiq4S/U
	hkbWf4f8Q2WHf1uMI6kq5SkE50dK94hvdU46YKzCVPgf7pRxLIfGUOa6yBxj20e//vNPdvAnel7
	mticr6qNQtt4/FzfnNK8lVpBcMNY=
X-Google-Smtp-Source: AGHT+IGZxmlzRtzr8nKo8ssqzf01K/9qytNTtjGgx1suMq0UZxAvJQnnjBU4fFayR2vokX4mkjxP8A==
X-Received: by 2002:a05:6000:2d04:b0:3a5:8d08:6239 with SMTP id ffacd0b85a97d-3a6d12ded65mr161370f8f.21.1750362472312;
        Thu, 19 Jun 2025 12:47:52 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4535eac8e0asm37175085e9.23.2025.06.19.12.47.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Jun 2025 12:47:51 -0700 (PDT)
Message-ID: <85b2ade8-7283-46cf-9246-f441511ed7c7@linaro.org>
Date: Thu, 19 Jun 2025 20:47:50 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/7] media: venus: hfi_plat_v6_lite: Populate decode
 capabilities
To: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>,
 quic_vgarodia@quicinc.com, quic_dikshita@quicinc.com, mchehab@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 andersson@kernel.org, konradybcio@kernel.org, stanimir.k.varbanov@gmail.com
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20250613140402.3619465-1-jorge.ramirez@oss.qualcomm.com>
 <20250619142012.1768981-1-jorge.ramirez@oss.qualcomm.com>
 <20250619142012.1768981-6-jorge.ramirez@oss.qualcomm.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250619142012.1768981-6-jorge.ramirez@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 19/06/2025 15:20, Jorge Ramirez-Ortiz wrote:
> +static const struct hfi_platform_codec_freq_data codec_freq_data[] = {
> +	{ V4L2_PIX_FMT_H264, VIDC_SESSION_TYPE_DEC, 440, 0, 440 },
> +	{ V4L2_PIX_FMT_HEVC, VIDC_SESSION_TYPE_DEC, 440, 0, 440 },
> +	{ V4L2_PIX_FMT_VP9, VIDC_SESSION_TYPE_DEC, 440, 0, 440 },
> +};

This looks off, why is there no TYPE_ENC ?

You're declaring the encoder in patch 6/7 - what's going on here ?

---
bod

