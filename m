Return-Path: <devicetree+bounces-68189-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BB8B8CB2F8
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 19:36:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 46C2B28265B
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 17:36:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 232AC482D0;
	Tue, 21 May 2024 17:36:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="xiRjkSxx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2560F74BF0
	for <devicetree@vger.kernel.org>; Tue, 21 May 2024 17:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716312985; cv=none; b=tsBPAbMdL+TxY2T0p9D/LPqDe/trHOr20J6m3VLFtB35eiBWSsj4fCA+XXv/LukCYn4cLj2oMC9yRE1CtyPDIDCYFk4jbq1CIBjI03OCvQ2kDX+lWDTzcXmdkbw/P47/J/dYhbWHAQvwhKPqLsIuWMnMwbB4RogvBkqv7qwDoYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716312985; c=relaxed/simple;
	bh=8Gli0BGCzmpOJS0PeIquJpQ2yCEw7IsocVvUgPq5HIY=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=jXoc1v53wsPokpzE0arNxSerGakkbHYtCZa8gSrXf7yCHHRTzCbfKCt6QRtEIISpw9w+bOGOQ++dnaImle7RkVkTfmkkEi/XH/EZDCM+8UcNRlUjgpISXTv4r8zxr+p5ncOtSzed2+Ez0rC/q9M6xg2RDhKIkktinvwYXCqb4Cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=xiRjkSxx; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2e34e85ebf4so48667291fa.2
        for <devicetree@vger.kernel.org>; Tue, 21 May 2024 10:36:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1716312981; x=1716917781; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=aPgEx3GtMaUfzrhotDmNS7q39kZcogdON2mF0DZp2xw=;
        b=xiRjkSxx73C3hOiRXqZTf4L5j7/0PR8qOcyv0OTaAG/1XUEh/hyRWCCqJEbeq1ZJMC
         W1zAN/YGlsmIzzL8Xd9kXJqN1o4RF6QaVgBUbxrGhanw5akAmHigab7seIp7W1p/Qw1e
         1jr/txsjUEX2qo3PfPjPupXxDmSbdFbpAFgrav5vwbAdQINonmhtSCZyrYYlM04v7Hkh
         683yliHiaOxRA6FgIjf/nObTo4YFGf+F8jqHKcCFNVug3K4XBFkmiHyCqBQLW645FcjP
         tbl5pG4rij1VwHDatzdmZNpKG+VhBKx56MTr2SgP4O9CCPiPQagCBWWsgGlQM4PZrjjM
         iXgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716312981; x=1716917781;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aPgEx3GtMaUfzrhotDmNS7q39kZcogdON2mF0DZp2xw=;
        b=h8fZStXlrSL3CDRFyTfXWG7BbyY/x6TavCzWMYisyUghsZWy3E46fkBgGfp5L7VcVJ
         irdGw3x2S+gPUEJVLYjoK/ZA6SkfX401SY79nKHwGveMOdnn+FvqVGDfVTWFg49g+hxW
         MlIDh2tU4RWloAt6YiLeAOIt0O/sFzr5jEKYp7mEymsEc4Wv35R/XcRXG3K9sZIKTDeC
         omYxL0n443fx1DB6Qgntlk5G4nuu5DzZOeqmVuzHJ9g21CFPkYP+vbWQnD3c8+C8w86j
         UM836nUfVIzT5wj18ftUiHgGo211Kve+3/4ipkywvT8T+kRUIFP5oJwa9n+uOkG5uKii
         QHQw==
X-Forwarded-Encrypted: i=1; AJvYcCUR4jDwitx8/T4Z+jWhE9YqZCCDl3JnyRKJcmCfwwz0Zj+/RrGCQ85A4umsXcXpB+yo0V6FxliPDNcy4a+By7+Cb7xOAGEuad1zgw==
X-Gm-Message-State: AOJu0YwluM7roi9/ccr36HL8M9o0AQ/g3QI8lPo/9Ds4+lfdpLc+Ws2J
	SB6T94GeM73AFOlDYXtiD1EkwLvLuu/z8dFzQUEnXcEsxuyMN5FA7Mu4fajDeWk=
X-Google-Smtp-Source: AGHT+IFjJk9ErXRZ9mgIVn9Q70lSKsJgFXX9/mhVTn1VEkxcNEDE0qL/KX6kDba10kEFw4rs+oNWEg==
X-Received: by 2002:a2e:9b19:0:b0:2e8:60e2:3c8d with SMTP id 38308e7fff4ca-2e860e242f2mr6435921fa.12.1716312981380;
        Tue, 21 May 2024 10:36:21 -0700 (PDT)
Received: from [192.168.1.172] ([93.5.22.158])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3502baacfc6sm32606201f8f.72.2024.05.21.10.36.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 May 2024 10:36:21 -0700 (PDT)
Message-ID: <a2ef92ad-7704-49d2-9cb7-783047e5676d@baylibre.com>
Date: Tue, 21 May 2024 19:36:20 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] dt-bindings: mfd: mediatek,mt8195-scpsys: add
 mediatek,mt8365-scpsys
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 MandyJH Liu <mandyjh.liu@mediatek.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org
References: <20240518211159.142920-1-krzysztof.kozlowski@linaro.org>
Content-Language: en-US
From: Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <20240518211159.142920-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Reviewed-by: Alexandre Mergnat <amergnat@baylibre.com>

On 18/05/2024 23:11, Krzysztof Kozlowski wrote:
> Add a new mediatek,mt8365-scpsys compatible, for the SCPSYS syscon block
> having power controller.  Previously the DTS was re-using SYSCFG
> compatible, but that does not seem right, because SYSCFG does not have
> children.

-- 
Regards,
Alexandre

