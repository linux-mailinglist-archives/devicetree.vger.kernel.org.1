Return-Path: <devicetree+bounces-172243-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 38DB5AA43F2
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 09:29:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A4436168B4F
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 07:29:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76EF320E332;
	Wed, 30 Apr 2025 07:28:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cUzqbJ+R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F8620DD6B
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 07:28:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745998123; cv=none; b=MTPfpMmYcPvNW4Q5BotaQug8llZ3ErN5xUFj3rQB1p0lw0NQscgiBoDuSIKMZz+FAgtTmZJ3iJTNgLyIpt4rT2lnH+ElJ5BeMU4rdeSJcWwYgE59CnWy++RrmMN2W9T2VVqujt9GzSKY2JZZ1goFp8kEYf9wnEyw04FMl5Unv3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745998123; c=relaxed/simple;
	bh=xKgIqILnPtnjS48N+Dxj/TVujiXB39GbV1nYOP1dghA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=mOnTcA/biWhzjC4b2d2KfF/rFDuaC9h/jKj8GNqBfn6fY9RoxmUyh8TvDN5b2mL/WmPctwl3BETJtFLjImAPARNL0NqY04IsRPINxEdDvViWtAvJBxvrX85qMLWUkrvnviZ4nYlgkX6BTY5Q6Bv5w8BPYQOHk0c7BAThEsp1rpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cUzqbJ+R; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-39ab85402c9so219135f8f.2
        for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 00:28:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745998119; x=1746602919; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=07WxlVOIaTyluGdh8BRRgEGy/WFU+aaBchjV13UhNQk=;
        b=cUzqbJ+RUnLOn5pWZDxsey/6sMW6jh/ev0MCeTH7TDSNtI7quDWtr3f3KVykftgO7I
         W1jpxxQwqi+3PCu5/humMD+EX3hIHQVa19FbMhdvplUlLeQFUeBRVggWx3qH1j/aK6Wh
         sDY77CoeXwXYlkEdi+atizs4RgXcBagYqXXCXmGvQd2G/2n2tO45TdlWVkMzCWvE2XOt
         y7nTvJLtg3Di0cJ+mVnQe/ympMrBrFIXKmKYlGhK1+BrXLFPeWUJP3QpM0xicTjUs19g
         dcG7bfmxl1woofo3hJSyc9bGcAP2H5kGYihhG3FmTErt5G0NP6GiCiHTnTC9PstzM94B
         m1Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745998119; x=1746602919;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=07WxlVOIaTyluGdh8BRRgEGy/WFU+aaBchjV13UhNQk=;
        b=gOqyjX0NbrO87DotIZzKDx/BiOH0IhouDPwebcXUkhng4PHVgLdXDMLwbst2nOSeDN
         ZSp16X4r71JBMo31q8ip1JXdpej7FRZoZPeegvobWCa2bchlTmuG7JR94WO92PdgWfuk
         oT3gieyBkBKP8SWFfj80grvvjBLYNRw7aRT51MlMBUIZnX8K+8JWbgy0k6GueVmaEmS2
         8faU/3geGkLQpRVgsQVAXMtZIvEu0/4qeqRSQai0k59SgJoQHlRWF9jhKPrX/FReFbNC
         IddBRbWeLLESDBCsHov6DbV+oWZO3fhE5Piee4p78SJSXIVxBKe7YOObAy+ZTbp0ot6c
         oF8w==
X-Forwarded-Encrypted: i=1; AJvYcCX9GbsqhCcftYTOWk5QjQfaFoBE2ukqOw30lfq3hecebaoQ0xulTHb8me3LlH33mgV5Ft2jTb6KDhx/@vger.kernel.org
X-Gm-Message-State: AOJu0YzKgi7MJggwCXWqb7ZPeg29Zug0YaBeKWfnTMt4fOpzJlWGsvAp
	I76ziwygBRBsgI7ajmxazevHfBfgO/OeI4UyWiyRp7dzOrRK8ldvVlzoKIVH7Ck=
X-Gm-Gg: ASbGnct3ph2c/4TnEU5nONvf5r6p2ogDK0x0LgYuNnm5Doxah/KWpzfheEUJebpk5m2
	BONxBQ8UermCMA+j/BIuX8wnI0CblZN1hFCRgDVW/puqRL+QXG5To6SoEvDtN/uGdjeLbMc04X7
	NDaPbqlGwL0thQt4KNaWQez4faOdMOBs91HRbIpweRZeRAs00X0x+4ScUVFl+IVPNxE1SAwzHHS
	oiDsfF5OnLGdP3aLZPkZce/bYa2MC5iXkMQIJbLJXH6WZ84yqr0KPOEc/kpujnbonoaHpaKpNIv
	o4nVy49dvMBypNJH3R5lzHykP+eiJfLM1XA3u75bGl8ioMkmremW3ATnNaY=
X-Google-Smtp-Source: AGHT+IH6V25XvncoZLZe0TycQ29EnlwaWMEky41C5N2edT8KzWHciHnrPjPlKJj3kIRZ+fXKOUOaNw==
X-Received: by 2002:a05:6000:2dc3:b0:3a0:7a00:61e9 with SMTP id ffacd0b85a97d-3a08ff35f51mr414041f8f.0.1745998119358;
        Wed, 30 Apr 2025 00:28:39 -0700 (PDT)
Received: from [192.168.1.28] ([178.197.207.88])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-441b2ba4a6asm13905525e9.11.2025.04.30.00.28.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Apr 2025 00:28:38 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Sunyeal Hong <sunyeal.hong@samsung.com>, 
 Shin Son <shin.son@samsung.com>
Cc: linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20250428113517.426987-5-shin.son@samsung.com>
References: <20250428113517.426987-1-shin.son@samsung.com>
 <CGME20250428113601epcas2p11d09d84944957018da75aa548d3ecb2c@epcas2p1.samsung.com>
 <20250428113517.426987-5-shin.son@samsung.com>
Subject: Re: (subset) [PATCH v2 4/4] arm64: dts: exynosautov920: add
 cpucl1/2 clock DT nodes
Message-Id: <174599811787.45412.1841327377938630305.b4-ty@linaro.org>
Date: Wed, 30 Apr 2025 09:28:37 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Mon, 28 Apr 2025 20:35:17 +0900, Shin Son wrote:
> Add cmu_cpucl1/2(CPU Cluster 1 and CPU Cluster 2) clocks
> for switch, cluster domains respectively.
> 
> 

Applied, thanks!

[4/4] arm64: dts: exynosautov920: add cpucl1/2 clock DT nodes
      https://git.kernel.org/krzk/linux/c/aa833db4b82205275f4a4c08554b3dde99dae0c7

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


