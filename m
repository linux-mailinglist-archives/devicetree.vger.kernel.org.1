Return-Path: <devicetree+bounces-72198-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 070238FB1BE
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 14:04:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B2BCE281381
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 12:04:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21556145B24;
	Tue,  4 Jun 2024 12:04:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="quS5XTwL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B3CD145B04
	for <devicetree@vger.kernel.org>; Tue,  4 Jun 2024 12:04:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717502669; cv=none; b=qpNJhZBNulBxHbt1uCauZGkq5IX3cXkTrRbaVsN1L/Ght230y22o43GIOKhy8nPq5RNknBUPDYy1m/5Ugvb9CEE+TvgWU0Iro/r2baS0Na5sq/2QRpGyDcUGlWpdEFTL7NnoajBgMd6aOCpGa5/f6OqvEo1RlIURsvSCkXAg4Ec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717502669; c=relaxed/simple;
	bh=/kneteCPCpqHlp9tXjC2t5lBUf7lcFi6dbTAQMTLDqU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=r/2aLfSaWPGlJLO7tBq76wCetFWdqx9eynaG5v6Tfn38Y7l0/q2l3NUW/Fss/40bTJOA807E7xmrj4Gdq77uhph1w+7ifTB8EvfjnNaSsG5kFiJXEx1E2RQEZ+VG8T+dFUBLuhV5b2gPTpGlTokSiKUlMnGbwhdRHDpRUBEtONA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=quS5XTwL; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-a68e7538cfaso306994566b.0
        for <devicetree@vger.kernel.org>; Tue, 04 Jun 2024 05:04:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717502665; x=1718107465; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7MvGhNWyMWyPK2L4bZ4MqGt4IE97x5CMmdDQFmH1Pbo=;
        b=quS5XTwLoovDQQk8lRofvaEEtIQeVcljE91pzNdLoFbXzFDQbjZYPdh8etavmMW6Us
         Td1ToP1EAKwz8Da55CbUg4A21bbehX2XxAuGg1fy7kxWB78+hFc0riE8KtI2HPysAOSU
         d/7u2RakClgN6jZSBLWW46uKDWC6AaKUvL0ECBOJWWGjFqJPwjZN/WoWr/lHe1UzJDui
         siiyJ2ozlQVCL8wpII/FnR8kRMZ8djXXMDjTdrA019en4WVHCyphYpSRoXWNhIzQLUrw
         7qk0B9EBbv3+8Avo0yWv5u/IW/Aqxa275hHrw/Kq4vMj3GRhTxnDV2kcoR8xpIKazt1S
         tTbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717502665; x=1718107465;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7MvGhNWyMWyPK2L4bZ4MqGt4IE97x5CMmdDQFmH1Pbo=;
        b=KJ3CGXqYvxI0K9TDVKIiiClteQ9lwvQPhTZrXj8Z7woh0z7dK6jfz8+rln5Og9nUmz
         D2CpfyyFF7Hzqtji7AXmMTqc8zSBRihELD54mpKZoKRiemWXwWacfs30cp+u2Na2a0z7
         qFsBtZB9AocIuDfufNik/vQkSU+qxqxXCjyTlTirACjFkecEdA0fjwT34pDSlmLzPIrf
         lL/ohebL6A+pH5TlbvgQUTd+sxCk0FXbo9h/3lYEUQbwEgB9uIMNviqHX77ABgKalLfg
         L1fLyftmLeZu3cRknjQTEovpSSxAffMfQBGFn8WWVE4yPM0uGBmDUpmnL9kfZxuyRM3K
         Npag==
X-Forwarded-Encrypted: i=1; AJvYcCWXMy5V+Crmidyg40rbstjcS8ErXeXMOsjc6va5A/6fwBKh1Kjg8wpSbCs+Trq8Q8TRFOdxcYkCS0lqN68LdeLi63LakS+vEIbRhQ==
X-Gm-Message-State: AOJu0YyMFlUXus1itkIxbIKwbfJ6MGh6zWxMP1vEWASoNOr7+uFrhLLG
	U+axvPZJTQbk7jwqyeXl6lLWM8D5kCwpA2dpQGgh/zHv4dxK4eNaOvlt8RMJ09I=
X-Google-Smtp-Source: AGHT+IECAlsltuVi6m26ltiIWvGYFVpqO3x1P3yYUSdWLABarTbzVL5ur/8K36xQS27mfUaezyvswQ==
X-Received: by 2002:a17:906:e241:b0:a5c:e16a:2d12 with SMTP id a640c23a62f3a-a682204963fmr653331066b.50.1717502664844;
        Tue, 04 Jun 2024 05:04:24 -0700 (PDT)
Received: from ?IPV6:2a00:f41:909a:a11e:a035:2af2:8d85:1f72? ([2a00:f41:909a:a11e:a035:2af2:8d85:1f72])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a68b143ce90sm487613166b.182.2024.06.04.05.04.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Jun 2024 05:04:24 -0700 (PDT)
Message-ID: <09e6dbe0-d748-4333-b05b-32e96f96a2f6@linaro.org>
Date: Tue, 4 Jun 2024 14:04:18 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: qcom: x1e80100: Fix PCIe 6a reg offsets
 and add MHI
To: Abel Vesa <abel.vesa@linaro.org>, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Rajendra Nayak
 <quic_rjendra@quicinc.com>, Sibi Sankar <quic_sibis@quicinc.com>
Cc: Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240531-x1e80100-dts-fixes-pcie6a-v1-0-1573ebcae1e8@linaro.org>
 <20240531-x1e80100-dts-fixes-pcie6a-v1-1-1573ebcae1e8@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240531-x1e80100-dts-fixes-pcie6a-v1-1-1573ebcae1e8@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 5/31/24 19:00, Abel Vesa wrote:
> The actual size of the DBI region is 0xf20 and the start of the
> ELBI region is 0xf40, according to the documentation. So fix them.
> While at it, add the MHI region as well.
> 
> Fixes: 5eb83fc10289 ("arm64: dts: qcom: x1e80100: Add PCIe nodes")
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---

There's a lot going on... but I suppose the change reflects the commit
message and that I suppose reflects reality

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

