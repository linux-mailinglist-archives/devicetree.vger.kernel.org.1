Return-Path: <devicetree+bounces-95980-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D2BB595C4A2
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2024 07:10:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8FA572859F3
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2024 05:10:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B92A502B1;
	Fri, 23 Aug 2024 05:10:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="lCALxQSi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFF76381BD
	for <devicetree@vger.kernel.org>; Fri, 23 Aug 2024 05:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724389836; cv=none; b=jrg2V1h1T1IdldqS/a/EpXOJuKhAekihScssjdcEe4E8WGXIRL3CWrVV5oGta1lSJkzQ7f9AvrJYA5E2HQnM7HBolnCgi0xWL3vJOiTBvdMkD8n7AhON/jKyl2sdpsAOoylySX5YlpBbbfphNYxDS3G5kGgi465E+BLVgYzsqB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724389836; c=relaxed/simple;
	bh=gQraPo1JD6T40KZeeuGyzrr7oNh9faM53ntEGC2Wjlc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rx+yBYsb1ETShTNQQEQTgQmmocS00i1gnqab/CotFcwc9OuiQFjhYMvKkv52qdc/KTL+f0ZP+swhaX9LXyH/vQLU//LZz5oJMiD5aPvndvxz4y1/l2D91cr87U7DIfE7AH2X282UR7t1hjBIFWGR9MexNN+jcDMSr8UQ0nn+Miw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=lCALxQSi; arc=none smtp.client-ip=209.85.216.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-2d3da054f7cso1160587a91.1
        for <devicetree@vger.kernel.org>; Thu, 22 Aug 2024 22:10:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1724389833; x=1724994633; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wN8gOGozgTRHYua5nqn1vSL/fYA2BgScIc4AbKs4NtE=;
        b=lCALxQSiufp8f4dfnduylBkHL/sAkrkK4CFW1vNVPFYLwL3b3Pk5nClSDRPODC4RD8
         lAkvl72UwWkz+DxYxYQkou3/CZYaTfYMRG5iBUFfzR9nfksAuUNEFowwVKmVFC77lZK5
         loq98moF1fbe+ITYwc+mS61Y4q5wgjw0VoBZY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724389833; x=1724994633;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wN8gOGozgTRHYua5nqn1vSL/fYA2BgScIc4AbKs4NtE=;
        b=elyVWwaKwO4htvAViv1mNAlja6nBmRchhKCFDFpy001f/sX4nYKY8uDndts8ItFnRX
         8L/TfGlK9IzESQlsa0KEJNG4d+Kv07WMYdmH2WxBOhOEANgMLwJjhbKUoKc1Di8fqFiM
         aQ3QuT0x3mA6h5XZPvFvQUJnc6QE8dzGLjWDuy8mxLfBVp/D1DKF/kgnCMq5PDVQmD4w
         zHvL54Mjcx0Qw9SlnUJm73ztJ2kFJOtJ1KrV2+5IF9Ip1ExgSHqU1a2VpgOnftDz/ah4
         gQJAMQvrqT2DO+h0EHfZflMbJhwcT3QpWVEwpqlXVZkQS8VH8QQc4SfM2ew7O7ypY66C
         4QNg==
X-Forwarded-Encrypted: i=1; AJvYcCUJPVetmL2QyEvGHRA3yajEqSpQ8qEz/ofKyMkWL0U13I+tePoI4z9xlqcZ9zMW7skB9QN5b6Qb4KOl@vger.kernel.org
X-Gm-Message-State: AOJu0Yyv0kviE7E7cDhioNYq+3DlQpqyf9hXEZK216Jg/SWBXWhdnWvE
	XZPzoUlaeVlKLAcGPO5pe8JtB8J/FncjjQSSVRMjMChf3TT/FGaxOTDUgcGzSg==
X-Google-Smtp-Source: AGHT+IGg4uq6MI3y/JbYEI8jxZWGx3L02gsDpQuY7H9ymAL/QzcibgLlO8pq6VpSjkyB/mVihZCNtA==
X-Received: by 2002:a17:90a:fd82:b0:2d3:cbf8:9083 with SMTP id 98e67ed59e1d1-2d646d37f30mr955978a91.26.1724389832777;
        Thu, 22 Aug 2024 22:10:32 -0700 (PDT)
Received: from [192.168.0.105] ([103.163.98.66])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2d613b1f0d5sm2889947a91.55.2024.08.22.22.10.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Aug 2024 22:10:32 -0700 (PDT)
Message-ID: <776af05b-6855-4006-a3b7-804c5414cb41@chromium.org>
Date: Fri, 23 Aug 2024 10:40:25 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/3] arm64: dts: mediatek: mt8186: Add svs node
To: =?UTF-8?B?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= <nfraprado@collabora.com>
Cc: chunkuang.hu@kernel.org, p.zabel@pengutronix.de, airlied@gmail.com,
 daniel@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, matthias.bgg@gmail.com,
 angelogioacchino.delregno@collabora.com, ck.hu@mediatek.com,
 jitao.shi@mediatek.com, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20240822064650.1473930-1-rohiagar@chromium.org>
 <20240822064650.1473930-4-rohiagar@chromium.org>
 <545e9e80-5b38-40f5-9a23-ff5112b13917@notapiano>
Content-Language: en-US
From: Rohit Agarwal <rohiagar@chromium.org>
In-Reply-To: <545e9e80-5b38-40f5-9a23-ff5112b13917@notapiano>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


On 22/08/24 9:36 PM, Nícolas F. R. A. Prado wrote:
> On Thu, Aug 22, 2024 at 06:46:50AM +0000, Rohit Agarwal wrote:
>> Add clock/irq/efuse setting in svs nodes for mt8186 SoC.
>>
>> Signed-off-by: Rohit Agarwal <rohiagar@chromium.org>
>> ---
>>   arch/arm64/boot/dts/mediatek/mt8186.dtsi | 20 ++++++++++++++++++++
>>   1 file changed, 20 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/mediatek/mt8186.dtsi b/arch/arm64/boot/dts/mediatek/mt8186.dtsi
>> index e27c69ec8bdd..a51f3d8ce745 100644
>> --- a/arch/arm64/boot/dts/mediatek/mt8186.dtsi
>> +++ b/arch/arm64/boot/dts/mediatek/mt8186.dtsi
>> @@ -1361,6 +1361,18 @@ spi0: spi@1100a000 {
>>   			status = "disabled";
>>   		};
>>   
>> +		svs: svs@1100b000 {
> There's already another node at address 1100b000:
>
> 		lvts: thermal-sensor@1100b000
>
> You should set the starting address of the SVS to 1100bc00 and decrease the
> iospace for lvts to avoid intersection. See this commit for a similar change on
> mt8195:
> https://lore.kernel.org/all/20231121125044.78642-21-angelogioacchino.delregno@collabora.com/
Sure. Will update this according to the reference.

Thanks,
Rohit.

