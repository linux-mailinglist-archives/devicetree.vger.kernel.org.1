Return-Path: <devicetree+bounces-41642-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 951148548D9
	for <lists+devicetree@lfdr.de>; Wed, 14 Feb 2024 13:01:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BA1231C23474
	for <lists+devicetree@lfdr.de>; Wed, 14 Feb 2024 12:01:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 820791B593;
	Wed, 14 Feb 2024 12:01:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DZHvnTAt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9B9A1AADE
	for <devicetree@vger.kernel.org>; Wed, 14 Feb 2024 12:01:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707912086; cv=none; b=W4lrc4LbePJFbszCJY+OqY0TyqZrmlGwPHGaBDpZa1siBoYWbdwyNUKOgsarhQdAP6G2HDCGfv7FcnunOBvEx63NGwJF00xQ9fZQTas6c+TmsZHMZ8fGEiW9Y1NnT1zvwp+3ZiVwM2WRnBa2Da4hAS5mOYYWp9Fm9tSSwc3uNmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707912086; c=relaxed/simple;
	bh=ze2xk/yum4xXS/FawI02oCYNDp+kaute6dF+KU6LR0o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=klv+GmZFx1c3//u4hjKx4jNSOQIaMPKBHg9QSXp9zwDQrLWkYDqYA1t0ZZNlj+lGSi50WY1ecP7xESsl+MzshapMF7jcip3ML4Nf2PkK4Vxw2xjJ8FkyihRAu8tjhIK49xYwiwU1x5DsoJ2Fw1VyAeWooknJ8i//YBfRLJBlyy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DZHvnTAt; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-5116ec49365so6307535e87.3
        for <devicetree@vger.kernel.org>; Wed, 14 Feb 2024 04:01:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707912083; x=1708516883; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ze2xk/yum4xXS/FawI02oCYNDp+kaute6dF+KU6LR0o=;
        b=DZHvnTAt3sqcHRkBX6evyJTd+373zUM1F5WyZ0n3OEHHvj9ldvSDkuoKQ3wjLYtLTP
         TbRfxZTHSsYY0IDSBL50V28eJIZ9XhyntjJze41lLy67GyqyjncX5b8eiTFH6jnIsGPR
         DaITyTKJkaFmf4SlMroBaMYKHS7Au0vTIJkpnjjmDKq8UaR9NYgtvfGhR5t+luO80XWQ
         poqHtpCwKv/ZMcGkf3+7sC7DmvhdB00HNfrZs6n8f28EbDFAz9tPe67t622Y4Ne6KW52
         xEfRvzFG9LNpPpiPs2Fwf+Knzn/6XHq43SeDedHflJGBezpZ/FBEGKlKDtT11h3b7drm
         /X7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707912083; x=1708516883;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ze2xk/yum4xXS/FawI02oCYNDp+kaute6dF+KU6LR0o=;
        b=iLidrTmnYV7UTsXvARmCbRXT4hXdCTgMNrXdYIY+5hUq0W2UM754Q65+focIx1pQLw
         DRcucKC6iR/Sj2mOHXcCRXUDEMQI41a5wo2PDL9qJOjoduWgD2ZKX11U2ZZEaH2lRogY
         k20m51LqI6gun+8tD9LwVoBW+8BBZ5yk7oluop75RGxX/Kx6SlxRQIjml8FcL3K/7ups
         MfSrk3qcbABy8Ra/kfReYBJufYNjN3l876vv4WGSrJWGQ2qEHDE2qoFLCcpmyyzIvOPk
         ArvP4BdemgutweIfFsQ4ZHzNpIhaP3PHBMWmT7hQdf4wmPVIDjJXUSB/x29mELTW5gfM
         UxwA==
X-Forwarded-Encrypted: i=1; AJvYcCWrF8PsBs3ayz2j+9Ggz5hfNEv/lQta62IXx9bcrw9Oh9iraYhb02GtgSfWoI+LE1IZUpj/vMpOGFvqf6Pq4XCMfTAOeQIEIyh35Q==
X-Gm-Message-State: AOJu0Yz/2LwUxmR9ovQ+8QfI5LHapckRKOyGdvwl1tzeXxkEdhn8FaW8
	Cx2VLsa41Dj5aPmCtm8cFDxG5lJilHKGfAbLQJPnr1XDuq9KzjgcWKkg2uui2v4=
X-Google-Smtp-Source: AGHT+IH06lyRqlycbULytAA/0ErCkieBhMtRKUOos3/3HuTlCUtx9xqU2S7suOsuyaIfLLG6rRNrKw==
X-Received: by 2002:ac2:58e9:0:b0:511:4ab0:8ddc with SMTP id v9-20020ac258e9000000b005114ab08ddcmr1615743lfo.57.1707912082942;
        Wed, 14 Feb 2024 04:01:22 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVLXuFjwB3lPbyK9oncZnBCuHgU59qSdRT8Gxspoq8pYpIeRVgel2rjQ50UA6Z/62fYIsatulLI3xUEyAq86mtIaGSDfkMxdr1TsFAvWe25SuwoGwtFbX4TcQFy3OWGNhUImUozpX/K5mgklAZWLGeO2ebTnt6xTbs1ZpHuDro+qdcNN9ItjTzvEFWZ1sQ8ayd/p/YUgDvOhd0IQ8jo4CJ0CqtUB5NhkI6ptuHwiB7uNUaqmEGKvD8+FGAM3ieD57LhvTi3j3AlX3eUD10tVhT+lUXhPvGdrPf1sP55saFlK56DM8h2ap1UPKEE60itEq7AS+1Ibpx7njhlhqR+NFs8xuIpMPa4ZD6pGSf3vzLC54+tA8kLE4B8lHFjv0tmQeM3O7u711rB0EXCL2A5C+nvoU6M5Xmzd+aaVulWmj/m3Ah7oxKQrTmRUGNamIm0xHKGhyeuSaIMLxD3Ox+7
Received: from [192.168.0.22] ([78.10.207.130])
        by smtp.gmail.com with ESMTPSA id d6-20020aa7d5c6000000b00563819d224esm380051eds.21.2024.02.14.04.01.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Feb 2024 04:01:22 -0800 (PST)
Message-ID: <e396cf20-8598-4437-b635-09a4a737a772@linaro.org>
Date: Wed, 14 Feb 2024 13:01:20 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/10] dt-bindings: PCI: qcom: Do not require
 'msi-map-mask'
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240212165043.26961-1-johan+linaro@kernel.org>
 <20240212165043.26961-3-johan+linaro@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240212165043.26961-3-johan+linaro@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 12/02/2024 17:50, Johan Hovold wrote:
> Whether the 'msi-map-mask' property is needed or not depends on how the
> MSI interrupts are mapped and it should therefore not be described as
> required.

I could imagine that on all devices the interrupts are mapped in a way
you need to provide msi-map-mask. IOW, can there be a Qualcomm platform
without msi-map-mask?

Best regards,
Krzysztof


