Return-Path: <devicetree+bounces-162704-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C5BEA79878
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 01:01:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C3EED170FCA
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 23:01:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E01DB1F4C8F;
	Wed,  2 Apr 2025 23:01:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="erG22Kva"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E51091F0E36
	for <devicetree@vger.kernel.org>; Wed,  2 Apr 2025 23:01:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743634873; cv=none; b=sGb58HuKJThBwqRfUL122u+v2XqJOYRCbxwauW7uLoacR6kGZKd45IbNMksDALHs1nmBN72euJwEt81Kp04W8POcpJNHMCy98FbajFovAMEe1PwuTSowtFbTp6pHB5AHZ/8TzPqtBhqI2T8sTdO+1aaVc/+9C+l82BImN65wrhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743634873; c=relaxed/simple;
	bh=ae8HG5mamuJ6F6/+nBlRSOsXFultdkdpg9uOrzVgMHU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qRH+xZINzIz4hxicsdgh5g4Wb6yEDAZYiJZ7FZcBvXRsvTjKksLlLbW9TRbnddffjTpd/PMdR0k8sjQkYB8xt0P3Ad9bgOmoj7e0xkrN7oQugsW6q9RAVNDLV6TEs9uT/qeOX/rdHWSKwEO3vJMAXNGp4lBNiYeSWa8pFTL7Nuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=erG22Kva; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-3913b539aabso175773f8f.2
        for <devicetree@vger.kernel.org>; Wed, 02 Apr 2025 16:01:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743634870; x=1744239670; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ssDdQ9pYXMHr5I5/Xw/ZAgexifJSDigD1EuzFV2qg4I=;
        b=erG22KvaPBOLtLLf9ql4HsTCgHMSvgtwC5lqQTS7vDTAZtUA7XmW4YPQXhRifwtjFx
         UfWucTf35UPuRjkjIAjAESMRevW9BQoUrFVETT7mErooVPKiTz96fNpyHacOQxjLptYE
         XvekRZ3LDy6uWyk9Yu3Snmw5b7KRvoVPCeybMTMJKFwS0Ii1NBZ9ov6dpAp6Mzb2KEg8
         r1vs4ROGb+fPxeqc6s0F28EYZIPzwR0Qoda3ZGcTzSIJXyNuGYbwKZRsHeuqI0ODNc4m
         KEnaf+m4NutpJYUUBIqvRRJt42sAuiNR+V45jFHP8OAtn0kHug28h70YT98Gqfg02tS8
         HSAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743634870; x=1744239670;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ssDdQ9pYXMHr5I5/Xw/ZAgexifJSDigD1EuzFV2qg4I=;
        b=LCKG506G5eg/azETofTPVCAxNE3V2Cq3nyiHAG0q87Er/NutzhYF+eo7VpHVT63G7X
         xTzOXBOQg0PPXpj2lPrQ8LE7bucceYFqP8Ag0PE2IXtRzEGmYu8zeFAx0eh3Cf/0Utrw
         o4t+Hz80AGY3Tl+Veg9zVG8nJmsp0tjxSsD6r9bHOgQRTf6ge5MB1FVTg4X71XAr1ZL/
         HwONOXK37vjaXjLx8tetJa1XkO9zxdUGapsW0rcTJHS832tNou2L5992dZHW0VR8M5/U
         bcK0qH6Lke8HdxQ8CWFofCD/fc4LDkUafWXwnMjV70sBO/oKWt46BhGsu+TFDzTBdf4v
         N7Ow==
X-Forwarded-Encrypted: i=1; AJvYcCWZKBR7QSeMIgF7X5vWwPBvc1WZ5uLlpS1gzGPbwvrNs2pnosJm09biYIrjSZImCZ438y9vYNihPr/w@vger.kernel.org
X-Gm-Message-State: AOJu0YwHHQ/PAH5zYVBLh/PZsJWyD99/3R5sdxfwoAmsuK9Gb7FEXI/W
	6YrSB/2Hh23d0bHN0NaDHWpYTjNoQYD/arounfejNNlohF9yo05sY7qtXkQqWuE=
X-Gm-Gg: ASbGncv6O6SL9kEahdU6+lxZkQ4iV91IWb0qP4wA18g4Et/sDzHIsbs+WnMcqSkFCFy
	FlfSz87BstyW3ioRhcDHKYlT/ncWIZ97pOOF89mR8XkVa9UqjXhaugTH0S8CK0Jco/Vj2ynAHKI
	9bgdIJU8sr2mGqq1WNNP2rxAaEfTPycGdHxuF6s0/1BDSravVoEfrxtwxIZKqZa7hUPatZwCH++
	t1xtQTXw2b8lvBaq2z4ukOlSdUfHeltQhNQksAL8yZWBJr41m1IANVISfuWR1PIPb8zRTD8s+n0
	2DxPUZ4Bm3WbaOZX+1KQ4C5lENy4fE21DbtIidf2hB2HLsi+puD481Tud3r3gUXhhE5WMxPEfk+
	4wOTwX5vs
X-Google-Smtp-Source: AGHT+IHyj66xL8VsObpHLyziVGG93y/NYfcl9RGB6qeFeKmVhSfE7lLRhxrpfsHle94LdUZoXtf+eg==
X-Received: by 2002:a5d:64ed:0:b0:39c:1257:c7a2 with SMTP id ffacd0b85a97d-39c2f96b901mr215465f8f.58.1743634870250;
        Wed, 02 Apr 2025 16:01:10 -0700 (PDT)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-39c300963e1sm127285f8f.4.2025.04.02.16.01.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Apr 2025 16:01:09 -0700 (PDT)
Message-ID: <c449fba0-476e-495b-abbd-65ba2d44d590@linaro.org>
Date: Thu, 3 Apr 2025 01:01:07 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: watchdog: Add NXP Software Watchdog
 Timer
To: Krzysztof Kozlowski <krzk@kernel.org>, wim@linux-watchdog.org
Cc: linux@roeck-us.net, linux-watchdog@vger.kernel.org,
 linux-kernel@vger.kernel.org, S32@nxp.com, ghennadi.procopciuc@nxp.com,
 thomas.fossati@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org
References: <20250402154942.3645283-1-daniel.lezcano@linaro.org>
 <20250402154942.3645283-2-daniel.lezcano@linaro.org>
 <ffe49998-f809-458e-8eda-002d0c0fc32a@kernel.org>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <ffe49998-f809-458e-8eda-002d0c0fc32a@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 02/04/2025 17:56, Krzysztof Kozlowski wrote:
> On 02/04/2025 17:49, Daniel Lezcano wrote:
>> Describe the Software Watchdog Timer available on the S32G platforms.
>>
>> Cc: Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>
>> Cc: Thomas Fossati <thomas.fossati@linaro.org>
>> Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> Best regards,
> Krzysztof

I ran the make dt_binding_check but inadvertently removed the "oneOf:" 
after :/



-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

