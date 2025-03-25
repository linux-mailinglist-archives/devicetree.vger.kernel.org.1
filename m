Return-Path: <devicetree+bounces-160534-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AB33A70250
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 14:42:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 386D319A79F8
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 13:30:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D516C25BAB0;
	Tue, 25 Mar 2025 13:23:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gqDo4yAn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BAF919CC2E
	for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 13:23:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742908994; cv=none; b=lqeyXLyj8lh8YOpbbYmd03krvxEGbjPp8k0xyk+AHW4thadJgQpbZihLrLGcxFFlvGLDna1hghGiai46VL5TyaTBErUN7KwY1p00o/tIhTSOgZCzEp8H+AQOQHZ1IxGWZeL8FwpAwVhX/5rn6PTnP3w16gEaPlJGUo+iFiPCDMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742908994; c=relaxed/simple;
	bh=bKVYE/T6NcIGu3cZrPKAkLor3MGJL9W7Ab8jFOEairg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cAxpFBhQ40gVXKbPlIfl4gB7ZdVDkLufHi860fb0WUFG2V51ZCsDqsglT/tFkmHVmrus7JO8KrxNPJgr751/6idKctRM/RJlKzX8p2xyidl+g9W1Jd1th4mY+q68+p+4TTGY9sMPtRWtkBJlU4H7S3ihtpQbfhb+a3c38/Wcj30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gqDo4yAn; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-3912c09be7dso3749961f8f.1
        for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 06:23:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742908991; x=1743513791; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rnnj8guc/r23I6QAcBNhKNDl+BvAD7PlamUPifu4Lvg=;
        b=gqDo4yAnpYNJhZGDkKCCeVSb/1GreZGo116rv2M80/9M9juxfj5wIYECHgQ8ZqzKVO
         o+IgoNOCyh3suqUNhGuce8NF0Xlk5HZGJJH9AuPkxoCRnx42+zmTwPspCYXWqUcVvfv4
         ClsJk27FCW/u0BdNrLoW2IqXrXMm2f+5nwnn+kNdTPnRsulhdIrG/ShX4Gzul06uQS9l
         +fJod2SmMXnZGurMET5o0/ozbFul7yIFjGOnI+JF0e3TWtvti36xZ9wCNsJSVQ5lMeMT
         HlwDsTFuc+vLVM99T7o8741KZCv8erlCYzeVJxShf9A4boNgUHZkIG7QlJsrghucGTBr
         7NTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742908991; x=1743513791;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rnnj8guc/r23I6QAcBNhKNDl+BvAD7PlamUPifu4Lvg=;
        b=bZYqdyF1loBDOdSsBnq0OaHx03pF1DTAbr6ctgtbHJXr8n9Bal9/8vraE8aWYbiArR
         SwhoiwqC5VaA+CNgDP4GQLwDnCdoAoGd51u+RhilwCxnethpA+NEY8pU8p38q4EEaVX4
         uQUuMXB3BaAromWWBFZvkmHETKvtT5XKMlR8KNa+CpQVwMaoM38PhZb62yQut3kWMqUI
         zI3ljEa+wWxAWhF4nG5TyoND/w1zdITHFeu0Lb8DCZfF6fqgBysLdl75L7/hVf5+rrqS
         Toxh08zp6Fba8KwkbE8tOoLpEZAGkggM7ivMM0xZxqYsry8UOfNBNRr0jRJGK5mdQmeg
         jF5A==
X-Forwarded-Encrypted: i=1; AJvYcCXdrazh4/tMoLwgxhyWIxK+N9bDN4NSW2Jo4jFo81mt0VnRAP+Gr9SwhmYxicSM4zHziCWNGJkPBtiM@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5za8ra4yGgCNyh0nDwENqeEZNQgVucGVB3k7kj2DLlVx5tuKe
	n91P2ryI5RoXF83Wqz95LzrhHI+8J6Ywoyn0BXLkpGPPoqD0l2J/O4wLoIq3Q8w=
X-Gm-Gg: ASbGncvfS8tOyfkdmnT2Ylt6pGD7dp7LXlIk5SLmlCGzhJkxGcbyj2uEkUpOf2rOi+6
	xeTeN96m9H9OuMiuH/h6vX0549MtFeW5Tox7ABLogFuppb5rVqqZJ1qQ7O/CUzPJd+TiJ4bp8TK
	EMnu7hYSrFayb2yMgDBv3c0TBp6uiAYnhjv2XaSXbG+n+4NS7TVHYWL1JoCWy57EYtGKtnQf7v4
	amztEbtKZxGoT03vAWcRTSkIEJFTrR4Cl4DUncRorTdGxJ+iJaW5PM8q4ZqQR1Aor4Ud6tCrWRz
	kvPu4jkloXOLo1LrpWYnJA4iV6BhsQWTDG4VAkPNEvkkF2KhsRwYBioh3LKDjbuIbVr2MTtN+lA
	=
X-Google-Smtp-Source: AGHT+IGqEw79oUCCpFPjvaE0rhu3IpGoUoLYUQBasFQeCPtItEofwSci1Gugid+vwciyZDzyVaQTrw==
X-Received: by 2002:a5d:5885:0:b0:391:29f:4f87 with SMTP id ffacd0b85a97d-3997f93c495mr13385193f8f.49.1742908991354;
        Tue, 25 Mar 2025 06:23:11 -0700 (PDT)
Received: from [192.168.1.38] (i5E863BED.versanet.de. [94.134.59.237])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3997f9957aasm13931016f8f.10.2025.03.25.06.23.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Mar 2025 06:23:10 -0700 (PDT)
Message-ID: <48bb62eb-8aa9-465c-9e77-c0b375df0c9f@linaro.org>
Date: Tue, 25 Mar 2025 14:23:09 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/7] dt-bindings: input: syna,rmi4: document
 syna,pdt-fallback-desc
To: Krzysztof Kozlowski <krzk@kernel.org>, David Heidelberg <david@ixit.cz>
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, "Jason A. Donenfeld" <Jason@zx2c4.com>,
 Matthias Schiffer <matthias.schiffer@ew.tq-group.com>,
 Vincent Huang <vincent.huang@tw.synaptics.com>, linux-input@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
References: <20250308-synaptics-rmi4-v3-0-215d3e7289a2@ixit.cz>
 <20250308-synaptics-rmi4-v3-1-215d3e7289a2@ixit.cz>
 <20250310-hissing-vagabond-pegasus-cc8aed@krzk-bin>
 <3c5e12fc-eb91-46e8-a558-9896f0bdcab4@ixit.cz>
 <b3a5ec89-0125-4b01-8cca-69b9985b6089@kernel.org>
Content-Language: en-US
From: Caleb Connolly <caleb.connolly@linaro.org>
In-Reply-To: <b3a5ec89-0125-4b01-8cca-69b9985b6089@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 3/25/25 08:36, Krzysztof Kozlowski wrote:
> On 24/03/2025 19:00, David Heidelberg wrote:
>> On 10/03/2025 10:45, Krzysztof Kozlowski wrote:
>>> On Sat, Mar 08, 2025 at 03:08:37PM +0100, David Heidelberg wrote:
>>>> From: Caleb Connolly <caleb.connolly@linaro.org>
>>>>
>>>> This new property allows devices to specify some register values which
>>>> are missing on units with third party replacement displays. These
>>>> displays use unofficial touch ICs which only implement a subset of the
>>>> RMI4 specification.
>>>
>>> These are different ICs, so they have their own compatibles. Why this
>>> cannot be deduced from the compatible?
>>
>> Yes, but these identify as the originals.
> 
> 
> It does not matter how they identify. You have the compatible for them.
> If you cannot add compatible for them, how can you add dedicated
> property for them?

Hi Krzysztof,

There are an unknown number of knock-off RMI4 chips which are sold in 
cheap replacement display panels from multiple vendors. We suspect 
there's more than one implementation.

A new compatible string wouldn't help us, since we use the same DTB on 
fully original hardware as on hardware with replacement parts.

The proposed new property describes configuration registers which are 
present on original RMI4 chips but missing on the third party ones, the 
contents of the registers is static.

The third party chips were designed to work with a specific downstream 
driver which doesn't implement the self-describing features of RMI4 and 
just hardcoded the functionality they expect.

Kind regards,
> 
> Best regards,
> Krzysztof

-- 
Caleb (they/them)


