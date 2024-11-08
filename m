Return-Path: <devicetree+bounces-120201-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 91B259C1BAA
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2024 11:58:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 22A751F23D99
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2024 10:58:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCB111E47A3;
	Fri,  8 Nov 2024 10:56:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="L7VVt8BD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2AF91E47CC
	for <devicetree@vger.kernel.org>; Fri,  8 Nov 2024 10:56:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731063370; cv=none; b=PH3kp4EDVYBjePsr6qDcOdw8bVafgcHuzk7V7ZjZfL7Qa2+T5gFpacEyCSXxQIcrWqNT9SBB7mCnmv+ki+DqOuDRFMo9iVBxF9ZvZ8FmI/bnM5Ej1ohs9XujaubG8vqzxCIpRGsgJQgfOQzpI67lqRRdAaXoLO2ZJ4Zcpi3zyyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731063370; c=relaxed/simple;
	bh=YXdcjkX8etbfDLHodsoek8iKDQY4+jwgGGzH3KAtw7g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oCg8nL/hsykOGDD62RfDgxsqU9FBAeL/dRQ5wvoW/iJpnkEYiRSK4ZXV10C2iAXvcqmQQU82DlIfmEewLRapxvkMH1RIw0ZO28cNu8ixHqysVFLkgKTF1KMviZJ+3vI6YIiCZV6N8IuYaREzujoT+nG+XJtMlLmyKF6wFzH9pb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=L7VVt8BD; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-43158124a54so1559495e9.3
        for <devicetree@vger.kernel.org>; Fri, 08 Nov 2024 02:56:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731063367; x=1731668167; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=Ho2R1g6t6+abP7priMth4WROzEDx+gxsMyYEy2a1tfU=;
        b=L7VVt8BDRWgss9QEnDT2Xk5YnPvaxmH7one/IN0wmcfY8PoHguNp+KiIWhgyx10Et1
         nqSi7PPumAJTfX8nNv0HCDI65q+VQndc9FppIjGjo6StHCZlM61bAen8kRksdvKxKBD0
         i/pDT3U28p7jq9NdYDBLjtJzO3PIwFIAA4kTNLZe6RnCUbaa4jP5jMFj1s88rLbLGjxp
         utjL2mMuYI2IGJ+z2kLWtbPPhbHMQwhsMguhPMOwtSptNdYMxKLswTmx1eGI9gNFQ9Eb
         CZsEWruHyUQakeSbtHERAmu/Hz16IcDbc3HL94CCzwIHoLau+KFniqPD/ihrAz+vJ2Po
         3lkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731063367; x=1731668167;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ho2R1g6t6+abP7priMth4WROzEDx+gxsMyYEy2a1tfU=;
        b=mnE8SZE5qvnDGueMPWJ5TEC5XN9Z9/UIJSO1dYOgZKaaCDGIE8Kwg6dIhVkf5S46XF
         xvdlqK96R1eWYiK/cKsYpvQdXBcMDu0ezYkAXC1gkOb9obOu/erzYITXudkbiYRTOYwF
         0BZMUNl77dU8VDtVWKXtu9amo7y/bWxZ6ltPYe6oMmkiUHo62NlI8m9uXajSoA8/JxcQ
         30Ms3wyfzm/JnvDhuIVP+Z7reYJ1yT3Npci/7rkJy3o5Nbs/Jhc52hrLsxOEZyE9oYeT
         75/tX/8J8Sv5BIZ1kgX/tFz/pdWtULhd45BR3TweWDXiDf86eeFRjSC/qANFBU6Z0Y8P
         kD2Q==
X-Gm-Message-State: AOJu0Ywl97OpViehXrxJV8lPRiHhpR0OIhsLrKQSm/1+0T4dTxqnYwWw
	o+kB0XO+snrWT2R7piJASIEI+ifKxDJ4OTr0QLy9zzji0drMGscWGpfkFgmNJc0=
X-Google-Smtp-Source: AGHT+IF175RcChMaKgxG7DzpAG6Dq0Qo693dlECBFgQjlvN2DFQGIRPF4OG+ZBoQAVda73yTzoOZKw==
X-Received: by 2002:a05:600c:2248:b0:431:4983:e8fe with SMTP id 5b1f17b1804b1-432ba269242mr3280465e9.9.1731063367070;
        Fri, 08 Nov 2024 02:56:07 -0800 (PST)
Received: from [172.16.24.83] ([154.14.63.34])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-432b05c0d33sm59878035e9.27.2024.11.08.02.56.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Nov 2024 02:56:06 -0800 (PST)
Message-ID: <b8389b06-4ad8-4ddf-94c3-cc36bacc8466@linaro.org>
Date: Fri, 8 Nov 2024 11:56:02 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/6] dt-bindings: arm: blaize: Add Blaize BLZP1600 SoC
To: Niko Pasaloukos <nikolaos.pasaloukos@blaize.com>,
 James Cowgill <james.cowgill@blaize.com>,
 Matt Redfearn <matthew.redfearn@blaize.com>,
 Neil Jones <neil.jones@blaize.com>, "robh@kernel.org" <robh@kernel.org>,
 "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "will@kernel.org" <will@kernel.org>, "arnd@arndb.de" <arnd@arndb.de>,
 "olof@lixom.net" <olof@lixom.net>,
 "hverkuil-cisco@xs4all.nl" <hverkuil-cisco@xs4all.nl>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "hvilleneuve@dimonoff.com" <hvilleneuve@dimonoff.com>,
 "andre.przywara@arm.com" <andre.przywara@arm.com>,
 "rafal@milecki.pl" <rafal@milecki.pl>,
 "andersson@kernel.org" <andersson@kernel.org>,
 "konrad.dybcio@linaro.org" <konrad.dybcio@linaro.org>,
 "angelogioacchino.delregno@collabora.com"
 <angelogioacchino.delregno@collabora.com>, "nm@ti.com" <nm@ti.com>,
 "neil.armstrong@linaro.org" <neil.armstrong@linaro.org>,
 "nfraprado@collabora.com" <nfraprado@collabora.com>,
 "johan+linaro@kernel.org" <johan+linaro@kernel.org>
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
References: <20241108103120.9955-1-nikolaos.pasaloukos@blaize.com>
 <20241108103120.9955-3-nikolaos.pasaloukos@blaize.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20241108103120.9955-3-nikolaos.pasaloukos@blaize.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 08/11/2024 11:31, Niko Pasaloukos wrote:
> Add device tree bindings for the Blaize BLZP1600 CB2
> development board (carrier board), which uses the
> BLZP1600 SoM.
> 
> Resolves: PESW-2604
> Checkpatch: ignore

NAK, Solve your "resolve" errors and fix your checkpatch issues. All of
them.

> Reviewed-by: James Cowgill <james.cowgill@blaize.com>
> Reviewed-by: Matt Redfearn <matt.redfearn@blaize.com>
> Reviewed-by: Neil Jones <neil.jones@blaize.com>

Three people reviewed this YAML? And no one told to remove incorrect
tags? Where is any trail of such review?



Best regards,
Krzysztof


