Return-Path: <devicetree+bounces-167625-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A823CA8B26F
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 09:41:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 392293BC98E
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 07:41:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7FD122D4DF;
	Wed, 16 Apr 2025 07:41:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iv3NMBAF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 173CE1A8F9E
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 07:41:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744789295; cv=none; b=Q75BqGnFNlaerenmoUl/XaNHmXWBJXVexXVV4pgpTVpJYkWHacP5Js3gs0GmpokD/G3nNWr5OyrdRsge6Zn9ZCOKrLTinXLVEI7KPobHkvrQ/z8fP++qw4o6fC0BFBgSVeKhZ59bikeBoBUeDsf61JkaSWQF0aRbLUg52Et7kag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744789295; c=relaxed/simple;
	bh=rSAJncZcOxhrIeYAu6wLUpuKU481cEBXgkEgjcndSaA=;
	h=From:To:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=TDSxU6D5NEQw5xHiZm2EP4TJXpSd71AKVps8bGkWR5nMr5apvr0lrydsCM6ZyLkpI8di8BidD9v4y6lg/KohOlOfncmnbQGqlB+LwIH4psgObuVU5lKG7zjMdr0RonotVjZytw610n1/HCk3Tq4Vc3X9qxSHJ7XUMLPjYyv4Kww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iv3NMBAF; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-ac30d4ee128so93824166b.0
        for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 00:41:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744789292; x=1745394092; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=abI2JFnN51Fprcf7bwh8hgubrVutcDKlmiL/HsbIAiw=;
        b=iv3NMBAFPOHm82LjBdbT7JUt9VN1SBtg2ezeZIHaLegNa00xSUz+HcOrj7dPXeto36
         t8/JW1hjkWGeXEw7ffC9bEh/5ZJSCwJZWY/pmaU2hTttR4xqG1I+VhibWv61lldls+3F
         d8lvMVvQ/8tA215iaY8nYx80JmEBA1d2ySM5pPUDaxfb7o2j9hzyV7ZBv9vYH2YMS0o1
         U9wT0NTESaaxNrco6gqpj4PEL0CgfVW7lSAEKv9IfryFPSpuVlofAwGKuxYCgV3JdYMu
         jlrFphn7InLqZ7lIpwEZRzPHKh5ZSJ4OqsE6VGH+fdRYA0uzsHetfZLuc5lZ6Wh+pz60
         o+Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744789292; x=1745394092;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=abI2JFnN51Fprcf7bwh8hgubrVutcDKlmiL/HsbIAiw=;
        b=TgY0XZoHh/ZHaCyDq3ZBT+CZpFqKtNlcKyHKGGW/WA/kWwTDROn4htfdL20a8wWefn
         WmHL61/mu58rdPxYFX2tIKaPEgoAjP55nlVRdU3UTRovXIRboLFhpfwKL4tzojgoNzUT
         c2Om0HMr5nEjO5xnXXDKve8i4z5uiWhVyltBW1O+PDYwfbs3AJN4aIuUpx6iglLAs/IQ
         +9HT8y/vOXXseOYdskwTfrwOziTzl9+TFhsHvVDzqBlYQ+fY0cOILEvtA4M5O0G/9jsM
         /TutksRy6W5oFH6k+Ic9fIN4KmtpeiOd5SP8j3EEOS0rXxF3yo3fIT0bqLj+8bfpseV0
         ZPag==
X-Forwarded-Encrypted: i=1; AJvYcCUFwec6GdTTRiwMt3cvdEhegnu9f1DQ2enDAO+JuVx8VJ1zqaBErKAgUfHQUoTOfyZN+VAZnd8HAO1c@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0NIUyN+krc9Gqf4xY92JJhVpNOK9LMsc00aP4dQqVFSs8J0ya
	Xqxb+n/h8cDfsgYFUdoCGYE+MMEkFsVF4coXnmB5TECLLJI4lRGKwXEBJzTnnFE=
X-Gm-Gg: ASbGnct7W7DKODoO4kVcTphpXd0FaqVdtmsQG/Yj4guxs5rRZShL4rHwzd6t4gugdfy
	nJmWJBRUaAHB/gycPpFsHlcbFxX4Lzah3YTwdgmO0pZZijRG9nCMLn5lH8xMCfLe4jAwl4FofYF
	ejpgYjkiT8Asm5DjYtWg3qh3avshu+Xm7B/ZkisDkJzDl0U3cDuVtjwE2m6yJGDqUGCHslE942z
	4mmIgwY//NIBKs0EvBWZO4Ei7eMToy2z9SzHULG09czpgfqqUv3+4ii8lsn/iRqHLF1Dvx7UInM
	P2WFlGnoLUT+2RC7EsNIWQfMaS9+6R9q3CLqSfKbi4gb3EW5IbiOATm2iYEP5Lu+o0T7OiI7Uhb
	oNDqExC7GXC+FUwg=
X-Google-Smtp-Source: AGHT+IE8h6ZIusbOx2fa72lKxk2qdTusNLhfSvFACqZPuu8uuX7bjmdba+8fMR+GvnuolveGcRCPWA==
X-Received: by 2002:a17:907:7e81:b0:ac7:3910:17b9 with SMTP id a640c23a62f3a-acb42c8e771mr17201766b.16.1744789292298;
        Wed, 16 Apr 2025 00:41:32 -0700 (PDT)
Received: from [192.168.1.26] (46.150.74.144.lvv.nat.volia.net. [46.150.74.144])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acb3d1cce01sm74205266b.160.2025.04.16.00.41.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Apr 2025 00:41:31 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20250115211801.194247-1-krzysztof.kozlowski@linaro.org>
References: <20250115211801.194247-1-krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] arm64: dts: mediatek: mt7622: Align GPIO hog name with
 bindings
Message-Id: <174478929099.20468.14418379313255979226.b4-ty@linaro.org>
Date: Wed, 16 Apr 2025 09:41:30 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Wed, 15 Jan 2025 22:18:01 +0100, Krzysztof Kozlowski wrote:
> Bindings expect GPIO hog names to end with 'hog' suffix, so correct it
> to fix dtbs_check warning:
> 
>   mt7622-bananapi-bpi-r64.dtb: asm_sel: $nodename:0: 'asm_sel' does not match '^(hog-[0-9]+|.+-hog(-[0-9]+)?)$'
> 
> 

Applied, thanks!

[1/1] arm64: dts: mediatek: mt7622: Align GPIO hog name with bindings
      https://git.kernel.org/krzk/linux-dt/c/6e3b067d3c5e00dea2e38c609fcd247baa74dec4

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


