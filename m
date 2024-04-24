Return-Path: <devicetree+bounces-62163-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 575E78B02AA
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 08:57:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0D4CC1F234CE
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 06:57:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CC08159219;
	Wed, 24 Apr 2024 06:54:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Yiwovhoj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BB2A1591E6
	for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 06:54:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713941677; cv=none; b=rK6ZmBJvIDfr4VufDJtdEYYwZSe3G+OmAiWAkpObLtmF3Wj6W5d+JUkE+0ToX1yk6tlkdBAnrI04AWTPC9cS9Od6OD1z3wKmaSKR3ZM6gbPOKz5/3GdGVkolR41nPKmplSQ8mq/kvB0mDl/qNG3o0QOC0lHoXdQTpn46v0VO4h0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713941677; c=relaxed/simple;
	bh=rMBiVChRs+W04zqApzHpnVfHiUgjHGXdxJaF+ktELiQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=gff3xMwBSERkTDxsvVLmhtFsfddWS2yNpL7XukqfT2VqQu6itmbqYkGgb9MnOOEbL4n0J145AJC+XVjj1kEu5y6r1mUuxVtAx+EZi9jSVBU4q8wNVb/8fJcKSUWd2/MUZgW/FQaTUVogroUmCpZR3801npJDFHZzl5/+HgYiFRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Yiwovhoj; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-34a32ba1962so4712916f8f.2
        for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 23:54:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713941674; x=1714546474; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dssEH/qYdNeQC4cvSW1MgOkS17GLYLSslPTMNEga46I=;
        b=YiwovhojOYxGeCexNh4JZWiOxrsdSaEba8p1ifnr4LU8S9odksTZ69Khk0NBN5wf6O
         vP0SEw0AM8zvkL3882xg4BhsSNjyIb0/V5DILTxJm/8cYRKASi3JSV07QKITz0cUYLjM
         irb55UX08HV079Ah/2HCTnSdeLcxVZxDW3SrOahnml70wfqJRc6APgbYpKawAW16Hm+9
         SDQUami3f0kSf6bYthUdeEQiatp6c1CnyHja6dGNXhSHODm+BN5h/Yj0kohHEllWz/v3
         adcbVldCov4k3TdfciuNrqCHUq/0KA3OYL/448J4iPwPWDf1myAXAXXn1kFEvRMa68WG
         LbIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713941674; x=1714546474;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dssEH/qYdNeQC4cvSW1MgOkS17GLYLSslPTMNEga46I=;
        b=PjQIjHh+snhlDgiZ4jU8wGJN9hbOXSXICcTJ/fweUVr5AWo333YcZG7rVtNFf8Ca4i
         +gdYtLglW9xh4cTTcp1eWv5kIKEXzGEumzks4xXKTAalxVuaQd83fS3EbMTBVl7JUA6r
         WYO2PK6TmL1y7Yy1WrbjOlBQ4RQdH0Sz0T2ZqgxZdD+4efG/xajE8kwz4CB4ZxjcEO/O
         fB7OtyT/h70ySdmSrMK8ClhJloWYx6YazALTENC+IfxJcWFc/czosurWAfYWqzIKuwvZ
         6vatJOEUkNUvcaK8p9gR7ewTf84phnHue13XxYQlRCUfPgczSvZTobBR/ChRX7pyxHLw
         gfwA==
X-Forwarded-Encrypted: i=1; AJvYcCWJVrrIK/4qgrp6kN6kmKhiPyi7nCVEpHGCanjQ3zryDdpFFdh2gf7NBgluNjCDzrqQ+JNcBassXzkoPOk5EsUvSFceR3asSwQqxA==
X-Gm-Message-State: AOJu0Ywhn709h7LfenbSCqUwgDXMNWHIGGo/T5VldQJdcAJZMDYbsnMb
	oYSbP3/QuSqTYjSMqKcZPQga/Z+zYlwQMFWJAPu1U9xqmgrzYa769KomyJrdPF2pI5upd15l9/Q
	7Ybw=
X-Google-Smtp-Source: AGHT+IFhiBcLAQ1yuO0lYc2qwTsWoHIhnX587GWjgmnmu9KpQtMLE6YuRzTlYmlzEb7IkKAWIcSW8g==
X-Received: by 2002:a5d:4a0a:0:b0:34b:6ea0:cdd9 with SMTP id m10-20020a5d4a0a000000b0034b6ea0cdd9mr963968wrq.22.1713941673757;
        Tue, 23 Apr 2024 23:54:33 -0700 (PDT)
Received: from krzk-bin.. ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id t18-20020a5d6912000000b0034997769ae4sm16338534wru.15.2024.04.23.23.54.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Apr 2024 23:54:33 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Wei Xu <xuwei5@hisilicon.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH 1/9] arm64: dts: hisilicon: hip05: move non-MMIO node out of soc
Date: Wed, 24 Apr 2024 08:54:18 +0200
Message-ID: <171394159880.43787.12383182687947213751.b4-ty@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240402193148.62323-1-krzk@kernel.org>
References: <20240402193148.62323-1-krzk@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Tue, 02 Apr 2024 21:31:40 +0200, Krzysztof Kozlowski wrote:
> Non-MMIO devices, which are BTW not really part of the SoC, should not
> be within simple-bus, as reported by dtc W=1 warning:
> 
>   hip05.dtsi:301.30-305.5: Warning (simple_bus_reg): /soc/refclk200mhz: missing or empty reg/ranges property
> 
> 

Almost a month passed, no replies from maintainers about picking it up. Dunno,
looks abandoned, so let me grab this. If anyone else wants to pick it up, let
me know.

Applied, thanks!

[1/9] arm64: dts: hisilicon: hip05: move non-MMIO node out of soc
      https://git.kernel.org/krzk/linux-dt/c/8ff69c1d04c8f2381164c5f97781d9fe79f71761
[2/9] arm64: dts: hisilicon: hip05-d02: correct local-bus unit addresses
      https://git.kernel.org/krzk/linux-dt/c/4e0e9c0b311e599c78f63942256ccf03e5ebb0f5
[3/9] arm64: dts: hisilicon: hip06: move non-MMIO node out of soc
      https://git.kernel.org/krzk/linux-dt/c/2283b9afc1b43ec941c66665cdc86dd32f9c2295
[4/9] arm64: dts: hisilicon: hip06: correct unit addresses
      https://git.kernel.org/krzk/linux-dt/c/6c55978774fd66c720e20e1f88a2af7daaa382df
[5/9] arm64: dts: hisilicon: hip07: move non-MMIO node out of soc
      https://git.kernel.org/krzk/linux-dt/c/5e607ec42116e0ecb387e2db79a662333f789fa2
[6/9] arm64: dts: hisilicon: hip07: correct unit addresses
      https://git.kernel.org/krzk/linux-dt/c/76dce22bc7ec9483ef37899a617f2dfde2a382c0
[7/9] arm64: dts: hisilicon: hi6220-hikey: add missing port@0 reg
      https://git.kernel.org/krzk/linux-dt/c/d6fcc43f764630863e3888d0b5c3ff4a09a4f094
[8/9] arm64: dts: hisilicon: hi6220-hikey: drop unit addresses from fixed regulators
      https://git.kernel.org/krzk/linux-dt/c/e6a91e9f20058629dca4f0c264de092049bd8e74
[9/9] arm64: dts: hisilicon: hi6220: correct tsensor unit addresses
      https://git.kernel.org/krzk/linux-dt/c/83d4c5e2a529e3eebde5b4d75e3ec0fe2fc92440

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

