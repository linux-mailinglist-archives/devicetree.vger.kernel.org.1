Return-Path: <devicetree+bounces-51854-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2496F880C60
	for <lists+devicetree@lfdr.de>; Wed, 20 Mar 2024 08:50:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A75BC1F2131D
	for <lists+devicetree@lfdr.de>; Wed, 20 Mar 2024 07:50:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F5F424B33;
	Wed, 20 Mar 2024 07:49:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hNI6q0vF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4396A22F07
	for <devicetree@vger.kernel.org>; Wed, 20 Mar 2024 07:49:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710920999; cv=none; b=dW2HgcZPyl3ryt518yWZFLp9vVzrPBXAG/b06ES6uJ8D5cL8bgQuqBgZcIpzDKrTSzdMqeWYmFUN6/BPLAslJNKsgd3WZmG/4nJavBjL7Mlf0MGm16mdmfv/9iNiNWhQDC1VTV4auAnVX2/uu0Z0cNWl0n2TZyI6WgXJ+sR1PBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710920999; c=relaxed/simple;
	bh=q5U32Wv2NtRKMBCOe/UdWxXohxDEUHP5aP2dTZSwA64=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hVSiEVogOLWy03tToHilis+TFX8cm5ic0Egubb/oEWlSI/Xw4fYgN8m8nTMAUFFC/ct1nfx2y10SmeAFv8EjHLMFPSvHLsw/zqB+SsRKT7Y2+iWGmAaeOM6bTofWbn7dOt1NDgXl9QTriLKzQi7W77nVwZWZ0hwxxlS0xNWtpaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hNI6q0vF; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-a46dec5d00cso192883566b.0
        for <devicetree@vger.kernel.org>; Wed, 20 Mar 2024 00:49:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710920995; x=1711525795; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=MRntVtwqYez/rC/iIjnai7Rc/ctg94I/p6RSPi7b+nQ=;
        b=hNI6q0vF2mGhJFCXOq6x/QlfCdVB4ll3pPt+8b/vDdv7boZW+y7yZSY+gAZ0tM+pfW
         ayySu0ngFVmAMh9oJgqSKrHMiKY7jrHeynAFPGSU5k9kNTA1dhn3S3HewpTotxL220xc
         LjLnnvmVJvCgv293b4miTkCuaXi9PDkE5Jqtu6Wvh16e2P2ATn5JNChppoytJFNy9jby
         0uj+AZupxJNHn7LTRs7I9LB5wiTGrmVXT9pZ/bpp0PEeBYdOtGrAi6Ce82hnTb9A4LRj
         GbsZeb5bKEZqq+BfR0KcElRV6kb+V5N85+y40GRR3LpsiVLJ+WdgEXd0PDctWjXBhX0L
         Hbqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710920995; x=1711525795;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MRntVtwqYez/rC/iIjnai7Rc/ctg94I/p6RSPi7b+nQ=;
        b=rFUTaKoDA42szH6ywK30d+GK7s2RX8FH6vKnL17lm0g3rFn+KNJ82kk5bQhSyaum3q
         GgMg//3y+99jpcIV9IPYU/TFm7KAzyF4sBN2ndxkpR8URDmW8Rg7P2x7KcpV9WlYProG
         CgenaNzW8kGHJJrwb5epITthbfDD+bSxVvwl481MOo4j9xAQmqQ2svN0vtUENGKKQ//E
         TZ/mIDrvIzlGrI+3OMWMqbo3t98TAbww/Dkf5C+UCb+imbF8MweC9VS8ZizSZQtQyKro
         9wPYnXpS5NqoW82GudELZ6KOZNrYJd4DLzTZJknn1j3jtWEk37lN3SlOJlkdZAvulii+
         eqKQ==
X-Forwarded-Encrypted: i=1; AJvYcCVLCx2aiMTIkg+DbmRkxiLGSn46koSt62ZYrpNVFuFtXelSH5l1D7baauv9Cczt3U21IDFGPAzG0vcZQy0qPl+k66Ca+UavuI+H6g==
X-Gm-Message-State: AOJu0YwB8wG7n5iO2GcWuITTOfbK1TBxBq/OBae8dWMpH+nLVKkPwnYe
	DEOIP8ZJqz1avgQKeHMblJgSp3g26JTxbxSwgZnSIqiC9XYklgMQYS2udAB7bNE=
X-Google-Smtp-Source: AGHT+IFZaPjdhUYIwRAyOsAPuyNwb/aBT1vtXqOAmfG32jQSBNobJHnMektYJuUB51g6QjcEadiJog==
X-Received: by 2002:a17:906:6d59:b0:a46:e595:f357 with SMTP id a25-20020a1709066d5900b00a46e595f357mr2365013ejt.9.1710920995458;
        Wed, 20 Mar 2024 00:49:55 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id an14-20020a17090656ce00b00a465b72a1f3sm4471165ejc.85.2024.03.20.00.49.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Mar 2024 00:49:54 -0700 (PDT)
Message-ID: <018d1b9d-7957-4efb-903b-2e510db1ff80@linaro.org>
Date: Wed, 20 Mar 2024 08:49:52 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] arm64: dts: S32G3: Introduce device tree for
 S32G-VNP-RDB3
To: Ghennadi Procopciuc <ghennadi.procopciuc@oss.nxp.com>,
 Wadim Mueller <wafgo01@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jirislaby@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Chester Lin <chester62515@gmail.com>, =?UTF-8?Q?Andreas_F=C3=A4rber?=
 <afaerber@suse.de>, Matthias Brugger <mbrugger@suse.com>,
 NXP S32 Linux Team <s32@nxp.com>, Tim Harvey <tharvey@gateworks.com>,
 Alexander Stein <alexander.stein@ew.tq-group.com>,
 Marek Vasut <marex@denx.de>,
 Gregor Herburger <gregor.herburger@ew.tq-group.com>,
 Marco Felsch <m.felsch@pengutronix.de>,
 Joao Paulo Goncalves <joao.goncalves@toradex.com>,
 Markus Niebel <Markus.Niebel@ew.tq-group.com>,
 Matthias Schiffer <matthias.schiffer@tq-group.com>,
 Stefan Wahren <stefan.wahren@chargebyte.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Josua Mayer <josua@solid-run.com>,
 Yannic Moog <y.moog@phytec.de>, Li Yang <leoyang.li@nxp.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-serial@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20240319221614.56652-1-wafgo01@gmail.com>
 <20240319221614.56652-2-wafgo01@gmail.com>
 <a5268bcc-144b-4e86-a13a-33d976368f06@oss.nxp.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <a5268bcc-144b-4e86-a13a-33d976368f06@oss.nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 20/03/2024 08:00, Ghennadi Procopciuc wrote:
> On 3/20/24 00:16, Wadim Mueller wrote:
> [...]
>> +++ b/arch/arm64/boot/dts/freescale/s32g3.dtsi
>> @@ -0,0 +1,236 @@
>> +// SPDX-License-Identifier: GPL-2.0-or-later
>> +/*
>> + * Copyright 2021-2023 NXP
>> + *
>> + * Authors: Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>
>> + *          Ciprian Costea <ciprianmarian.costea@nxp.com>
>> + *          Andra-Teodora Ilie <andra.ilie@nxp.com>
> 
> This pollutes the content of the file. Please make them part of the
> commit description using 'Signed-off-by' tags.
> 

No, that's not how process works. SoB are part of DCO and Ghennadi is
allowed to skip them. Just read the DCO. Don't add fake SoB tags just
because someone wants...

Nothing is polluted in the file. That's what this section you have (if
someone wants).


Best regards,
Krzysztof


