Return-Path: <devicetree+bounces-211133-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 99973B3DA00
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 08:33:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4F9E13B6631
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 06:33:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8ADE125BF1B;
	Mon,  1 Sep 2025 06:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PUH1RrNn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7E5825A2C8
	for <devicetree@vger.kernel.org>; Mon,  1 Sep 2025 06:33:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756708403; cv=none; b=tFnq3J5b+bQ5eQhr/CsbTinnPWokUPkxtnabnulK8ls/+2R6L3x1DVQaihiLrxaGRr0Hv/rPiLosmOHpcflaZzCHsA15BxPR6wHo1urecwxt8OCkk4H6oJzkNOkh2zTD0lTw+CpbXdCGWMvlWFmX2hbjjIAGZ4e83YLpkqpJ7No=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756708403; c=relaxed/simple;
	bh=+CeJXa+e4zK/6sG28nGzvsAwOcZbN6tT4ayz7cnNcJo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=YBW3WKJxKdw0LCSmStP/mvrlc9XPhsTc8HQlkfmJDPwhswhGk0fczI/FCTQWaROJqEbKebmkzEltCFNj1MIHFQpsvL5+j41LHusNAMUi1zUxwrx140Kak6yK/atn4DpC4Rak36u/o6rgDId/Q967QxU/6IXg+zhXIX6qL5c4Wxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PUH1RrNn; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-61a54560c1fso959429a12.0
        for <devicetree@vger.kernel.org>; Sun, 31 Aug 2025 23:33:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756708400; x=1757313200; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eT25ONXdlRJv+CRudnnHBniNSpVv/dBQXOd0f5NOe1o=;
        b=PUH1RrNnX/sGj0uVxSftlS47ts2qMTvfJtWGC1Id158DGBvbma8oIXFMxW7/2p147c
         0TVzzBq2YelCPXRGg9x/yFVpbIj1M0lssPuj7cBc7SZCTsrodalpoq/Q1r9OO+z0mwIq
         dxix2dgQ5Wms0deyjI75QDkwQ2l108rIjJDOhaH4LQf5of9yX/Kp4r+fOuJVRA1nSIR1
         1D4aG1bmBuiyLNDZjdRr3qq6diAlR7bh8L0o9XAx+bvK/3BO1du3otBiDokR5tB4KvF+
         bA23umEJJtg3etLSj7GavtHHNSPbqEBd+ZA9uAVoFt/2zgxX8AL/7Ofmm/8tZNvMZcN2
         to9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756708400; x=1757313200;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eT25ONXdlRJv+CRudnnHBniNSpVv/dBQXOd0f5NOe1o=;
        b=lafZmyo8glJzFf6JA5P2mdRCqFkELeSNThdBOQBW2u5fj9b1yOi2A3Ed8cO0wKSQ5k
         XGY3jcNFoErJKXzZd+P2XlKvv04L1y7OJDvtXLUNv8+HtbgK7JaCVeH/69/rtSE5L0zk
         FEjQ8yOZwgyYRoqNwnafKNSWjdsgGbweV1TKbgdlLrbDVJ0QeeGAhc+2BT+rhz4vs/jj
         yTOozFZ/N3uyM1/7z42t1MPTiA4AUyiq/ZQDQPnfv2bWx3rkz98qfxG8LwZVX/O/cwwG
         +8ox4pm5YTg4ks7zcQhc331EccYbSXe0Z4pFcJ0hiPR9jVx3m0stPj6BSH93u2huVtKN
         VUfQ==
X-Forwarded-Encrypted: i=1; AJvYcCUFGQ+66OUznN7JbQrFaI1vnRhp2QfwwijwCGWt5xjzD+0AAnyoJux4OG+IwjuPCSCo/T9KfaFDI6RF@vger.kernel.org
X-Gm-Message-State: AOJu0YzeiXZA9FURHEed3Jc+dw4V0DKXxWcgBW+7RYAbtCLBWWiw4dLJ
	rFJ9j9f2QLpZKCt1BKreezvs5KESU8jGgwzgM3vIEs0SJgPYBi8wgNvkOGlhhVx4V+3q05aB8Ct
	O3IO5
X-Gm-Gg: ASbGncsUW5gRSuny1/k2mIkWUFjGcn7VlnE3DaSchQP9nPzggF0BE6qpEhZT+beg8ox
	CplrojzJGrPQunoDi4b/uZEMHjvxZ+l1yOa2XVj8UezC1SFqWQWgn6viAF1aoBPQy5Pkso1q+DH
	LRrkxmSQnCgN8oYmlxp8oq6hQ1t+f4b3HnRgOvbaCGAF0U26GmqKLLa9xANoNWDjfmq84i0Gx6X
	jr5EuM2FcJ+JUnjIsqWRUBUVMRZwoMhSiWh88ReZORWBattAkDXFDBz0ISwK4OGEbrfKNRUR2Rn
	eMRHYZDib/kR1suFvQFjvd9FDiwkirXoM8EQHvg9ab55vHXI999/nejDrOj9YUoXRx5DU9yX5Rr
	4CMwalrTOV/idKiX2rPZN3qsx/49lqO2x+snYG38=
X-Google-Smtp-Source: AGHT+IH2EH71GqZysZaHULgZnawZA/ilqSzMTKNSHRHdyGYISzSRl8kS8S+lxJ5IgYxfEUW2K8qFqA==
X-Received: by 2002:a17:907:3cc3:b0:afc:ebfd:c285 with SMTP id a640c23a62f3a-aff0edc4d6cmr519702266b.1.1756708399621;
        Sun, 31 Aug 2025 23:33:19 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b0420ec9787sm266471866b.72.2025.08.31.23.33.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Aug 2025 23:33:18 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: jesper.nilsson@axis.com, mturquette@baylibre.com, sboyd@kernel.org, 
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, krzk@kernel.org, 
 s.nawrocki@samsung.com, cw00.choi@samsung.com, alim.akhtar@samsung.com, 
 linus.walleij@linaro.org, tomasz.figa@gmail.com, catalin.marinas@arm.com, 
 will@kernel.org, arnd@arndb.de, Ravi Patel <ravi.patel@samsung.com>
Cc: ksk4725@coasia.com, kenkim@coasia.com, pjsin865@coasia.com, 
 gwk1013@coasia.com, hgkim05@coasia.com, mingyoungbo@coasia.com, 
 smn1196@coasia.com, shradha.t@samsung.com, inbaraj.e@samsung.com, 
 swathi.ks@samsung.com, hrishikesh.d@samsung.com, dj76.yang@samsung.com, 
 hypmean.kim@samsung.com, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-arm-kernel@axis.com, devicetree@vger.kernel.org, 
 linux-gpio@vger.kernel.org
In-Reply-To: <20250901051926.59970-2-ravi.patel@samsung.com>
References: <20250901051926.59970-1-ravi.patel@samsung.com>
 <CGME20250901054239epcas5p214f3d0a29b87eda7f9b671fe05ba4bf9@epcas5p2.samsung.com>
 <20250901051926.59970-2-ravi.patel@samsung.com>
Subject: Re: (subset) [PATCH v4 1/6] dt-bindings: pinctrl: samsung: Add
 compatible for ARTPEC-8 SoC
Message-Id: <175670839704.114610.3984450537189054873.b4-ty@linaro.org>
Date: Mon, 01 Sep 2025 08:33:17 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Mon, 01 Sep 2025 10:49:21 +0530, Ravi Patel wrote:
> Document the compatible string for ARTPEC-8 SoC pinctrl block,
> which is similar to other Samsung SoC pinctrl blocks.
> 
> 

Applied, thanks!

[1/6] dt-bindings: pinctrl: samsung: Add compatible for ARTPEC-8 SoC
      https://git.kernel.org/pinctrl/samsung/c/03724b3496cb0272a5050a989ebf2494b1ff5a55

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


