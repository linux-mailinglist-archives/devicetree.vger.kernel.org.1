Return-Path: <devicetree+bounces-184105-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A0A90AD3031
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 10:27:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 07D493B6185
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 08:24:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B30B2857F2;
	Tue, 10 Jun 2025 08:23:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZqQmcE4f"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43004285406
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 08:23:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749543818; cv=none; b=l2ULrP4InZZQeZwJmACgASANyqE8I5Pus+xBra0s4p4yoUyDejBuXEaj9kZDOpCJKM8MOKQ7HzxO+s46VkRQsaVfLasE8RJ3KWmuMA51XlSmg4rqVdMDsdaHS622ALk7HIueMJhXLK7OG7uwhpU0b5h2XvV9CEvUQ1UBU1qfmyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749543818; c=relaxed/simple;
	bh=DwofcxYmUouggtE8VyvYKPiM9x3OgSKS3Z+dbnuIrD8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=gk7M8QltLbn30iPu5aL0TxdgRvVlaGSg1olC4lCD/OS2RH5ll91uHRALHKcSB0XTT5zrwBY52pKe7PIHed7q1gh5gXBgwead45fgj2V8rDAAHoujGJmr9qkNSRCO4x4JdWaT6izxeI5WTFcXF1HgJHbu1cmjCNuGgTxk6T2GWlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZqQmcE4f; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-44069f5f3aaso3034645e9.2
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 01:23:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749543814; x=1750148614; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8yVdDelh0G2g2TL5gxsNNSxDzJyW376EN3oDWRulMzs=;
        b=ZqQmcE4fdANUYrgTMLVPhrnENExcUtb5XUSi1cPFZNFBowj63MIcGDhDu+1qnJcDnY
         xGGQXNq7J08jj8ngFfck2KyHvXIR3JTlgqjxY82G8p0Qp/qIjd1wThRNx+/EMxTSTBC3
         x4GPEz0ZR9qmQvsRGrskJCD//MA5X7ARRtfyCrp/JMyKu/ZtU2IckdVs/wzbF3La6JIA
         e0ScNv0oi5lhj41R4KA4pPEylxjAjeK8+EckODpq2AjYUNaKjT/idOykqyg9UZMmrcPG
         wLR/P3eTXXglCfS0v9Q35oWasjpLDUvlcZunIcLQFuNsFrdlViITcb3yQm0qIlguJ2/D
         +DFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749543814; x=1750148614;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8yVdDelh0G2g2TL5gxsNNSxDzJyW376EN3oDWRulMzs=;
        b=DPfOkHIzCxYxXuWfXCLuYhUI8Q9rW9QjwAhQC8s+cJ2vl4Bus7AOB+1hgcBf9Ut32u
         T8B7PzcUI+B7LYcGBSOZSM+uUKev1wFhorWSZriCZIRBDSN2FC/2BUGRqm+9pLgfgaQQ
         VyWRynjAoTsONKvyTzKWDUMxtFEOKQwr0YaJcxjWwqJ3Y59j5UqVltBhU+U7Tt5N3S+K
         t87Hy0/XjaePCfIsSRVxkUd2I5NvzeJLko9NvwqVo24Gg7kHK8I/533pA98v7a81uXFu
         m/yobo/GEi+CtKyveULLqbrElm+gHDitGWaS9F5nK7c+yV4vI9+ENvUPALwnVlZ82NUA
         dVvg==
X-Forwarded-Encrypted: i=1; AJvYcCUUeZ5fisLCdlL2QMIOLGzQny3QM8kyMBDgsSiEGBfSq7+sKjgO6CD7JGvUt/6hnrWuzmHyKUq5qppE@vger.kernel.org
X-Gm-Message-State: AOJu0YxblOClNaYvhzRg+2qh74d3H0RGO1K7zhwHDPu/mGt6zz/w2IVy
	fuaacvjhvTrxw0ekjU6Sw0UrWv28AmNF0+bH2CJ6ZqIOva9Sa7C3AvTeXLMfCO6aqyo=
X-Gm-Gg: ASbGncuzvAlm6DTMWU3CRfed46VzlylvCnHPe+2Bn3MM4U5yqHuo784RJiB07oGFGeU
	ET/D0ZlmH2PdVa9hNpxTnfTXoojrb76W/gFjvjpNkSGJyGLrMfS13uZ32fgfrtZbnn9byjpFgYW
	1H3s09psC6fzhO5BQbsp5qlkRJ7bLBEZSYae6mdD4MOJEfHHnTTXDW0y97WlLKKZODkvMTYco2a
	irH0T7f1iko0+HYm95i+4VyL1SA44XTgqDtUVXb59ZnMkweWWWe/fPflUGnil5x9iJeobjRDy8Z
	tNWsOLpwwPTRL56wlOCAAiCuO7OuoBOz1CzhsV8+Wa5PW8Hfr6Sz/t1uFJ5D4e2wHwMLvvkK1fp
	0ovAKaQ==
X-Google-Smtp-Source: AGHT+IH4Tx9uamsGrItBDI2u67txsm8PcW5JtSr8VTliqVeJ2KnCmT5Yh+EXBdeAxp8xz5LOXkLOJw==
X-Received: by 2002:a05:600c:1c1c:b0:439:8294:2115 with SMTP id 5b1f17b1804b1-4531072ab88mr23950055e9.8.1749543814536;
        Tue, 10 Jun 2025 01:23:34 -0700 (PDT)
Received: from [192.168.1.28] ([178.197.223.125])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4526e155ce7sm131726125e9.10.2025.06.10.01.23.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jun 2025 01:23:32 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Yong Wu <yong.wu@mediatek.com>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Friday Yang <friday.yang@mediatek.com>
Cc: linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Project_Global_Chrome_Upstream_Group@mediatek.com
In-Reply-To: <20250521091626.4283-1-friday.yang@mediatek.com>
References: <20250521091626.4283-1-friday.yang@mediatek.com>
Subject: Re: [PATCH v1] memory: mtk-smi: Add ostd setting for mt8186
Message-Id: <174954381208.117761.10620346119186400968.b4-ty@linaro.org>
Date: Tue, 10 Jun 2025 10:23:32 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Wed, 21 May 2025 17:16:16 +0800, Friday Yang wrote:
> Add initial ostd setting for mt8186. All the settings come from DE.
> These settings help adjust Multimedia HW's bandwidth limits to achieve
> a balanced bandwidth requirement. Without this, the VENC HW works
> abnormal while stress testing.
> 
> 

Applied, thanks!

[1/1] memory: mtk-smi: Add ostd setting for mt8186
      https://git.kernel.org/krzk/linux-mem-ctrl/c/e18c3f5cbd0243c60777f7a3a02e4506f5196c31

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


