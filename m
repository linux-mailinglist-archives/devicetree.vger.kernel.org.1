Return-Path: <devicetree+bounces-31409-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9961082B1B4
	for <lists+devicetree@lfdr.de>; Thu, 11 Jan 2024 16:25:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 480591F21C64
	for <lists+devicetree@lfdr.de>; Thu, 11 Jan 2024 15:25:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A8F24C60A;
	Thu, 11 Jan 2024 15:25:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="b6JSv2M1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADEDC4C60C
	for <devicetree@vger.kernel.org>; Thu, 11 Jan 2024 15:25:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-3374eb61cbcso4888606f8f.0
        for <devicetree@vger.kernel.org>; Thu, 11 Jan 2024 07:25:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1704986728; x=1705591528; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=evBY7G5meh2vgcdCD04AA8ujExPP16KlKzDgrJGrxTk=;
        b=b6JSv2M1hfS3jdAMhDkYoXX1nawC/L6Gpgm/YgOzlLeFYAzZO9iPvpGnjWc6oZEF2G
         dkAQzDrYrnEg7vQTIAxwx8GuKcFWj4fKLvFXFw7SDuta5mxrRjagd5MZ5mPA0ykB+M9G
         Bo7/D0aJTCLRRn+OQZ7e4af8318t3sXSWSHv4SBaGXqdPYhbcocSAWChbiRCO247qQvl
         v10AtzPXcZlYXtNBtGxN1jyYC+JYA4m5Iqm1i0LFlf3tC/BLeE6j1ETw/RNmPzenB/iS
         ICG2/Gy3+n0i3Q/JUf/kF4tyS2SPxD3FRP6/G8xuh1Ctk4g07Dz0qqOOP8gDKidNyGaW
         4/tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704986728; x=1705591528;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=evBY7G5meh2vgcdCD04AA8ujExPP16KlKzDgrJGrxTk=;
        b=cg6PkdDtS6gCWPAieqUsClAEr7JK0d2ZVSDVOsVLiaWoq1jvtkBTmWlxYuWFkwGNFp
         +mXzdPEOVIQg6DcZI2iu46k/FBn4mk9jugChv1xS5/0eWbev1T9eVeLHghCzffRD4h0Z
         jD/zchzaZUaSf4FwPIUHbRRTy3iKTKP5egISDeqZjcerqf0z7ZvUY6X4bMr8Lp/P4b4F
         OFTSlozzM1EepvUibETacbSJXQR1C1v0cXGIh9vXwA0zWUhDXEH0wmCGiRjspc2bMRwo
         4PdW1/VBmGE6+PTw98zX6tXLzkxOMkg7vDqBJAKVTcty/YDG9j7cQBmZ5NaJCGiPcn/u
         eoEA==
X-Gm-Message-State: AOJu0Yy83Crv4i9yzGa6bnUjUFaaJXDbLtvLmwTX98BLOSeLBLklHn8J
	jQ9zfn7utt6p557XP+itXMRT/cphYPsoHQ==
X-Google-Smtp-Source: AGHT+IFesYHsHdevt0age8LfkFxLnKkt6ZJll+ndYqVH4+HSaalewhELgBI2dUZmfL+p41qv8jcyyQ==
X-Received: by 2002:adf:f18d:0:b0:337:6539:2033 with SMTP id h13-20020adff18d000000b0033765392033mr866994wro.56.1704986728007;
        Thu, 11 Jan 2024 07:25:28 -0800 (PST)
Received: from [192.168.1.70] ([84.102.31.226])
        by smtp.gmail.com with ESMTPSA id d6-20020a056000114600b003366a9cb0d1sm1445502wrx.92.2024.01.11.07.25.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Jan 2024 07:25:27 -0800 (PST)
Message-ID: <78476abd-08a7-46a8-8ffc-425a311eee37@baylibre.com>
Date: Thu, 11 Jan 2024 16:25:26 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/16] arm64: dts: ti: k3-am62a7: Add MIT license along
 with GPL-2.0
Content-Language: en-US
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tero Kristo <kristo@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Pierre Gondois <pierre.gondois@arm.com>, Tony Lindgren <tony@atomide.com>
References: <20240110140903.4090946-1-nm@ti.com>
 <20240110140903.4090946-3-nm@ti.com>
From: Julien Panis <jpanis@baylibre.com>
In-Reply-To: <20240110140903.4090946-3-nm@ti.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 1/10/24 15:08, Nishanth Menon wrote:
> Modify license to include dual licensing as GPL-2.0-only OR MIT
> license for SoC and TI evm device tree files. This allows for Linux
> kernel device tree to be used in other Operating System ecosystems
> such as Zephyr or FreeBSD.
>
> While at this, update the GPL-2.0 to be GPL-2.0-only to be in sync with
> latest SPDX conventions (GPL-2.0 is deprecated).
>
> While at this, update the TI copyright year to sync with current year to
> indicate license change (and add it at least for one file which was
> missing TI copyright).
>
> Cc: Julien Panis <jpanis@baylibre.com>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Cc: Pierre Gondois <pierre.gondois@arm.com>
> Cc: Tony Lindgren <tony@atomide.com>

Acked-by:Julien Panis <jpanis@baylibre.com>


