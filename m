Return-Path: <devicetree+bounces-241471-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 72E2AC7E9D3
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 00:48:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 1EE8B34423B
	for <lists+devicetree@lfdr.de>; Sun, 23 Nov 2025 23:48:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC2D72566E9;
	Sun, 23 Nov 2025 23:47:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nOxm2x8a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 316E9239E75
	for <devicetree@vger.kernel.org>; Sun, 23 Nov 2025 23:47:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763941678; cv=none; b=BicibF4jBXHEpXSb4awrZZOrA4pY8KAUZCaeqXHlm8woc4j/cDZF6VhDFrDd0KkOj+r/aDd2YqcYuhzblo6FIqdI3E2jbIeAZaYPllHhV8w3TjWxYdOrHuBopI6fyQ2PSn1MDN3esbjuGmaB2/KPKxd7z5nSMz08CQ58dObpuqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763941678; c=relaxed/simple;
	bh=TJIcmKvYcwLavlNS6SXJ/86zVoDsC8q0zbps/byk9vw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UjaW+MLRfu7/qxHJJT3aPcfOkavavUwn/JANvOW4D2xTGpO7ug1d8Y99OlevHVXJ8w0Ex26ovKx0wgN9lZ94oP+gh2kPy7NiRE7zc2Wh/XDVg+Iu+0bsgvePH5NdvlqI9W6sXq+gs0yYjfs/y/wKY19hGUu6t46asuLgV/4+ILw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nOxm2x8a; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-42b3ad51fecso2989206f8f.1
        for <devicetree@vger.kernel.org>; Sun, 23 Nov 2025 15:47:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763941675; x=1764546475; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9WpSd2LefLOPcYBkAZyB05aqITFj4fqTlh36DvQaccA=;
        b=nOxm2x8a5wSNm37ObdH4mYUiP0sSwgBDm83oiyPM4k06PVw5QHFtzSvd+/tY1kpSPy
         8FDn8VMyk8s/93EG8KRk5xQR4fU3CvJ5uPl72UgRac7h1vZ9vMD0/WApAEMSOxD6oHqA
         iJaB3dtPgJhrdD6W22SiQFrQajjEoqgEg68VhUr4LPKzh71IgFpUOijWdnFPlqS+TygL
         9jTr6+0DCKTEFq5jB183Sd4vV4LYHaWmZdbMtPJiaNPoApTYX/6Gyzv6NUgvGX1aYoRY
         2hNvi/Iiz7aL5sjnK37C2VFrYBZ5h/5cEgEY3uxelR2gUvSCe5Yzu86YzDfGYG67txGn
         rpvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763941675; x=1764546475;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9WpSd2LefLOPcYBkAZyB05aqITFj4fqTlh36DvQaccA=;
        b=Bk8i+oQxDtlu+eVI3ngzbK1Tx5MMEu3cnFo2mSGgoKak1yQbW4PyWEYYAQ/UgexRVQ
         mWxYESweHBG+Tx8gc+Tth1fPD/6qNcUhJUaBNwr//eCSYujmAZJTAYniOtucOeJCOO7Q
         F/kYV/cpX8KGFWI4i8D9B6HfG0DLenEOSedk8P8di5+3AIs9AF6qsJui77RasxHdmu5o
         om5AXP4JKm7/Icg8E/Iw3tJuO3Z+ofyvVP40HlafTcJMayDbDZlq1ImPJzNJOpTP4/hj
         m0KZ8kbGfBrr7zvPwZ40hEQ2o7xjd3U0VmKNyJBUsrN5C1kt8PQuXoze+5Yfm8jOI0NG
         7pBA==
X-Forwarded-Encrypted: i=1; AJvYcCWJ9ExePFz+S2yyCyMT4s/E/xdx9vXDoARUrUK/j4YndN8i1evuyP1gmVutJ40jC0e2UxMWwdFOlvE5@vger.kernel.org
X-Gm-Message-State: AOJu0YxiBcDHBcJZisuaMxxwxpNWxhNOT+O8YrGIRHzUhsEXcxji5pvX
	VbTDnhcwpVj8oEJjygWSuyzwFAKqWr1cDSf/baGfaPUS6eomdRKd76a6HUm0I3tMHEA=
X-Gm-Gg: ASbGnct86hrTZmFXxkliYrU8DeblGDxcj7UUZa0MdtpCQllTAQ7cdTjYb0WfCYoQ4t3
	GAY9CDbFQtrOl3l5nrSRltnzywOI5FZUpm7SOHTIrP0tmDfD8+m2s33nerqbh98FXqliFnFtGHg
	U6GVaiCfr2Jmw89ko7QQD8gCmPnORXsqZS6F6JdKnLIRUqlKLVL2OLkogorPL3/lGAQ8tjHsKvg
	uD952pTg3PuXCHn4xar/fUfvuBM4eeETP8A7DeiynpJdVl59oJGGXFXEwRdUtkkOLNZp3418oRQ
	oAywCgavqXthQnXxbjtIdjQ4n0RAjhM55J50sagygO+Lg0BZQAzOXX2jIDvRKAhnaThffOe4i74
	qykJKquxuktqpPwpGuBwjg7NL2gls8WI+PZToWU1Y9wxrZYM/pjeLr3qYfmiSzf7jHoQ2ImaMqy
	+U6p61HY3hV8gwhLwOGikk6ioKkR2rL2+91JdCQH6PSlkc1ThPqCPz
X-Google-Smtp-Source: AGHT+IHVxdc0S4p7GcNa9n3stpz6wIbEUwBNlaz8lj7snVGYZFGdUkAQ9qLVQVzs619DRkEviJfz+Q==
X-Received: by 2002:a05:6000:250a:b0:42b:4961:eb4c with SMTP id ffacd0b85a97d-42cc1cd5cc1mr10385337f8f.1.1763941675585;
        Sun, 23 Nov 2025 15:47:55 -0800 (PST)
Received: from [192.168.0.27] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42cb7f2e598sm24494734f8f.4.2025.11.23.15.47.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 Nov 2025 15:47:54 -0800 (PST)
Message-ID: <0b2b8352-4ac1-4a5e-be73-67b5cffdb934@linaro.org>
Date: Sun, 23 Nov 2025 23:47:51 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 1/5] media: dt-bindings: Add CAMSS device for Kaanapali
To: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>, Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
 trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
 Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
 Atiya Kailany <atiya.kailany@oss.qualcomm.com>,
 Krzysztof Kozlowski <krzk@kernel.org>
References: <20251120-add-support-for-camss-on-kaanapali-v7-0-de27f9a67ce6@oss.qualcomm.com>
 <20251120-add-support-for-camss-on-kaanapali-v7-1-de27f9a67ce6@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20251120-add-support-for-camss-on-kaanapali-v7-1-de27f9a67ce6@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 21/11/2025 04:43, Hangxiang Ma wrote:
> The Kaanapali platform provides:
> - 3 x VFE, 5 RDI per VFE
> - 2 x VFE Lite, 4 RDI per VFE Lite
> - 3 x CSID
> - 2 x CSID Lite
> - 6 x CSIPHY

Another nit-pick which you don't have to fix, I can do this in the 
commit log - but, you've not detailed the new regs added below.

---
bod

