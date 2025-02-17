Return-Path: <devicetree+bounces-147288-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BC0FA37E2D
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 10:15:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9FE87188B1E1
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 09:14:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D0F71DA2E0;
	Mon, 17 Feb 2025 09:14:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="mRv5zHDp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68CE91DAC97
	for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 09:14:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739783682; cv=none; b=oIPXg/VFhGHvVk8KXVX3EAfRXYWAVTAIO9Gx3xpGS9OMufp9bmAqLE5xSOoWXtucnxVja3WRAk/S+5eDSBdHa7Wsek6ouF+SPvzhkn40e3fkAs/4IFIBVWI28756sv6O3xQcJpcVP2Koim1BY1uunOj5fTK7xsWGCqK9ViY3t2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739783682; c=relaxed/simple;
	bh=oecG8STigdysN1p2/pulBXQfq8riWGZ9SwKugmZupd8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=H+5UYmN2kX0WrJ2Zk1gSxX2Pa0TNGw1iK04tUg2ji1diO0lPwI2WETeAD/BIBrjFYZH7e989S+SqdjJ9xXQa1d8UROFQDbY+gWdpkVc2tr6UdnBQZcZfQOAFWsqXH5WPx6NcyjUKhVpy1nkSOjY7Pe1s0AORQqF8UkwspRsJdPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=mRv5zHDp; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-ab7c07e8b9bso699083466b.1
        for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 01:14:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1739783679; x=1740388479; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=phm8jSsieZLAYRvU94lHS+2KE6EOrOJ2bxUAvn5iaZ8=;
        b=mRv5zHDpE02ThKtn7QFhpE5QRKIjFRI8hLPBS1dbIcDebacdN6L1XYyybs8+AWaGtb
         A1Diyo77/ntm6YIaysDGrmdSkQzNQX/4bKXJzXVi3kFh+618nxyTvb+2hlQiCyNn1EjR
         o55qXXSxVcI+kGA6Nul4Kht/y415YijOQmQT7q4JyZ+Ed+v2G9XjyS5YYcUaf6qU/QXI
         Pd8ITOEC8/PQfdd8wIJvhFq6FthW9/LcVMGZWPfY1nbUPX6cBz1YlRdXaRhUWK6KYIl+
         Oe2ei3fV1QvlC7Lyunmp/LJuvqiv/UR+poZIRyjVW7nvhglUSgKPXc31THEHb8gShbqU
         cGOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739783679; x=1740388479;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=phm8jSsieZLAYRvU94lHS+2KE6EOrOJ2bxUAvn5iaZ8=;
        b=TMN6FwEXF7gnUz09hRkn+rn/FQBVJimbznoLBIB7lvJNJ2nexNxb1zxHR4O840ZK7W
         aTRJpYTfWBPwsuXSRXPmPE9p4C8ljn8BGGmMsb+9vZ/8FZJAduwXfv2o89b6j5adoWnI
         vZD9ZpJf1njW7BBrGjjknJUGDvH/aBVGQ1sUL/KVD0gqNI9zXQYNoP6wXQE9Jsbw8uNF
         gEgDJwnvTSt+vS/v2rs7hmUUZvKm36ytOjc8ZS4csOnWgAPDFNk4FUtToV01hN27F7dJ
         13yUXvioKZ0ruU1TbD+zWaZAZuF+3/tleKni4+ykaFsJX7psUk7CMyjCjZPOFSQcDi+Y
         /wTg==
X-Forwarded-Encrypted: i=1; AJvYcCUoneSuX5HDgX0fMh9oCREmN9bJYK6GLDbc1u176x6O4vGyPOy+0q8eDMa+znbyZEWvGyJ3I/0aAjHr@vger.kernel.org
X-Gm-Message-State: AOJu0YzYPBZSGUFpM46GKqIqCO1NNyHb8BCl/9Lo9O5vc/q+fgKOSi5u
	WnTWFyOvKc7CQijiJ6y7BaXBrRHTxbmhgXo2TRstV6aHxF6IRFDunXcXq+w0vQb4HBpJ6QlhcTG
	n
X-Gm-Gg: ASbGncvUP3o4hTBxjQZmoN+DAKJ4weY3O8SyEDx5bvXG+yWw0+GiBQyJ8cVruy/YhA0
	ix/4TK1A6DmFBvPfzPSdjtSxNvnxFy/9p7bF64Kyr9stHOftvvuPguLEmAwMzop34RFrhadq9vI
	odHMUItK3XoiZTRZjLk19he52bP0q7Ea20xBGJZVc6Cxb2ay7J8XdoRpcTaNXmA2/x4Jhx/XEqK
	xoixOi4TsXSWJYzf1KUIW0pbRuSnb1NDf0emXb33qFIwVZnY5oTYPwppeB0JxUQwuk0wvuffC+D
	oKBxPBmRXTzutYKywnrRRX8=
X-Google-Smtp-Source: AGHT+IEpE1aPz/0OBl5FnqhprsbjTn0AOjkVKHoE0FYPvQ0oKK62ZfJEvZI/uI5uJpbb/p9xjwMm6Q==
X-Received: by 2002:a17:907:9494:b0:aba:5f48:eda4 with SMTP id a640c23a62f3a-abb70b6bf71mr866918566b.25.1739783678693;
        Mon, 17 Feb 2025 01:14:38 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.25])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aba532322aesm861089166b.17.2025.02.17.01.14.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Feb 2025 01:14:38 -0800 (PST)
Message-ID: <7e966eea-e2e7-4fd4-bc6e-67fd49c57ddd@tuxon.dev>
Date: Mon, 17 Feb 2025 11:14:37 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/4] ARM: dts: at91: calao_usb: fix various naming
 problems
To: Wolfram Sang <wsa+renesas@sang-engineering.com>,
 linux-arm-kernel@lists.infradead.org
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>, Rob Herring <robh@kernel.org>
References: <20250131210236.36212-6-wsa+renesas@sang-engineering.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <20250131210236.36212-6-wsa+renesas@sang-engineering.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Wolfram,

> Wolfram Sang (4):
>   ARM: dts: at91: usb_a9263: fix wrong vendor

For this, I'll be waiting a follow up on
https://lore.kernel.org/all/20250131162713.33524-2-wsa+renesas@sang-engineering.com/

>   ARM: dts: at91: use correct vendor name for Calao boards
>   ARM: dts: at91: calao_usb: fix button nodes
>   ARM: dts: at91: usb_a9g20_lpw: use proper mmc node name

These were applied to at91-dt, thanks!


