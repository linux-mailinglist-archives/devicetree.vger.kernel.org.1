Return-Path: <devicetree+bounces-64422-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EA5528B94D5
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2024 08:49:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A74152816A4
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2024 06:49:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A44BB79FD;
	Thu,  2 May 2024 06:49:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Z1kFLvvR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BD308C15
	for <devicetree@vger.kernel.org>; Thu,  2 May 2024 06:49:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714632556; cv=none; b=B1Eg2C0oVdrNK0LbOnYPThyMqu9fWHnv+D86d0wgYTXiDb1vTifa6aZk4SjK+4B/eLJZ3VhO7WuuafGMs5b/m3JTuCp8xt7Pm9v8bm3ePW/7HIPOzXHgmetWwPXEtI5GX3+qNOmc/w7sNFGsqng0U8Z+ppbnvgkAk/7cJhUGZYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714632556; c=relaxed/simple;
	bh=gczMRuZ2fsGRpoCXUBhl7NeVLE82+ehtyW2OQrB7AVI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TwvCknT3TC+OiHi8W+VKQnqBAuIxuBLF4eYLhsFxMVnO4lenc48ehbJTpWtqbkAvAz98/lu2RJ4E+YDdM5jEMcN0oxkItYFx+xqQdZVjV7mBIM0VLeN+9t0lZ6LU0/Bd3arkGojyZx3H5eL4kW3mF7/rEFUvMA0uLijIZ4PvGsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Z1kFLvvR; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-a5544fd07easo998755866b.0
        for <devicetree@vger.kernel.org>; Wed, 01 May 2024 23:49:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714632552; x=1715237352; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gczMRuZ2fsGRpoCXUBhl7NeVLE82+ehtyW2OQrB7AVI=;
        b=Z1kFLvvRojrI4uxlIx0cZ5n+DYxnfokkUqfXGy3+U6bFxLLNLy8mJZueGBebQwm8g8
         9QBkXZqJDskOPNruyzljLEhz9Z+oE56EM+VkFT+xiMITd9ecnFak+LJYMysLOcNXCHe9
         MXqGvGOTYo5gRUPtCwVfTiboIpD68AEQlINs1hZAz7gVNU98jtOFev4rSwmz5vg+AXH7
         3EikyOdJKmkArumMnydGeRwIa+hTC4LJt909pNS5/a3DwkP3xIRPEqifSoskpdYvr9DM
         kgaGE0fOOzqP4JCTVAaOJrORksyXOtTyUX+mMSTNlaR6pVnyCk12/hWlwTJYoOeTR5a3
         OzbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714632552; x=1715237352;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gczMRuZ2fsGRpoCXUBhl7NeVLE82+ehtyW2OQrB7AVI=;
        b=MXIkSSD6/JOh1k6qDrIrg233SEMt2fD/2ZIxTeD5KcrTK12eEvSPq2r08bFBhmDboX
         Y31IRgaW7mjg/nYuogYva2buXJUqGiTuimOPlUgNMOmsjbOd7LsS1kT6EJ16OoERTUt4
         7WrdzQts1v7P2dIRKc1QZfmcPKu7AkRdtukKOH2hmGQaWJ0OSJX6b7fwyOLtWB2/vgVq
         b9j7mwdAlJTY+qMPNSBmsgsZ7FpLscns6J/71dKjQVp8Hgp3Tjx3vcrUFW4nIkTnIV1w
         v5FeFUT1zmxYxZxw7LOsJxJcMnciO4MmumcCEmkStdhTxqh4bJgCJE9DorTP8L5UWOUm
         cKIg==
X-Forwarded-Encrypted: i=1; AJvYcCXFjf1SRqPb8wNsuSUifkk0a3Haz/vCEoh/9FOULkaZa1hPW/n+2T1Q0MOCCa3jawjjPkO17lF2hl7FBG5Jav/7fk6+CObmm8LEHg==
X-Gm-Message-State: AOJu0YyyXRdEzWfpyrxdRNq4Z2vAYCcZv373amjM5b4OmhIle4KbRJcw
	XgiF9aiKT6d/xshMEqNDP9IYSnI1dPQgp5Y4l1H+2Mc5I4A/CpA0kXwKh9B1oMc=
X-Google-Smtp-Source: AGHT+IFkBbgVvaFJQenOiI4ZqLFxEZ91nE8Ab9fUWsy7cMO00V3YYbkqeWeoAC9aai5hppSe79rGhA==
X-Received: by 2002:a17:907:7ea5:b0:a55:5504:6f7c with SMTP id qb37-20020a1709077ea500b00a5555046f7cmr528581ejc.20.1714632552593;
        Wed, 01 May 2024 23:49:12 -0700 (PDT)
Received: from [172.20.10.10] ([213.233.85.172])
        by smtp.gmail.com with ESMTPSA id bn5-20020a170906c0c500b00a58f3ae5bc2sm178588ejb.154.2024.05.01.23.49.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 May 2024 23:49:12 -0700 (PDT)
Message-ID: <cb7823f0-390c-4f28-a797-237afdcfaf68@linaro.org>
Date: Thu, 2 May 2024 07:49:08 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/4] arm64: dts: exynos: gs101: specify bus clock for
 pinctrl (far) alive
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>,
 Peter Griffin <peter.griffin@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: Will McVicker <willmcvicker@google.com>,
 Sam Protsenko <semen.protsenko@linaro.org>, kernel-team@android.com,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240430-samsung-pinctrl-busclock-dts-v2-0-14fc988139dd@linaro.org>
 <20240430-samsung-pinctrl-busclock-dts-v2-1-14fc988139dd@linaro.org>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <20240430-samsung-pinctrl-busclock-dts-v2-1-14fc988139dd@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Reviewed-by: Tudor Ambarus <tudor.ambarus@linaro.org>

