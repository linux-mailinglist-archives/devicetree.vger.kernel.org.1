Return-Path: <devicetree+bounces-169501-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C1D4BA9721F
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 18:13:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5C2C5188EF2B
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 16:13:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F6842900A4;
	Tue, 22 Apr 2025 16:12:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="aAcPHZ6g"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f54.google.com (mail-oo1-f54.google.com [209.85.161.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98C0C1096F
	for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 16:12:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745338372; cv=none; b=PF7uF+hoF1KwYwyRojv4QPRO4J1BX6HWCyYJ4AnuPkNTIMKVnd05ku/H7iKXZ61wBaZ/3v/1wfQXlaS1r0WTUrQG+QHQeVgM+ayoIh9/2HOQkrLOeVliiWn/WNo0e2ONcOhp/H8uxj0jN5YbHD1Qmd/8AuOrxhCC0YyyYZW2bvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745338372; c=relaxed/simple;
	bh=RGhyPnsDqiY2S40qn37e871t5HmcKxZxCc+fO56toGs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=s6PO2lKM8n8vjsGsOfEBuBu48isD1LB+vspKMjunbAGcXIgSgLpYhHuS4VYhzheQDJAe8Nwj+/uhHCag4eUa+3gQPllq4txv+sSuA8AtFmPA1YeGkrvGegWMMemetxSMh+5G7jmA+K1TjWnX0SXAwBQtliP3n6v+J44nJm3KQoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=aAcPHZ6g; arc=none smtp.client-ip=209.85.161.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f54.google.com with SMTP id 006d021491bc7-605f7d3216bso862971eaf.1
        for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 09:12:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1745338369; x=1745943169; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=H8E7zBmmWLg3ht/ivGt6wNiB8HhGYbCrWpBk3ARRpsY=;
        b=aAcPHZ6gRHg7/BYYGLMbWQYAJTrkE2oPPh6bQDAb+xVwqmsxFbgldtFgEWm4i0KvlG
         K5R2DZEGn1CA1v2fniOcB2OKJvCT3ZGvE3RKvhSwCFv8TNY+33j2rWRvbpRYrJJjGjuR
         YIxMgnKS6dA8ISUOr0mc5yrRnDJGdcnyhi06dkHX9pxD6lvMn8jrDuVWL7fENNuK3fxl
         jbSMGx+bBpajNuU4SSE7emQ1k/4xU95D6QMab0i5uW1sv4cityWbmbnMNdHxb0XkQg9z
         E7jql7aTdDVmkYcfu28z4Wj12J9+eNJuV8TnfG/dWgHb8faIysjFlTCmL25Zo1GCUt2I
         tHgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745338369; x=1745943169;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=H8E7zBmmWLg3ht/ivGt6wNiB8HhGYbCrWpBk3ARRpsY=;
        b=LmjPR5lwBQ7GbM0+PqV5shcarpGkKbwEjQWhQn37B/iMo2LD1Y0KWVZAp/AV8HZQd+
         a6LF/n+IsU92L8dv/Hztrqh7m8QUdI5cFwOpoGtyAmeCHuYOx3ZhkhtKzY9ZkUcPh9Wu
         5SaIPV302i+FqF/OA26Ehd/FWEko8OR7rB9sgyPtY0eO29JfdB+e4g63siB5ubL4OKyj
         00GQZviIJlVlNwt41/qAfk3MWEdjmTsib1kEFry6U4dAFldb20SNUggn89yaqtpAg8Nf
         4CGDKwQHqtLHCJ7UBSjS5BihWqq/n0iXrKPJJaCvX/ig20eciiX1/Mg7tO++jCXIlRTU
         NPxQ==
X-Forwarded-Encrypted: i=1; AJvYcCXl4kegHMCsxk4R88Y4C8bpu2Qs09JBkFubTJIU4zhi86/1I/h+BgqbndKwgJ0lgVF9wyncYZpQ/6YV@vger.kernel.org
X-Gm-Message-State: AOJu0YyOE5cGiDgUNHWae49bazRMrMzH6ZDDba8QE4wBKWDgu/1wl2Fr
	T22RY/54nGjZHLgO+cAjs4Tba1UZ7u6BAiEb3ZEzquuSNmJ97qyYL1IovKq+cak=
X-Gm-Gg: ASbGncslEm1Rr/MVNBjTV/AhJmQDTd4KVQzJOj57nqZ8bg0XE8DqbLv4xPDRm/iCn5J
	TDXB1LThrzlkRW3JSwh/bvZswAquLkXsyzkIHV6mhBGVb1amxBaQhF+w4g/mhf8jktOmCv6PQGV
	ZWtykyWQHuP0PIpBvmAYUOi+xy3WDCOSFBCvqleVTvFe2KhsVLBqaTkaOa4a0o674Z1dkVm3jnj
	bZQQG2z4kGyo4fvK69VbbzUFr8k3csK8vuXmTRoRdUm8Ob9UPRlGiJTaLRuR0oMo1VDcBmoGDv1
	epJfcNKtms4KcAYol+KQTkeA0nsIEnE68m2BWiF/0DXq3NBW8ytoyfVBegPHG/9hauYi2yY2S/E
	dBtl9O7OFuVYRcByucw==
X-Google-Smtp-Source: AGHT+IF9Z3gSX8kmSbSuKPRtpakMkJO137BJhDQaCwgNlo/KRdfZOcLBygIlEokup5a5MePwFQ8OtQ==
X-Received: by 2002:a05:6820:618:b0:603:f973:1b3 with SMTP id 006d021491bc7-606003ec9f0mr7716312eaf.0.1745338369622;
        Tue, 22 Apr 2025 09:12:49 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:c8d1:e0ed:ce8b:96a3? ([2600:8803:e7e4:1d00:c8d1:e0ed:ce8b:96a3])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-605ff69c258sm2150287eaf.25.2025.04.22.09.12.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Apr 2025 09:12:48 -0700 (PDT)
Message-ID: <8fe546e7-4fbc-4c63-ad0f-576ffb117508@baylibre.com>
Date: Tue, 22 Apr 2025 11:12:47 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] dt-bindings: mfd: syscon: Add ti,am62-ddr-pmctrl
To: Andrew Davis <afd@ti.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Markus Schneider-Pargmann <msp@baylibre.com>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Siddharth Vadapalli <s-vadapalli@ti.com>,
 Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tero Kristo <kristo@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20250122-topic-am62-dt-syscon-v6-13-v1-0-515d56edc35e@baylibre.com>
 <20250122-topic-am62-dt-syscon-v6-13-v1-2-515d56edc35e@baylibre.com>
 <20250124-heavy-jaybird-of-vitality-4cbe24@krzk-bin>
 <20250124-able-beagle-of-prowess-f5eb7a@krzk-bin>
 <mocfnpebc67xegcis6tx3ekhsjcsqnvhwtipufycrtq2be4nbh@pmxhir5gmkos>
 <639b4e3a-3f68-4fba-aa33-c46dcb6fc88f@linaro.org>
 <d6252b73-0bcc-4724-8144-d6a98c8980f8@ti.com>
 <74ee6d9b-fd78-4d8a-a94f-b2c4dc794b60@linaro.org>
 <ebsbaaxyatrcikoem75t2blkhhceuidq3wnj3r2hbezfcmtc3u@ptffexrigbff>
 <f9a2247e-e0eb-4e22-8626-80e87afa9386@linaro.org>
 <qjwlppsq4eorzepvjsgjjyyaddouo5w2rjguu5c2mqesd6luwp@f426xeghy2ht>
 <2130b439-74d0-475d-8429-1a1b4d9738aa@linaro.org>
 <b7f6570f-3b80-4fc1-8201-d44f5692867f@ti.com>
 <07bf9f93-deb8-48a1-aae9-a8a053680cc9@linaro.org>
 <6241ff00-27e6-45ab-808e-f04e39854753@ti.com>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <6241ff00-27e6-45ab-808e-f04e39854753@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 4/21/25 12:03 PM, Andrew Davis wrote:

...

> Which parent device? That is my point, if the top level node for the
> whole CTRL_MMR region is made into one big syscon, then a big regmap
> is made that covers the whole region. All the child devices also make
> regmaps covering their device range. Now these registers under the child
> device belong to two different regmaps. No synchronization is done as
> these are not the same regmap, regmap only handles this for multiple
> access to registers within the same regmap.
> 

Why does the child device have to create a new/separate regmap? Can it not use
something like syscon_regmap_lookup_by_phandle_args() to get the regmap from
the "syscon" node along with 1 or more args specifying the one or few registers
out of the full range that are assigned to that specific child node? This way,
all child nodes would be using the same shared regmap.

(And yes, I know technically they don't need to be child nodes - just using that
terminology to be consistent with the previous discussion.)

