Return-Path: <devicetree+bounces-77023-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 97EF890D368
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 16:04:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3B6F42847D3
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 14:04:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10917185E78;
	Tue, 18 Jun 2024 13:39:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eSKB/c9U"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 790C815572F
	for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 13:39:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718717968; cv=none; b=h0xdAXXGdCz5O5qdnldF7+uaxc7gEj6gXS5/8DkU6fTOaaD7QmBgEPMWi04ubrecqGOk+k+xo1ug1PwYYa9A4S/C30TjDBc9D1y/nKXGy+bLIxLL/CnvimWmLqBUl09jLZRHZAT2M7ib+yuPDcMB+r9rY2iS1zO0FQD/mqZobqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718717968; c=relaxed/simple;
	bh=xLAXHgMQMkC4I+6SWvyCbmbbIm7HDaAMMfOTtmQ/nKc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TAkhVur6jNRxSUiQhK1gknTxCQN7Ww7Rs0+kGHbEipuAYq9tV4Jsl4HgMiMWNJDPJtCW+I4sXNJqQcDoXbb/4Qw7Iqryw3KJYdO6YrvwIzB3m4Qpr/3LIF1/aIDVR05FTZmzwLMjms8DcGZC8Jbqx2s4h6HMx5/VR6F9AuRqZrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eSKB/c9U; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2ec0f3b9bb8so38265781fa.1
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 06:39:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718717965; x=1719322765; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mfLHtHo2sQWrIDeLma2mLPYSbPHcNNp3U2Fc5U176hY=;
        b=eSKB/c9UciQ1KYHO7/5WLG4cA4z7dPNQ34w6nMjEDzNH4X1CD5AsqE1ELyZTqbcmOV
         OptrMfU6U5vgCx9pTM6NtsMf2M1T9mnQP96FSCQSu3gw+9KpTPPgCW5zWphIXqHZTo3z
         boQ4LdZIuwxN/8yhkMKxv24BJEkopAJPZc0s1vaZU+jjip8iPgE32oYE6CPFbIwnFmOX
         EqtAJqTAX+qMrfimXz/x6TCKjjsVAUXcM3lH8Ivx+nsxYt6esROem8diriju3332+pPw
         XBn2McycLg76uJX5+rWeEEtDnRTRclPTcTkAuCmUOIHP6w5lF4JIm+Y+634tzIfux8Nz
         PWYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718717965; x=1719322765;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mfLHtHo2sQWrIDeLma2mLPYSbPHcNNp3U2Fc5U176hY=;
        b=qgJ5QEBJNBMCXLW//WK4+gOj8jEW4fW2Lu/AvWU0Oi0y5Zohpwz+Sj7EKCzZJYghIZ
         bUhYPeNdT8Jrj6fGwk1BMrI86EAK4hP3VnxAgNqL3OschkPIo17FKr9huRCmazeAvftH
         +dN55+0JQCCN3BN9vCd8x+Gc/54G0J9HjhHw8yW6uLheky/umeLJES8CAlUxnZzvdbv/
         mUYzPqk9VhWO+l0RATVgWekFqtPgWQ4QGO+4hLfTkwkeCSjGHngO+Xb5B5Ptk/JCwzkC
         5KkT8n9KjlBdfvz3xrQOyU12Y27xJ7bQt6eV6rQF2/G5qZA43OwSpZICXtT6oxf21P+p
         x01g==
X-Forwarded-Encrypted: i=1; AJvYcCXswH2mpVfp6uiRxPacxcm1HUIfLjozLGu7FuI/9YBGVfMCU3qH2XgPlAom6a5akSMjxjGIlIiaM3iNRjuMkq0x0qTjpejPA/ZOgw==
X-Gm-Message-State: AOJu0YwKGPCqKqgdV1YbPV8TMFiFW2PK+9dfZ+75PplX1su9cqe+hRh6
	6ZdyCMCAJ3EGqsEtMTnVAIk5yGfMQBnFrCVdTX0sAv2EdVFJzc7TeayMjNk8S2s=
X-Google-Smtp-Source: AGHT+IEwNq+zW99nzMNycBgluvGbyDMFsWVRQh70vLvlD6Gm5mcZeMUN0UL3UL50UtI9BdJHThnIYA==
X-Received: by 2002:a2e:740a:0:b0:2eb:d6a7:feba with SMTP id 38308e7fff4ca-2ec0e5c6767mr85223051fa.16.1718717962711;
        Tue, 18 Jun 2024 06:39:22 -0700 (PDT)
Received: from ?IPV6:2a00:f41:9028:9df3:4fb7:492b:2c94:7283? ([2a00:f41:9028:9df3:4fb7:492b:2c94:7283])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ec09caf30esm15564321fa.62.2024.06.18.06.39.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Jun 2024 06:39:22 -0700 (PDT)
Message-ID: <737f8c75-6011-42bc-b9e4-87806bd270a9@linaro.org>
Date: Tue, 18 Jun 2024 15:39:20 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] arm64: dts: qcom: qdu1000: Add secure qfprom node
To: Komal Bajaj <quic_kbajaj@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240618092711.15037-1-quic_kbajaj@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240618092711.15037-1-quic_kbajaj@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 6/18/24 11:27, Komal Bajaj wrote:
> Add secure qfprom node and also add properties for multi channel
> DDR. This is required for LLCC driver to pick the correct LLCC
> configuration.
> 
> Fixes: 6209038f131f ("arm64: dts: qcom: qdu1000: Add LLCC/system-cache-controller")
> Signed-off-by: Komal Bajaj <quic_kbajaj@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

