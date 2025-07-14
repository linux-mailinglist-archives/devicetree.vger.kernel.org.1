Return-Path: <devicetree+bounces-196100-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BD2B7B0420D
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 16:43:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6CFCF1A645E2
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 14:43:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FF0D2594AA;
	Mon, 14 Jul 2025 14:43:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tYsinFTu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CCAF257AF2
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 14:43:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752504213; cv=none; b=DEH3kOcK7doChZpN8hweF49OYJyM+PAibRMKNt7KK2b18wn9Mj72MIAqAExADsiev9lvUwshsz9TNSnqCSQuFUkXGtvhIqXWCr0WHoHf9Z1gkk3LZ48DVHVF7jdvcpc0eV9uh83u1dLQhEGewoAiPMX6ZH+O8EjJ7Zm+CFjMTZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752504213; c=relaxed/simple;
	bh=+NdErqoSXalIYrtUeTTaieZr8gJQiDPFDzFk2W/aqPI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HAvSIOI1JHI2qGUXRpsEVFfesqLfcyaQ7ZNEpb3oXbaQLWiA0S14D4WRQRF//ZNDh4ObKH7QJ/eRqGSmoXLyPJ3R6qWdDmge6hrKUpEOkfaFGMcnqR8PiFPM5VRrug1OmpO05+KQjjM2bRRW71kTW6aKylnvo7SEDsExy92UJMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tYsinFTu; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-45610582d07so11292415e9.0
        for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 07:43:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752504210; x=1753109010; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Tkk2ePHatcopmrnLKR6jR3UX6aWlk9GOwUaArm5vOU8=;
        b=tYsinFTusDPSHTHilP5txIO4lvaxYHJfjN716cxYVJWRH3CwBCjd5ydxPxKwpFURoz
         DOnwaWkbjaImpLAFrEHcegwJgeVN7NUCAl0mnpkwJOVFFUlopnyhDFawnyLKq0C4e19Y
         AGTe+KMx31RfXzXmZUBsOxTSygheh08XpUwe11MbZrweRZYS/3bU6MlgXl5uvcZRiG17
         ac9eeVgabDZQjEzJa/kqLaRskFPRMwM0NDzjR+hz8xQTRVlv9n3iaXestxq6PVe6H0mD
         bSRYY5BlEanyr2J+X/oXVvdFC/Jd07Yl1jhKbtAhkyIoZ1mHynNGnBSNE0MuysM1kCxB
         +ydw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752504210; x=1753109010;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Tkk2ePHatcopmrnLKR6jR3UX6aWlk9GOwUaArm5vOU8=;
        b=hcFxVQJW9px9Zv1fOlJpwfqbuOWV6p1shL/NTakBGjJHufNdPHlQvAQuj8tgXf08T0
         OBaoNauVwueausLf/HWyJp8YXdR2ZlBM1tDlvLG28ZlURVLNK5+AgFX9/iQ2ay4nKK+R
         CLrtmU6Pk5YjStDALRGZT3qll73XmmeEs8YX74x7thtlzhjhi/kgj8v2qAY1bnaD5CHD
         wO7DY8NBvXQxPej5Br2FrERwX/RPWBwvPrUYZF9yZspB8qkZn64JrUrm2z7/gYpGYa1f
         HxwVK6Jb1dozfJLgtVp6hitMk44tiUuM7Ip+/05oYTHpkC0efTSrSQTfYJPuotkyrwSi
         2AcQ==
X-Forwarded-Encrypted: i=1; AJvYcCV0dC7sr3RKYxuWB0krs9OMAimBGZ5hqJyyVit3t2OD/O7G4/zM4eTUJKAidfkojfurKPRg03VmFggf@vger.kernel.org
X-Gm-Message-State: AOJu0YzCNmz0ecjV8vQ70UXLgHSSSDUHJV96d7UhRxe45rpm5c8ya4vS
	MQOeWbAjom4yLp+6BfCFWNRnechWDki/aYqyiM1JzerA2NI4DkSXH3PNNIsGx0lFxHA=
X-Gm-Gg: ASbGnctjv+9APJR3tcJuulsb/87PRaaQYP4hRWOKqqVXL4vBd2pUCXoQDOdbfWZijlC
	8IP4+z6qUbBw2ihEQwQqxGj+WQvJJwe6kA/tOCnvfp2IJXfFXUKeXJKTcRwUolYhrBa8ftvIkbL
	VC3QCHPfsXnvQHGK2iQDNgynJc5LGerkmpS1yeOGYSYcAYRqUFZRukXSiOqUOg6uD50GKu5vOnh
	ejqzfON7jht3+SInQpajfTqZd56+FCtywPD6ha4j7Ge4Qb/km69eV1KcpKH5vWghA2eLoeYCum2
	2uD2lwC9Ufr8qNGo0JiYTbI6XrrZSAcVVmsBIy4S8FILv9NR3cHvPunJGgPWlLwZAOdwXvIrz+2
	nPkrfttkXQw+CWHnCSwlt3VrluKgqGNugxGFxBBEvfKwKzbPXb/D9iNmIuxjV1qM=
X-Google-Smtp-Source: AGHT+IEtm3tvKJdmPSDwmiLwsHPDpBMJTkK2dAnaXapIl0i2sB2r0hRgPP5EDIr3l5jWUsMP16oQfg==
X-Received: by 2002:a05:600c:3e0e:b0:456:2379:c238 with SMTP id 5b1f17b1804b1-4562379c49fmr14225815e9.17.1752504210032;
        Mon, 14 Jul 2025 07:43:30 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-454d5103c2asm171484605e9.33.2025.07.14.07.43.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Jul 2025 07:43:29 -0700 (PDT)
Message-ID: <08261aa4-689b-4d6b-bfd2-221c1976d254@linaro.org>
Date: Mon, 14 Jul 2025 15:43:28 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI D-PHY driver
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Bryan O'Donoghue <bod@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250710-x1e-csi2-phy-v1-0-74acbb5b162b@linaro.org>
 <20250710-x1e-csi2-phy-v1-2-74acbb5b162b@linaro.org>
 <11b573d5-ce4d-476c-b94c-216d427cd838@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <11b573d5-ce4d-476c-b94c-216d427cd838@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 14/07/2025 15:16, Vladimir Zapolskiy wrote:
>> +#define DEBUG
> 
> Still under debugging?..

oops thanks.

> Well, the phy should be a multimedia device, and this driver is not
> the one, thus you can not use it to connect sensors and put the IP
> into a media pipeline.
Ah no, I don't agree.
Please see my previous email.

---
bod


