Return-Path: <devicetree+bounces-201965-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0005EB1B646
	for <lists+devicetree@lfdr.de>; Tue,  5 Aug 2025 16:22:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9D90B3A9889
	for <lists+devicetree@lfdr.de>; Tue,  5 Aug 2025 14:22:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8C5224E4B4;
	Tue,  5 Aug 2025 14:22:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IkXxV58m"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD60C238C16
	for <devicetree@vger.kernel.org>; Tue,  5 Aug 2025 14:22:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754403729; cv=none; b=eGaK0kK4PVJhqPmcX35pro/qNsfDnBRRPNetgCutw3W/7Cb9OSvKadDiwmolQjhEswfLyVUg9+FH13ZmddyRd29ks9NAF0GxKtnfT7SKEjE8h+ssj71nVp7CN6mYL79Vm83hapu9yxiYynxlmAH/TiNxGmNwQmew1oSgJFQNDUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754403729; c=relaxed/simple;
	bh=qJ8/taLQitUUIhdItcIzmqYdvaRkRtZ5nft66CxqrJM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NIQOI2bOC7YwQmk9QaNxPnagv//viwSrAjUhbCxqK55xTApf87UWYy07EK7ExzE3udY+ZtLluKy66SUE1hMZ+66udDy0F3iLKUO2l5bgF1Z0leR4CaeFiqGttBdj1J2al/cEk5Tn17YXbM+oN9QQi3P5XJOHwCFw/aP+6Ecb1Bs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IkXxV58m; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-458bf6d69e4so29130815e9.2
        for <devicetree@vger.kernel.org>; Tue, 05 Aug 2025 07:22:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1754403726; x=1755008526; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CGTx9IRcvA+XXMryjjYziS8V7I1KGBOHgcBA5x6CYF4=;
        b=IkXxV58mRoeBnEejZQZNPLyDWUg2zoZHBVOvE3FoQ5pTlt0dZ1uHceJbl2o9sFE2I8
         +Xwr2Qal8V5YOZSb3RNZ9kcfjO+tL8w/IVWDyeVw3BU/FG72n3ItpBL9N6+2umiiiKuV
         3gYUyspWV9bUblX6g5gooBS8c8Po64+vmLRMOKGINRa2CckhECYLlzB65QIRDJ27rezG
         /shUsUYOYX5cuglUaxM3IP2W6Vbg3ec78JjULUYA677/T7IXzbO6c7Nkja8IU5S/LqPi
         +68XkNFkhIEhv1XayuZXbxBX1WBEi1ILd+YCG486+HlRNcrBygkhYkE8LzzSUt2BBZNS
         nMFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754403726; x=1755008526;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CGTx9IRcvA+XXMryjjYziS8V7I1KGBOHgcBA5x6CYF4=;
        b=FJNTbAx2Y5L6Z3rBIDKsNijaBxM9tgkRniHb1fDE4NEkxVrM1sXpucxxlSrm86ywVh
         sk5wOQ75KFrFG8iqdKAlhN4EAqqNTD95MTH/UG0X5bJvsbWt4gW7lpRTlqo9MMpz/u2D
         +Go/jAvei5LnjnEusX3dVBE/uEAgEL+O7xnQfRJEzhMJA1tnx2nUCEoRmTNnUHzeK+sc
         JCDT8SJoC+BY3tetzjTdUe//bSgBsxf8e1CKhXBaZJQor+uD2DZrdbMzihEIB35FUlBM
         iqxD68GVtiThh7Ly/6TN6LQ9lKvjbjWM10yTWdRV09fEUC2L/fw6tDQVIcw4gndsPjTO
         LKUA==
X-Forwarded-Encrypted: i=1; AJvYcCUENxywWwwgXy+8GX6t5XjVH9+d/H+CQzTC1I5Fu5giaSLRTeDqoRxhPSukTFsFyMfohqCHzU4uMMIo@vger.kernel.org
X-Gm-Message-State: AOJu0Yz2SNlWZh50L67wK8Rr4TazcDSKGIhuB3X26E9VWGBUpehT1AvO
	dMpn2fCwskSE+97PML12vyjYGjexZi10gyF8OYS1oYTWFa3lxaakVZav6hFgss/uNWc=
X-Gm-Gg: ASbGncvNcB/ZsedeXs0q4RJfan/nJz/zxDo5hhCzvVaaqvoTYC9vi9gP5Sru8RRgCxD
	DmLG79lAFzA534Z6F1uzE/7WozK7cFPVX9LVBEOGLEl/NnrcKb6w73cTcGx1GJDEw1GsBAm5aVZ
	Bi287Gc9tKpiolX1EtFmvfaSagBGjjaVjF369UmUtFXLDldLIsW1h5OfN8OaK+E5y2svXshhoru
	ogC2u1/xhm6JuKA4T/xFe0FqOwa7nyUVG+B2DhcLXeE8vOHcYleTh9P4Tm1p06YAu+YSYav60JH
	iigaqdlOrYZ00+bXfqwo1c7Aw3nHTYNCTKZpivh8VUvRrwxFrrt5BC8Q9nUPWVKxocYNCjxStL7
	IP8WEeNB8Mj/NzkTTU2P0rr9CePSJaYU0d1QWGTT2GmilHlrK5PyNC/xQWH3rIg==
X-Google-Smtp-Source: AGHT+IEV6DBi7tmNMcfo0RaME5apz6BIXyI7tKs984BhJlf5Fiwqa5jF2xcznh1s6/UhxXv+cODefQ==
X-Received: by 2002:a05:600c:4505:b0:458:b4a6:19e9 with SMTP id 5b1f17b1804b1-458b6a03d43mr109999995e9.13.1754403726118;
        Tue, 05 Aug 2025 07:22:06 -0700 (PDT)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-459e3d37439sm10609885e9.2.2025.08.05.07.22.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Aug 2025 07:22:05 -0700 (PDT)
Message-ID: <089a7ef1-97ec-4019-9582-653d20af6a75@linaro.org>
Date: Tue, 5 Aug 2025 16:22:04 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 19/20] dt: bindings: fsl,vf610-pit: Add compatible for
 s32g2 and s32g3
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-kernel@vger.kernel.org, ghennadi.procopciuc@oss.nxp.com,
 devicetree@vger.kernel.org, tglx@linutronix.de, S32@nxp.com,
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
References: <20250804152344.1109310-1-daniel.lezcano@linaro.org>
 <20250804152344.1109310-20-daniel.lezcano@linaro.org>
 <175440262896.1529239.4583136749439718490.robh@kernel.org>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <175440262896.1529239.4583136749439718490.robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 05/08/2025 16:04, Rob Herring (Arm) wrote:
> 
> On Mon, 04 Aug 2025 17:23:37 +0200, Daniel Lezcano wrote:
>> The Vybrid Family is a NXP (formerly Freescale) platform having a
>> Programmable Interrupt Timer (PIT). This timer is an IP found also on
>> the NXP Automotive platform S32G2 and S32G3.
>>
>> Add the compatible for those platforms to describe the timer.
>>
>> Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
>> ---
>>   .../devicetree/bindings/timer/fsl,vf610-pit.yaml         | 9 +++++++--
>>   1 file changed, 7 insertions(+), 2 deletions(-)
>>
> 
> 
> Please add Acked-by/Reviewed-by tags when posting new versions. However,
> there's no need to repost patches *only* to add the tags. The upstream
> maintainer will do that for acks received on the version they apply.
> 
> If a tag was not added on purpose, please state why and what changed.
> 
> Missing tags:
> 
> Acked-by: Rob Herring (Arm) <robh@kernel.org>


Thanks

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

