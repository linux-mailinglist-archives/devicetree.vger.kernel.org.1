Return-Path: <devicetree+bounces-92870-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D0D394EA88
	for <lists+devicetree@lfdr.de>; Mon, 12 Aug 2024 12:11:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CF7431C20341
	for <lists+devicetree@lfdr.de>; Mon, 12 Aug 2024 10:11:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFE6316EBF0;
	Mon, 12 Aug 2024 10:11:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ofyOsYKv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3972416EB5D
	for <devicetree@vger.kernel.org>; Mon, 12 Aug 2024 10:11:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723457505; cv=none; b=Dt6Sgx519PU7nPxvCazSUYB9bbFmU0LftjYL5ne0g21XdNa7VL34b2YafPVA4Q8Ef1XJB0Ffs1Fw3lUm+USec96FJyTOGZ7Baw9KVce9vG7rfrtKD/k5xDDCcXxVFcvvN0BqFmbalOS6459mKUlPNbhTmnw8NAZHdMQr5KLgEX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723457505; c=relaxed/simple;
	bh=3iMokUuImpBdinZj6cug8rRZykO+In8pLlYeAYtsO+Q=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=W2/cx4+84sknq44wkvKnWiPalcSEOL/IPyc8Qss7A7RSv7+I0+mlNtUCRxf+J6unCN9XrNy4TFHVFn4yvdxlUPwY+Srjm5TmsQWkZBy/KWXZEB8fctQxjSqxxUxsYZ23Xq6q9AuIb71wimreNZLd67AEHeRmOT4EdVmkmhuYcYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ofyOsYKv; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-369cb9f086aso2475121f8f.0
        for <devicetree@vger.kernel.org>; Mon, 12 Aug 2024 03:11:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1723457502; x=1724062302; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qs0IKHeAxQAlH0KUH7xyPvsRAdcAtF8mW0kRBsZY2uk=;
        b=ofyOsYKvEvxhVg/knQFH5ECpH9RRR5rwRKrWGIynWCHdiIpb2ONx0uTp530YejXEf1
         0jUqvelY4+axCslKG4IIuD2Y0sawV7n+40GK/Dxl4NOmOHti4qlfE5ZSZEOAnp+rcL7C
         +yu+If2lpBaBsl4bkYBIMT3rLFbjCmwVWzsi/FrwN/NrcO1BqaAn2bp5GPDTnWCnSAl2
         ya0+3a4+nejyINnOql6/Vywb6sfvQeR2k0h4DpmDqjnHqwLDyevHPvIfDu9DOTvFzFZu
         4BvyG7EO45Zxyr4LlA/lRkG8o3ZdzE8zg39ZFgKp2wEOWOlmjqylHXXUe0ZulDtZndYj
         N3GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723457502; x=1724062302;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qs0IKHeAxQAlH0KUH7xyPvsRAdcAtF8mW0kRBsZY2uk=;
        b=KME6isJCIz358ziofd/QaWoXimUfdI3IiCoS64OLrgzsJnIF4Lut21cbq/PKxC1leG
         89g2tDGfMFnqpniwvZTeZY0hslrPvLZpkzgQTSTswwGOo4hYFxLVN6mEwa0o7XEvtesT
         4EfV0e2SCUMH0MDR39oe4PeePpqfHXJQKLXKww/FddUTb3/zCzfObD17IebDAI10jpHd
         rlNbyJ84MpCq/TIoQyXjhRWf50lR5ahxngjLnxu16f+gWLb21t+EgRiCOPunVO7Cyd3J
         1L2ABuJiyUZFviC0Im3v8eyxm56ZtGJ/O+CDrnh5c7A9aoUjx7PmWK2cbdXg0tCSKvIL
         hYmg==
X-Forwarded-Encrypted: i=1; AJvYcCXyssE3apaVwZCr08mc3/l1NE5oyUsWUxI2MabrhCFZ7Jd/zPKUoWJE99kl6Ip0F0965GsCiAYWLSb22/hfJHUHQCjKv46t0fgo+g==
X-Gm-Message-State: AOJu0YzpJ0hwOr+OI1TQSqy3S1PVKo/rGCboPFb/kIlKr+90QZ47o9FP
	cANhEcr/eB9SpG7YjN2VL9PlnjgzEH1QA2vygI7gKdagwyVVK2DvtumYirVFedo=
X-Google-Smtp-Source: AGHT+IGlO3NnT9Hhzm9PRD8xOI327gFEHgkync9rlZMpOLdthkxnkC8RycsJXV9mfHRTPtFIzXWcjg==
X-Received: by 2002:a5d:43c5:0:b0:367:8f29:f7b6 with SMTP id ffacd0b85a97d-36d61bc8c4dmr7545645f8f.51.1723457502350;
        Mon, 12 Aug 2024 03:11:42 -0700 (PDT)
Received: from krzk-bin.. ([178.197.215.209])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-36e4ebd2accsm7054591f8f.90.2024.08.12.03.11.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Aug 2024 03:11:41 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: linux-arm-kernel@lists.infradead.org,
	Marek Vasut <marex@denx.de>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	andrew@lunn.ch,
	kernel@dh-electronics.com,
	kernel test robot <lkp@intel.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Khuong Dinh <khuong@os.amperecomputing.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: apm: storm: Rename menetphy@3 to ethernet-phy@3
Date: Mon, 12 Aug 2024 12:11:31 +0200
Message-ID: <172345744171.104566.4347938938674088807.b4-ty@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240630033143.170301-1-marex@denx.de>
References: <20240630033143.170301-1-marex@denx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Sun, 30 Jun 2024 05:31:10 +0200, Marek Vasut wrote:
> Make the PHY node name adhere to DT binding document.
> Fix the following DT check error:
> 
> "
> arch/arm64/boot/dts/apm/apm-mustang.dtb: menetphy@3: $nodename:0: 'menetphy@3' does not match '^ethernet-phy(@[a-f0-9]+)?$'
>         from schema $id: http://devicetree.org/schemas/net/realtek,rtl82xx.yaml#
> arch/arm64/boot/dts/apm/apm-mustang.dtb: menetphy@3: Unevaluated properties are not allowed ('reg' was unexpected)
>         from schema $id: http://devicetree.org/schemas/net/realtek,rtl82xx.yaml#
> "
> 
> [...]

No one took this patch and it waits on the list for very long.

Applied, thanks!

[1/1] arm64: dts: apm: storm: Rename menetphy@3 to ethernet-phy@3
      https://git.kernel.org/krzk/linux-dt/c/2bc1577ea2b13f668fe36fa4ff831eb2a946d75a

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

