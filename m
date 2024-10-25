Return-Path: <devicetree+bounces-115766-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A4509B0A3E
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 18:48:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8E12AB21546
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 16:48:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8938B1C07FC;
	Fri, 25 Oct 2024 16:47:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="B+RhSiz6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5031B189916
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 16:47:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729874877; cv=none; b=hcdfuj9FdZCSd345ubJ/4bgCibkIIikx96W37Ks/E424O68ixSnRdHhP6tXA0ksnXmVF5WYlq+aO+mL6cntWAgSCancEJVmQ1+TEhOoxvPBk89HrV5VE9OxLqt8gRouAe2ZDXenTiN9RaUpJZBmD2uFVzAs2kE/nZ9LJIVDzOAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729874877; c=relaxed/simple;
	bh=CObiHbi4jPloahOTX9vchq2ji+ft7iwH/VOmwjuwycU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=KHU1hcgd1Kl9X/iLr/GN9vl6FJBTxHzq3Lodrwa/8cm24K4WAuJEr3Nn19SlKXeQaFttxjSs+XwnUOeT1n4jfoIzuqy3+jXHQoexmDcuX52QZ7j6pQRYPvqQRsZ/EWAo7pFq1wzU1uOCocxAiqJp1biFdNtiC5+0uilMHJiiXz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=B+RhSiz6; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-37d51055097so1476749f8f.3
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 09:47:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729874873; x=1730479673; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pq8Pls6wfcoOIkkesonALKXUkplX5+7I7+nTvhjnX+Y=;
        b=B+RhSiz6rLDUeFQgQXnM34HAsfMAlA/z4PBkcGgbjYNfFoZgCPWaqXP+eRx1t/KQDj
         U7KiBRw/GNElnYa7tXGyE/LAK7t6nR9Jjv8qysnSqXON8A25uFIG3izq9eZyf28jAG1b
         mY24CdUQCKjUrwe29SycsmgZyfmE+wevzso87lRMKyGMNWRAMCL5/DGtZpeaWXkpfCzg
         tB0CCO5Ak93cH1WxdMcf5rF1CJJAcIZG3x3MZJkL/hVM9maSpxrEGDyRICDffHluZuU3
         39tQ3z6+bY/9HENcsp1ttD6lSmKetIjBG7IKx8iuYOsnjJ7u8GFPhxrLgWjY19Umb/I3
         xzzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729874873; x=1730479673;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pq8Pls6wfcoOIkkesonALKXUkplX5+7I7+nTvhjnX+Y=;
        b=LAEhagLVXZlLeE4+edwo/kbcm73SylN6EnML1xLbpdlXpjOEbsHScrgo82FpS5cQnM
         HcFWDS0lRp1uSb4oJs6msYkx4GiToHplyhBCm98edhjY/6el6BwXnQlkuqEIqbJ8B7uJ
         YGc/FKSNVIDOKUpo4L11MgvQlxGz/oESU3+973NUcBuV11en8SiLNxVLIrGJvhiponC9
         u/J0Z5ag6CbRBINJH1YU4z7HNCHHJLLMCx4osw77XaBsnwohpiq90BuCxA6gti9Q7lhD
         rkrItYkdT7kzjTXDIj3br05VdEkRdK7JD4JBeKiwQWmxFneq/z/F2BoRlBKHmtTBZ+Wg
         2nSQ==
X-Forwarded-Encrypted: i=1; AJvYcCVDwMgAO85eK+zqE4DI79WPKslVhMm/zCL2krGHHNvBJwbHG/5CMNGhN8yVibCYk9VTmUXdQJHVHYNI@vger.kernel.org
X-Gm-Message-State: AOJu0YzNzzqZPwS2FIHpk/ZgIIG7DQ7x6ds2rj7SNfrdLxJxs2UYc/1e
	qvUdrDvOlWjQPcs9Q9lhZliXP77PMjbjUi0hNopoI0ZpG9t2EyCAXai6ay4OACk=
X-Google-Smtp-Source: AGHT+IF02bj5hqk2pa2px5XKt3k6T5GNE8a/QRIUqmwQLRKjQmn5vBqDV0jEbdaIf8k7NaYO4RlifQ==
X-Received: by 2002:adf:facd:0:b0:37d:5103:8894 with SMTP id ffacd0b85a97d-380611dc14bmr38014f8f.42.1729874873628;
        Fri, 25 Oct 2024 09:47:53 -0700 (PDT)
Received: from [192.168.68.111] ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38058b4a3cesm1949511f8f.63.2024.10.25.09.47.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Oct 2024 09:47:52 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>, 
 Daniel Thompson <daniel.thompson@linaro.org>, 
 Jingoo Han <jingoohan1@gmail.com>, Pavel Machek <pavel@ucw.cz>, 
 Wim Van Sebroeck <wim@linux-watchdog.org>, 
 Guenter Roeck <linux@roeck-us.net>, Frank Li <Frank.Li@nxp.com>
Cc: linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 linux-leds@vger.kernel.org, linux-watchdog@vger.kernel.org
In-Reply-To: <20241010-zii_yaml-v2-0-0ab730607422@nxp.com>
References: <20241010-zii_yaml-v2-0-0ab730607422@nxp.com>
Subject: Re: (subset) [PATCH v2 0/5] dt-bindings: mfd: convert
 zii,rave-sp.txt and child txt to yaml format
Message-Id: <172987487249.288365.3434469015929868507.b4-ty@linaro.org>
Date: Fri, 25 Oct 2024 17:47:52 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.2


On Thu, 10 Oct 2024 11:42:37 -0400, Frank Li wrote:
> Fixed below warnings:
> 
> arch/arm64/boot/dts/freescale/imx8mq-zii-ultra-rmb3.dtb: /soc@0/bus@30800000/serial@30890000/mcu: failed to match any schema with compatible: ['zii,rave-sp-rdu2']
> arch/arm64/boot/dts/freescale/imx8mq-zii-ultra-rmb3.dtb: /soc@0/bus@30800000/serial@30890000/mcu/watchdog: failed to match any schema with compatible: ['zii,rave-sp-watchdog']
> arch/arm64/boot/dts/freescale/imx8mq-zii-ultra-rmb3.dtb: /soc@0/bus@30800000/serial@30890000/mcu/backlight: failed to match any schema with compatible: ['zii,rave-sp-backlight']
> arch/arm64/boot/dts/freescale/imx8mq-zii-ultra-rmb3.dtb: /soc@0/bus@30800000/serial@30890000/mcu/pwrbutton: failed to match any schema with compatible: ['zii,rave-sp-pwrbutton']
> arch/arm64/boot/dts/freescale/imx8mq-zii-ultra-rmb3.dtb: /soc@0/bus@30800000/serial@30890000/mcu/eeprom@a3: failed to match any schema with compatible: ['zii,rave-sp-eeprom']
> arch/arm64/boot/dts/freescale/imx8mq-zii-ultra-rmb3.dtb: /soc@0/bus@30800000/serial@30890000/mcu/eeprom@a4: failed to match any schema with compatible: ['zii,rave-sp-eeprom']
> arch/arm64/boot/dts/freescale/imx8mq-zii-ultra-zest.dtb: /soc@0/bus@30800000/serial@30890000/mcu: failed to match any schema with compatible: ['zii,rave-sp-rdu2']
> arch/arm64/boot/dts/freescale/imx8mq-zii-ultra-zest.dtb: /soc@0/bus@30800000/serial@30890000/mcu/watchdog: failed to match any schema with compatible: ['zii,rave-sp-watchdog']
> arch/arm64/boot/dts/freescale/imx8mq-zii-ultra-zest.dtb: /soc@0/bus@30800000/serial@30890000/mcu/backlight: failed to match any schema with compatible: ['zii,rave-sp-backlight']
> arch/arm64/boot/dts/freescale/imx8mq-zii-ultra-zest.dtb: /soc@0/bus@30800000/serial@30890000/mcu/pwrbutton: failed to match any schema with compatible: ['zii,rave-sp-pwrbutton']
> arch/arm64/boot/dts/freescale/imx8mq-zii-ultra-zest.dtb: /soc@0/bus@30800000/serial@30890000/mcu/eeprom@a3: failed to match any schema with compatible: ['zii,rave-sp-eeprom']
> arch/arm64/boot/dts/freescale/imx8mq-zii-ultra-zest.dtb: /soc@0/bus@30800000/serial@30890000/mcu/eeprom@a4: failed to match any schema with compatible: ['zii,rave-sp-eeprom']
> 
> [...]

Applied, thanks!

[3/5] dt-bindings: nvmem: convert zii,rave-sp-eeprom.txt to yaml format
      commit: 17d6f058403d4e3458ec9c7dae607c065cabe089

Best regards,
-- 
Srinivas Kandagatla <srinivas.kandagatla@linaro.org>


