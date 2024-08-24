Return-Path: <devicetree+bounces-96399-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 46A7095DE50
	for <lists+devicetree@lfdr.de>; Sat, 24 Aug 2024 16:15:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B9853B21087
	for <lists+devicetree@lfdr.de>; Sat, 24 Aug 2024 14:15:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9895F156F42;
	Sat, 24 Aug 2024 14:15:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="a3CXnEL7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C08F022066
	for <devicetree@vger.kernel.org>; Sat, 24 Aug 2024 14:15:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724508941; cv=none; b=ti9VYl5qCFKEoFUGaXTl5kBPMpd5VN+xaAZj9MNrRmx+pMh2uSSZ6NtjBOwLM1b7zr5Ch4iPqh/LScPJz97PNof0U20U7B8LEvTc7r7OMAVOhTZP09e/32QjivgE+SyJaUU/t/oJK79enl44QguKKXo1MyKpqG+B2Hpo5taIhcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724508941; c=relaxed/simple;
	bh=ylyyc5upqH2H63Bat8/KTYVk99gT+edO+ULoJdpozlg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=W9qz/N9/uCNwVirei9P5CCWuZddDrPjAF3NQBN1sEs8eAYhxPtY7me2APmffcmXcXPFyGOLpix5rZdemNJNRAtmIf+pCHXjrCY4obtok4eypLGbi5ChaWNwIiS+K9A1CFq1Ba9IDmUEPaK/mVZBGMgjFOWjf2583j0Kb7grPtME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=a3CXnEL7; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-a867a564911so372990166b.2
        for <devicetree@vger.kernel.org>; Sat, 24 Aug 2024 07:15:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1724508938; x=1725113738; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UfsvyUgRM9vDT3+qEMPlkf4NcRqOaBZ3rc+Db/x0GR8=;
        b=a3CXnEL7RJ2Pc5HfkuxtzMyxGuFEaqRl3Ztc+BA6TLiHb6qh72FmngmhH+waib0lJK
         GcwaJDv6Lfh8Y2WF2BU9iPkdLqjdKn4AUC2ewjJmkEAwoTrvdfrYNpXMNRKSl2onT9dN
         RwnAme8Pc3ToAWYeal5DyFBOP9hXziw1pzQdL2W6J5NBMBhAjGy2mVeDcJ9igKMj9qK9
         L7kV9CkWicSLexUBUL6aEx5XLaI39/DppUx3LNz24+6jBaX6OQ2+X+X+i0FQzTalphpk
         KscZEcKk3aPbLekBW6sT3HZxVkQzVvkAkdf4vtG3dKI+R4HjNJlnK9ypX8a0qwEihU+m
         6x/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724508938; x=1725113738;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UfsvyUgRM9vDT3+qEMPlkf4NcRqOaBZ3rc+Db/x0GR8=;
        b=Hm5vrEwg3YY7R+9whBi6cdVKbVSsMDWbSJLj7ZKKVk1qxoiKtzhyVo4QxJq32unlX4
         7gZgIPQkS6lUXbqU6q/p833Z6y9XQGl6aUNQEAcYImoizxuaOhFxpLL3ZBWoSp/4/UGP
         ba7n1YNu9lmbP+DpepQ4hpj0If14pxB0N2sA+NG1huMwDGv0YHOiZWelyNAeUAijGuoM
         bkVxIJa+MXOq9yeP/Ly0KeI64mQ2ktRuHxgENPdwp8NQZ/sy+RdsC4iLfQUIHm/2MFiF
         IX4TKUG5OLMbU5WnGrNB358DYbTMbn3alKqkUeGj9l8STEKTUmBzBfisnK3+gx/Uld4/
         nB9Q==
X-Forwarded-Encrypted: i=1; AJvYcCWon/xOE/7B8Otvk6V/FnSFHEV9gLFKLRCHQxxzEZ+FUYiPS6sqNLiGjuPz/6fwZh66zFp2KDKWbvO0@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9xzeFqgJgOXAEAKJx/fkbPqpqROr4UsHN73fOCNRIOgVGvHUH
	2+j5Ygyv48f5mZc8sHR6DsVrIRqti129c1yGNYrXGPqqidZMa2qT5Rzzn44c98Q=
X-Google-Smtp-Source: AGHT+IGDP/v0cG7L2RbBg8rsiuhnZQtctkJOokkQMWP1zT1B3q1fVN7UF/HlJDGt+p7Jv2G/uMdoGg==
X-Received: by 2002:a17:907:3da0:b0:a86:817e:d27b with SMTP id a640c23a62f3a-a86a54b05f3mr386595566b.43.1724508937735;
        Sat, 24 Aug 2024 07:15:37 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.177])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a868f4f3a20sm403725266b.195.2024.08.24.07.15.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 24 Aug 2024 07:15:37 -0700 (PDT)
Message-ID: <ca140cf2-1773-4f5b-babe-3e11d579e71e@tuxon.dev>
Date: Sat, 24 Aug 2024 17:15:35 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/7] Add input voltage suppliers for PMIC MCP16502
 regulators
Content-Language: en-US
To: Andrei Simion <andrei.simion@microchip.com>, broonie@kernel.org,
 lgirdwood@gmail.com, nicolas.ferre@microchip.com, krzk+dt@kernel.org,
 conor+dt@kernel.org, robh@kernel.org, alexandre.belloni@bootlin.com
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20240812135231.43744-1-andrei.simion@microchip.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20240812135231.43744-1-andrei.simion@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 12.08.2024 16:52, Andrei Simion wrote:
> In this series of patches, support for the *-supply property [1]  is added
> (correlated with supply_name [2]) from the core regulator.
> Link [1]: https://github.com/torvalds/linux/blob/master/drivers/regulator/core.c#L471
> Link [2]: https://github.com/torvalds/linux/blob/master/drivers/regulator/core.c#L2064
> 

[ ... ]

> 
> Andrei Simion (7):

[ ... ]

>   ARM: dts: microchip: at91-sama7g5ek: Add reg_5v to supply PMIC nodes
>   ARM: dts: microchip: at91-sama7g54_curiosity: Add reg_5v to supply
>     PMIC nodes
>   ARM: dts: microchip: at91-sama5d2_icp: Add reg_5v to supply PMIC nodes
>   ARM: dts: microchip: at91-sama5d27_wlsom1: Add reg_5v to supply PMIC
>     nodes
>   ARM: dts: microchip: sama5d29_curiosity: Add reg_5v to supply PMIC
>     nodes

Applied to at91-dt, thanks!

