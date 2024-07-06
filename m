Return-Path: <devicetree+bounces-83602-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D20A929389
	for <lists+devicetree@lfdr.de>; Sat,  6 Jul 2024 14:27:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0ABA1282FD7
	for <lists+devicetree@lfdr.de>; Sat,  6 Jul 2024 12:27:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64CA18174E;
	Sat,  6 Jul 2024 12:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="u16bcXx/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A28F57D3E3
	for <devicetree@vger.kernel.org>; Sat,  6 Jul 2024 12:27:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720268853; cv=none; b=c/VudgvBibiEA0VPe2WfnSFPJf8CaqQx37XhMK+B9V0+JS37sUGMKaudf7bIpR86/TDcKLOWRfo/7f1LBLlxYB7kLGkMS/HUeqiZEMRRxXmNySsHtaQLx30Lsq1sT+IDZWPPURHc8phEoNxykBDOY7S5UrGGTe679TttbWMGyk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720268853; c=relaxed/simple;
	bh=CNh77vBEEcst80YNM8uwqUWtpZsl1u1HS+xSctV9qng=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FTrgNWAaUQwkLDSeIso0Dxmf8+2Pas0qqvOKEWSkrW+f0qfzlXenOib5sRO7EiLRv8eH0Fric6ev8LFiNVggphg9Xi9TpPY8IqQGQyiFi2+l8dL2VLucKJy/dNzysyzN/8TwXDfCgrre6DdWxeB7ScLJw10EouY8jLFVIOS/lS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=u16bcXx/; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2ee794ebffbso39131381fa.1
        for <devicetree@vger.kernel.org>; Sat, 06 Jul 2024 05:27:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720268850; x=1720873650; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=7OzdIv4B3CXoRooPpy7PW3AjhEb9rUJkTARdZztIO/8=;
        b=u16bcXx//FVL0+fE8XM+dlUblx9eP8E4BGlwx2V1yZalRhfuP1b99XhcaEVMMa9Tuf
         +s/64o9EW2rPbQGbPjuPkSJ/JXNBEp6nn3InvSP7BH7WhROxs7ZiiXY61zxXOAYHooS7
         SVDRhJGZljbwqI845zhj7anUBfc1tXQbcOx68NUIrNzCH3cwElFEdFLWWEGlJAKaZyA2
         rFRm6y6TVL8Wb60Cl0ym01Pizwft6sM1vrlFaTxmtcAuCiq9qU4b43FeMDQCvjqOpN2Z
         9SWk5dRahP7U27Rnu9fOkpzBgQE+xnV0ENNFcGE1CSFB1guMH/bsq+P18jxnkYQlx+w2
         XBGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720268850; x=1720873650;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7OzdIv4B3CXoRooPpy7PW3AjhEb9rUJkTARdZztIO/8=;
        b=cP2fMfuKzU+3tejo1q0nyb3Vzc0T+ehKeW1bcXLLKsSjdud5fQdrbGGl28Ge97CF8z
         RTeuOdMErpEj6XGgUpgOcCtzEZTEIfUHlw2/wWgZnFr+kyxi46RBbbxFY0sHUd5A/0lJ
         2MTyn+tsGzjhmV7Roavg+5P3CwDMw46AAGHd+777/1RcG5j5twVCq6fVY5a5ITe99bq7
         F3Fkh753at/urn8ZHseunnMXCd4PYWuxpof+eGTcyZ9ynmU7B2Smem/iEDt0au8iEWH1
         CRoip9Ax8O6eEtnISUWXjSEke2iG8eBsx65sUy4pmgb4cm5HQI3N8PY7ff2IBa4mSf/h
         gCBA==
X-Forwarded-Encrypted: i=1; AJvYcCXzn1Tm5FRIbx3ZpxD5q8+LLadnp0SMDYP2fYKIAIc6HzBUMCUNiRG+6Vd1PBknIgtT1eEjLhIOGIIgEvTULIRnrmFf/W5WkOPftQ==
X-Gm-Message-State: AOJu0Yy0n+tt2fOKK6PY0CqpSSi1vXWV5kqNp38iiijcpG9WteStD3vF
	BTgwtUNwOhkYUqT85y+lzA4THKHXzqs8UWjQbkjhpBGmdYTYpU4+QUP2LGiBn/M=
X-Google-Smtp-Source: AGHT+IG0zM4EoZaIWz2SJ7wgUaWziV/xyRRgtrQtEvnRyahvRk4wDLrwnXeaQF2iTgDHymRZcJ3nSQ==
X-Received: by 2002:a2e:9ad4:0:b0:2ee:8566:32cb with SMTP id 38308e7fff4ca-2ee8ed91179mr54011221fa.16.1720268848945;
        Sat, 06 Jul 2024 05:27:28 -0700 (PDT)
Received: from [192.168.105.194] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a77dfd03b3fsm70663566b.162.2024.07.06.05.27.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 06 Jul 2024 05:27:28 -0700 (PDT)
Message-ID: <635cc297-1111-41fa-b8da-06f69447ba22@linaro.org>
Date: Sat, 6 Jul 2024 14:27:26 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: qcom: sc7280: Enable download mode
 register write
To: Mukesh Ojha <quic_mojha@quicinc.com>, andersson@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240705143443.1491956-1-quic_mojha@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240705143443.1491956-1-quic_mojha@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 5.07.2024 4:34 PM, Mukesh Ojha wrote:
> Enable download mode setting for sc7280 which can help collect
> ramdump for this SoC.
> 
> Signed-off-by: Mukesh Ojha <quic_mojha@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

