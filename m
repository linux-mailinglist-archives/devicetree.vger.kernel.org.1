Return-Path: <devicetree+bounces-159219-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A4E7A6A0AA
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 08:45:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1370D3ABCC8
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 07:44:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4D761F869E;
	Thu, 20 Mar 2025 07:44:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gHExq4YE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 110861C3BF1
	for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 07:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742456696; cv=none; b=LvtC2Tqd3Tt6O9o0aBDlMpl8JN5VdaH6WEg6O5o4/eBCYl0xc18Lc3QPOh1tJhttItG9tGvUhFMFcY8kwGBKgvvCZxYknlInIdEbaWwg0FtaRn+PO+f3kGdzsTCdHeb5fB5X2fudqJCDyfrBLf40WryKoFx0rsYR/vwg5JaUNig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742456696; c=relaxed/simple;
	bh=q/xlOhVYsK2JnBqcc2XOI5YqPOVf8LSnYWWwr4A6Qug=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pXWknUSxM66R2zmk8ki4KnSyqvWLfuD7nuGVxBb5VVjfpvKs5q+MoZCx2mIoHy42tT0xeeMJbHiLnwnqSWy8CRw/Wd4T00wktVzOmACShXIlyKuJSWFkapWZH6Y2J8DC196TL3U++rY6H+H+/Ig5wzXyWXFqb1yYyA8s0HYpOdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gHExq4YE; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-3965c995151so208324f8f.1
        for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 00:44:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742456693; x=1743061493; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1pLKp0KuUULXpNQKbhtYOlVvX9flILaYFnqix3IbtK8=;
        b=gHExq4YEAYISlDBRzJ95QXrPPN2SGrxKnpP6oyVS9svagFewkPYrMM3/eOw2gkzsXz
         I93XYim+IX+y5EN3918NvP/xUSoqmChkyz2w/2nosALaZKpzK05pClNZ85irYbd2Y5R5
         wVDkQqe6cEUlbN7oe8SOrfgusFmywVErdEzn5Azqm6WcBxUjYo/YxZPdI5DhTD8N77FP
         85N5NcC+huisOJmobKXFhK1nG6smzP3E8twr09/3yjfnBFYTNEUFdli09SFSYH6fiPMp
         j8/vwUJaLxSy1ChFQovgC4pyKcIERgeP6aITO/rlbJEyP5YdbGLFS09g48HjwuoRtazC
         P4Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742456693; x=1743061493;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1pLKp0KuUULXpNQKbhtYOlVvX9flILaYFnqix3IbtK8=;
        b=UlHRcA/zhI4zlgqzGarqqrfatw/WVxS1aKcY+6DqJKowS16rqUcM4fcM4UzVIUF7Ky
         4aTs6sAxd0cQq+FXPzi/RefsDOX7HO7u2pL9pk8F5xypTH4kzdDlTw29ini/4U2Dd/ZE
         /yabBY3fAo0N0D471yk4sNb2jgvO+zXhUioehvV947q9Jk8hw8z/imCggQLAWT1weOw7
         WTIQ8C/QVQ7SBcHJ+tQ95fAJVFRIfq9hBVxyNGeRH0U1+YAoP9shZR+rw0bQTz/W4BRg
         +gDyqMyAWoj+sfWjDl/2806LLn66J2WsH42k7pSPWE+dE5GJqt+nwcqEoaF4ItNeF4BX
         vRgA==
X-Forwarded-Encrypted: i=1; AJvYcCXYAnDYDP7DrshAM1JsgP7mFsYbT+VgmvEDxtzKYYeMhWnpcCKduiMCywjZMk1mA3vVlkQU2T/EDNbt@vger.kernel.org
X-Gm-Message-State: AOJu0YzaUmcVR7uHnUZqM7sG/NIrDjtAv4pmWtGrGBVF5WjPYAWjAmQY
	+n/OiT/wRC8n3lNhob/4tLbotUDFxt69UXa2ukCIA3ywldKWQZT2qpue9smpoy4=
X-Gm-Gg: ASbGnctWCB662z//nyZuD9YpZqnug5OY9Nt01XOHCJ8HOoxK1wscJ8vbPDIx5Zi1Sok
	DS7/ZzGu/Tvld0lWNwnf/wojMtsQsU4pbIbSPWNzxm2bx1uExodr4pP38GRS55gbNH9VdQYUyQS
	BNXcj+todE7uQMxfCJAbfkRIFzsBHpzdCA5L7Ez1iFoAPydpBARgV5+qYy6tXRESwXANgTJ3tMy
	DEI1VvXiJ0MbikNgoIamjewiurLDscrIHKtOY2XPSo93qN0D0q2+zSjQ2l5GOqwSRv6YpBUDWdr
	O7y5K6lZk4kYynBJQkhVRkpg1Fv/b3JgXf7AIrG2weIvqMYUyM+fZA==
X-Google-Smtp-Source: AGHT+IHqeQBbdHWajuit2mZUKUaW9kFxy01VDCOZtxai2FLtHLHiDpa7uJvn5G+eANZwcsM0bpL9Eg==
X-Received: by 2002:a05:6000:400a:b0:38f:4d20:4a17 with SMTP id ffacd0b85a97d-399739bc4ecmr7109168f8f.13.1742456693290;
        Thu, 20 Mar 2025 00:44:53 -0700 (PDT)
Received: from [192.168.0.14] ([79.115.63.206])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-395c83b6b43sm23253313f8f.35.2025.03.20.00.44.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Mar 2025 00:44:52 -0700 (PDT)
Message-ID: <a3818477-5a67-43ad-8961-88fa02916968@linaro.org>
Date: Thu, 20 Mar 2025 07:44:50 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] mtd: spi-nor: use rdid-dummy-ncycles DT property
To: Rob Herring <robh@kernel.org>, Takahiro Kuwano <tkuw584924@gmail.com>
Cc: Pratyush Yadav <pratyush@kernel.org>, Michael Walle <mwalle@kernel.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-mtd@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Bacem Daassi <Bacem.Daassi@infineon.com>,
 Takahiro Kuwano <Takahiro.Kuwano@infineon.com>
References: <20250319-snor-rdid-dummy-ncycles-v1-0-fbf64e4c226a@infineon.com>
 <20250319-snor-rdid-dummy-ncycles-v1-2-fbf64e4c226a@infineon.com>
 <20250319233024.GA2625856-robh@kernel.org>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <20250319233024.GA2625856-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Rob,

On 3/19/25 11:30 PM, Rob Herring wrote:
> On Wed, Mar 19, 2025 at 06:47:44PM +0900, Takahiro Kuwano wrote:
>> There are infineon flashes [1] that require 8 dummy cycles for the
>> 1-1-1 Read ID command. Since the command is not covered by JESD216
>> or any other standard, get the number of dummy cycles from DT and use
>> them to correctly identify the flash.
> 
> If Read ID fails, then couldn't you just retry with dummy cycles? Or 

I think Read ID won't fail when the op requires 8 dummy cycles, it
probably just reads garbage on the first 8 cycles, so we risk to wrongly
match other flash IDs.

> would unconditionally adding dummy cycles adversely affect other chips?

Adding 8 dummy cycles to chips that don't need it, would mean ignoring
the first byte of the flash ID, thus we again risk to wrongly match
against other flash IDs.

> 
> Otherwise, add a specific compatible to imply this requirement. Adding 
> quirk properties doesn't scale.

Do you mean a flash name compatible, like "cyrs17b512,spi-nor"? The
problem that I see with that is that we no longer bind against the
generic jedec,spi-nor compatible, so people need to update their DT in
case they use/plug-in a different flash on their board.

Thanks,
ta

