Return-Path: <devicetree+bounces-113344-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 71A7B9A54C4
	for <lists+devicetree@lfdr.de>; Sun, 20 Oct 2024 17:35:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E923BB225D8
	for <lists+devicetree@lfdr.de>; Sun, 20 Oct 2024 15:35:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F12D193070;
	Sun, 20 Oct 2024 15:35:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="Fv6sNxp4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E5A2209B
	for <devicetree@vger.kernel.org>; Sun, 20 Oct 2024 15:35:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729438507; cv=none; b=kCoKAd65fqUAc0cW6jqVXHfofNivFR/RIFdkO6jCBH5zZoxMyXMa2sGNX7FKVTQQc3vk+UtVLDQTsdasjj7ZO/NRlpIOPbvE+9/5Wi2dJRyV+NUUmS2jdnjK3m49IrFV69N3M8r6hx348Pv2jJEk0GxFQZSRhhvuBI7j4t7P9Xg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729438507; c=relaxed/simple;
	bh=IapXlnzeyXZLmKJUGovL2wChtF9SzRzYIEzS6w4buyM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=p3zMDaaAQDPGH1v2Qm9d3rwPP9RRXINUQ8YNPpapAp9tcp55chHpiygdp3KzyLjOIgXHG8T3bhCITJJLFP3StyPkmO2NTB1mW413mEwKvcy0FobLz3+SZtZDHTj920Ej1vfR7CoG+mpi8+6XDd3NGwhGbMkK2pDtHA+SZkloJq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=Fv6sNxp4; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-37d518f9abcso2629628f8f.2
        for <devicetree@vger.kernel.org>; Sun, 20 Oct 2024 08:35:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1729438503; x=1730043303; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hIKmV8bpWspUj1xzZcB7fNAVP5Rwpedrgu62CiHPmn8=;
        b=Fv6sNxp4KPQB6icniqyVk1PJRcb8MVjgoE7FccjugTqCLRtK34aEIefPALnPV5QCrW
         QNecuskz2KjlvsWI6yrqyyRX3RJTCu/wkEPrX7B0qK4qD3IjWBEW8m4bbF44i+lgEgfV
         cXS4GfqH7epz0jqSdKqYDaDeYu+FnV3eGZ2gSvtB9FIiTkWfYGG453DIn17lSbGW8uhk
         yy4Io+XfiebNnaLpI97WyTlQ9AJ8qlMabsn3hwqHK+pQGR2EPFrEw28TUm5lUVvVv2Ej
         w4mH1DNsgfh6YpgZalEslHJKw+wxqGIaM9LIX5LjpXSswy+dITK83CZcm7drpp4xPQOc
         Q1Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729438503; x=1730043303;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hIKmV8bpWspUj1xzZcB7fNAVP5Rwpedrgu62CiHPmn8=;
        b=vzsX33c7GhfwK39oCKsJJpCUqVjrWd8WHuZHkANAcEZi7k70IJVg95Zsxb0pm2jbBB
         0k1A/qyULwQRYhuL5xXZAi27gnFxRdt2VgqixH7APV9gKYUxXrneLbb8khUEJdLKZPhC
         BTx6Qtcfj0ll9SJ0grjw+ppv8UZphXs7Pkt89kvZ0L3qomhwv1qgnZeBhmysgjihifCe
         93nsGcMC4Ln8Nr4qo/i8+CeUsBiJ4c5sRH4/F4svObXsPkRUxtjnx01zfIqWGqFwMa3T
         BpNHeCIDTNDnCDD6DWo/Eabikokx0LVDJRcJ5QM/U5JR/8NfQmE5koKSItZAiCDgL58w
         6aAg==
X-Forwarded-Encrypted: i=1; AJvYcCXPRNdx9lE0GRFv2x+vw8pR1lqJn9j4PupeN0Q5atnocRr3TEDFeN1WjI3uH5JizctIhPnxS0Qh8smy@vger.kernel.org
X-Gm-Message-State: AOJu0Yync0QYs2tHfVP+3JF04ZSFqZaUI+5MrWRtbMYE8NrpnHAC6NWe
	S6Ttnwbf9VuCL07N1DR60t2+SPa034NCKj+YGhwjNt3n4yKO/1G8g0OEz5NjXiY=
X-Google-Smtp-Source: AGHT+IFM/pAGQt/Gnx/PT1AmsrnZIpfAlK/MZURPVxO1L/PLHHnZlv8+yFnEghkj9UcqEl8sk1jpLg==
X-Received: by 2002:a5d:48c2:0:b0:37d:4ebe:163e with SMTP id ffacd0b85a97d-37eb4893d3emr5137928f8f.53.1729438503113;
        Sun, 20 Oct 2024 08:35:03 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.23])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37ee0b9432fsm1961891f8f.83.2024.10.20.08.35.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 20 Oct 2024 08:35:01 -0700 (PDT)
Message-ID: <9cb5d142-f054-40de-8a4c-cf189efeed30@tuxon.dev>
Date: Sun, 20 Oct 2024 18:35:00 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/2] ARM: dts: microchip: rng node name and label
 tweaks
Content-Language: en-US
To: Alexander Dahl <ada@thorsis.com>, Conor Dooley <conor+dt@kernel.org>
Cc: Nicolas Ferre <nicolas.ferre@microchip.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240917072710.125435-1-ada@thorsis.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20240917072710.125435-1-ada@thorsis.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 17.09.2024 10:27, Alexander Dahl wrote:
> Alexander Dahl (2):
>   ARM: dts: microchip: Add trng labels for all at91 SoCs
>   ARM: dts: microchip: Unify rng node names

Applied to at91-dt, thanks!

