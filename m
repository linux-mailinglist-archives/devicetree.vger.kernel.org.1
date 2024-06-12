Return-Path: <devicetree+bounces-74959-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 98F87905110
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 13:05:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 33604285277
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 11:05:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D57A016EC1B;
	Wed, 12 Jun 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oVdHn6F4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28FF516EC08
	for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 11:05:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718190353; cv=none; b=nYwlsNL9diFPtSzCcF6ZYbBKjxjEfXAahQwEnGcM97zKBjUE/uq5zu3AwPPT1li6i8lRUeoafR8YxS/ZMTN+Bzv0zWalYENYwMU8eoAulLBua+5OPOjTsBInhnDJAkXrZ2VSe/KTUFHZAUGpqu0tA61QcDrsQ9slAwAwA8bnwP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718190353; c=relaxed/simple;
	bh=+wdrnx3EeleCXAS9rkEiQm2x3E1AseIhoVIT1O7VTTA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=Dt7WBPNqh0bJFlX9NTPxG289XDcn2gac+tP1f4VJbB27cKoqtfsGcG12f7wNs9WIt9vqcUxbgy02aG2mAVCVFh7Mau0NiZK8GS5ZlfZItIiJxxVMh0s00/K6ezkqDTHTZXkdq+2Tf6/AIM4aYlR/JUqfEbstQydsPcwn1JBV5/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oVdHn6F4; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4217990f8baso39095365e9.2
        for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 04:05:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718190350; x=1718795150; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VVEN4wl3rM6KP3IQiX2AC8CG+Yueqah2RH6wgyvbAMs=;
        b=oVdHn6F4izANGPK+DztmUnz3kqlcKJxaJ3sT7xDJ5BDX1ZTmnfx9g02WkY4m1D36Y1
         5OAnZTeHwzOdKNElxau1a4vlxOYYu6MvmPZYf3tc1Qnd2Ny03ULUPrb2Nh4D9W3AV9w+
         /2Zu8tscj9nPDdReresG59r4SZWlzZBUGKtOGUwIypTB+lpJkwHQ/OWF3+ECrtQoHIJD
         e1IXWCTsc8XJHTwvI37DcQCcD0gSIwI1PAuVyGvRJor/Ya9qaDerwAuN+dteUdgsDihy
         pGhGZqopWNiI1FhroLnHMoa45UKwpY/9cR2EbbxfvUadayYhgZ0iPj73GGPTLXQXTMo7
         JXxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718190350; x=1718795150;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VVEN4wl3rM6KP3IQiX2AC8CG+Yueqah2RH6wgyvbAMs=;
        b=lu6ElNgjkXK0oYB/3FfhVKfVOb3Cq+nnGgDsXYLATdtVJmvMQSUdBArojNOB4HdiVm
         VSirh7Q5+kJ53VQnxoPwUNrbn4HWhDlEpfdWBNAKvxI3PDR3UrU44h2x2GGDSfX9zAYw
         mUKUCdeafEo90VBV5wQniw2xEmUr9Zdh5kJrNa5Pua84XvX+YjJ5Vn7Gsd7kq+tznM2L
         IMVKXlx2TuIKSZEMpanaPt3kGuMuYUWfauyC12WjcH6GFi/Iw8+AmQPp9JsWxoO2ELMM
         72i62EQS/HpoDygy7Ms5Js5vD5ZEo8kXE4NVNLsJNd8Ngm3fADQSiKJKTFHEFybANiCN
         IARg==
X-Gm-Message-State: AOJu0YzGeZuRCptP7RP0P6tjXtP+g1DV6cHhtlMITliR1pu+8X9NhI/j
	24pba+akGrAkJ9bEi9UeEb+U8oyBlnaYezEqkK8dsYmcEuT7N0uQ6GYgcUW9nsA=
X-Google-Smtp-Source: AGHT+IEQ6RTTjXaKZqG61MP9ZE6kaM9KQ8Fu0PS5P9Lw9wK2R9SwWy4PHIA/zaPfHxyRpZfv03OQog==
X-Received: by 2002:a05:600c:1793:b0:421:79e2:c957 with SMTP id 5b1f17b1804b1-422863ae433mr12355595e9.19.1718190350452;
        Wed, 12 Jun 2024 04:05:50 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-35ef5d69e71sm16153270f8f.65.2024.06.12.04.05.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jun 2024 04:05:49 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Mohammad Shehar Yaar Tausif <sheharyaar48@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20240423150728.91527-1-sheharyaar48@gmail.com>
References: <20240423150728.91527-1-sheharyaar48@gmail.com>
Subject: Re: [PATCH] ARM: dts: vt8500: replace "uhci" nodename with generic
 name "usb"
Message-Id: <171819034947.101264.3434060327775586581.b4-ty@linaro.org>
Date: Wed, 12 Jun 2024 13:05:49 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13.0


On Tue, 23 Apr 2024 20:37:25 +0530, Mohammad Shehar Yaar Tausif wrote:
> Replace "uhci" nodenames with "usb" as it's generic and aligns with
> the schema binding.
> 
> 

Applied, thanks!

[1/1] ARM: dts: vt8500: replace "uhci" nodename with generic name "usb"
      https://git.kernel.org/krzk/linux-dt/c/dd2118bd10c1e74b8f0082750bd39c4bcb5fe5f7

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


