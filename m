Return-Path: <devicetree+bounces-161311-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B3A3AA73599
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 16:29:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C02163BE48F
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 15:28:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0EBF189B84;
	Thu, 27 Mar 2025 15:28:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sb0Urkyr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB52A18C907
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 15:28:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743089319; cv=none; b=ERxS3dmiPnLvJtGW8crE/iydfc0oCRZpl7PLTbCFaAWOhWgRIgA2ZS349Ry6iiTODuNhxQCVNknj2KYgiPkljb6xsnM9+NLA4U0uPhB8j3pIKAdy4SDnXkiiZX6N1G86/ZzeSD2i0UtBG4YIFxcOjQ3sSQqPHrfnOZGWJh2lklk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743089319; c=relaxed/simple;
	bh=1/Xh1YTj3T8SDNh7s5nflXDE32vsD7ydzcDzfXrzX/A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pf2mwxd5zp25ZDWBB4i8FZjjgEokWp7OpsMJRQkI8WIzwCcm5mDZCczy29hSLwLFW9DJVXBY4cp4WmD924wFP+AtWT9uta4Fu7X5UUbTs9X1s+n7i8Qi2t+UISK09xlpRn5r1Hm93qNdyLR/Vjg3Zz5yDVsoTL+fM4YvT62OV/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sb0Urkyr; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-43cf05f0c3eso8542615e9.0
        for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 08:28:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743089315; x=1743694115; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DE06nIo71/Mq528QWhpVuT3dqschnPU18VT092l6miM=;
        b=sb0Urkyrcr2wBewLD7s+rGL3gBBfpOjilCMkQG+PGENV4qpH2iSTIZKkp6BGxIQKuS
         GhG7JORwl1NZHTe2QTWc2CT8NVAODcIj4v1FKUYWjgmTI+FeXiBlfnSV5HlKEEA8I3VF
         PoHJWy3qPxnneigS66CwpfMemvlVg/kc4giMH0wzVG0NRPonqycLq2uUsgseFpIjZRGz
         0eMgriHzuUWhGMBkMVYvQ0jA62ZdQVpuqrigrIBa/EU8S1ToAgcO+m5Dv5Kj29uQ+VYV
         BUpz/w7MeLZYYfP+m9mVuQvSn72g2UrQIagXr0bRgwDSA6J+hdvyC0k10WCSmKTXuYCG
         EUXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743089315; x=1743694115;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DE06nIo71/Mq528QWhpVuT3dqschnPU18VT092l6miM=;
        b=WDOfuICL3zf2c8Rd8RAbHx1YYZs8LBqsx3isfEdtA51KXBgY+4/+2ba4n/kxlFB02m
         PiPa/qS/fTLnY8LnWogF2sOEd8H77JwOFSEnKvsV6nP4D0mi9ANwTX3Ukp+S/RzDHs5V
         sl2bAVONwxjArapcOzvhc1odVZvNsjSOA9P9uztQXBDtVJKOCZMXwVqUc7/tx6N6Eja4
         G9eDBHr+FcwevUOr9SbbbwhaL1ZEELt8IGPm2MlpSfvXNjiaqNDgwRRouoaD1N7xBDIA
         CtVGHsC3i0akEYcVFV/Qg/qVPWN2IlZer6lpOVaOAISbcSojg/8nB32sQWMaNnTia1HY
         4eSQ==
X-Forwarded-Encrypted: i=1; AJvYcCW9lYIp/i474LFYm2jv3kt8EN2xF/00P71RWuE4U/9Hh5PucxwDfcRbSAxvE3Ll18QRnqiwxw7bY6s7@vger.kernel.org
X-Gm-Message-State: AOJu0Yz2yToMCRX7owuhCGHDjPiETNlzTNEZ8a+C7WSBmmqsHFcohIP2
	mvalkLWvgkyc5f0X5V3fEh8Rv3F/HuVXoAMYXAUmF/PpPuHW96Xuepw5AGSFy+k=
X-Gm-Gg: ASbGncuqhxL8kxpj7EZIjtEX6QuOAZrkuCpyjp2CpljmmiPE5u4fUbHXwIYRy1pdbFm
	PN8uey/UfqNgTKkzhBUsw/Qp/7//Gf+E05WDqjlM97+ykqgY/Tft7f57odVoZtKC5SlnjEEUvpy
	zdqzEzPhozWfOVHAAQaAHbQpI6gQBW0Jj0T9tcfu7/n9jo5YcyBLOpRyopkDnbrb2m0Qp/PHJCO
	PnZc9TtNaBEKsanInUsAWw/rSpwiq/uc7iKxP7YQXdlFw5khDvgZ2AhKGa5rb1GBPYJyKe9Xmnn
	m6sa0lBWkQxdcjdalmXLheEtEdO53/5dzzY60IgXJAz2Yu/uyVnfdqKOcKm9AJAgP5eWGjfruFb
	JKtKZRtNZoQ==
X-Google-Smtp-Source: AGHT+IFNIkqkO/Sz8Zoq2RlgMDHLZQ4+HD+omJCdCjySdmnror3V45qCoIHUI3fPbTVEMJl1bOlNow==
X-Received: by 2002:a5d:64a9:0:b0:390:db07:87ea with SMTP id ffacd0b85a97d-39ad17704c4mr3242572f8f.34.1743089315216;
        Thu, 27 Mar 2025 08:28:35 -0700 (PDT)
Received: from [192.168.0.34] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39ac67970a2sm10007035f8f.16.2025.03.27.08.28.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Mar 2025 08:28:34 -0700 (PDT)
Message-ID: <c58b129c-1c83-44f3-bd52-13cc24e50cbb@linaro.org>
Date: Thu, 27 Mar 2025 15:28:33 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 03/18] dt-bindings: clock: qcom: sm8450-camcc: Allow to
 specify two power domains
To: Jagadeesh Kona <quic_jkona@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Dmitry Baryshkov <lumag@kernel.org>
Cc: Ajit Pandey <quic_ajipan@quicinc.com>,
 Imran Shaik <quic_imrashai@quicinc.com>, Taniya Das <quic_tdas@quicinc.com>,
 Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20250327-videocc-pll-multi-pd-voting-v3-0-895fafd62627@quicinc.com>
 <20250327-videocc-pll-multi-pd-voting-v3-3-895fafd62627@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250327-videocc-pll-multi-pd-voting-v3-3-895fafd62627@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 27/03/2025 09:52, Jagadeesh Kona wrote:
> -      A phandle to an OPP node describing required MMCX performance point.
> +      Phandles to OPP nodes that describe required performance point on power domains

I believe we are dropping "Phandle to" generally as this is a redundant 
statement.

You should also pluralise performance-points.

.. required performance-points on power-domains

Other than that

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

---
bod

