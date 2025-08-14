Return-Path: <devicetree+bounces-204671-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id EC86EB264D0
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 14:00:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A69A47AC2D8
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 11:58:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 653022FC86B;
	Thu, 14 Aug 2025 11:59:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="roAPRZVu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f176.google.com (mail-il1-f176.google.com [209.85.166.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 979CF2FB97A
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 11:59:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755172798; cv=none; b=i2Rmy1hTlcSEuyUkVMr2Tk2QL/ebzPVKJgidctr7/5ZJhzDq7qLFmfabMV4mGFur1h2KjgCusCM+pqa3ESTqPlYCzO8olGHJXdvE0GjeaWXJSltWVOfiGoNTJjFX0oNvhTn3gKPhnS2YSsWMzODRmRmtP8jfnykMUJBZmmY05e8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755172798; c=relaxed/simple;
	bh=HFX/Qwld+Sh0z4QKTMLIPR1Ye4VR7lyGLk0gc7fQ85w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KnrHOLtD9txW4/E7DVS7+7TZDyKUc79ag13TVokuO8L56LgNyOJ3ESdsb9i46MKQQipa4uXSFDZNFZdv3BajtbBULcJ4cJ4l2DvJ1rj1Hx+wDSOT7sqnlDd76q58JuhJxPIfw+HN4Th7SPH37xS1G1szI18j9NP2AvP1uMB3pA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=roAPRZVu; arc=none smtp.client-ip=209.85.166.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-il1-f176.google.com with SMTP id e9e14a558f8ab-3e56fe7a3d6so8503005ab.0
        for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 04:59:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1755172796; x=1755777596; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VkZ6MdXAK8oUuFYjzHuswEeWUTNOi4hs6qI/H9CSMKA=;
        b=roAPRZVumjhXSJMNbOOKCt7VTy16wBXw0WVHlLt6mdtIXZk83X5YibLjoUe14l+prN
         fW7d/bas93KoNHsatXcMhgWsAmvc2gQi5fOyxQEkfxfbXovmCDkk/YtBEcrkWhV0bkCM
         qY3abYbLqOZduAZGRLzhY7TDIdI2Bg+suk2QK5iQ0bHOF/DTSwTBEef4pDTXc3TsrVL1
         Cpt+bwgopxNd5MFDyjknyD7TfduO5QpRTVQlyIbTi5mHq2gIjp9BTNf9kbs7Gu0gLgom
         wv+NR7SEMY/a4IaEOILN9/Zvg/spwkdsSNDSCGdpMoCJkjfsHJP3f+JNpmYBOxM8lEgt
         S7HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755172796; x=1755777596;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VkZ6MdXAK8oUuFYjzHuswEeWUTNOi4hs6qI/H9CSMKA=;
        b=qX0uuNYbBTXMwT6nlNR4RtM+mFdCRfU/6suN0ZgN5eZ34DEYaNmKabkA9pANTxc9NB
         sdaeaA0Ot9fz6Z2coHxtBKZ3JWYOFDC8Y0b1l4j0L25sjiwjCurDh6t8dgYrDR1F7eLC
         lBXS+qrf1U05zi+YC5MCEZVgc0WEGzCucx4JuZho2+R4nhSj/toBiN+RBI6bHVsgUX/P
         kjWMEB5rNsOTHX0AG7IaUYRSzxUClDfkQgB4IzrfQYHHFb0ighsW2APDWhArZlTaysUD
         Jh7D2KNWBxvC4HzVMlJhZIg69ubVJbMR/I0MS4aK4Eeql0cPzRbHgzfWf1Pauv9yqOD/
         A2Uw==
X-Forwarded-Encrypted: i=1; AJvYcCXvMAR8I/8Z+jFRgJ3BEL7lu4b2+g2YzP+pJ1At+4djxIDfHECl4MWV6vmaRkiCmh6yeLW+9NNGA3KT@vger.kernel.org
X-Gm-Message-State: AOJu0Yzc7pVWQn37v5CQ00Ao8Xi7J22q34VQvC5b9t0jJmQ4KJXuO+Fz
	lFv2VX16M94DjA/BBev6HIdaAgWDYNpzwdAvtZ931J59dSMPb/mgsRRp25/pibdW7kM=
X-Gm-Gg: ASbGncsfB/OU7GdHbtOXAxrPOFfBOqpd15KpxNbIlst0HXI90WJlnqKEXP4mwFhNQfG
	QyPxAXSSSmSx7fn0eH2zOWYwSFGBQy3KKlUzjltxGQoxreMywUEoLAM8MajO4xIyNDyDObNJzGs
	DiiFw7EluuJwSx4W9BK/D54rvbPvw4rLZwWctsH4qhFjpyoAMZg685cyjQehdpNyn3RlyG3Pv/j
	7IjDpsUPqglYNKDuaZPamyGbp2UN0lfHSITTF7yBib6g05bJGKm3IdF+rj/On4tlZ3UqR0AUvPd
	LdfZmSN7LzJixHseTJJO8TjRnEAAIB0AcMj6577qyLeD/ryyOdC0Dj5UgCbNBc1mbRPJ4ER9LPd
	Znxa3t+z1/n9L771EQfCUsC9ALJcAGyMTQRYEEDi2rb31ItyqPFKlGpzLS8un1w==
X-Google-Smtp-Source: AGHT+IE3y11zxXdSZ7xsXLUpghewNnJCpWK8G2mFkAzcKjVS5vSn5G3dmjKvLqQoKez3LPNe1hHEcQ==
X-Received: by 2002:a05:6e02:184c:b0:3e5:6daf:ddfe with SMTP id e9e14a558f8ab-3e57084ff05mr51337105ab.10.1755172795698;
        Thu, 14 Aug 2025 04:59:55 -0700 (PDT)
Received: from [172.22.22.28] (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-50ae9cbb659sm4480210173.93.2025.08.14.04.59.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Aug 2025 04:59:55 -0700 (PDT)
Message-ID: <86174012-fd87-41d7-9568-f9c0b544c1c4@riscstar.com>
Date: Thu, 14 Aug 2025 06:59:53 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/6] dt-bindings: phy: spacemit: add SpacemiT PCIe/combo
 PHY
To: Krzysztof Kozlowski <krzk@kernel.org>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, lpieralisi@kernel.org,
 kwilczynski@kernel.org, mani@kernel.org, bhelgaas@google.com,
 vkoul@kernel.org, kishon@kernel.org
Cc: dlan@gentoo.org, paul.walmsley@sifive.com, palmer@dabbelt.com,
 aou@eecs.berkeley.edu, alex@ghiti.fr, p.zabel@pengutronix.de,
 tglx@linutronix.de, johan+linaro@kernel.org, thippeswamy.havalige@amd.com,
 namcao@linutronix.de, mayank.rana@oss.qualcomm.com, shradha.t@samsung.com,
 inochiama@gmail.com, quic_schintav@quicinc.com, fan.ni@samsung.com,
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-pci@vger.kernel.org, spacemit@lists.linux.dev,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250813184701.2444372-1-elder@riscstar.com>
 <20250813184701.2444372-2-elder@riscstar.com>
 <22bd5b5b-ca06-4499-b21f-22c2ff202167@kernel.org>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <22bd5b5b-ca06-4499-b21f-22c2ff202167@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 8/14/25 1:11 AM, Krzysztof Kozlowski wrote:
> On 13/08/2025 20:46, Alex Elder wrote:
>> +                      "mstr",
>> +                      "slv",
>> +                      "global";
>> +        spacemit,syscon-pmu = <&syscon_apmu>;
>> +        #phy-cells = <1>;
>> +        status = "disabled";
> 
> You cannot have disabled examples. This also means it could not be
> checked/tested.
> 
>> +    };
> 
> 
> Best regards,
> Krzysztof

OK I'll fix that in both places.  I think I just copied in the
actual DTS content, but I now understand the problem.

Thanks.

					-Alex

