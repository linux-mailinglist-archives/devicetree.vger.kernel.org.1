Return-Path: <devicetree+bounces-193553-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A0ACDAFAE30
	for <lists+devicetree@lfdr.de>; Mon,  7 Jul 2025 10:08:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CE3BD1657C4
	for <lists+devicetree@lfdr.de>; Mon,  7 Jul 2025 08:08:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13A5428C2C6;
	Mon,  7 Jul 2025 08:05:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="Tg6+KlkY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F18E28B3F8
	for <devicetree@vger.kernel.org>; Mon,  7 Jul 2025 08:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751875536; cv=none; b=GA7MQ8R6sdh8co9LUD1KFyK6PYnBYbv+Di/r2gaK8+A1IgmZl2qFZRvZzR1YGVLZxAeUrl+uXEuokro2GE/joKWI0in9V74494O1sJ7HN37VXaKe+tjtRAet5VLdaLmtb+zjn/c55xD1gfXIgwftHI7lRTJSQm+Ot8MoXsDGiPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751875536; c=relaxed/simple;
	bh=1TjqDgVep254QfrcOu3FK5y0aX/fhgV/uA6wQt9g1B0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hO8nz3DU1mnEtT4RRf2xuWXfnp/9kOi79P8ilHA4cLrz/RwakezYcEhgt8q/BYICj6VYjdO+ljHoWz6vJnHXQBKfibtQnyPeI7WCl3AjGr9BmuXi0iri4otWJ6SG8BLDYFC3fmReux6wRu9KqE42OpZQ47YHMyfyAizcclC6AuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=Tg6+KlkY; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-ae35f36da9dso534192166b.0
        for <devicetree@vger.kernel.org>; Mon, 07 Jul 2025 01:05:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1751875532; x=1752480332; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cfSK4wZ0IXAaLuWeqeSbn2/BZJH/6gHhbVTHrVcpn3U=;
        b=Tg6+KlkYIkFXgXxkf76IBjDYPoDHlDpa5+R9sQ9E0yxapxiDg1ZE3k2CpQNYBwvcJo
         i+6CMi17RguMUp7i2E4Mjkyt/uOxokXr6F1rGWafqb1mSf9Ss/MMvhyGaR1OE2k6d+M1
         V1lOeSCHbtVSOVWlUgia7cx96PPZwlvfwW7ZERFC5QkExixZ5Di+EkRKDx1KmvY0IQ31
         jM6bkw3i1maYUBjsTjAZXvB7aPbVBLsRjo3oZJ9cXRjrlCyzv5/PBI7LI2VKVTHEvd4D
         dVidOtE42tu+55CuhFyvk0Szo4uv9WxS0/XP9QV+pFwk6MBCd8bhQ8B74bpfUfwxFG5e
         bUrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751875532; x=1752480332;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cfSK4wZ0IXAaLuWeqeSbn2/BZJH/6gHhbVTHrVcpn3U=;
        b=DpHiILA0/ph1inRnnL4n3fLUw+AgYGzhT/1g8IxW0aHuaGy7B4ZQZWKXwIH0/eO2wI
         PvEAbdSbw4gR5ZTUh7wRPjA26c9vfB/ypRYzKzZjvC1VX5d0mVBhy+91fNkkKuDF5Zkg
         llGLYahZ8bWz5tcFKLPzniksRg2P9eEzFbt5r5AO3uxgBRlRZ+W87Ekbg6HurS4+sH8w
         BmJEv4pxjHGxJfrdAvT/cZfYF2egljvIhdEm9WJmkiQTkSYX7NFa0svdGnty2pJVTu5Z
         AWlQKshlL37FgVh2gZbdSxU48ot13gcb7qWHYzgM8wxkPcAhpIsO2JC0J3LQPRvRnnU7
         TsUg==
X-Forwarded-Encrypted: i=1; AJvYcCXZNjLI6g/XGjenpvkAA8qpRco6Pk1mxs6Z4wvhPkgzbxzeNww9W65oaI3/VBVpfJx+XsuWKGoy30q1@vger.kernel.org
X-Gm-Message-State: AOJu0YzbNHGCeIOQzIlBTPQdNWkC6rN4iiyNEG05M0nwjieXxhH5JIdf
	5ZN9MNxAURIWBpIOPR4zBSNOr1qwPC9M4+x5qxwzszHiUMYRm8i2dk5yhnZaOorc5yI=
X-Gm-Gg: ASbGncuzsu/Q7BxbIOMaJXbR42IpPyYcF7xKjQbO21n/ZHLv4N4ViCxlxZgaLZNxOlo
	n5UavJOz40ptudxrqdOCru3+iHzO2paW2egfZm4kebJdeNT2P/VzzOQN7muQ9pDacNxJs8YOIm1
	Pv7o4X47a5sHgPBuf7G+t6Fs2HSVZtabz/bAw7X8irkSomII/aI1XSV6YpMio+Z1lTpuh+gPJ/u
	M/KdxoPKoISpoyXSNcMTueQrscX/8ihWPivIR84FUKRf2XICXhhJ2djyTxsfMDCt/SnuCTFZiPo
	IawKLXYswuUYIn7NdDJfoNhVSr1udsREluNdpCljpWsXzvIC1nEe28SX/tmW9IPWsCQpHg==
X-Google-Smtp-Source: AGHT+IE0L5DPGdmdGEN0u5OQ9V+2BW3fc6+QE6pzmfgPPJld1q+jXk9TxJBBsXR1qKPnO0Xzg35V4Q==
X-Received: by 2002:a17:906:c14e:b0:ad8:914b:7d15 with SMTP id a640c23a62f3a-ae3fbc899b6mr1217341966b.7.1751875532226;
        Mon, 07 Jul 2025 01:05:32 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.30])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae3f66e8c26sm650083566b.25.2025.07.07.01.05.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Jul 2025 01:05:31 -0700 (PDT)
Message-ID: <96af5f63-dbaf-4177-95e2-a6cc24019dc0@tuxon.dev>
Date: Mon, 7 Jul 2025 11:05:30 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/9] PCI: rzg3s-host: Add PCIe driver for Renesas
 RZ/G3S SoC
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: bhelgaas@google.com, lpieralisi@kernel.org, kwilczynski@kernel.org,
 mani@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 geert+renesas@glider.be, magnus.damm@gmail.com, catalin.marinas@arm.com,
 will@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
 p.zabel@pengutronix.de, lizhi.hou@amd.com, linux-pci@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20250704161410.3931884-1-claudiu.beznea.uj@bp.renesas.com>
 <aGtsM22QYqekuiQA@shikoro>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <aGtsM22QYqekuiQA@shikoro>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Wolfram,

On 07.07.2025 09:41, Wolfram Sang wrote:
> 
>> Please provide your feedback.
> 
> What is this based on? I tried v6.16-rc4 and renesas-driver/master. Or
> is there a branch I could pull?
> 

This is based on next-20250703. I pushed it here, as well:
https://github.com/claudiubeznea/linux/commits/claudiu/rzg3s/pcie-v3/


Thank you for looking into this,
Claudiu

