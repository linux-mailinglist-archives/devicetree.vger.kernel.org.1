Return-Path: <devicetree+bounces-162693-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A758A796E5
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 22:54:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A979F7A4628
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 20:53:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A8A01F130E;
	Wed,  2 Apr 2025 20:54:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GXlV238B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com [209.85.167.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93D4C193436
	for <devicetree@vger.kernel.org>; Wed,  2 Apr 2025 20:54:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743627277; cv=none; b=mhgqKHpcJG/lTtZuZoRsHf0a4yO0qKr75M3wR89v11t5zwVUlR0AVK0BOuTcmeVKugEnnyZf1dB33TzyozXENWuhXRUJEisQ6v15BJTbXERStDSaMVpEhohQksI9J1UyJHd11tPKlmV3w1w9oDjlXxNJtQSTNE29uu05PASjTZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743627277; c=relaxed/simple;
	bh=QBrhHNJ2aWiZTvesi5cFiVzKIcRyzZLRNAgTf3DnqsI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=O1U82uRG2PANDEiqq192Bln7glwUu48aovq5utejAnseAoIpGNGpH3djO7GJ7I4ZBbbSTU2g0bXJbxSW08W8UTpu4PArTa8uThrA7PhE0/oyT9wJryf1jVdeIM4z7pQ2i/JPdtPXS0iNzToDXkklgr29drkZkb0sHRl5qDt7P6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GXlV238B; arc=none smtp.client-ip=209.85.167.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f180.google.com with SMTP id 5614622812f47-3feaedb39e9so71063b6e.1
        for <devicetree@vger.kernel.org>; Wed, 02 Apr 2025 13:54:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743627274; x=1744232074; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=axaar2VlAPDiKK+PKSGROMc+IrZ+2WgRihymKGXra8Y=;
        b=GXlV238BDNP/VqUtWwY97EgNMNRp8pdWJ2o4sXC2L15FWzNR0qC9HUhPFJhCFU8lvT
         LctyH9+c0WCnP1GSe7Mqtg4k71eWj1BG46XZPJ9l/ik6qNMWexd2hnQVu2guvQVAND+H
         DH5lH3FlMEJCYhVKVjcpHUfKAbVB0D0c0vKByuGdnCrcxlYas+zktdc18xGiWVXsyiN1
         03M+yTDLBxzjfP9+wSlVykGMOQgPSYlC+dV+wrOZTA5RW3FIj/khKLGFT9v74aM5r+Fe
         OkJIp+w2wfVqX+ko3CyhVyiN3uaJiF40s2nNdKNxFOTZI/6qNsaKBLF+s4TCDL0saZWh
         q62w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743627274; x=1744232074;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=axaar2VlAPDiKK+PKSGROMc+IrZ+2WgRihymKGXra8Y=;
        b=pXnQC/nwMQ5SWl9PLcRjdY5Ja7HiHDOlzRlDIqwdzN0m5QOO+6szblpoAqTYnun0sL
         H9Z9dlVyQ4s7KI29Q/Of+HOKU2zkyqCBTDcKzO2wH279+ilKrQ4rfBE2jwM6SFlkgV0J
         2jMGmGZTJe/IB4JVJ9v8QC4BL+WvwscVhcSdtCUIZsSf36CtBCYnZorZFi+4luNe6H/n
         DFIGMt/+8Pcl2SWgMrW0X19qliSVGrtj7AKnI9d36HsyJDOeDyvWinbjEljKQGIpFB91
         iQJmrLrocjYlcYW0m02lp/0VLyOen63Ho7rRdRouGiMGiIGzwHwXo367evg1dJS8c12f
         ErMg==
X-Forwarded-Encrypted: i=1; AJvYcCXPrDb06Cdpm43f4BOahOCFGDPEdjqCRB/NAlGJnhDaPAJN4R5Pu0XgI86mE9PowkVGSdckK0IfhbZ+@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8MmU6Gr3p9CsdN/GR3y7LG4ut33XkmHSRftSSxLjc/BHM2G/s
	7irmbaGy6iO6+M5khy8UXQvpmf7N30+IijXHlOARGy3OCWNOubU6
X-Gm-Gg: ASbGncsqzK6Y+T1Neyl1NuZbvyErNBGn/4zs2o4c0voP/VWhR7Wmq+qvy3PhfbZ4MF/
	qCbahyjoSHkkYbiLqXWfm8I2zbwnRlvQBAD7EwMr5hbeHBMpnZZKX3aA37F55hX/2K5hVN4pd7f
	WzelNff6qeLeGp/R568z38gDhBv/eweK0hKX1e7X/j9yLZ+9+OWat0tmtzPhFRWUKBBi/qQiUu+
	1fbRu5UBmNNcw4jrgDqVcXBUXLt1FTpI9LgZ1PBsFVu5cfNJwZoqEB2t++P/BUH+V4oWD6ZzmUf
	ZSrrsCHvi+4t/xe4F/nYkHYNii7+sZO1rWWl05ycZjqhVko5QRoxsVr3eKCHHH1AtYWlZRMm
X-Google-Smtp-Source: AGHT+IH2b+JHdE/FBb9nWD74IxzVIWkU7YyKDyxMB0+FTs+MT6TBpL3trGIfLfIBnxkIqC+eExplRA==
X-Received: by 2002:a05:6808:2f0f:b0:3f6:8c64:8bc8 with SMTP id 5614622812f47-4003ea3185emr151555b6e.38.1743627274471;
        Wed, 02 Apr 2025 13:54:34 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3ff052799d2sm2550146b6e.34.2025.04.02.13.54.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Apr 2025 13:54:33 -0700 (PDT)
Message-ID: <4bdbb732-fd58-4ac3-a33b-5c89df03e510@gmail.com>
Date: Wed, 2 Apr 2025 13:54:31 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] phy: usb: add support for bcm74110
To: justin.chen@broadcom.com, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org
Cc: rafal@milecki.pl, alcooperx@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, florian.fainelli@broadcom.com,
 conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org, kishon@kernel.org,
 vkoul@kernel.org
References: <20250402185159.2976920-1-justin.chen@broadcom.com>
 <20250402185159.2976920-3-justin.chen@broadcom.com>
Content-Language: en-US
From: Florian Fainelli <f.fainelli@gmail.com>
Autocrypt: addr=f.fainelli@gmail.com; keydata=
 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
 WlfRzlpjIPmdjgoicA==
In-Reply-To: <20250402185159.2976920-3-justin.chen@broadcom.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 4/2/25 11:51, justin.chen@broadcom.com wrote:
> From: Justin Chen <justin.chen@broadcom.com>
> 
> bcm74110 adds a freerun utmi/ref clock that saves further power during
> suspend states. A tune is also necessary to pass USB compliance test.
> 
> Signed-off-by: Justin Chen <justin.chen@broadcom.com>

Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
-- 
Florian

