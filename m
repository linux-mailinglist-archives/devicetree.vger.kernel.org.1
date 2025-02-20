Return-Path: <devicetree+bounces-148874-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E413EA3DA30
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 13:36:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DEB9C1895985
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 12:36:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DA351F0E45;
	Thu, 20 Feb 2025 12:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XH96zluq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B20691C1F10
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 12:36:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740054983; cv=none; b=qiDrpnu1rkiEymJESRJBuC5kz/ioq+JkUlQJPb6X3LtP/vn1nl7QzxPIcjYflPVcQGytrriurNf9OhURN9KnA7lPvVWwRb+LgIE9lXg541gBZ6U5xedkgCWpOoqumdJb0cWPimKlXmalcYNTt15cNz79TLGtFlKOU7z60PEJk78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740054983; c=relaxed/simple;
	bh=+RsXx75rtK9qhdP3CuabmwzJas95QtZ+HmS/k8i4Qvw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=snFe8TQ+v79GkKyS+Vi1YgDGPrET8qVFE1H/tej0I65Jq1+hpB77sEMo0tYJwbiJpnHHdzqyOK8zw+8kGhTKGwYZsFEt2c2Q2WCCeRQxu12rxnAWihJzCFmVIQrmkEwEUebfxv6+toaouk/7ylyuZlrWZ7tjp7t5j7YvQx3jiZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XH96zluq; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-ab7c4350826so14741666b.3
        for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 04:36:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740054980; x=1740659780; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=1iW33Ulq3w91tzgnMYUCJrJE/eQwp+X1Zcfnd3PIjjc=;
        b=XH96zluqpP6EKClHETzlds5mMffv8BBODUekaa3+xjph0Jlbuynx39R+3Eip1w2xtJ
         7ScGt1ML/vT9CAvxBqIWugIj7uZey6TILsR5+7WOei5Ey4O/NAmGq2FwsYwldjhoKFeK
         /CSLTAREnZwfEF9ti1TfLrrnNgou5kYxZ6ULLAm3L+43Pq4BA12uJDGMT+ue1Uk63SOv
         1ealQGgbqAGHwBeHPSBjE8gz1Hon98jQb8QZsInW+rEZkM7WDkZadUbTC6qY3zKbE1Ab
         Q6fi90dgvkyRzn/JCXBU0dn5WNJBQqz3hxOMyK5Y8lmvNefT99N2Vc+AFCoiWXlMWuKp
         YJIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740054980; x=1740659780;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1iW33Ulq3w91tzgnMYUCJrJE/eQwp+X1Zcfnd3PIjjc=;
        b=fwilFiq+lAPdGF/q+0qiCVVbB51WdbtCaNTSLLpYPu04RtTy0XR3vERMGbhRTwaqGr
         YZccw5hjMVkPZlMqJCv75BGcaXFcEYeCiGZzdrnEzri2lJKs6wJus3bNRosiKigvGF50
         d1ILuK9B3gDRqL59SQdvyFJa3v+ch0ULrqJPvl60ET/NqS+mHIrS9hk4SbXscJPogSbj
         Epyini6OgUMW4bjpMXaEI4ge6ZsSNSxVxNHRtbCANQi6ytoyAZF7HCV+qUT3t9s8ieYA
         HoUusKlCcOWs1QnDKgA7LS7DoU4PB6l2Hgx+cgKaIaAn1VLbFbSBW1z9Vgm5UOzGIIGH
         f8nA==
X-Forwarded-Encrypted: i=1; AJvYcCVk9WMTU/AO0EKznvXavHfJIoUH59yLKJgm9SUsfT8XHUoR8ZFMEGitZ0vKzg4fttB5Ej5uJC6m5I/k@vger.kernel.org
X-Gm-Message-State: AOJu0YwTTKLMxP4C2NpIJW/OU7xLwEcsQSyi7e6mvXPYBUs09cMfO5Mp
	xiv95selsE0KynnxeuczP5K2vfVrEugxz99NzpVxbxux+yqwPyYd53dywTOOFW4=
X-Gm-Gg: ASbGnct2NlsnvUQmEs9rKzWQd8eJfdQyoYuLMSwhIkQCUez9ETgG0ooHoQf/Ff4Fv85
	85SmRnLhlQUzNDCYUV9qGruEX6mHhq4bes70k4okvouCBm28paSVAf2dpJWCNB26FuTd30fEC/N
	1PGwRiFjkc0XtwJ1VMZmuwKOycDo1w2CT0hokVYYZtaAlkrpndwE63RxTXAbqkRqzPsrZKZAnLd
	4m1tQCEsjYo32IOvrGps1wpw4TwExCTzrwM0QRYGd26IAd09ZCxtm6APi7m4dM8x1LxVrX0XLcG
	T6Ty9shHVYZniKJ01ebTWlCam6KRA24hzs/sqNNvBYHZ2qfIkfabLDCf8pcczZX4VL2UcQ==
X-Google-Smtp-Source: AGHT+IFmI7ojpVPGR3hGsnFZknvMtkXj5GFmksL1gS3a2gPX7IWtAJaDbmSJO3ueDklCGuq7n2K7gQ==
X-Received: by 2002:a17:906:3511:b0:abb:eec3:3937 with SMTP id a640c23a62f3a-abbeec34fc5mr76602266b.10.1740054979905;
        Thu, 20 Feb 2025 04:36:19 -0800 (PST)
Received: from [192.168.0.18] (78-11-220-99.static.ip.netia.com.pl. [78.11.220.99])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abbdb24d6dcsm291029566b.185.2025.02.20.04.36.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Feb 2025 04:36:19 -0800 (PST)
Message-ID: <46eb04f6-d387-4200-a32e-1f44dfd5024e@linaro.org>
Date: Thu, 20 Feb 2025 13:36:17 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/4] arm64: dts: qcom: sm8750: Initial audio support
 (not yet complete)
To: Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Melody Olvera <quic_molvera@quicinc.com>,
 Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
References: <20250220-sm8750-audio-v2-0-fbe243c4afc3@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20250220-sm8750-audio-v2-0-fbe243c4afc3@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 20/02/2025 09:49, Krzysztof Kozlowski wrote:
> Hi,
> 
> Changes in v2:
> - Use 0x0 to match rest of sm8750
> - Re-order some nodes to keep preferred order by unit address
> - Add Rb tags
> - Link to v1: https://lore.kernel.org/r/20241101-sm8750-audio-v1-0-730aec176459@linaro.org
> 
> Dependencies
> ============
> Depends on: https://lore.kernel.org/r/20241112004936.2810509-4-quic_molvera@quicinc.com

I forgot to update cover letter:
There is no dependency anymore, things got merged.

> 
> Bindings for these
> ==================
> All DTS added here have corresponding bindings, on the list:
> https://lore.kernel.org/all/20241022064238.22941-1-krzysztof.kozlowski@linaro.org/
> https://lore.kernel.org/all/20241101170309.382782-1-krzysztof.kozlowski@linaro.org/


And these are already in mainline.




Best regards,
Krzysztof

