Return-Path: <devicetree+bounces-169819-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CD154A98512
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 11:13:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 185914447EF
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 09:13:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF86A1F463B;
	Wed, 23 Apr 2025 09:13:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="LgwuElfp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB76E1FBCAE
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 09:13:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745399623; cv=none; b=ljmlKL6UWtxKlNdNHlvutnQA/lC/PEP4HV+T18F00TdTVz4uE36ySH26sFHDdIppX6wA1F/DWBpViAsv0FUW57A4TereTInn3U2452r2EUkiLWXIIDdgNe+Nv89UTfYZ+OXUFdYPzCJGzdSS2x6OQbepMqPt+8iV0rfmwk1blGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745399623; c=relaxed/simple;
	bh=YsunVWLJv9qgaPhrr/QKtBvOSrEpfPc1uNDsP5UJSIk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hWNmDT0jwKQLWQwl0eqnA5c8Kh+BH+iunTTNPYaccmvSRV8o5AsB0KwTlG3xDpvGxrvZ5mJwKxBJq77ZJ9W/UN7B1nlVmxFwA1wIPaSJ8j+n7tExasqPdBssDfezHGKqH00EgOVU2a0QsRpGG6vviTdkwsEZm1j1X19VPnasZ28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=LgwuElfp; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-5f6222c6c4cso8583641a12.1
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 02:13:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1745399619; x=1746004419; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6D3Kj5y6LQM0GkGMDpCZ97hnqQlmKF4F8r2fuWuGeQs=;
        b=LgwuElfp8wzS7W14L9O7VBv97Lsmo3ABW7szEcs2g6ppaJKVy+TAtwfzV/Qzu3T09n
         vNJtvgmkEYFl3X7DQndb5uAGQPZnDgu92Jrf7hkVKttEmJoKjWLJX91QiW1tn55swbG3
         80i+CDQo7HK9nF4/Ud3iFg2XOKzmkwkmoNd4JpyGKU8zEhU3zEONcZUI3GWOY+GHiK7H
         jL+61IRB53OykLOg9KmKH6nThN2hIRSqFuWQVzgUpddaBKoa8rpUmna6AEgIqvTbqACJ
         wI9VIZiZ3wbP9jyAngf1XdjqZ5uoEx/zYTrAFNFd4rcXiZxiK7cbxVjQDFe4lQRzlb9r
         8A1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745399619; x=1746004419;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6D3Kj5y6LQM0GkGMDpCZ97hnqQlmKF4F8r2fuWuGeQs=;
        b=BKPabJAsaLLGfTNVtKV5T7pPq4S8cXzEDcLAzDsAIpslrCH7uf8k+X7nIP2SNRujBE
         t9JsBNcNBTlTv4eqBPJFkvGksE3IW7QCD3hbc2UoK3VuOSFwFYUK/knlWGPeGdooU3CL
         ut9Y45RfYvJuViziOpKnFftbvebek5wxzQLpzHNN4bs4+9RNb74uKvXwnKbFduPpxAOC
         +8R6w03ZPUrHDTfddZNRzquOCEj3saOfjODIHGNxolph4evs7CSu1EJcbZqK/JRkJTNq
         QqK9mqZo2LB4UAeOB41OHEps50kHJkU2+ntv68m6Uie0yjl58QCf1SuaC7b6Y+qAliZ3
         OP8w==
X-Forwarded-Encrypted: i=1; AJvYcCWROhjLcZ3SZBgfNvuaBVbnCwC5/W0tRo3vNfMH22vkK3JsE3i4/NjLskcDcWkUk074KEGrLDWPqeoa@vger.kernel.org
X-Gm-Message-State: AOJu0YwE4+Ji7LEdX76TKkPuHLMuEPEJGNezcfW/Ds0ve1U8YiYzepMl
	p8Y5fvUpWSJjQCvuCC3oB6fcWAuqSsgzdff0WvBZUS8e7qPD0WkLH4fP8Xduj0c=
X-Gm-Gg: ASbGncuNv+M5T+GyLbepZzIUMbGScrGoK6Kw+GvhxxcLA8HVdc5t5T3xY6kgqhfY6OR
	evrtL09KXz9zSBll4u4TagBkwPhNqoyrQ2Ofvyl4dV0XPbE2IWlUCVUFHpMBfAvDSvbRYI3fTYp
	vbH5FIh8MC0R1vZxh7PqcfhqleMdBf3HUp4IozPfzxF3vt4DNcg564bYCHsJniHP5435xzv5TQR
	XTL0zMR+tqrX1nUnfcxvZpO1ZvL6f5fQ1svIbcbgV0EZ6NjEAnQZntRM/i8gM5Y2NEIySZre40C
	Db/Dzd8HrTEikuudx3LqnKUaKaseRPpv9LN35T71esugqHOJZVfCQeV3418I86ySQg2hi7pn2aD
	qJzmajCS6
X-Google-Smtp-Source: AGHT+IFzxFQiGoaAPQvdB7be6/KuqryShsyFvmGaT1Th41MerZiCt57msNGvadM1uAaSSZVi3+rZ7Q==
X-Received: by 2002:a17:907:c807:b0:ac7:eece:17d6 with SMTP id a640c23a62f3a-acb74b2c9a7mr1856705066b.17.1745399619029;
        Wed, 23 Apr 2025 02:13:39 -0700 (PDT)
Received: from [192.168.1.100] (79-100-236-126.ip.btc-net.bg. [79.100.236.126])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acb6ef47763sm780902166b.141.2025.04.23.02.13.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Apr 2025 02:13:38 -0700 (PDT)
Message-ID: <24a6236b-3e4f-4174-914a-373ddcc90fb0@suse.com>
Date: Wed, 23 Apr 2025 12:13:36 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 -next 10/11] arm64: dts: broadcom: bcm2712: Add PCIe DT
 nodes
To: Florian Fainelli <florian.fainelli@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com, Stanimir Varbanov
 <svarbanov@suse.de>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org, linux-pci@vger.kernel.org
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Jim Quinlan <jim2101024@gmail.com>,
 Nicolas Saenz Julienne <nsaenz@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>, kw@linux.com,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Andrea della Porta <andrea.porta@suse.com>,
 Phil Elwell <phil@raspberrypi.com>, Jonathan Bell
 <jonathan@raspberrypi.com>, Dave Stevenson <dave.stevenson@raspberrypi.com>
References: <20250120130119.671119-1-svarbanov@suse.de>
 <20250120130119.671119-11-svarbanov@suse.de>
 <20250128215254.1902647-1-florian.fainelli@broadcom.com>
Content-Language: en-US
From: Stanimir Varbanov <stanimir.varbanov@suse.com>
In-Reply-To: <20250128215254.1902647-1-florian.fainelli@broadcom.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi,

On 1/28/25 11:52 PM, Florian Fainelli wrote:
> From: Florian Fainelli <f.fainelli@gmail.com>
> 
> On Mon, 20 Jan 2025 15:01:18 +0200, Stanimir Varbanov <svarbanov@suse.de> wrote:
>> Add PCIe devicetree nodes, plus needed reset and mip MSI-X
>> controllers.
>>
>> Signed-off-by: Stanimir Varbanov <svarbanov@suse.de>
>> ---
> 
> Applied to https://github.com/Broadcom/stblinux/commits/devicetree-arm64/next, thanks!

Florian, this somehow missed v6.15?

> --
> Florian


