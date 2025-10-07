Return-Path: <devicetree+bounces-224308-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D1ADBC2A1E
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 22:22:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 028E5188B734
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 20:22:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD17923B61B;
	Tue,  7 Oct 2025 20:22:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xd/J7BL1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f50.google.com (mail-oa1-f50.google.com [209.85.160.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E5302222D8
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 20:21:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759868520; cv=none; b=X6/drWC5BjGdVCLE0Qo/ZjgaNP0j7lL+Qdl7MZiyuocoD0GXAGBEHErI6d67R8oIGXJzO96b0X4vOKqG2TGzmJxqTLZRkOLv7Ng43phj1nr1xNsSrRv8VeSnL62qARkboACKwAAtqZI2/CRY5GoxSSK3sUKjo5xnzs+Mj1U/2dA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759868520; c=relaxed/simple;
	bh=rsR75QuYzDtr3bjoJhD52nZ9O3aIRwzpredTmac7Uto=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FfwXbLzKB0uT0TiTAYJmFQDr4jdWjTR2CGTljzdTxQCBnzdpx1nlne6KLlK2Msvd5YgSmo/A/E8loSKKotAfCNEN4tS0hP66HGFbvzUVnWxU7dZyOQ9L2J+y7lrMKG5inWkHhJb58Or1TY1hDP3dhQTvA1/D042OWQhEiwyCjvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xd/J7BL1; arc=none smtp.client-ip=209.85.160.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-3ac1ad95537so4090986fac.2
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 13:21:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759868517; x=1760473317; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rsR75QuYzDtr3bjoJhD52nZ9O3aIRwzpredTmac7Uto=;
        b=xd/J7BL1zgqzxINf2VC4SZwEbpMBPxNxgE9Rq6eAfDnS7VBGu9qiqahJgZ7ZIOrtFj
         ZcR2bCiwpMuWiE5M9w5PQq/IR9fv/Zsa62XmbWpRS7O96M3O/SH9j8gNliVJwEK/BkP2
         xXjLl8I3WGhYYmIUlen+mWzksspr15ZzbS/ajkEs7xhgIDFJT0uT3U4Jo+kqEBTedOjW
         oveNJaNVIPVNtKBaktT+v66H1b1xmS8Sg5BXNyRX545HeVOdtN56eVsJOlf64CCqmbn5
         U5GFxcHqbRSBBLQ20LjnoCrkzCVZEzMojdb4pzPz5XF6gtPl80XyKNiq1uac3xAarkZz
         /fAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759868517; x=1760473317;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rsR75QuYzDtr3bjoJhD52nZ9O3aIRwzpredTmac7Uto=;
        b=UY0BVrAdOp62v6leA5NziIktlqdTCz5r92F8V87IC23ScS1raOt11P65L0kG2DBRlS
         EgoFZWAi42R4uhK/4JcdzmNaZSisS7K+keIt9JQDraDOo3lUEKA3X/2syZXKHiSZTYaa
         A0+dpdlym7JTJ0QM/GTF5Vyg48/InV5NAJhh5CzwbNGpyubwqRAE8BqZ5Mgy1byH2l/q
         lj/z66+JzEmQLHoMbzWFHyVT55jd6G1yxopLO4gsZc3dfqar6YRmWzRnmL/Vh2w1UMEa
         JRKTpwuuvdIkqK6H3CWK9hle3bMEQUui6i+674XhlvLorZXepw1E3mPsaI039KoFN5OE
         INNg==
X-Forwarded-Encrypted: i=1; AJvYcCU0snC1oGrpMKGO+n3Hyh+C7A/R1rI401kFng3kqk+/9yybTLo06RlHu1SOmdRQCglGuplKR6W9HQ2k@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5qfZSWV34E9IA/l+kyL5HRKxOzqoHeryasRTU6REyWLhqH73F
	mp3nx2Pw/Vq4BDNk5nWjQ02IYUgNjA97D58JBklLj08DI2eSxnW1ShNlrakHAi1wCWhEtHyOsdv
	olLsrV6OeYRN22vcRFXOKmkF8Ge5aGndiu2D3N4b1rg==
X-Gm-Gg: ASbGncsR4aSrkOpU9YFtaiJ8TVHQ8YgJ3kVJbilXk0jdBJU3ooXHQHs9FZDTUU3A39P
	/AT5LTz+k24/83rOwCeGUTdhFR7AwDrkN4JAJysEkKHEwqlVmL1xWfwtnJzPRrJQd8SX5/D5hKs
	phOEWGd0MgGx04pv1en2tl+52FZO3ZGmTesdxQ/dJtFHd6vtI1iOXikHUod/annz0oZxDywLU7x
	OcHLgNwpW/3Xo5v3CjoECQShzgQBak4bu3kyQ==
X-Google-Smtp-Source: AGHT+IFvtcyKjlupXR4jzZXFoUiymzWiqOCATc5gJjSvgUyoKVMUYlajN3Vs3NoiPv+/rIeXC9ZrtBcQe+GkyueiNcc=
X-Received: by 2002:a05:6870:d88f:b0:35a:cf5e:fc5a with SMTP id
 586e51a60fabf-3c0f5c131e5mr532073fac.3.1759868517577; Tue, 07 Oct 2025
 13:21:57 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251007-power-domains-dt-bindings-phy-samsung-ufs-phy-v1-1-d9030d14af59@linaro.org>
In-Reply-To: <20251007-power-domains-dt-bindings-phy-samsung-ufs-phy-v1-1-d9030d14af59@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Tue, 7 Oct 2025 21:21:46 +0100
X-Gm-Features: AS18NWDCwphF6RRiccVd74rxfHhTkLJzBEXIn28O6vitl2Y4s82jYqPTESZUVEI
Message-ID: <CADrjBPpCLcaeLn+SB4K0gPzQtT97SDw9xsszw6rtPO2Ue5kYNQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: phy: samsung,ufs-phy: add power-domains
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 7 Oct 2025 at 17:01, Andr=C3=A9 Draszik <andre.draszik@linaro.org> =
wrote:
>
> The UFS phy can be part of a power domain, so we need to allow the
> relevant property 'power-domains'.
>
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> ---

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>

