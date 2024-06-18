Return-Path: <devicetree+bounces-77021-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C335490D366
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 16:04:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 78A931F24837
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 14:04:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6794D157A59;
	Tue, 18 Jun 2024 13:38:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FIAamhF0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3F83157E91
	for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 13:38:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718717929; cv=none; b=Pl3U6ocaQwXFHqXmgcZO3xR1nISuOKvCUOmvT0zjFhZGnkmL+DuKyvammeIWZ2KWAcP7r2XzvJiZl8DScd/6j+XK+auGA0kTqNlf+ub79/vNS4+zmhm2qyqQg7olhYnVaL2SEnyFm4/jzQEaUSWZnANQtrG9gmMPTTzsJJ726Ng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718717929; c=relaxed/simple;
	bh=ZXkUgUNTrV2Fb75kL30lUgvJVNwEi/AAcntzHmWItcE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=C691oOCrg0FA95jYKWd4staVroQubFOTNncUpz+qnP0/vS3ZIbAo34qd/MBE2OoBHYl5mV+tbV/6Sw4fJ4PlsxLVkJXDKPxS9w7FvNleHh67IW6Bqwr7eyTEgeOsJC34PAhcqjTcKlORkMfJyh45CK8AxeuRpWiJXi7WDcXV1YE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FIAamhF0; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-52c525257feso7052234e87.1
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 06:38:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718717925; x=1719322725; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1Ro2D1q0Iet+JsxqYv5jvanxXyaHmbiQwWFVhwfDlws=;
        b=FIAamhF0V9693BMdus4wQuGNWEmIOyfMJ/Odz0QiAdEzJwrz3GyHrD+4tyBCMwXRXV
         8VlgHOUl3b0QmmGwqIM0biPJ+s2WC/ibIWJbrURUsdm6d25h80/JxaTFEBX82b0WK6Fv
         ZvvA+Pl0YcIAXUz1kXpOW42PqxyTs3WKYUhoABQxe5w2SrmcbpqvlzoIkiFBpwL034N1
         b427WaGr9dfjcoEwyr0hskfzytmjCcEZ96MIYiHZpsYhzYqOCy8dTrKCp6DKFoAhwEly
         SpHmOcMDX9CiWGiC8iY9TEx3QN2O7vRfLT5ozhMLetR5U+y3kWYwr54d85n9Bt315HZT
         nW6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718717925; x=1719322725;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1Ro2D1q0Iet+JsxqYv5jvanxXyaHmbiQwWFVhwfDlws=;
        b=Tva4igVOkXQQuEFSAyELhCC3dFM5k4Sgu3Be4rnJiSD87zbF+lp7LuEcs6x5HqgK2w
         olWAykDbuMIuo2xDiB9q8PAXZ9n8nWYL2B9kef7K9dU8nMr9cF1CqL3l5ZBE0Xnxkm+R
         CJwX9ML1V8dVXqzFmQ5aMyTb0HogOk9xB2UItpGBicIdNVJY5BihJdg9lJEoLHk0iLcj
         JLLVCt6vOoascfk66GCzrNB7M816F97P1/0Vd0ypm2+KrJPqmH7+Fjk2RFbbCcifKDyU
         A7xZ/4mi0+GxVOjwAViNt0WDI5nZm4D8Mq9aGO8IS4hTqRpCNKSiI2nRtCKO1khFzKeL
         7iHg==
X-Forwarded-Encrypted: i=1; AJvYcCUXX/7O0FjCydephlxmHDcVFbd9nHcK/kXCq7B8QeIeIo/k84EiIL1M4fWETLxbK9yym2n43vi08GYNQ65meieE8xgRiBvpDerhyg==
X-Gm-Message-State: AOJu0YzhnuLZncvYnTcA9XjGVcQanWvPE1L/KAqjvgDTOjKKydP+PgeS
	INL+sqZ9sBFzhmeHqfYGnPKnU0c6BFf3Gh2yoKrP5M6g8LEPwQEulEiC4FYp0oQ=
X-Google-Smtp-Source: AGHT+IF87ZxV1Eqx7KyoE3WteMFt56EssikJPs0A4NGrSgdY3b3dUyfEiaDVHF88FgnOxhFSt2XIWA==
X-Received: by 2002:ac2:57c3:0:b0:52b:c292:f7c with SMTP id 2adb3069b0e04-52ca6e9886emr7565855e87.62.1718717924535;
        Tue, 18 Jun 2024 06:38:44 -0700 (PDT)
Received: from ?IPV6:2a00:f41:9028:9df3:4fb7:492b:2c94:7283? ([2a00:f41:9028:9df3:4fb7:492b:2c94:7283])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52cbc12bc4fsm627269e87.292.2024.06.18.06.38.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Jun 2024 06:38:44 -0700 (PDT)
Message-ID: <e5b7a888-8ca3-463a-a2de-cf719e58d7a0@linaro.org>
Date: Tue, 18 Jun 2024 15:38:41 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/5] arm64: dts: qcom: sdx75: update reserved memory
 regions for mpss
To: Naina Mehta <quic_nainmeht@quicinc.com>, andersson@kernel.org,
 mathieu.poirier@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, manivannan.sadhasivam@linaro.org
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240618131342.103995-1-quic_nainmeht@quicinc.com>
 <20240618131342.103995-4-quic_nainmeht@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240618131342.103995-4-quic_nainmeht@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 6/18/24 15:13, Naina Mehta wrote:
> Rename qdss@88800000 memory region as qlink_logging memory region
> and add qdss_mem memory region at address of 0x88500000.
> Split mpss_dsmharq_mem region into 2 separate regions and
> reduce the size of mpssadsp_mem region.
> 
> Signed-off-by: Naina Mehta <quic_nainmeht@quicinc.com>
> ---

Alright, we're getting somewhere. The commit message should however motivate
why such changes are necessary. For all we know, the splitting in two is
currently done for no reason, as qdss_mem and qlink_logging_mem are contiguous
- does the firmware have some expectations about them being separate?

Konrad

