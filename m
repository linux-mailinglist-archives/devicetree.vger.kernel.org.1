Return-Path: <devicetree+bounces-168728-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5145AA942AD
	for <lists+devicetree@lfdr.de>; Sat, 19 Apr 2025 11:50:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7E39B8A3337
	for <lists+devicetree@lfdr.de>; Sat, 19 Apr 2025 09:50:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 055BF1C5D4B;
	Sat, 19 Apr 2025 09:50:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rhgFJfQv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DBB71B6CE3
	for <devicetree@vger.kernel.org>; Sat, 19 Apr 2025 09:50:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745056213; cv=none; b=isTqmVvkiPOO2gwrxiwSQO13fbg/SxLbNHTR7th50kqjKXPztAPzY99307m1SzelEP4J08rviJ9buDI3sehe5DYbpymukxCaTtDwiSyj2ek2/666rZRKywrRfofy4zy8/+CRnyU8O3uZAJqWfVdqM5LY+8n/YRofUabahzvF3RQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745056213; c=relaxed/simple;
	bh=OCJCK8IzVfDDMk/Wahm3g+Lsd3Yj6wZBzFZ29NKosLk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=P2Nx112pGqCfZvraD8RwuUrx+/hZLd67viiyCrqj54pc7gUjXNxVzFARUVJIAufVV8k1e5+FiEL8e9ANwSm6FvFWpL9hAuQVzpGM0syfrM3snY60caYHuH9/yEB5MgbmspJD4Yoyz3Ck0RUR9jDDYeZkayGbRK1axuYQfQyYkEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rhgFJfQv; arc=none smtp.client-ip=209.85.215.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-af52a624283so2242424a12.0
        for <devicetree@vger.kernel.org>; Sat, 19 Apr 2025 02:50:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745056211; x=1745661011; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s1smWoXBsF07yb0kdhSazKV5zZrD5jTCHEvASrG6ZXY=;
        b=rhgFJfQvBEQ3MuHJ+9f1DqKoWJ7JoHseq00r8qNeghZbjNT4yhWHrZjrNzIzbOw3Su
         ZJij+fgHUgEGx1NZyIGoUqMLK4962fE+WDmTigWX/p5VJnvF4cXR1//OwL6FHy7ONBzB
         VxwdBsS4lEhxyPHIfVYtPaFvK9psAchv1n4CuF9NuGwSJCnt6MUSomT/o/6pYRvd+sEz
         Fop8euFqObuwYiYzsoySXTEMTlJUprJXaKrFRHuYFoymLC8nE2YIQioF4h4i/YzcsS+F
         ORsI4oYuc3MEOTgu9x6650ryUnWbg9qpd+0LD5iK2w5hFjQkPHbpjnqdBCeimsi5f+q1
         Rwvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745056211; x=1745661011;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=s1smWoXBsF07yb0kdhSazKV5zZrD5jTCHEvASrG6ZXY=;
        b=gTFXkHzivn5BLFaya5mgvrrHgHtPLmja+U75JQqrw6prSctb5pada+prTZn11Y8DKM
         MAoib/VUIror1YxKq7gcaYhqV1e9WwkZjR5TTYtbkkUnMCnXM/WopXXvNyBTjHuUyJ3a
         2YJ55qHv4Zsd7olqmZnZyOt6vxzbX0542uaqFX6nZOGjSHbZAKgcD/qaG0RqBUnSlqGj
         x9NlNSxtawXqXcX0syhhv5HZe+DHhkA8VWsg4y32VvcK9TUFLz9hSXDJH2M3sRzaiNwa
         p9nnm3UbuRi/vKRMiUkKFfDLLMqzXeT0KKZRRjnQUNZH/1Lxr/maRtNgMFW+G/8JvsfE
         FKQQ==
X-Forwarded-Encrypted: i=1; AJvYcCUOwvXaWxWyUkoU4Q9Y55DpBePPgocwIDbuaVbe1S1sq8oWrXgJUrIT/wA1QWQMoldN8L4bgcsPnKdk@vger.kernel.org
X-Gm-Message-State: AOJu0Yxz7EZ7Z6HJQ7VRMimSMvSLRoUYlsTGU8HHn0uYZgmEhm6NI6h4
	n5s+9YQcPwMrDqBLA/d6hH0bfQbmVdu2D95rSMc0lPaEL1GykKX+J6Zi+oE07g==
X-Gm-Gg: ASbGncs3HkxLErjZ1HwxWWEUicDDDyP8u8qkjXeMEI0MQQAcWnncjDVsWfkqsSoBMCU
	38ZideKN7A3IRK6AYqi5yCFGCqPXip3AfGh56KOkl5j+j4uzJSu1EKnQ9gHE/JV+dJElZdViHl2
	MiobYqqI+O99jsf0FRI65dBETAMIx2e7J3nOBavw/InP4BgoMWn8i2Of+0d/mLq1UXcd7oMcgvz
	ub9gC3nvKKsY0WttktFTkmqoXfWpuF6W7nfRYDWon+T8zTGz77KlIRSgVBNCm1XmbQRTSofGV1S
	zREiiZi/YnRWohNS/1QfJFzO+f9NPgRAAmLymfkSJWzxuE5YO6dorg==
X-Google-Smtp-Source: AGHT+IEq9phG3rDT0nEB9hkvWvaXKiYNwe1s5RXKu8uLzKTD8MFTWep3kqRGNKf8OTR2vRkuBkxE6g==
X-Received: by 2002:a17:90b:2705:b0:2ee:8cbb:de28 with SMTP id 98e67ed59e1d1-3087c2ca65fmr8403803a91.8.1745056211696;
        Sat, 19 Apr 2025 02:50:11 -0700 (PDT)
Received: from thinkpad.. ([36.255.17.167])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3087df4e12asm2697981a91.37.2025.04.19.02.50.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Apr 2025 02:50:11 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: heiko@sntech.de,
	Kever Yang <kever.yang@rock-chips.com>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	andersson@kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Simon Xue <xxm@rock-chips.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	linux-pci@vger.kernel.org,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v9 1/2] dt-bindings: PCI: dw: rockchip: Add rk3576 support
Date: Sat, 19 Apr 2025 15:19:59 +0530
Message-ID: <174505612709.29229.7221551173436866910.b4-ty@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250414145110.11275-2-kever.yang@rock-chips.com>
References: <20250414145110.11275-1-kever.yang@rock-chips.com> <20250414145110.11275-2-kever.yang@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Mon, 14 Apr 2025 22:51:09 +0800, Kever Yang wrote:
> rk3576 is using DWC PCIe controller, with msi interrupt directly to GIC
> instead of using GIC ITS, so
> - no ITS support is required and the 'msi-map' is not required,
> - a new 'msi' interrupt is needed.
> 
> 

Applied to pci/dt-bindings, thanks!

[1/2] dt-bindings: PCI: dw: rockchip: Add rk3576 support
      commit: b5516efc1ec610e75f320385a3a2ecb5932a49d3

Best regards,
-- 
Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

