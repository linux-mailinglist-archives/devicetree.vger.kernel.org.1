Return-Path: <devicetree+bounces-74494-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F1B09037CE
	for <lists+devicetree@lfdr.de>; Tue, 11 Jun 2024 11:30:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 71CEC1C231F7
	for <lists+devicetree@lfdr.de>; Tue, 11 Jun 2024 09:30:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DDC617920E;
	Tue, 11 Jun 2024 09:30:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cbl2sVzT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5DE117623D
	for <devicetree@vger.kernel.org>; Tue, 11 Jun 2024 09:30:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718098206; cv=none; b=T9/2ux5JWZC7IHBfcvYMmtmeWQ6W4wdcSaZhNh3GKGOwiO9x0QO7ztxS6ftiYX3zJlAfulPj/F5b9AfF9uh9yfe7LeQwIrFRvUX6qmwK4nn7weE66W+278f+1G+QQhe9eXEYxFqEL+TDm0R9mQ1FlOanl01qUyvKRjPpMvanRQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718098206; c=relaxed/simple;
	bh=V29tsz11ddWec/BiVYTyHN7q+V6E3cj/0GQjkwMgEGU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=UfnSc1MvZ5zPbfiQvNLlsLFDM/QkvEP7XSTX2YOSDhuPtGAIX87PgNuCpWMuA/ZXMhjTpu+FLv0sOHiqYBinZxSj+4AJxYX5ZpCpcoRDheeyftwhcmb7ZuDdzWmKrk5MBok/wtx8QF0AD7W0YQLXDgh16yfsNdl+YtChhYRfU/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cbl2sVzT; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-a6efae34c83so351588866b.0
        for <devicetree@vger.kernel.org>; Tue, 11 Jun 2024 02:30:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718098203; x=1718703003; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KeCu3tUjEx028evCXdGN5tv9lNYriQ2BwgD04jiD6GQ=;
        b=cbl2sVzT4MpEx6t5Vil036R7n1PwOp9YmfG2gt4WrffbthNIpHg0QtyGBFsf4Ak7Yv
         Ae1ovxn+fNvRUtqwdKRIoLzJgklO42FI7R+UV5o82mh8JphCd0wHPfpp6yEsZ8m/mIKN
         YRkiVJ0iMOD8jEcx2wEsq5+oGC+Sxgvm5axS6tQmgJ4W5JDi300oNEgRbaYzIU7BuUiu
         MmJlpn4iRWwIVN5NAjjOXhO+mhOR8pj6mDfcN9tr0S6dxqM1f057GwqhJgfBCb1a4PR9
         eLbh1ZpAtldF9WhC8YXMSzJesJTW7XmaSap8w54cDRIdvvwFyhZ6uhpPcSzcv0aKxcn6
         xgLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718098203; x=1718703003;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KeCu3tUjEx028evCXdGN5tv9lNYriQ2BwgD04jiD6GQ=;
        b=hM84cdf0uMFElCN6ugxQ8/F1itgcYHOcjUO7H+h3IuXmMyarTQBG+zyFuA7jSwHVG0
         RGs8+EoVQBJeKnDuomnjJuhBEylfVADSXKC9BOPQ3ppL5aY7GV5mfXX/a6yuN8cPnnhl
         QsdPqKIlRcN2Gfr/QcXdIcYk9cRFURq0tzrcZs7Pch91ZyFAQ2SC6HAwNYAfnS58x/L/
         aGg9JoFqc/kwUFr+BpLX9mN3HmRQ4C2IQODb8sg8Wjobak6bjKeBjKT6wlQ0sH/sc0qD
         iGkufDqT0cM9ZKMyEhDPfpAilYI6mwdjfbiVOjdHyEYhJFnKNbbi9v9mee1BE7jYwAuJ
         R/Dg==
X-Forwarded-Encrypted: i=1; AJvYcCXmKw+Z4czUM2PE8sTHMUVInkLs4H5tOzCvXNMr2gdEijliy96kOtTMcee6TG3sEk1GE1uxqca4Xias11trXDNP5qgo+DC6JZfsUA==
X-Gm-Message-State: AOJu0Yxl5zFF3fr1i1xL5Mglt25Elkdf18sNZOndj5892HO4B9M6c12g
	Oy8sig2JOb1pjlotT8sYSYxdsFHxxCdrvC83//jkB2qTlhYvkzBH1qaWIIr31q8iK2kW1Eea66f
	eeEA=
X-Google-Smtp-Source: AGHT+IF/a9tIY+1kNTK+eTlCUTe/xV7Dy6PMwjWOMtUOljMBVy53RU0KReMSvMV1AumLKJAx7f0mlg==
X-Received: by 2002:a17:906:fd86:b0:a64:722f:4051 with SMTP id a640c23a62f3a-a6cca20a6cfmr887290766b.0.1718098203060;
        Tue, 11 Jun 2024 02:30:03 -0700 (PDT)
Received: from [192.168.1.195] ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6c806eaa4dsm735715966b.110.2024.06.11.02.30.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jun 2024 02:30:01 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>
Cc: Andrew-CT Chen <andrew-ct.chen@mediatek.com>, 
 Lala Lin <lala.lin@mediatek.com>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>
In-Reply-To: <20240514015154.11206-1-zajec5@gmail.com>
References: <20240514015154.11206-1-zajec5@gmail.com>
Subject: Re: (subset) [PATCH V2 1/2] dt-bindings: nvmem: mediatek: efuse:
 add support for MT7981
Message-Id: <171809820148.51273.11471279174963512172.b4-ty@linaro.org>
Date: Tue, 11 Jun 2024 10:30:01 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.12.2


On Tue, 14 May 2024 03:51:53 +0200, Rafał Miłecki wrote:
> Add compatible for MT7981 SoC.
> 
> 

Applied, thanks!

[1/2] dt-bindings: nvmem: mediatek: efuse: add support for MT7981
      commit: 89ca7c2d13bfa566ea000c5515b1943d30d44311

Best regards,
-- 
Srinivas Kandagatla <srinivas.kandagatla@linaro.org>


