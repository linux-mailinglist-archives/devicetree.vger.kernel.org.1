Return-Path: <devicetree+bounces-45936-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 104368675BD
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 13:56:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 40FB71C22FAD
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 12:56:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38F168061F;
	Mon, 26 Feb 2024 12:56:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="lE8evt7L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C34ED80029
	for <devicetree@vger.kernel.org>; Mon, 26 Feb 2024 12:56:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708952181; cv=none; b=Ty9oraNvKhrI1bKhqZJ1nekkjKOBduRCRFEsiW/v5UZ3fbmdcOKvkDRhpVTB2MzWE0sgFhNe+Ul+KD51As649Idsv+PjP859/UVg82UWXyQfdKpOeEhgGrM1/Ueszi/wdBKat3Zg55b8EMk/MsEfTDImnovIEsoZr9ma5oNppk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708952181; c=relaxed/simple;
	bh=ut35o+2oN2Qn7bwysQIKI2sLMViTmOjyvxHNEvySY7Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=R+2lnXJrehB01QuRrMrtmRqLH7Gky++TZEwPAnrfylGH46tZLPNQS78Tc3znShlNnRWKvHnsI1XxJxZywKu2Es9005vL6It8j4fuvEQjaq6jSkpONNqxHSur2ZjMkyzb61wy+NVkKWz+qqKmaDDwZl/Yc77AHmB9HRwzai2yCW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=lE8evt7L; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-412a4a932f4so7214265e9.0
        for <devicetree@vger.kernel.org>; Mon, 26 Feb 2024 04:56:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1708952176; x=1709556976; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jFrxQiHYrsfnghwiEcly4TZu16vAe3cS7xn00Nu2N2Q=;
        b=lE8evt7LLhyMPL62h4NGBKC4vv6pX9/fPeiU+Sh1t2NpN4jSDha5bhnzKAE6EsiXxp
         ul440nSrSQuSuYaHtkPnG6fGRJBNOq+mHXH69jCNQbNgMXAGEGh7bvboUhpaL6I4hrBW
         xZtGcpMgyxDD8m/gMlrPUdRi4gW2UDwwVjyQxR7BXYOb0pj/YdDwuemRZpzhpSI/1JVB
         mIG50iuB5YgYw961yz2J3xi/CzPhRkBsa/y/y02tdY+jkRy9VWDa5i6nwna0sj3/UUAb
         VwJfI3WNfpizPPMOG7rwkLC4U6MLPbv6vrKGkHYQkOYAPjocB4zvNnIXwD5aUJwvAiQr
         nCsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708952176; x=1709556976;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jFrxQiHYrsfnghwiEcly4TZu16vAe3cS7xn00Nu2N2Q=;
        b=ZpONsfCkvngabq4TZkkThbxHBgFsfa6qsMTJROW3D/jnkpHKp33ecYrn+85A5t267Q
         ghAhsTvK+pvca9BZ7+SXq27jlDVIMxQc25fk6rlRgcydF8/fKTpvL41LtT3FguepgLR7
         FcgYFtcij/lBshLUN9Gp5IYKfX+mpDMbqfVE3ADlMpovHZsSaWW+3xECe+qAXQthWcS4
         VNyDRAsk4hBynWqOpBbqQ+pLb7wAncCsS+Rlz2wBYqmXIuQGEqMmr6d97+GN4YXy75Te
         8vstPXAE2yMsirpNW9M3sTs31DUG1tp3kzzsCxNZR7MAAAWl6dHY4D6E6AYHjmKsLlp0
         vdDQ==
X-Forwarded-Encrypted: i=1; AJvYcCXJWcr38+57sdju9HxWuS6DCpeKJO6MiYmoh6B485YKncW1aiaOdn7L20ylH+GmVyLFlknV6VKjSfJz2vSMNPAwJUkBH6SfD9SRFw==
X-Gm-Message-State: AOJu0Yz8OGyLCwtIxejyXacUbTQhV3frunidI2Ybta2pVB+vBB4ryDuh
	RskZr9jkW+qLN6rAJ7X0FU/BVOKgRtB7iRjCNqXmTGWDFKEu1KD/M8UZ4HJM62M=
X-Google-Smtp-Source: AGHT+IHHeQtzlf12UyB07V/94hJb/CYNRe0xn/CubKev2viMPRPmMtQuMJ19vTXAxZluxRqI7qeKdQ==
X-Received: by 2002:a05:600c:4751:b0:412:985b:a1c2 with SMTP id w17-20020a05600c475100b00412985ba1c2mr3887098wmo.14.1708952176153;
        Mon, 26 Feb 2024 04:56:16 -0800 (PST)
Received: from [192.168.1.70] ([84.102.31.43])
        by smtp.gmail.com with ESMTPSA id n37-20020a05600c3ba500b004126ca2a1cbsm12348515wms.48.2024.02.26.04.56.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Feb 2024 04:56:15 -0800 (PST)
Message-ID: <53abcb16-20f4-469f-b2d9-63544cbe1e9e@baylibre.com>
Date: Mon, 26 Feb 2024 13:56:13 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 09/14] misc: tps6594-esm: reversion check limited to
 TPS6594 family
Content-Language: en-US
To: Bhargav Raviprakash <bhargav.r@ltts.com>, linux-kernel@vger.kernel.org
Cc: m.nirmaladevi@ltts.com, lee@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, arnd@arndb.de, gregkh@linuxfoundation.org,
 lgirdwood@gmail.com, broonie@kernel.org, linus.walleij@linaro.org,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org, nm@ti.com,
 vigneshr@ti.com, kristo@kernel.org
References: <20240223093701.66034-1-bhargav.r@ltts.com>
 <20240223093701.66034-10-bhargav.r@ltts.com>
From: Julien Panis <jpanis@baylibre.com>
In-Reply-To: <20240223093701.66034-10-bhargav.r@ltts.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 2/23/24 10:36, Bhargav Raviprakash wrote:
> The reversion check is only applicable on TPS6594 family of PMICs.
> Conditionally add that check if the chip_id is one of the PMIC in
> the TPS6594 family.
>
> Signed-off-by: Bhargav Raviprakash <bhargav.r@ltts.com>
> ---
>   drivers/misc/tps6594-esm.c | 18 +++++++++++-------
>   1 file changed, 11 insertions(+), 7 deletions(-)

Following my comment related to ESM_MCU interrupts for 'tps6594.h':
Does it really make sense to add tps65224 ESM_MCU support in linux ?

For tps6594. TI requested a linux driver for ESM_SOC only (the "main" ESM).
No linux driver was requested for ESM_MCU.

Since tps65224 does not have ESM_SOC, I'm not sure that anything should
be done in linux for tps65224 ESM. Maybe you should discuss this point with
TI analog team (our TI contact for tps6594 was Chris Sterzik).

Julien

