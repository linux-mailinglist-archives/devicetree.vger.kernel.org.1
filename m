Return-Path: <devicetree+bounces-167043-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D85FA893D7
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 08:21:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4D580177BD5
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 06:21:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2ED6F279791;
	Tue, 15 Apr 2025 06:20:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ruAXXydm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52597275114
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 06:20:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744698055; cv=none; b=Sia6zcAFQeHlciUg36hKWM0tl2zWocqk++h7ySvKk89TLcMPxN4gDhOJGG+RblXbCtgKglZcoSdP8GOddvfuyLBBexEHXA1RYTlpPeBDCalxeTDEKmaehxzkMtH5r31N/5WDi3Z6aDMRI59nYdIJOgTcNNGvTpX4gRH/dOwSb3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744698055; c=relaxed/simple;
	bh=15dopjAkrKSs5ScMZ+NYEAva1LfA/eDSoY1MTLaL05k=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=hAoGwViRJfYercP3ijLbe07VxDFVKbdQwXHW0kZt4GopNhcGBUF3+IfbQ9jqqUdGJwoH96AXG43X20yOQaTwn630hCbVMCHI6el41CXjv8mjeYVdElSjeRAvV6HTN/CUIOmf4pAEnYA1PwV8ZhINMF4xSqSV4x5+gxU45rlkeYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ruAXXydm; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-5e8484bb895so1496713a12.0
        for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 23:20:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744698051; x=1745302851; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oTt43XJFM8d74lWj5+YE+mCHEBEmob8rG+QikYcC3hM=;
        b=ruAXXydm1sbUdzoNjfuMCVIW3f+dEsw8LlyrOvQa4cPID51dafQZydGvALUad5Age5
         ZGo41Y1PJlqF6WP2vfTg9i1TNYVbz+IYupBwBPBFvvZBRukIQ39C9PfV3Q2G0QIWt1NL
         fO+OCumBDINY8fqGmMFLSLnHrMPs4+zNUXHslswMYyFcOGJA1XQx6FXTpiUIpiAvAd0n
         y3kGE5o28YCdlUsUj9k8kcIb660gY8P6+O/yHEjq/laqpK3JF/6v7IQeOkOIuE+XShYn
         ejI/HsLzFH0j8TGHuL9miRtQ6kHWKaMh6kIZnSDkHvY96KYHEqSmoN7DjpuX46g5DqjG
         jp5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744698051; x=1745302851;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oTt43XJFM8d74lWj5+YE+mCHEBEmob8rG+QikYcC3hM=;
        b=Xj1RnEGpU9Q2ueVJ4S4xBaPwi2TA/Jwc6ETKp5GEP9ro/VzctptJaveMmDFbQAp2jZ
         N/mq+4oc1tt7LRn+1Ij5sbiaiGR6k3anhBu/5h2yDAF0ORanL33Ybol9b0edISvWWxms
         2Znb/ktU/vQeLP+bQwpzkIoVz/NISJ82KgEf12/M90y37I6xdjZEPPfnayTIz+7DY3v6
         AfA7l6mXyBB74yzNybOIUaMnvT7h0e1v3SqXcAUMLVvuli1C8khQPuZugj7fgDhIeRwB
         8mjihhWyR74MQIfOPXdYI/sE+N+3ZpMPbeE87ZzoZF30hVEJA5Y77T16zFqk0H6RVjCP
         WSJQ==
X-Forwarded-Encrypted: i=1; AJvYcCXgZbNkXreO3yJXFDJOJ7nT6PBff0svMIWTleRvRRl/vKHKcnYoSvOo7vwZzseTrSCp5ecDpsoMhAAz@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/a0Fyz28AjrY39irDxmKJgpScSWMb3BiTYwP9xXf295tSFB7q
	QXhX5ZUbA0UZLplAiwVq2VZF7SEADsHp1ENyVaWWK6GEKAJ3VI35/lLT8bjBB00=
X-Gm-Gg: ASbGnctgxNaa11+mBiGUNhTLWXPSze8ThORVyor9fce+Ak80Ej+wJMI3i0JOGzx1LzS
	aQQkmYZVfRSuQjmFyF496AL+x0IBniHV32xMzpgxPIOhjGTmL+gtVhA1zx2rPKc3HDWrk5TZW8E
	yhX2JhySQWI8lS3eFt99+Ljhl+3JQ6ylJZqVep9mB3zwgACFMYZmleV3653bfDoBp78+BQYw1KJ
	VyhEaP25suG/Ea2F9CvfdHmV9QrEqzK6ZxLsTdfrut0v+GVOHv1rRm9x0nq0Xva0nC/eTfhnIA1
	M9Bab1ipNASIo/ccdo3s/g89b72IpH80tkFxeW1ubqvJ+obRXEbgVnLWf1nIdfJFCPxcWsy/77n
	5rfSGGZq9Xvto4y8=
X-Google-Smtp-Source: AGHT+IEN0ddkfxeUgfcu3uOUBPG5D5WB3HL16m1L/qkNsUmiRD8iOuxqK/rPwSxrQiytFN9HNB8I7Q==
X-Received: by 2002:a17:907:bc87:b0:ac0:b71e:44e0 with SMTP id a640c23a62f3a-acad34d87admr480746866b.9.1744698051564;
        Mon, 14 Apr 2025 23:20:51 -0700 (PDT)
Received: from [192.168.1.26] (46.150.74.144.lvv.nat.volia.net. [46.150.74.144])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acaa1cb4129sm1053861866b.98.2025.04.14.23.20.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Apr 2025 23:20:51 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: yong.wu@mediatek.com, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: krzk@kernel.org, robh@kernel.org, conor+dt@kernel.org, 
 matthias.bgg@gmail.com, linux-mediatek@lists.infradead.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, kernel@collabora.com
In-Reply-To: <20250410143958.475846-1-angelogioacchino.delregno@collabora.com>
References: <20250410143958.475846-1-angelogioacchino.delregno@collabora.com>
Subject: Re: [PATCH v1 0/2] MediaTek Dimensity 1200 - Add SMI support
Message-Id: <174469805024.15476.6855555365246052771.b4-ty@linaro.org>
Date: Tue, 15 Apr 2025 08:20:50 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Thu, 10 Apr 2025 16:39:56 +0200, AngeloGioacchino Del Regno wrote:
> In preparation for adding basic support for the OnePlus Nord 2 5G
> DN2103 smartphone, this series adds support for the Smart Multimedia
> Interface and Local Arbiters of the MediaTek Dimensity 1200 (MT6893) SoC.
> 
> AngeloGioacchino Del Regno (2):
>   dt-bindings: memory: mtk-smi: Add support for MT6893
>   memory: mtk-smi: Add support for Dimensity 1200 MT6893 SMI
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: memory: mtk-smi: Add support for MT6893
      https://git.kernel.org/krzk/linux-mem-ctrl/c/98a4109320f9b7007475a9d6706d3434cd8aafb4
[2/2] memory: mtk-smi: Add support for Dimensity 1200 MT6893 SMI
      https://git.kernel.org/krzk/linux-mem-ctrl/c/bd4f5f6c84d074d9347b55731891729f136d35c8

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


