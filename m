Return-Path: <devicetree+bounces-103672-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id ADA7597BB25
	for <lists+devicetree@lfdr.de>; Wed, 18 Sep 2024 12:56:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 752D5285AF0
	for <lists+devicetree@lfdr.de>; Wed, 18 Sep 2024 10:56:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2824817D8A2;
	Wed, 18 Sep 2024 10:56:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="cubQ4nhU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99B6A381D5
	for <devicetree@vger.kernel.org>; Wed, 18 Sep 2024 10:56:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726656977; cv=none; b=oyVRDlK14Mpu7Fmo3+sqNDABQ3F2TEDUFTsV8ZMY+sMLwg7vdP19RpbxkKB2fdpvZ/Iz8gg7Dpm1hLvekvl9xNYfQ/cAOiSW6sghN1b+Rgf7ECxJStDUCyKf4RNVSYlV1iGpJDgrzDO3HGUwIP+8CgrsvZpnE8lvg3YSRt4oKfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726656977; c=relaxed/simple;
	bh=1GAnHGD26ccjCUphmCxybd5/3JfQEutdlYE5pfnKPlk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fKKRDZfQ92/v0WFtD0qL7u5ubM8MB9GbFzcqrZ0F8WsOrIEZidYE3PHvrzED4sNmw0dTbvzh04Cj1zEaZZ9KJ41T8O0TfcXahxHLAgXuaeFOO6Te25+rmSAWzhiIp5wEQsFFwFsranO/c79sO+r6Tbm3s7k1/wWkxXN46qFJ1EI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=cubQ4nhU; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-71781f42f75so5724598b3a.1
        for <devicetree@vger.kernel.org>; Wed, 18 Sep 2024 03:56:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1726656975; x=1727261775; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=p41HDdPJ9Xqsou/GrXV93VQCKVWaaOB67+1yPY3lbP0=;
        b=cubQ4nhU/9ePBV9bQev71WQY6TVXsUKLFKEDaJ0IJUgWCLt0i9xDV4uut6eO07vV1O
         a/+26YmFpK9j65DZKfTF7UW5L9GOfnWVrQMUZQQzoQ6FNn9ENXqYAtjz6Ig+3q7opinf
         eXquHoDhsSNeivfs/+c8qVVP37hhihhYFN/P4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726656975; x=1727261775;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=p41HDdPJ9Xqsou/GrXV93VQCKVWaaOB67+1yPY3lbP0=;
        b=OLWeKZ2we8T0t0JnbV0WJhM2QPU7RDOSElSdyGZJtLSirCNN1rXc6pe38k7ihzhsRI
         ZbeXqRzZoDIgYwFvva/0y1OqLOgrA0FG6rviP2DVo1qzYKSRaI3SE5c34wdGF59w5LBt
         MEPXXHuFjanu6Xe6HO0sNNC9gXBRt2plE8V+g6HPwd9SnjyMQdmFzcl2VAI779HTV33v
         LhrBCLbONwpSXwnlWZ8qO/RJ+IjJRuUAX/+cChOIp+ysEoEx8lBvkTxr1JpX58EvgAT/
         SOuX/pao/lIr16tgaKOg+LnfybXdG18fV71qdgJLzcDEr05TmyCKEIcG0s4cGBhlFIwX
         wpNg==
X-Forwarded-Encrypted: i=1; AJvYcCX5YKjvMFKzM+pRlbcp4GLK2W+iTr/CYXiqro+1+DAqPxXmggeb7YdX6n6FDrHniAXNSllxTZn2d0WB@vger.kernel.org
X-Gm-Message-State: AOJu0YxkJLa+p+WgzlnbEXJoJEINuMEflHHi17OnXQYDzDQg0t26aanh
	ai/M0JOVKhC4mbuZPL1VQQMVG8Oxx1BEwVGEtv5VqgiJ/pMZCGRzu+YDhk47ZA==
X-Google-Smtp-Source: AGHT+IFhMb15QzWlbO320Kzkgs8u2zWlJt0MSXq3KFswpzmoxO8x4jWlVrgugevSX5yLlMwZDNzRXw==
X-Received: by 2002:a05:6a00:1906:b0:70d:2621:5808 with SMTP id d2e1a72fcca58-7192607fcb9mr33427847b3a.9.1726656974863;
        Wed, 18 Sep 2024 03:56:14 -0700 (PDT)
Received: from [192.168.0.103] ([103.163.98.64])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71944b7b754sm6505848b3a.105.2024.09.18.03.56.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Sep 2024 03:56:14 -0700 (PDT)
Message-ID: <110f6583-f76d-4c7c-bd77-cdeb21b78704@chromium.org>
Date: Wed, 18 Sep 2024 16:26:10 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: display: mediatek: dpi: Add power domain for
 MT8195 DP_INTF
To: Rob Herring <robh@kernel.org>
Cc: chunkuang.hu@kernel.org, krzk+dt@kernel.org, ck.hu@mediatek.com,
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kernel test robot <lkp@intel.com>
References: <20240911071722.558960-1-rohiagar@chromium.org>
 <20240916171107.GA605353-robh@kernel.org>
Content-Language: en-US
From: Rohit Agarwal <rohiagar@chromium.org>
In-Reply-To: <20240916171107.GA605353-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


On 16/09/24 10:41 PM, Rob Herring wrote:
> On Wed, Sep 11, 2024 at 07:17:21AM +0000, Rohit Agarwal wrote:
>> Add power domain binding for MT8195 DP_INTF that resolves the following
>> error and many more similar ones:
>>
>> arch/arm64/boot/dts/mediatek/mt8195-cherry-dojo-r1.dtb: dp-intf@1c113000:
>> power-domains: False schema does not allow [[55, 18]]
>>
>> Reported-by: kernel test robot <lkp@intel.com>
>> Closes: https://lore.kernel.org/oe-kbuild-all/202409102119.AYvaTjUi-lkp@intel.com/
> Fixes?
Will add in the next version.
>
>> Signed-off-by: Rohit Agarwal <rohiagar@chromium.org>
>> ---
>>   .../devicetree/bindings/display/mediatek/mediatek,dpi.yaml       | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
>> index 3a82aec9021c..07acc8a76bfc 100644
>> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
>> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
>> @@ -89,6 +89,7 @@ allOf:
>>                   - mediatek,mt6795-dpi
>>                   - mediatek,mt8173-dpi
>>                   - mediatek,mt8186-dpi
>> +                - mediatek,mt8195-dp-intf
> mt8183 is also missing. There's a patch[1] to fix it, but it's wrong
> given the recent changes. It would be best to fix both in one
> patch/series as 2 separate patches will have conflicts.
>
> Rob
>
>
> [1] https://lore.kernel.org/all/20240912144430.3161717-2-treapking@chromium.org/

Ok, Sure will have a new (separate) patch added here to include the 
compatible strings. Thanks for pointing out.

Thanks,
Rohit.



