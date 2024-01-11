Return-Path: <devicetree+bounces-31411-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C5D5582B1BC
	for <lists+devicetree@lfdr.de>; Thu, 11 Jan 2024 16:26:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 64F411F22843
	for <lists+devicetree@lfdr.de>; Thu, 11 Jan 2024 15:26:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DE164D590;
	Thu, 11 Jan 2024 15:26:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="BlM5Q5eQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 814AA4D127
	for <devicetree@vger.kernel.org>; Thu, 11 Jan 2024 15:26:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-3376ead25e1so3606040f8f.3
        for <devicetree@vger.kernel.org>; Thu, 11 Jan 2024 07:26:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1704986781; x=1705591581; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bXw9H6cSiYpiMToI+kupK3Rdzo+YplTfXAjuwKGJnNw=;
        b=BlM5Q5eQm6SPx/oiaE/lQyMIKlv5Q5KOP+dUWZ7DkhfQSWisu5XpEXQJti5laPVobB
         USe/qLk9+ZxwJMrQGBVsHOGNukNQgDB1aJLSaZl/AfKAN4/hag4Qz+Sw9JE5g2hEfjzO
         mNrZaAusdlEoGZRJsJjDLbBiCr2tJNgZXL9R0VLiOWQGXQFKzT3jEcKOf9xDojD8NJxn
         mANr6Y9LzV1lvHrkq5viZCoU1ZNhs7dtoGRHmY3iAjX2hpKIr/sN51bfpopzowke4dwB
         HPApjEGX3nTN+hLZho2vjFfxQE22bvGjvwVsziNdQo/UQedBMAoxSLqRK2mv1+71RCKZ
         B3iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704986781; x=1705591581;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bXw9H6cSiYpiMToI+kupK3Rdzo+YplTfXAjuwKGJnNw=;
        b=je9DbgPUnmmtNqLJe1XTeNaTsbQx23JkByEeYtuIqP9KEeTVkuMMLhN+a7VJTrBxIu
         /M0QBc7n+jjMSBUc6i7JjAEs7BP528pHC86TE7JB8lPzo9HVH8xNOwiHT0YBjEJ36fqu
         YakTicYTC7aDcLtynB47VR6JJGsNEoMyE72i5Raa5Qx+IY501tK/TTfvHp5i0mInABKk
         clxXVb0FVmDJd0uu38eDCxg7PeSCeHLkGBxSKP7f4hTbhbDBNKPQ8jEml3kg02Nh3KXU
         0MKHlnqtl0aOLPy33/z2c3nkKmYGOeHYoJ0JUtm4DnMKbQGWHoWdXcM3K5QsrCfBk6N7
         7rtQ==
X-Gm-Message-State: AOJu0YwuYKC4M0GCdSwhDHwpi8JHhKDhEm1+xXtogA3r0D3hh5mDluI3
	hW4NnjTLylAySdk1VQeg9rYNb1UQW62MXw==
X-Google-Smtp-Source: AGHT+IFxCr4MIW/RF7Q6Sf5mLbGyvoYByxzUkNq87mRyNF3dhZ4A0ZXZPPyYjfcaIshkpNNUspbD0w==
X-Received: by 2002:a05:6000:4009:b0:337:68ab:6183 with SMTP id cp9-20020a056000400900b0033768ab6183mr983007wrb.5.1704986780850;
        Thu, 11 Jan 2024 07:26:20 -0800 (PST)
Received: from [192.168.1.70] ([84.102.31.226])
        by smtp.gmail.com with ESMTPSA id d6-20020a056000114600b003366a9cb0d1sm1445502wrx.92.2024.01.11.07.26.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Jan 2024 07:26:20 -0800 (PST)
Message-ID: <c5a4c9df-22f3-48f8-93b9-47e89b0f46c6@baylibre.com>
Date: Thu, 11 Jan 2024 16:26:19 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 03/16] arm64: dts: ti: k3-am625: Add MIT license along
 with GPL-2.0
Content-Language: en-US
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tero Kristo <kristo@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Guillaume La Roque <glaroque@baylibre.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Pierre Gondois <pierre.gondois@arm.com>, Roger Quadros <rogerq@kernel.org>,
 Ronald Wahl <ronald.wahl@raritan.com>, Sarah Walker
 <sarah.walker@imgtec.com>, Tony Lindgren <tony@atomide.com>
References: <20240110140903.4090946-1-nm@ti.com>
 <20240110140903.4090946-4-nm@ti.com>
From: Julien Panis <jpanis@baylibre.com>
In-Reply-To: <20240110140903.4090946-4-nm@ti.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 1/10/24 15:08, Nishanth Menon wrote:
> Modify license to include dual licensing as GPL-2.0-only OR MIT
> license for SoC and TI evm device tree files. This allows for Linux
> kernel device tree to be used in other Operating System ecosystems
> such as Zephyr or FreeBSD.
>
> While at this, update the GPL-2.0 to be GPL-2.0-only to be in sync
> with latest SPDX conventions (GPL-2.0 is deprecated).
>
> While at this, update the TI copyright year to sync with current year
> to indicate license change (and add it at least for one file which was
> missing TI copyright).
>
> Cc: Guillaume La Roque <glaroque@baylibre.com>
> Cc: Julien Panis <jpanis@baylibre.com>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Cc: Pierre Gondois <pierre.gondois@arm.com>
> Cc: Roger Quadros <rogerq@kernel.org>
> Cc: Ronald Wahl <ronald.wahl@raritan.com>
> Cc: Sarah Walker <sarah.walker@imgtec.com>
> Cc: Tony Lindgren <tony@atomide.com>

Acked-by:Julien Panis <jpanis@baylibre.com>


