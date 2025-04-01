Return-Path: <devicetree+bounces-162156-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DB730A773F6
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 07:37:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7990E166E64
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 05:37:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FC141DB55C;
	Tue,  1 Apr 2025 05:37:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="d8YhWPxe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A66091553AB
	for <devicetree@vger.kernel.org>; Tue,  1 Apr 2025 05:37:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743485825; cv=none; b=P5YWsG1TVkXVtrUZYDBo6SSlO1h956sqzv5nlTNz92T4HOEJ7CiiY+BzA0K6npboJwtgR/vFUvmcECQj4OQi1pspgP5RNbp15HytYgxe0AYcUhFWlEOkZxtQvW6jwYtrvxRpmpbIbiuDt81UoQfacRCtbyKkzr70RJ/cJai/XfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743485825; c=relaxed/simple;
	bh=JVZidevUngCAlUzSm2CT29tmFHp3F9Ed94AR2VALx4s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SUe5qkbIcmsKkAAyc+v/ZNr/zaY10dXAjUN7NWDbNz4hIJyqnQLssiEyrLg49hYz3d9xVy+6oJv0fZuHwFop6RCXWc6U6sLQ3l0kqvJto4PoDcDesV8NMe5p2psQ3hiNbjPaVhw/UMBjFtf+yThGzLYFjf3ZUYoNr/0riA+Uyuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=d8YhWPxe; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-43d72b749dcso4104515e9.1
        for <devicetree@vger.kernel.org>; Mon, 31 Mar 2025 22:37:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743485822; x=1744090622; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=01iB6URHrpWHBfa0GAIF+nEI7/XyRofj2bP4175TeZs=;
        b=d8YhWPxeyTIcjUKwj4Nr6yf0RtY02LJVIBpfhcsyPt6OBmXLFzvVtyLFm62qK2nQZh
         1mCdyLMA7jPfZ5U8YU7OtTEzvrVnfbsW4PF1MeUYTtMnL34NavA9of2s25aNjGEs0fj+
         LFBHo6to+OlepGB4XBXu5vW5J2h1L8EunbJoYuQQXsLvheNbqkGQDcJgiN59cjMa2WJI
         hqBkwq55Ql8DYGMw3Ro+LZEhbqdJzQJ6DqyYSscOOsnnDydVIY1yAZtHpWZrbEu1oZTH
         27QB/TsRWJGq7aGYYiv7ElZ36jYXCvPCs9ihgB1XUyEe+e/JrIxPTHh5bsugZSyCd12T
         /16Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743485822; x=1744090622;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=01iB6URHrpWHBfa0GAIF+nEI7/XyRofj2bP4175TeZs=;
        b=pZ5v0tA82l5jzMUjRqGpLGjoB16FXrJOLUTDh6vTd0ALcSAQlJp1Q+ui/pAgG53IOg
         +yEdKBeIPMHVXdFM0EqybH70IL2T6j2jG+GNtxnINnxbXoJkkaQ14TM8Mor4tUEZ7J7a
         iuEz/v92K8VUsNSQ06UASqj259tGb+DNulEwdMnVsq4zi04fNyksYTbLEuZFMV8RuV4H
         Y5N0HIZzD0fdGREOHThWnU1nE9n3aooU5pP07istvrAaKNWpw0PuD7ReyAVZjzwXVeVp
         xXpkRVmbXD5emUC4YaV02t/5JawlurrIyg/kbOStNM7rk/xxYsG4be62LKDdwfUYafUj
         YqBA==
X-Forwarded-Encrypted: i=1; AJvYcCUa3chHXD9jVuaHBRECUBYMjBmIrGeruhZDMYhCsdFSIG1PXYqtH5xaCkwMw21s+zSAy2w/g2QyLG+N@vger.kernel.org
X-Gm-Message-State: AOJu0YyNnPbZ7J46fsLT0dXfmBHdn/WlfnK7ZHtyqdSStiY7+auuXcTK
	V53M3F7XYWvAQ2aF+0PufOJcDZUWilHlP7m82Vrl28SvywDHc/oWwGuyLJnvYcM=
X-Gm-Gg: ASbGncuWRjtGaIwnpdh0mHpZC550TmRrU4dpSYExG4mT7BJN8Gqstm1ewe/1RnTg9h0
	EDPokHU32rGC/6ewQIti12RpMsVyULnZBwGcod4uRHkeoYTFq4CgxMFD2pJNlbtA7ft9bvGsZ9a
	2TwGu8LnIaMEJINLQt3jEiqBZu47tN2G8ozVJ2I29vqNRVWUKIshQ0E6lH1VoeklIF3agtU3t6z
	cXuRNRSSfEeDL9s5OGgqACn9ntsler/PsMzIBBbEJvfP6gHmz6Uzo9qkyLMtJSoeh+BdDbWF06x
	18a1umACfiMhsIyt88AchfG/V0zg/FigbemJ7N9zAoWRKBPRgvpwola3XG/P3bU=
X-Google-Smtp-Source: AGHT+IE4yTXgJb7kf83ZNcToY9GsgqSHspbGawtIOKUIsde0qt4ASpveIQGP0VhqlWUOIBws0phEVA==
X-Received: by 2002:a05:6000:2913:b0:391:2b54:5fb5 with SMTP id ffacd0b85a97d-39c1211409fmr3321404f8f.10.1743485821816;
        Mon, 31 Mar 2025 22:37:01 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.198.86])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39c0b79e467sm13204998f8f.79.2025.03.31.22.37.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Mar 2025 22:37:01 -0700 (PDT)
Message-ID: <3af09bc7-e088-4d49-b7bb-ffa7aae5557f@linaro.org>
Date: Tue, 1 Apr 2025 07:36:59 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 3/6] dt-bindings: usb: Add Parade PS8833 Type-C retimer
 variant
To: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>,
 Bjorn Andersson <andersson@kernel.org>, Dmitry Baryshkov <lumag@kernel.org>,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Abel Vesa <abel.vesa@linaro.org>, Johan Hovold <johan+linaro@kernel.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
Cc: Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heikki Krogerus <heikki.krogerus@linux.intel.com>
References: <20250331215720.19692-1-alex.vinarskis@gmail.com>
 <20250331215720.19692-4-alex.vinarskis@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20250331215720.19692-4-alex.vinarskis@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 31/03/2025 23:53, Aleksandrs Vinarskis wrote:
> Appears to behave similarly to Parade PS8830. Found on some Qualcomm
> Snapdragon X1 devices, such as Asus Zenbook A14.
> 
> Signed-off-by: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>


Looks compatible, so express it with fallback.

Best regards,
Krzysztof

