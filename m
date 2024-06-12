Return-Path: <devicetree+bounces-74883-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 860E5904E12
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 10:24:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9E6EA1C20A53
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 08:24:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 893F916D9BE;
	Wed, 12 Jun 2024 08:23:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dhfJP6Hk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC41F16D4D5
	for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 08:23:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718180594; cv=none; b=BWsnQ8+SWk9fFUx9Cr8XtUrXVFcSauMSHYZ+KGPVucUSYsWzeULeShnSDu2FlFtPD2zKDWSKmLZyIAQYhHcsOIM/lUkTcICJmOkcn/pE0nLnfYh21ZqAdaVpCMvTQ4wACE2M1cckI88W3P9XnVnc3baWrtIuTmVNDE0FxXxRubM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718180594; c=relaxed/simple;
	bh=ojT8IuqMgyzfDw2wMoNvYt+uu32xWFLQUITFx2+fWyk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ohZdAq5urF3rh5v2yrLD30jni6TrVkDvWjio30vTpNfFRa7v6GLeI6CDVPkblEdGfVZtLf6Elx9EwrFDcSEsKFFCL7ZAJBPz09XdHtOEGmMTXepEdyh7y+zurZM6bNyS2qSB6R3debsiW1CpvK62s5j2SVQaRECycmgZtrj+JG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dhfJP6Hk; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-35f089e35e7so1274275f8f.0
        for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 01:23:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718180591; x=1718785391; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WpHmVv+aTA7gN193ghI3ZoLV8W1rgoLO43B87PnmGx0=;
        b=dhfJP6HklYagYtTM0l2m1FluX8MDIBdfWF79IHIHyutqxzr6V+juAlQF4NqiHJ1j/e
         6CLFlWsZfSlqiqW0ly0PEwbONhDbUVYfo/Dj2EZ0Xpk1m9ruI9hh9XxKukynmaghrO5u
         t1O0ui9ta8/YAZaEsPaSR/y55dz5XC1jZdT7bT8u0Ca4jadxW/U/zO+alunDmUxeKfCe
         Xh4P0KfQv5GGcLhOuOe1qf196gpCMK6BQNYKPGTzOBQ0ngOOPYRJuzIkx1bmUe1+4Bl+
         AjBkMmXHAeohOPtBnZDD+Tp6fiSStvvHKQGBX/dCedwfqrH3X0O6oWY0RHrYKwtlfJfm
         6AsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718180591; x=1718785391;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WpHmVv+aTA7gN193ghI3ZoLV8W1rgoLO43B87PnmGx0=;
        b=AZhoCkE2pM7ShRDJ0RHrEPh2rMQ3IOGPluTrglPQMtXR3ZUHl8i/zyMEY+77Caxa5f
         a3blUQvRXfePtWkO8O8Moj0BDFSwCdmwh7z8xHIFOmkSfwU8ak3vu1jROc8TSShCoVot
         /w0lzzljj+PX8D0bRZeNxcy4oESG1tF9IzF8W//ziqoCmvvWxAQRcptcATotioZqFFp5
         RtlamOQ8yNLmEu4ZVror9JFHVfcXZgrKP12Pv4Zsqz6NASqs9vvRpHsZdkv+erXkBlyv
         +w9eq9Xe9FuQMgm4s83n6dDqh6EqFmizUQnjJyplvtKvBBvKG9G9ZCCjxBisUAEhzqpf
         jsWw==
X-Forwarded-Encrypted: i=1; AJvYcCV0elJljRZSfV5E7/aEudtqqScc0dRGFoGSnpgs6aOUZMgPEibkoqTU8CdHckkzxKvd74O/YuP/jYLyWxYKMBUM1DGQsEU85ASMbw==
X-Gm-Message-State: AOJu0YxpkR8FOcBl5zO5N4/u1kxHH0b6FgBdFPA04B68jlwYNyufYYiV
	Ro0t1V1u9yud/ptCY0xL1I0XJTG8NNXxbWOwKVWDKjV/K6CXiBlKyZiD34LLto4=
X-Google-Smtp-Source: AGHT+IE57OSgQapFB+OyPJPptfmP536/k5ZcHQST0lV1cWK+35gfih4e6xVNky9OWeYJmGgbyKenKw==
X-Received: by 2002:a5d:66c2:0:b0:35f:d54:5589 with SMTP id ffacd0b85a97d-35fdf787aa2mr792729f8f.15.1718180591153;
        Wed, 12 Jun 2024 01:23:11 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-35f1fd78d1bsm8796559f8f.48.2024.06.12.01.23.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jun 2024 01:23:10 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Orson Zhai <orsonzhai@gmail.com>,
	Baolin Wang <baolin.wang@linux.alibaba.com>,
	Chunyan Zhang <zhang.lyra@gmail.com>,
	Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: sprd: Split PMU nodes for heterogeneous CPUs
Date: Wed, 12 Jun 2024 10:23:07 +0200
Message-ID: <171818054830.16919.3359416958968800927.b4-ty@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240412222923.3873814-1-robh@kernel.org>
References: <20240412222923.3873814-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Fri, 12 Apr 2024 17:29:22 -0500, Rob Herring wrote:
> Arm heterogeneous configurations should have separate PMU nodes for each
> CPU uarch as the uarch specific events can be different. The
> "arm,armv8-pmuv3" compatible is also intended for s/w models rather than
> specific uarch implementations.
> 
> 

No one took it for two months (!!!), so I'll grab it for my other generic
cleanups.

Applied, thanks!

[1/1] arm64: dts: sprd: Split PMU nodes for heterogeneous CPUs
      https://git.kernel.org/krzk/linux-dt/c/b32e036a7403289b2a10a438bb852da7ca651c86

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

