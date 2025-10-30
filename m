Return-Path: <devicetree+bounces-233148-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CFF9C1F703
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 11:04:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C2EF7188689C
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 10:04:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF03D34EF02;
	Thu, 30 Oct 2025 10:04:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fbH1CAjQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81FBA313E0B
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 10:04:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761818649; cv=none; b=sH/grbS4gfDBwiJaB/GAVvvkxw/hnzScVrR/QLk73pMKOWUgnme+fcXoPIRTUuRjVGvv456pRWnme2i4w1K6MPBrX+SvLzOTfRO00L2Vr5WiCVNPtruYt0u6Y7dVJoa1GE/celr6VJhQRqeyPb3Sp4zCiOJJUlEJilOaA/Y9XyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761818649; c=relaxed/simple;
	bh=Bbu5f3ekraU0UTZNwEa5wKqb5Ak3IfFXpXp5DIw2MRc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=T8jaj1wMtbKbo5IF82LL9IplsOjBywZsVa1Wfie6bJ+pgJNm0q5TEohyk4zxWJZ/3BIDcK9BzIR9NtZTXVCgi5da/d8Qc8rs2QX2gJ62nOqk+dsU22TT/4P7WNNXSfvFEOz3BnWFNiByUVHmJSE4pAnslvgttsanxWdpEQHfEsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fbH1CAjQ; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-378e8d10494so7825471fa.2
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 03:04:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761818646; x=1762423446; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dauqN1FImNWy4rwXPKxul6Sk7/dfHFTeFablnNaeE7s=;
        b=fbH1CAjQbxHaIDPKHfgt9R5GAeYDjr4eazStlLmfOoC5zunM/H7WsKEMHf6P8s+cn0
         00x93tPSJZIeWRuBJgeZe6M3aW0sZfG1g+WhLUpmY1/iQFtvF2xPCDneVgbfxaqFw7YK
         4XNN/YjxWaJXxz7eVLT34o7Qrt0HSpZbaNWG69Lexi6Wh8EyCqSsIxRdMI7vHBokMqMA
         m/wRvhKEerKrLfTSlG/a9SWbk/6Mtgu+euQQeeHjFJv8939/a0lOqK0Zr6xPBYLlVc7W
         ds5SJtGqELRMqQiZA/dZBb+0vkR3Zt5MPqE6Sl8WOsaBZXikzaefJrd5v5CXNDcqOAPI
         ylbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761818646; x=1762423446;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dauqN1FImNWy4rwXPKxul6Sk7/dfHFTeFablnNaeE7s=;
        b=iy50DVzJiXsPqHtzglunC7Y18LiUMa7OrBYG0EYUyVu0WD7zLnn5vaJMBnun2MvE01
         i8S+Rveud2BL5utOH9flr58iR+3ds8dnDYGtjWbmkMJ0FLkJ42ZBZSVTUcW2p4Tv9yvh
         dq5OTpWGoBJ5rz7vEgFkz65PPmnKuJ1nddJn8tEfxd7S7cTg7ghFGxyub0s6oAH4nYVj
         yGNeRuBZqYSFWNrxdh9H4jG4KvqrZ2wmTk2+KB9B7wcUyPGZeF/A0AMzHdv6J7V0K3Pq
         eRw2eRJagNN9aPwJza/BAf31desWWWojrXTL9D1JMN5vOP97WCNPxNsTvzYoYeXW7i2U
         VF6A==
X-Gm-Message-State: AOJu0YwVxiwSM8HLUxIK4Uvm6PCdreFz+jZMud4fW4Gxh2cunwOUn4tu
	zh8vTxoEil0p9KZgWn1C106EjuQWDAp2Z0M7TRJ9ZaclbGQZM//N5lbu
X-Gm-Gg: ASbGncudUfoo7PDnXvkVT+1BU3AMa04sxBC0R1zlNP+AdVpyJU2utzr/8Rw4jffN0cy
	KyuXaOwzfvRcl1qXt4aiSJ7Xt/XgjEp5M5Ung7uAcJ1VHaZfQ0ylxoYbs9uvpOFotCZpiiEFq5c
	dWP2HH9zgc1/REZMb+v3ZlbaoNmaDEtmS2U3URqyyJbvGFqTWurgAxX7C/YaJbXZeGVCOhm2/al
	mMzti/921n2Rol/L19Yq9F2JPnQFtMt4nsJvi7j30KWU8UJctmkdz6QoSQ3x0+fLMWzl3E9WZgp
	R05YUhRbFJlIbsgQimEnZQEt5BsIHbbdDLCWtpMHMnbJKTz4tpbHn6HTm+sn9TyxWbEFNSuUryi
	P2qCYNxLDQ7UaedpP/HbjCN6ipqRacdqMPwAHoap6V73sLIwhF20hVDzeO1lUlvOABTlQVVE3sU
	FupV9pAkaPpYg/FeQVrgtb0t6wMK2KHJIxCWaMsJMQRKKPHnTOfF8Ay75YvA==
X-Google-Smtp-Source: AGHT+IGyCpQSfbBRdEYvu2lNdOmyrZXNNZuheExnuJl6d4xQSCtQI8cyPqqgwbNtC67LbnCVinYQhw==
X-Received: by 2002:a2e:a9ac:0:b0:373:a3e2:b907 with SMTP id 38308e7fff4ca-37a023b0b88mr20842611fa.10.1761818645333;
        Thu, 30 Oct 2025 03:04:05 -0700 (PDT)
Received: from ?IPV6:2a10:a5c0:800d:dd00:8fdf:935a:2c85:d703? ([2a10:a5c0:800d:dd00:8fdf:935a:2c85:d703])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-378ee0bc2aasm39339011fa.24.2025.10.30.03.04.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Oct 2025 03:04:04 -0700 (PDT)
Message-ID: <bd938b24-59ee-4a61-87bc-4416b1a0e55a@gmail.com>
Date: Thu, 30 Oct 2025 12:04:03 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/6] arm64: dts: freescale: add Ka-Ro Electronics
 tx8m-1610 COM
To: maudspierings@gocontroll.com, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org
References: <20251030-mini_iv-v3-0-ef56c4d9f219@gocontroll.com>
 <20251030-mini_iv-v3-4-ef56c4d9f219@gocontroll.com>
Content-Language: en-US, en-AU, en-GB, en-BW
From: Matti Vaittinen <mazziesaccount@gmail.com>
In-Reply-To: <20251030-mini_iv-v3-4-ef56c4d9f219@gocontroll.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 30/10/2025 08:35, Maud Spierings via B4 Relay wrote:
> From: Maud Spierings <maudspierings@gocontroll.com>
> 
> The Ka-Ro Electronics tx8m-1610 is a COM based on the imx8mm SOC. It has
> 1 GB of ram and 4 GB of eMMC storage on board.
> 
> Add it to enable boards based on this module
> 
> Signed-off-by: Maud Spierings <maudspierings@gocontroll.com>
FWIW: Looks good to me.

-- 
Matti Vaittinen
Linux kernel developer at ROHM Semiconductors
Oulu Finland

~~ When things go utterly wrong vim users can always type :help! ~~

