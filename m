Return-Path: <devicetree+bounces-96412-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CDF6D95DF24
	for <lists+devicetree@lfdr.de>; Sat, 24 Aug 2024 19:05:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0023B1C20E62
	for <lists+devicetree@lfdr.de>; Sat, 24 Aug 2024 17:05:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78B883FB3B;
	Sat, 24 Aug 2024 17:05:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZbgGzLCU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAC7336124
	for <devicetree@vger.kernel.org>; Sat, 24 Aug 2024 17:05:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724519130; cv=none; b=krx2H21GXEzWeZVoD0EbE3G5CBW3SejB1mdsznW5MCGtGy5qpc22+goyHVC0T/p6yykiimx8LCwxoFlOS6sTma9H5v/+PvoC/eMC92BEpL4u5qAAiQvaBThXzLktgQsBYL07eZdRnO6R/RH8cGlVx4uz5RdOxqvYjYvX5S3MMP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724519130; c=relaxed/simple;
	bh=YZb3KQcDwKbRfBpA1jL8YOTnhsu2wLksJptIPtsdgs8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cQbd1dTegle2kA66coIpOErmeo4qN87F04+rFRLrNfwGmuLDXbi7wmmh6wJ1IAVBIGkpw/NOAkTm+gNFKwjgt5CTUKZ6A9p8jTs7xwI3Sy06cRULQRbXVBVNc8XMjf8fFmi5jEJ3U82hxpry9rUCX5xknyu2aquutan48vsHiCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZbgGzLCU; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-a86b46c4831so87437066b.1
        for <devicetree@vger.kernel.org>; Sat, 24 Aug 2024 10:05:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724519127; x=1725123927; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Y1wqIXwilhWQe12ivt8ypdTnldhiR6eZgAaKOzl3oFk=;
        b=ZbgGzLCU8NeN1kyPzEfZytA/xl6HaCYC6XtXQdS89SSfavtANmLmWN9q/H8Q1s+xyj
         ZNOTBZZknjRbAjkX3XROvIuzLxxUaXaCZ1tpBQldyjM4vA1Dm1+k2xvwkiiG3h1V9VTQ
         8puTMyY1YDu7Lpw5HE7PZHdLesG55ApEmHWTCb8HSAfEOtv0MpQ3Q5TMgJ0+KA0lAXrL
         k2FfYM+S1pa5cVeZyZZ4T9YKLXpLE49thy/d9eMQdDts7KGJE2h/g2rna75gVzut8v5M
         7ylGX4TUhp7xt9BP4by0Zn7hfo4e2gontjVu143Ex/JR/XgReUBT4tdVVsrPITnZr0ek
         dS8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724519127; x=1725123927;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Y1wqIXwilhWQe12ivt8ypdTnldhiR6eZgAaKOzl3oFk=;
        b=TLc1+K52TxZuKZowX9Ekhqt1QIF90wADyIWdD9pOSjhkDVPFl5c5DD9mzCmwAam2js
         5wQW9BU0FpklFpi5OG8xzpXYtVk7oeLH4l4cne36ackqMdGf/NjvIBEw0IZ9TTAcg7iO
         iAXTmyU8cfCGVMBzQ6X3KG95b6dtaW5XmcsMkq6aJediSxfl+p+SpBBUhb5t6EirvVei
         2hJfDBb+7Z+QhtSGopDL2YTadcdYIix3nkxZItlOf0dnpsqgOeQjkDMTrsvDebLqjS3i
         /x5zQYhvdwItjKc6n/0XuXq+IU4zZ0+J2bBKlX8OTEqVbUzkdGLZ7rWbu/D3D7DlyMVZ
         nlRw==
X-Forwarded-Encrypted: i=1; AJvYcCWTpspyowQqmPiq6Y/OPY5o48VAGU0QCKONK/XaxZu+jASxYtbzve46rvTNSlkI3gB5joj3yUA87qLL@vger.kernel.org
X-Gm-Message-State: AOJu0Yxxpsc6A0xJ3zl+DNVJb9fxacQjopkxLW85nVBfyS2nAgY3A1vn
	IY+iVGJN/f0vgFyhRIu+xyLinI2CruFYMnfvT2vTtkV2cRnx+dARgNQ/OW2+9sc=
X-Google-Smtp-Source: AGHT+IHt3Su7ap3ryr5NK4u0osd07i4VrChxnechoJXjiVeQ4wUl6du3KIaeBLPXMzicWs8zA0kISA==
X-Received: by 2002:a17:907:d15:b0:a77:cb8b:7a2d with SMTP id a640c23a62f3a-a86a54d1920mr377553966b.49.1724519126872;
        Sat, 24 Aug 2024 10:05:26 -0700 (PDT)
Received: from [192.168.0.25] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a868f43661dsm423115966b.100.2024.08.24.10.05.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 24 Aug 2024 10:05:26 -0700 (PDT)
Message-ID: <26b7fd84-34cc-485e-83eb-21daf99020ee@linaro.org>
Date: Sat, 24 Aug 2024 18:05:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 00/13] media: qcom: camss: Add sm8550 support
To: Depeng Shao <quic_depengs@quicinc.com>, rfoss@kernel.org,
 todor.too@gmail.com, mchehab@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org
Cc: quic_eberman@quicinc.com, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@quicinc.com
References: <20240709160656.31146-1-quic_depengs@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20240709160656.31146-1-quic_depengs@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


>    media: qcom: camss: Add CSID Gen3 support for SM8550
>    media: qcom: camss: Add support for VFE hardware version Titan 780

Before your post your next version of this series, please make the patch 
submission titles consistent.

e.g.

Add CSID 780 support
Add VFE 780 support

Mixing SoC versions "sm8550" and/or including "Titan" - what's that a 
reader might ask - should be avoided.

No harm in including "Titan" but if you do, include it in both patches 
and explain that Titan is the codename of the camera block in your SoC.

---
bod


