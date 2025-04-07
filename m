Return-Path: <devicetree+bounces-163874-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B0BB3A7E5DD
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 18:14:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 389B63BFD2A
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 16:07:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18A60208960;
	Mon,  7 Apr 2025 16:05:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EWvwPlYH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23CAC2080C9
	for <devicetree@vger.kernel.org>; Mon,  7 Apr 2025 16:05:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744041906; cv=none; b=VVMdk2W1TQ7Fc/ECHw1EEW4yEuMqRy/jI/afQyTEnTXEmslkpg20tnVv1+nye+TG88BCc2b6G+zJopCFh3SgDtaBz7jztaDqlRL75ETjhaaV89IfPhZ1kpXBpDs6bDOXPXsEktn23bpbfuKHcXc7eMZvKfOg+kyKw4JADHpzN30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744041906; c=relaxed/simple;
	bh=CzhGNQOmqbt6ZreL9SgDiADX5hgQoThZrl7pTv9rBpI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Dk/JgcW8FCJlfmoc3jmvgh4VVKE9IVAbpxmjBb34ANI6z93w0WZLiGTcOccbVzNTM09OftEcEAUoGmTP2khbqbIUv63BEbHuITp6vAiZko5UsyYR2nHbV8k20voXm2mHVa05vIxtlDcOW+1ho93f9i8C1jx/82PhSPv2CMbsak8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EWvwPlYH; arc=none smtp.client-ip=209.85.128.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-6feab7c5f96so42940067b3.3
        for <devicetree@vger.kernel.org>; Mon, 07 Apr 2025 09:05:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744041902; x=1744646702; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=A0QGJ/98UjXJ4a82WsY8C5O3bLdEhkcOxRTFuuyhgXU=;
        b=EWvwPlYHa8i9RHio2cp70Ik8l3sNnYi5NY8tPLbBm4QSdC47IZ1VB68swwpzhm+Af3
         Qxh73ECEgZaJps7xkl8ROUg74l4GL8tNcfh4hnj5TR2EgcgMQCIm2h2+XD0exCNrdImE
         kIkEGcKG/Rcw/scP4S+3yYsV1YvcGyXpszm75VVzu9BKfdql54DlW8B2TxCijv4lwe5r
         ecV0R4+wkqwiDuOQh14AHVvNx/BKtSVNeAsc/xxznk50ahOGrtbuBsIesR+5YqkNkbww
         V2CFXrOn0Xz/Tz6FeIe3KJW1wUdUd8YfOS0bF9jZqr3mbxPo1GEFT0EtXl3i1maSM/WA
         z1rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744041902; x=1744646702;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=A0QGJ/98UjXJ4a82WsY8C5O3bLdEhkcOxRTFuuyhgXU=;
        b=pyROSYkmgYXsWfV/zELOJlrXudAchnVUEKUQEMw38XSLwpedjNFza8QYxegQCeDaUv
         ADSKz/vMs1A3tnKxUQW7rgN1gfZmOeqjcSJBbBQBkEovm2ta9arOh824IRoVraLSnS3T
         kwnNXTkODJrgLYasUUMEDWWOyerj7nbYSQ6J0OYUVYLXXJBID7j+JbPZcdWx4LwGcjD0
         gw6Fy/bMTWdVNTTb7lD9r08rTgzGk90/qo/j1jyY7xcof5cFfdwdYHlJwMEL3L4GNKLu
         UuO9xO3jXEBq5i8wv2Byq/z81B5p4lZOxJSbfgklnxaKhVsA4BxdbadT0FipzJdU+4cF
         bf9w==
X-Forwarded-Encrypted: i=1; AJvYcCWZqJ65UdZI0qDBpkGh9bC6CMKdVrehaMQx0TcL68alyitPzxl13XqjvMpJIR38fErW7dncJTg/S6Ya@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5s6LT9Dhti5rz0l4c/g4sMRHmGIZaEvyhSAOwVSbjSMC0pphh
	24D7lIGOe4txVPoW984d9zaIgWCRjvkr2VjMZQDbThigbG38faVjAnkjpX1L7IY59Ch+Qi7CbmU
	if0LiGSPEEXQfX86wxzTEn6qANGxXMX3fZwIgYg==
X-Gm-Gg: ASbGncvlA91yN3T7KhUwXyrhHBtPN6ciNPcoLgkUikNEg33D4i9/lIXSGJetT/8jsgN
	1ty0f/NR8camMomcnwAJ9crkopT0kr01r+DbL8AS+KfOoK3M5WCqSdAFL02PmNzKgMOXS9XS4t9
	K8JTLHFDqihTghb1a4urO/t5LEJfQ=
X-Google-Smtp-Source: AGHT+IHANCkxzh+wubRAXgSFUnOAzH7wDOb2nf26ksZRKOBL2l6Zndanfaex8MrUBtCadQw25RKQniC/QrxXxgjj7mc=
X-Received: by 2002:a05:690c:3508:b0:6ef:9e74:c09b with SMTP id
 00721157ae682-703e1646ca9mr235838577b3.33.1744041902031; Mon, 07 Apr 2025
 09:05:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250320-dt-marvell-mmc-v1-0-e51002ea0238@kernel.org>
In-Reply-To: <20250320-dt-marvell-mmc-v1-0-e51002ea0238@kernel.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 7 Apr 2025 18:04:25 +0200
X-Gm-Features: ATxdqUFdrsufXNsqF_X2LZ9XFXfOuIM3sa9Ny1cJzNnThlBQWgB4lSpSK4o_xFc
Message-ID: <CAPDyKFpchK3nV36MTJR71OuzaeFk2ktDAJrbEdd-oowOtg-0og@mail.gmail.com>
Subject: Re: [PATCH 0/3] dt-bindings: mmc: marvell,xenon-sdhci: Fix several
 validation warnings
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Hu Ziji <huziji@marvell.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 20 Mar 2025 at 22:36, Rob Herring (Arm) <robh@kernel.org> wrote:
>
> This small series fixes several validation warnings caused by the
> marvell,xenon-sdhci binding:
>
> marvell: mmc@6e0000: clocks: [[4, 4]] is too short
> marvell: mmc@6e0000: clock-names: ['core'] is too short
> marvell: mmc@780000: Unevaluated properties are not allowed ('dma-coherent' was unexpected)
> marvell: mmc@780000: Unevaluated properties are not allowed ('dma-coherent', 'iommus' were unexpected)
> marvell: mmc@d0000: Unevaluated properties are not allowed ('sdhci-caps-mask' was unexpected)
>
> Signed-off-by: "Rob Herring (Arm)" <robh@kernel.org>
> ---
> Rob Herring (Arm) (3):
>       dt-bindings: mmc: marvell,xenon-sdhci: Allow "dma-coherent" and "iommus"
>       dt-bindings: mmc: marvell,xenon-sdhci: Add reference to sdhci-common.yaml
>       dt-bindings: mmc: marvell,xenon-sdhci: Drop requiring 2 clocks
>
>  .../bindings/mmc/marvell,xenon-sdhci.yaml          | 27 +++++-----------------
>  1 file changed, 6 insertions(+), 21 deletions(-)
> ---
> base-commit: 2014c95afecee3e76ca4a56956a936e23283f05b
> change-id: 20250320-dt-marvell-mmc-443bd0060974
>
> Best regards,
> --
> Rob Herring (Arm) <robh@kernel.org>
>

Applied for next, thanks!

Kind regards
Uffe

