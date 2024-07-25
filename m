Return-Path: <devicetree+bounces-88079-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2670993C041
	for <lists+devicetree@lfdr.de>; Thu, 25 Jul 2024 12:43:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D183B281B31
	for <lists+devicetree@lfdr.de>; Thu, 25 Jul 2024 10:43:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B3121991C2;
	Thu, 25 Jul 2024 10:42:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NAdTQYaj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFAC71991AF
	for <devicetree@vger.kernel.org>; Thu, 25 Jul 2024 10:42:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721904174; cv=none; b=jBnhtcslBBcg+y+WUdbBYKL+iAsofgriCS8L4JduDWvA8HdnsPnCmvocHAc4jmxIlW0SK7nhLhO8QDD73Hf7XnKIRj+/4uxDLT3Hg64sck7oGqdI65SS1NbpZQRr/7QFPSN99Vj1gdL3SGq1Lt15QZ5MB3C5E7lAQWKTpXpLSUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721904174; c=relaxed/simple;
	bh=J3lIeUVMzKciFGpn3XO5YvbHmk8qNUMhRMFpZrd03Tk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eU/cS8QGz3IDUnxvvUuqXsGXv4XY2DguAwDHoLQ+FcGJrsjcVF9EntpjMO5E3iGN/bP4QbueDvlaOz6O1eeo9CILNVFhLUz5PAV3V9osCom+i6MUmbUfyuu5FXUnsT5gO5ZYR8W8gNkLxTR9BUGXg5FIFsr3d0IT+UMGgMZiG4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NAdTQYaj; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-5a3458bf989so924302a12.0
        for <devicetree@vger.kernel.org>; Thu, 25 Jul 2024 03:42:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721904170; x=1722508970; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=cPy08XzZmoGL8hzPtPNGeD/yGNQfo/0UcsrMmjVs8Ak=;
        b=NAdTQYajQ4V7V7kkG1vtyad9gE9RaX4arbeLNmmKUvZtl0bOG2h5K1hSkCkGt5an+H
         oD+DZwoNkBA0u6o6xsS3Q1VtMHSYU0QOYbJMsrk8waufBq4t5qLK+iR4qUcTQNV1OEPC
         Z57V5Q3GhuNLxWQCuYGEBqyKhUpIyjpqf8UP/zZDbDkeXywBPeqcGB/ueCw2dze9ponS
         yl398+MI+kUXH3GFRiVdBjM6HPtEAUUYef2X+L41elM6P9ndOCP39sArDQwHfFkgpWtZ
         k9n0iTVpFXrcC7r0E4Bo0Nk73WR7buYGlBnS0oqoo6tByS9lmw9D4TFHUx7999nDhUPF
         ZpuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721904170; x=1722508970;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cPy08XzZmoGL8hzPtPNGeD/yGNQfo/0UcsrMmjVs8Ak=;
        b=b6/pv6NxbFy5BNGoBlg9bJVfiaZl8fWCbqZCNkUx4mcMCML7bd3lhFcK/J1fFtQoQj
         cv7EcA+eT4j4EtdLiNZJl401M/7A3ePCZWMuJ/Yj8N/K0AX8g1gGhx8stN9EvHvuprmI
         IBqMl1zNfgS4wYizubWZVu5xOH64zraDmVlaWa7HRjHo+8cwcm8e7GVgzRGATwj2TlEm
         CxcxQEYFK+AIFARN+yrMpC/cxs2qLbHYUDTI18aDsiLhchZcVq35enoPg3khPqrJK2C1
         9Q2+Qniwp6aHEP4pZlFnMsYJv+mc7j4YSGnnH7qPjz3WeLoWzTqvRwCq4vIMBhVhWAY8
         9d4Q==
X-Forwarded-Encrypted: i=1; AJvYcCVx7Q10cGR/KEX/CwK8jHvNiUU9/AI1U9/e3D+DEKoOTf67/2HI7ZibLaRzR830Smf92EkNOW1RqHZtW97IPMvN1XUDjsBKyKgIcQ==
X-Gm-Message-State: AOJu0Yz/YF5ehBgX6cKBAQjDXE0tfNWeWnJn1kNyc0TbavfxChGz6DaI
	y0ecG/vFJpl9hsWVlJBOK+NhTl2r3x3E71J2UaJEP2CVTIYORnamUgPhZkeyQUE=
X-Google-Smtp-Source: AGHT+IFjL0mEUBM9p25xe34AIWgcQoCp2d7Go8WtZKCIaQ5dGuRH52HRPCpmm0OLHIa191NKyCNKFA==
X-Received: by 2002:a50:d554:0:b0:5aa:32bb:161 with SMTP id 4fb4d7f45d1cf-5ac2ac8e773mr1324745a12.22.1721904170240;
        Thu, 25 Jul 2024 03:42:50 -0700 (PDT)
Received: from [192.168.105.194] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5ac657836f9sm657144a12.90.2024.07.25.03.42.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Jul 2024 03:42:49 -0700 (PDT)
Message-ID: <e06c9a42-3630-4f36-9302-817aaa4fe000@linaro.org>
Date: Thu, 25 Jul 2024 12:42:47 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 06/11] arm64: dts: qcom: sm6115-pro1x: Enable MDSS and
 GPU
To: Dang Huynh <danct12@riseup.net>, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240725-qx1050-feature-expansion-v2-0-5fac4bbd946f@riseup.net>
 <20240725-qx1050-feature-expansion-v2-6-5fac4bbd946f@riseup.net>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240725-qx1050-feature-expansion-v2-6-5fac4bbd946f@riseup.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 25.07.2024 3:42 AM, Dang Huynh wrote:
> Fxtec Pro1x uses the same display (BOE BF060Y8M-AJ0) as Pro1.
> 
> Signed-off-by: Dang Huynh <danct12@riseup.net>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

