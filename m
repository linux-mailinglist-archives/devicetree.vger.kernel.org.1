Return-Path: <devicetree+bounces-59529-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C37A78A5BFA
	for <lists+devicetree@lfdr.de>; Mon, 15 Apr 2024 22:04:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 617581F229F8
	for <lists+devicetree@lfdr.de>; Mon, 15 Apr 2024 20:04:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D397156871;
	Mon, 15 Apr 2024 20:04:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="a2+kMCpI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C36E15664A
	for <devicetree@vger.kernel.org>; Mon, 15 Apr 2024 20:04:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713211471; cv=none; b=hzvJoEGf0Xi2f2i1atyAudDtf/Tu4w8fgMnh786oYxNXfYq97NaBDDuNXdgnMbTR7OeaJe1fOFviC+QHy2s/LrGyMjhMMmSGjaPsEF6QXgs9k0k3JqP+2guIa8ZAzQnhoX7cjyG73BnL9mVN/skaSoqOfOeD8cEcFgYqsBoT8I8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713211471; c=relaxed/simple;
	bh=HKevHeXkZGuoEWykBFrnnyLmHY+4admTUN+lZ7NyEtc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CqKmTvoxtcCuuR2VSpfjcE+9Ngn4a9Ro3ts8mu+5InKgXiGunw319AUVi3lyOP7yRFVEWGHMy82xl3BZTVh3dkODNqHzht3CNMIOK2nCCRHoZCnTDiVhuDRHykNoI64NPGlde0cHXAXDeSiomfTAiEGvNWDmXLhl3oG8ZKJ1f9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=a2+kMCpI; arc=none smtp.client-ip=209.85.219.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f178.google.com with SMTP id 3f1490d57ef6-dcc71031680so3522955276.2
        for <devicetree@vger.kernel.org>; Mon, 15 Apr 2024 13:04:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713211467; x=1713816267; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=x+n4yDNeHcrTCJc7XCA965ghIKCFi6oK1ygO6iYz34Q=;
        b=a2+kMCpIIVUrD/mzkxfLOFdfjNSVCTHrvIByBROGwHnn8ZyCZCe4K/QxjDGPx9A3yx
         mHX/UG2DygM/BznGHKBgqdN0M4wrOf830WA6PajdZa7lNamXACjNSpz6TdaYbOz3h6lR
         RJ4/qpr70Jsi5boycQTlvJKEM/LmHY8Ry18EGIa6JWizEunDhBTuyaIvdUE9lArlXOhX
         itvNy8l76aSpUqQaEKOTBZtAGOtxqP6/eNSq0rYoij6oayP/+gjP6yFgAcDEpv77QR9l
         vQI4IswKAzFbwZ4Vh8QWlBVreTDMxOq9zWEUBekG56C1cnWEuWkOJPleqLWsyuDpCFzP
         d9tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713211467; x=1713816267;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=x+n4yDNeHcrTCJc7XCA965ghIKCFi6oK1ygO6iYz34Q=;
        b=wSQe61KrBvwOyuAFLyBQ6dVePs3UTSYrHbHSJu9HIDb1p6VhR1ULXTD3DlVpWUCEyP
         aRsm6DWoKl5+ReAtZzmGt1/CCtlGhDVVaVUDbyl0sf7EDXsoL+FWYuWW/jwPJss8Lhd7
         gyA6Bcu3pqrpGX9zHog9K/LebTqmH+0tuocdn1l0+plvQ91wlZCbT7MM5BZegZv68DUh
         7pvJgDXugBAY9c+9RkTiD/39Qs+3YMsLfc9qwvK6bB+K31Uo1csgT9Zfx/NHvl6KvB61
         OyF3raLITryyp6qHizTpeZLnHztHkuFhXZJGmyn8iHiOac5CV9oh995lZp0qmOrmVR8w
         tXVA==
X-Forwarded-Encrypted: i=1; AJvYcCU2uzmI/D14BPWz/HSlv4/3JIKW3PiCqM7Cdg4AzjOxaQD6TzvpFzIwOfFnQ4PS03w6i0eXRBLC6amBIJwcK21COSE840OHgw6NgA==
X-Gm-Message-State: AOJu0Yyp5UxMIpnOdMjgeBPK186NjAqkZ6g5gYKEVsDRl4XdLJRSNr1O
	rSSNyB7WFrkVO8UzeZLwZpLUgbKGKXURzKNcXR6EKBTRtAI5HKeBcGNaQUtO3avdQb18X0CyWO+
	GwuCERvXZqcKdpvaaB0yZfVcuVvPYdnkToOZnGw==
X-Google-Smtp-Source: AGHT+IFgChYQoIbtXVFNn5dpONcRCuNNKjt9lSve7LdO+2SQ5EoJ4jqt3753eEsEcQ7mld6BIqWcJDJtBnxGz7Zk5/k=
X-Received: by 2002:a25:2e0d:0:b0:dc6:dd80:430e with SMTP id
 u13-20020a252e0d000000b00dc6dd80430emr9293179ybu.27.1713211467602; Mon, 15
 Apr 2024 13:04:27 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240415182052.374494-1-mr.nuke.me@gmail.com> <20240415182052.374494-3-mr.nuke.me@gmail.com>
In-Reply-To: <20240415182052.374494-3-mr.nuke.me@gmail.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 15 Apr 2024 23:04:16 +0300
Message-ID: <CAA8EJpq-UOd4dcuLyEvJNW4zckSGq1LSdq4eDMWPHX_98U8F=A@mail.gmail.com>
Subject: Re: [PATCH v3 2/7] clk: qcom: gcc-ipq9574: Add PCIe pipe clocks
To: Alexandru Gagniuc <mr.nuke.me@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 15 Apr 2024 at 21:21, Alexandru Gagniuc <mr.nuke.me@gmail.com> wrote:
>
> The IPQ9574 has four PCIe "pipe" clocks. These clocks are required by
> PCIe PHYs. Port the pipe clocks from the downstream 5.4 kernel.
>
> Signed-off-by: Alexandru Gagniuc <mr.nuke.me@gmail.com>
> ---
>  drivers/clk/qcom/gcc-ipq9574.c | 76 ++++++++++++++++++++++++++++++++++
>  1 file changed, 76 insertions(+)


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

