Return-Path: <devicetree+bounces-154301-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 92F73A4FA4B
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 10:37:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C30D216F90A
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 09:37:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1989C204F92;
	Wed,  5 Mar 2025 09:37:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jjLVv2zL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B8CD20468F
	for <devicetree@vger.kernel.org>; Wed,  5 Mar 2025 09:37:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741167461; cv=none; b=PMnEbSeiJVLqB4mPpagleH21ltP8nhx3CKvnBpKaxrBUh7ij/plsS83foSauSlX5kn1371HO15tcFA7IVfj+bzAAblh+OsdjPnZZuMVoAfSwCFelY3KlMpjUXbka2z7iqINoB8zGhZkxrW23BfY5VLmDSw/HwkldCQ2CQ7YlhWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741167461; c=relaxed/simple;
	bh=f/YM8elcYOSd+yUfoQceb/I+xg93FNhGvdv8uLMVd/Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ih1azzp9bAy9iCipreKHd87b1ICgOs6Vysjm4Nf3q1CN9KOeFqpTTocnhS+dW6DMaCFrjK8Nvbb6eT1PsOVGYr9Qeo8QZqXMg+rx1ukfZQIL7DBudvyLUGMJH07l2km5RWI7U7PVTs+0Z5S2H1HS/4e3sHhr6aIGZVA+KLuwiwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jjLVv2zL; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-43bc638686eso3617215e9.1
        for <devicetree@vger.kernel.org>; Wed, 05 Mar 2025 01:37:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741167457; x=1741772257; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DlMAIxbaLxEVqrgBKFsUbTgWZrSdfR0A9Q1RePUhWM4=;
        b=jjLVv2zLD8XMQF7Ym5DgkTtVaFISxzWVRxbZA/kVlKdKwIJ/tQndEMXhbIfdWb1OzH
         mzjkb2RAsZKlZd4sv3QwcmKFOhR9EfgA3f8o+NPzUT8N7P7U8wvTTSawtwJ9l9EXXi4T
         aoXDpqJJl5R7RTh8lilcKUZ//C75+g8AvjlTdgzpNPoWLrNcLOmISmlpK2Q9+i9KoFMy
         gusNaIqZqFZqn/AhCPIlKuQ7ZQaUuvedMA3dgPABfiT2VzKfRDVpsllsnyC2JOCDoGYK
         FtVmNJMRx4alWDmb0TVAxiYVDpRRI4Nmsmk41LZhxQyVVm1fuNOCBtWhKjbDo66eb2nK
         l5ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741167457; x=1741772257;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DlMAIxbaLxEVqrgBKFsUbTgWZrSdfR0A9Q1RePUhWM4=;
        b=UVAcvhRTJd1UZ8F9LG6yuP/PmyqLPP5Gs+mJpKJjWpwhOD4n6HejoY1QDyZY0Q52QC
         ezjZlv9kSo5tbRiUGYCsJuJ3AiwueggUDl1GIJDaX2ZxU6g/wz/ykWSnkBYtKoTsaORp
         BIVkgc19pb+/qtNMxdDwnZRxaF7CQGDCAbY8Y2RUUFUP22qqAQYS7P5c0bEOSoLQPNgG
         bk2KbGVtaT1kyLIRdOr8bNx5eFDum6E4dybUuW4xmSmBWywCa5QBQC+83UAL2HTv7u9M
         d+iHeTo8CDkGx1sAWRPbL3AS+nCn97Zr+fWfOqx0d8QcIkCsqv9EFFQz+oQgDQfi8e1o
         GiNg==
X-Forwarded-Encrypted: i=1; AJvYcCX1mW5LQ73Y0WCmrOBg8z0VPs2w7q7SBBPBVmbpZnktz8zsA52njNjND4kX5lwNnJZDNj44uyKLdii+@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9CimjTnXwWPfUnhQOKEGJ8RylU9WOj0g22RsWMDNn1OwEk5px
	pmUXxVlWv6uTqvgsq+fJncv1uyKYRTP1LtI7xwpM1+xVKQX5TLNna8e5topJqaE=
X-Gm-Gg: ASbGncv2RnLAD6vGqgknUWuj1J6IaUxKgRmmFJOX+K6NpaVPfeT8zeEa3Q7Nx37D+PG
	a9VkCaEU4J+eY0YDU1y/tlGak4Xl1oK/fkcdLmq3RGZSElMGLthDgVZKzlNCHKmNFp4YUAyM18+
	nqIWGWsqs9U65jyWltg8L9WBxw8MvO8CsWRtmgzOb6o2cNKUoIZUTheAoDf48dpyZ+T8mHkSFwS
	fe/QwpaqmLeZzentPxQj2Wlt6Pl/tY6pl+s4UENPaZh2dMkVX/wPNj7KQj717dfdGs1ClG0xfq3
	xwzEbXnEddStRka1XVZ0uXLKz/d2a5yv/GBMdwJZ5BR9mY1mcXBlOFvzzmV5fI3yttJbYbQpCC5
	ylC4+hQj11g==
X-Google-Smtp-Source: AGHT+IFmN6TeDKmjpgD7xPBfMAW6BMdRHuVJd+Orgg/yUW6nDI0BKPDiyYdeZaHiB3YJo+Czk4nwww==
X-Received: by 2002:a5d:5848:0:b0:390:ef45:1a36 with SMTP id ffacd0b85a97d-3911ea413a4mr1912238f8f.19.1741167457477;
        Wed, 05 Mar 2025 01:37:37 -0800 (PST)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-390e479609asm20159886f8f.2.2025.03.05.01.37.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Mar 2025 01:37:37 -0800 (PST)
Message-ID: <38257fe8-e592-46c7-893e-e61ef229a607@linaro.org>
Date: Wed, 5 Mar 2025 09:37:36 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/8] Reup: SM8350 and SC8280XP venus support
To: Vikash Garodia <quic_vgarodia@quicinc.com>,
 Stanimir Varbanov <stanimir.k.varbanov@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Johan Hovold <johan+linaro@kernel.org>
References: <20250304-b4-linux-media-comitters-sc8280xp-venus-v1-0-279c7ea55493@linaro.org>
 <8cfaeb25-2657-9df4-5cea-018aad62f579@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <8cfaeb25-2657-9df4-5cea-018aad62f579@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 05/03/2025 03:19, Vikash Garodia wrote:
>> This series is a re-up of Konrad's original venus series for sc8280xp and
>> sm8350.Why this is enabled on venus driver ? Why not iris driver ? This needs an
> explanation on was this even tried to bring up on iris driver.
> 
> How different is this from sm8250 which is already enabled on iris driver ?

Ah let me parse the previous feedback, I don't have the full context of 
this series in my head yet.

thx

---
bod

