Return-Path: <devicetree+bounces-158974-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B34D4A68D1A
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 13:42:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0E3B1189CB2A
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 12:43:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5A462561AA;
	Wed, 19 Mar 2025 12:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="xgTuQ17q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f44.google.com (mail-io1-f44.google.com [209.85.166.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFDC8255250
	for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 12:42:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742388173; cv=none; b=kjqq/qEPzT3twOU9V4CgWwkW4JxiwuDkoG1rvuB4hB4A9Sx4Ul4LryRB71zKPA0/y0KV/I+kNXCZYTbg97yHMQ9dqTzvxotS+iFrSKukXSLVX9AezIzjQgn7FCr8qwGJUVdoZAIqwj+APuYFmHAIxdNNrJxP20V/ex/c0bFmJYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742388173; c=relaxed/simple;
	bh=fZ4N8rOOZtziflSX/PfQXG9Biqs1R/I42srqwO5HUfc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tnstaghGbB1cayFRMnNEBA4BpKA6LleqWTayQHT4gBBbDWEQQSTEQgFMV1impzlJGXJRFU0On6CEZnRviXhaRlK1spPPdorLbcmsh/vCsLVyDQQw5JRzJnJQ8QjThxKVFyrRVHMA7dM1DUDXfe9osWeAn56uhxzIzzLJNfO0i+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=xgTuQ17q; arc=none smtp.client-ip=209.85.166.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f44.google.com with SMTP id ca18e2360f4ac-85dac9728cdso184545839f.0
        for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 05:42:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1742388171; x=1742992971; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kyeWtEw8zSEmdt2B2rWBlorZy53Vw89+CNeJItSMOLA=;
        b=xgTuQ17q1KtG+lF1gOtB3V6eu2L3aisyk5JioY2J9ZOSXjsfK+zA9M1q9/aRht1CSH
         SNPE7WhB5aZdLzfuRJYw/od6WXmSA41L7xSwWOWVbcBURI4ains2mzZ8UaJssGGKkGLo
         5HN9rFGi7kVqSg2sdaJ99RmMCOn2aLrrNlgufq+0GnJfRURvfr2WgFsPYxTnn9FQyiqn
         TKgON9AB1/rxtKznsaKOJbNbTypHRrQfMaFSCMZU1lFRBt0aXbax2TxaAmhIREuXj5jE
         lZD92Xl0aNZJISmtortRs5nhypmHlWyulTmlltOgy2QHAWeL8MC0LTrs8IWL5nW6+z19
         4qBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742388171; x=1742992971;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kyeWtEw8zSEmdt2B2rWBlorZy53Vw89+CNeJItSMOLA=;
        b=DF3RlXPMDSgeuf9y+ZOLxnwDS6nxPLYHv8+hSGYj4/MxG3v3cERYAQBSrwxz+lPtGX
         wOEffYioIJ1S+DqC21+G0yghawYfz3aYFLUz5e7XyjQKQXABT+6LJ8KFTg6mCvdyG/JR
         PYDOkQy/DNlSyn5mcboMp0GL/mFWmiS8XkwsZd9ab2OqrMC+VIXpdPlGYVpagut92+gK
         ASdgNGGgqyiGsyF/f/7OOhSq/35YjiNK19bIZ2/u2iGIN7bo4evBcvskjkj2GX/pIAtl
         PGGvjJn0jDhisif34iC98pTeGBjkSzEBO8G7Da9/lBMmfTno49GYbK0/cPdYLusVtWPb
         TEZw==
X-Forwarded-Encrypted: i=1; AJvYcCWQSsm0TRoIpooj5Egu4kfEP5nrU2rBrYhI1/qAB6clgowMqdobssOlukKGDOGAX3QgnYaM2VZmtHfZ@vger.kernel.org
X-Gm-Message-State: AOJu0Ywu44jAXdOr/Xgucjr+aHkqCqoiSeBuvfUZLZzmKDMRgrv+9+jt
	srbuD/dF+Zw6X3vJfq+LBVz9Gg8g4baGxwtMeDAGozLeZqzI4KuzLyyA9SNr1mU=
X-Gm-Gg: ASbGncsfCZPEnxlgAE3fGnyKnDUF4Uhdh5aaS6aZ/s4E+7OT29i2dTYJSeMhUZg6qmQ
	8lu1q1HmxHX7TtuwTO5ZoPNzWrwTHm6+QqJa55p2nHvDKHHqV/aE4jSGQndlEBdjIuYAGJU5Jj6
	5VZ57MSdMxfywUFbE8pBWPtM/BR32t4UjGReyfE9RcAcUZdAHBcv0TI685UZ00+l5tEi52iLhmC
	I4M0PKTAwfy3OFeG4yXW0CbzapfMWEffEoXSZpUeBVBJDb1Z4kM8u5i2fjRGfVMVSXZwqTPR3dD
	HE9v0QZ9OBK0oznpFjjq9LC2cOdRmBCNQn5/2kcOxx6F5pLjbliTXeX79CVF0zuWqpMqgVrIt8b
	Avmt9rAu7XoZrZF2qoQ==
X-Google-Smtp-Source: AGHT+IH7sjljQM+QmrKBokA3matC2RiNwzx/l2tsu1F5XWLbsNSdMzt3SBx/tCoCiYaMZ1SyjlQ1fg==
X-Received: by 2002:a05:6602:388a:b0:855:5e3a:e56b with SMTP id ca18e2360f4ac-85e13870076mr284771939f.12.1742388170792;
        Wed, 19 Mar 2025 05:42:50 -0700 (PDT)
Received: from [10.211.55.5] (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4f2637fb184sm3185854173.92.2025.03.19.05.42.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Mar 2025 05:42:50 -0700 (PDT)
Message-ID: <967f135b-9592-4f85-86f9-5c3e31123c3f@riscstar.com>
Date: Wed, 19 Mar 2025 07:42:49 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 2/2] i2c: spacemit: add support for SpacemiT K1 SoC
To: Troy Mitchell <troymitchell988@gmail.com>,
 Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>
Cc: linux-riscv@lists.infradead.org, linux-i2c@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 spacemit@lists.linux.dev
References: <20250319-k1-i2c-master-v8-0-013e2df2b78d@gmail.com>
 <20250319-k1-i2c-master-v8-2-013e2df2b78d@gmail.com>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <20250319-k1-i2c-master-v8-2-013e2df2b78d@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 3/19/25 4:29 AM, Troy Mitchell wrote:
> This patch introduces basic I2C support for the SpacemiT K1 SoC,
> utilizing interrupts for transfers.
> 
> The driver has been tested using i2c-tools on a Bananapi-F3 board,
> and basic I2C read/write operations have been confirmed to work.

So you removed support for the clock-frequency property, which
addresses both of the things I commented on in the last version.
This is great; I hope Andi is satisfied what anything else you
did and will merge this.

Nice work Troy.

					-Alex

> 
> Reviewed-by: Alex Elder <elder@riscstar.com>
> Link: https://lore.kernel.org/all/20250128-k1-maintainer-1-v1-1-e5dec4f379eb@gentoo.org [1]
> Signed-off-by: Troy Mitchell <troymitchell988@gmail.com>
> ---

. . .

