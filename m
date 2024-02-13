Return-Path: <devicetree+bounces-41301-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8377B85311A
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 14:00:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DAFF3B251B9
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 13:00:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9516C482EE;
	Tue, 13 Feb 2024 12:59:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uVEK7X9K"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8AEB4B5AE
	for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 12:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707829196; cv=none; b=VC+7ZIcJLVYZPLazfdQzcgv+xhKcxyGQkOm/OQKnhKUiMwf+hh83SctmLVv3lnh272QBLsGf1PyZ6dxNsnKEU3Luco2cNAIqr27OjPp0+MyeZKM9n0NYMDh2IVrgJLmHdElRtRnFT6hVbf/RIuLAmNIEmchMy+w3k4Dpjsqi3To=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707829196; c=relaxed/simple;
	bh=5h2ZHudUYG0aRlP8LrUzwYh+NTZg/hiCObK0OUfwSeE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=HUFuk4UxEXs93qFq4pDQS1coN4pBEhHFNk7HXx9KYB7W8ynlO4xEoFckCl6WzATW4xOo+vPvX1bOg6/OWoaD8f+vN9XI7K9B02LVokOm2ryFgGWIAVpqmvgXOsgV+9oRoF2FkiwA3geBRjFtQBGAxRxsNYwEupFNt/Y3xkqyrT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uVEK7X9K; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-51183b02564so1058490e87.0
        for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 04:59:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707829193; x=1708433993; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d/hFeaopGsy2QD6T9Q8c1qD2utQU+AfoTyT77QFxVS8=;
        b=uVEK7X9Kr+B39g5Q9KXHSq6ctaRsNKOwPs/5L+lqQJgp61OerGQ3CdN/y7dV51muTT
         gSUI/No6whZOF+jh8IjHP0obaW20Dfb6CFqUyviolTgBkiu/V3Sy2Anlr3KEas4pSIVu
         WSpirxL3W1ykNfbUVGNsYLtAuG+R2a5nR9NMudTycBiAC//0iTaRvSaduID+akWDR4gx
         KN2iZdzfUcW/Q/z9BI+gMPvZAikdF9kV6iS0wplBScEIGvXnFpn1NqXMiWeAhVLNBpMv
         YEC4rkwibmisou0mP+JGpqPYc/Ave4kfnjQhXMMqAD77pbAbdR4NQAw9/eAUeuTw11D8
         9eaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707829193; x=1708433993;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=d/hFeaopGsy2QD6T9Q8c1qD2utQU+AfoTyT77QFxVS8=;
        b=m7lk5EXOeSipJljnNBTJ0K4Hzppne2Debm5uciNk3uFGrDaJ4YcU54jFTCnitS2f6V
         p/wwKBBg4TclFBfqAMVD8TqBONeH0hA9hL6uvOkUoV9oty5flPG7xVELgm02VeMCWu0e
         XyNQr8HBRjUUDD2ld3HFXWfuSK4c9PRHvATqvxIYU3vqt/Xb3sG2kw3Z/g8XxcanogtK
         ZpeJieQrx343r0jIoAE7qBUPtsf4pHyg70+jmyXk42SNC3/R4cDWFF7qBs68ULqlTTyP
         Z96wXShigIjXV+rrmpnn+DHfSnlMQsxWEMfOahiyUn3AFQUWdhZKI3EPRddMPY7Vp/4m
         CGgQ==
X-Forwarded-Encrypted: i=1; AJvYcCWiZ7Hc0Jg/A5QIAQ5xiBNcAa55Xua7/aQrmL7GApZxRIbHVx/REUs5ArVyChjZ3UXEj/TlUrOx+b5UJOZtdzy26aTXiaLW6hqqng==
X-Gm-Message-State: AOJu0Yy5NL6xiOkcj8ELt/AWLWr/IchbFIAtaWuKOFnKFC9ZQYKKtICt
	l0P13K3m65ZVSDSRoF4jAIW1quExet7/y1mHNaZDymY6926NkGWaREEJSUGb/UM=
X-Google-Smtp-Source: AGHT+IEAVWAlLetgl1C1aVca3/OVjmDF6ZOlYPFVFx0pw0FlZfSfHISIiN02thQWlrB661yF/BOlWg==
X-Received: by 2002:a05:6512:3d11:b0:511:5237:a357 with SMTP id d17-20020a0565123d1100b005115237a357mr7811021lfv.48.1707829192713;
        Tue, 13 Feb 2024 04:59:52 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWJ6HvLLkXVqanJYxEXVaBwYut4tG24Q3antYYU2rXXeixvCMRSvCg1mA5H2YlsHr8qv08IPTT9b3m43YoN5aP63GLjbfl6nixytaoZoKb8+nbGGGkFgI6HQO8Io10tzs/vlUWD0iXt/ibuV3riDFPVWjElaKP6NOi6EbeAHAR9KSIO9dGOsJpkprkMnWnzwIlBm9x6t8gEKispehLIfWyCH5NttdwNDw==
Received: from srini-hackbase.lan ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id xo7-20020a170907bb8700b00a37116e2885sm1268426ejc.84.2024.02.13.04.59.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Feb 2024 04:59:52 -0800 (PST)
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To: michal.simek@amd.com, kalyani.akula@amd.com, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Praveen Teja Kundanala <praveen.teja.kundanala@amd.com>
Cc: linux-kernel@vger.kernel.org
In-Reply-To: <20240202113843.17999-1-praveen.teja.kundanala@amd.com>
References: <20240202113843.17999-1-praveen.teja.kundanala@amd.com>
Subject: Re: [PATCH V4 0/4] Add ZynqMP efuse access support
Message-Id: <170782919184.32030.17868326404218700363.b4-ty@linaro.org>
Date: Tue, 13 Feb 2024 12:59:51 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.2


On Fri, 02 Feb 2024 17:08:39 +0530, Praveen Teja Kundanala wrote:
>  - Add ZynqMP efuse firmware API for efuse access
>  - zynqmp_nvmem_probe cleanup
>  - Add support to read/write ZynqMP efuse memory
> 
> The first patch depends on
> https://lore.kernel.org/linux-arm-kernel/20231004094116.27128-2-jay.buddhabhatti@amd.com/
> 
> [...]

Applied, thanks!

[1/4] firmware: xilinx: Add ZynqMP efuse access API
      commit: 88f70b7f94747e8e52930a57d6d11d1bd83224c4
[2/4] nvmem: zynqmp_nvmem: zynqmp_nvmem_probe cleanup
      commit: 71e2473b51515f61c4edd50aa8e841526a2963ae
[3/4] nvmem: zynqmp_nvmem: Add support to access efuse
      commit: fcb1413edbd8b3da53081735b1b1585cbce0e23e
[4/4] MAINTAINERS: Add maintainers for ZynqMP NVMEM driver
      commit: 81ef75cac58fe75554a01db5f34b9c093241c05d

Best regards,
-- 
Srinivas Kandagatla <srinivas.kandagatla@linaro.org>


