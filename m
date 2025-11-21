Return-Path: <devicetree+bounces-241049-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AFD3C78D0E
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 12:34:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D178A4ED904
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 11:29:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D81234CFD3;
	Fri, 21 Nov 2025 11:27:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JIkOPlmJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AFE334CFC1
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 11:27:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763724479; cv=none; b=sbVFZHx9FPCJvy7e2buhybpo71LV4UbAPHZAx4RnyB+FW0Uu2zeo8jGGIYFpMCT73EOGjvgAn8NvR++xkPl1OFVS57rl2P4XLZ1xpxlyuWXbcL0jZMXWYuaF/y8kEROj/I2pGuKYowTUVJ6CWFO2Ik+i3L5vpjUUnVGKfKwoWl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763724479; c=relaxed/simple;
	bh=FR/l64BfQtWcy5AmGa/x0Kd+BcD5MaBGaBHWSqd/0I4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=i/KRx1KYs1IpSZbaVUfqb4YHj32Juz6mKDIdjZGzEktBqgSbYFYkTQt1HzCVQbTgKmPX2DklD3lcan1fyTWzP2ZuoWG1LdtCgVKE47RlOqmgkTh2XnG3NW8TJVu/jgTf9BoDVhgQPQ+UsBK3dW3nMpnf3r6WY+eiPbTxBigBKYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JIkOPlmJ; arc=none smtp.client-ip=209.85.210.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-7bb710d1d1dso2854030b3a.1
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 03:27:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763724476; x=1764329276; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1R2yvLJT9l2sebGa7bGBLAEk2UsFTKZ/XGXxsCh1YW8=;
        b=JIkOPlmJU4yMwEm0Q/rJCsJtNZOFHhTRj3qJeP3miCbTw66YUADhTzPObPOFSRLgCs
         PPnINZ3RZHjy0IE39DxdBC8ij2J8Crvp7TP7iX7Aq7EhLwtHBzpzLHnPkp+9Vmqath6h
         2X0Iua5WmymRsU6U9gtI+eXXyjFtcoFRcRF5da4U77DCBpoymEO+0jJ0dK9w6IUKCVQQ
         hfMP3EW/mPgKi18kd+CDNBYJznZ5CqMVfvo3tYLFzc+sNEsYpWQKJDZE19BGinY2ynPr
         hGmIijDurGzDoUM4Xb4a+zbeOrJFEWpkxy0/AFkUEC5cazs9NAh5YbKjPvSOBIJmXbr1
         iRZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763724476; x=1764329276;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1R2yvLJT9l2sebGa7bGBLAEk2UsFTKZ/XGXxsCh1YW8=;
        b=mz7g2o9UIIkdpmFlCl3u+AeAEIE8GXwO4xI39URUmqDTcPWSFi/VeBX8wIaBX+qP6V
         idfbv7gD4pAKenfSHQoBVDa2PbPKc+UmkwsYvvX3M4Y688WkrA1MD+E96B5YpN7u1Ot6
         dywHxsb3J/cmcdPiVgS2scIQLBF9zmJNqtCW4cq0OyWBepJI1gC7jjqrdhYZehWGi4x3
         u3hKqJPy2w/bSA9CdQtP7fGhOAQ0Em/2Wrce57eFtmdFpHxdSvYXLKMI5E/0o8qI8Jg/
         bqgfkyQXmI1uvU70tLiLXo4OSyf0ejDcQRbyjrtwRzs5aLm0wtKorl6axyKDXf/tQG/B
         mTtA==
X-Forwarded-Encrypted: i=1; AJvYcCUCYnyRcyK5t5RoOpZ3lXVG3iTP/wqfSnK2s4LSET3vyHFXbMk98I+3TDPB0OhGY3UkGHP9wOGJBapv@vger.kernel.org
X-Gm-Message-State: AOJu0YxTRhEzr39sCfkgcrzFyXoMQQuhAFIsxhdtvd41lBZyckKsntoz
	HJELJZHi2vNSIUME2yobjIMn9+Nl66wBJZb2evAvhlBQS5BAImnF0PJo
X-Gm-Gg: ASbGncuOgWTcYuWHmbIMernnAwIJyZClMdieAxiv752pQt3ERfBZq7aOIV6LH//pBuH
	RZeh5nriZNMtRxNvRnL8HUel2IUvDuRVH7ynOYMv7VRTtvp4QlCbkdDHh4HNDCE9g/zY3lHDUT5
	DuZKvX5lf6nz7A+/9tfGJaRv13fFbNx1IHxtEbB4dFh0J/me3/9LGO+jexetIVZPUqTTji5+45l
	AQdGb6qgCENC4G55QGtcwkbUgzvIaxNNnBy7ZPS+qqrlQbNINlk2G7KGKJzxVQEjwMmfV104ds2
	OAEihOAAe8INU4nn5wCkDsS/CAgr5L6F9Qqh2TSGgnc7ceZD3XBnwqFh5+BV8nMJithMy2V4WFp
	1DfwdmYOua1e341v4XWqFM74g4S1PnIumrankHNeJ70LH0POJN1Z5snib4uwvbZ+BErK1ZBowMx
	RImJRil65cFEg8RwvSU3mWR5ulI+J7cP0UXw+bxgRHtdv07fSN0HlXsyqoW+SStcUZ
X-Google-Smtp-Source: AGHT+IGx1kj8XCwGhrb2uV3Nnb7QEjcdqvgrN3fzzNee0TinoDaJQazabZ6HTuolBNuWue92taBcWQ==
X-Received: by 2002:a05:6a20:3ca3:b0:35f:cfb:1efb with SMTP id adf61e73a8af0-3614edd7f17mr3004978637.29.1763724476323;
        Fri, 21 Nov 2025 03:27:56 -0800 (PST)
Received: from [192.168.68.63] (104-12-136-65.lightspeed.irvnca.sbcglobal.net. [104.12.136.65])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-bd7604de4cdsm5274052a12.20.2025.11.21.03.27.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Nov 2025 03:27:55 -0800 (PST)
Message-ID: <a187acac-d2ec-4fc9-9a5c-178590197f84@gmail.com>
Date: Fri, 21 Nov 2025 03:27:54 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] ARM: dts: qcom: msm8960: expressatt: Add
 Light/Proximity Sensor
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20251119-expressatt_nfc_accel_magn_light-v1-0-636f16f05cf4@gmail.com>
 <20251119-expressatt_nfc_accel_magn_light-v1-1-636f16f05cf4@gmail.com>
 <742601dc-32d8-41ff-8e2b-a960f6fe77ab@oss.qualcomm.com>
Content-Language: en-US
From: Rudraksha Gupta <guptarud@gmail.com>
In-Reply-To: <742601dc-32d8-41ff-8e2b-a960f6fe77ab@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

>> +
>> +	i2c-gpio-sensors {
>> +		compatible = "i2c-gpio";
>
> Are you using gpio-i2c for any specific reason? Would GSBI2 not be
> connected to this pair? (I am not sure FWIW)

This is interesting! Downstream uses i2c-gpio and I (well, Claude) used 
that. Seems like downstream doesn't define a GSBI2, so I guessed it's 
structure in the dts and it seems to work! Thanks for the suggestion.


No GSBI2: 
https://codeberg.org/LogicalErzor/Android_Kernel_Samsung_D2/src/branch/cm-14.1/arch/arm/mach-msm/board-express-gpiomux.c#L411


>> +			amstaos,proximity-diodes = <0>;
> Try comparing the values the upstream and downstream drivers write
> to the device, maybe you're missing something
Yeah, I'll continue to try and do that. In the meantime I'll send a v2 
so I can get further comments.

