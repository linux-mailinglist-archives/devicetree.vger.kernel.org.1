Return-Path: <devicetree+bounces-167086-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 76A07A89554
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 09:40:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 63EE37A9410
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 07:39:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6E0F274FC3;
	Tue, 15 Apr 2025 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cB4JSxG6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300C5129A78
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 07:40:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744702834; cv=none; b=EcjTchonLyzTazl0pTzL6hfhpXKv0MXV0nAsRwRNiByrf76JBOvsTZN+W1x9XT/xbZjOarMsYtuFshS2vc0GGpbNJGwLQ0xQclr76LNr9ugEFjBdZCdlxnFkfkQpJag3CeMVK2FE4Gc42k0aLY7UpomuZ6y/fc//SzVMd+ZoSAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744702834; c=relaxed/simple;
	bh=bPPsVA86aRMmKsehM2IabqFVi4bzGyyaypZ1MvkVduM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cehqTmBu7lKa2xTjg1PambfCSs4z1irw4n7vxWxA+SmbPla2rq+a/0EEgq+AF7lqB2HAxmZfQOGnBIWcylBRv5qtFpfOSeDHgSgoQ4SbBd1j2mColLGrQy3Cc5okgWduqUFbBHlt67SNZgrM99XX3mu0NDx5oo7DBOR7KGd6lzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cB4JSxG6; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-30db1bd3bddso51111191fa.3
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 00:40:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744702830; x=1745307630; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bPPsVA86aRMmKsehM2IabqFVi4bzGyyaypZ1MvkVduM=;
        b=cB4JSxG6BRqYZ9ZsnGMSOWDfp9AmdWXX24vNa53PUvyUZYNBjWdpxdbkdCLHeQwiw3
         pO83lLqarymylP/z0NgPUlDiiCuLSW3w4NzlQfEZ2aGKF3EWsYTOM7493Zbiv9edKNDV
         OGJz3L/5cMCRU2cJrSZtoL1U6rNqg6M/1zMhV5RLI5uAUN/h6rd0c2f7aXGxFbJWLLnV
         7X634LQvqQfSvXkXJUYyN4ODk458lKJfsD/i4gIET2HzXI0hHI053zX0xfMlzrGAzKGo
         iD3hxRAdrx+iBYRs6OZbF0zrC3K4VmpVFBRAqQidjT9PIivuif4EY1vsZmYfkm9hawlX
         U+Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744702830; x=1745307630;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bPPsVA86aRMmKsehM2IabqFVi4bzGyyaypZ1MvkVduM=;
        b=l/PMqF8DkchT3shI9wko9cqS7lHy3zIYAe6iiud+ENAR/7sPJAtOmqTO6qLMvOC1Xd
         GotNfszn19k/wUdqXVD00O6kiHWNZpOpUDqYvHNnvrsY2lsSBfF7vEwRmDTWqWXVmVsL
         wgOLI19W1YfoSh1xAHWFWrctmlqNf/DkSPLI1VjDtc+SzqLiBxyXZtmXsRhGaf6vLB4i
         Tc8TIFEgmDCTs22bGy/njL+Ga7xZcoJPQU7fa/Du74dXlozjOoU6rSuxkiLOKSLtNYki
         UCYgFC66S6Xu3DY34lQVEfHiRPjk1vIS+wS4y7Yd01wXIwSq8jTDJt9vhadpOF/X7LDi
         FJJQ==
X-Forwarded-Encrypted: i=1; AJvYcCWCQ1Wzsr8etWS1cp/O1Q3SKrsR23hlOU3sSVs510k3xFNqUont/KPoOCNCln4pvPsuunGpVj50rYNU@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0zt4rx8U54hO8TLVUxjIM+1X+KRevETCKAjUujoxaMnFoIRsJ
	9VG4jpckuI0Rm0mP7eD0i7vQCbItFkEtRGWHsSZS5mBisCyYv0QstGVUbjpOxcVGMScmewY6RP+
	JWvUrIeHKC12Ha9lN3mQ1L7ottE+SUrsQsM03Ng==
X-Gm-Gg: ASbGncv3yXk+U2Dy+gTFlQvLJPEdr1v5VJxEdHUaXHxBbZ0YP1nTtvJJvYpztreSbDN
	eW3IBv3bzHUTUs+TyFjeZvU2Q/rhPxXY0ckVwivYJm6JUTlZxJS8vlZ/doykTv0mr6XKnEY4FPF
	z0CFhETu1Cx0jhfd2xRwXrZMsSGpCAc5RU
X-Google-Smtp-Source: AGHT+IFWYF5PBFz8bdBMKs/hFSmP9qdyePV80JdSmzpOU6YbNPT0plMuK8UpwqvumIMhMZzLrddrNlq7JqXr9GLcwmY=
X-Received: by 2002:a2e:9214:0:b0:30c:3099:13d0 with SMTP id
 38308e7fff4ca-31049a01919mr40215891fa.21.1744702830214; Tue, 15 Apr 2025
 00:40:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250403-a5-pinctrl-v3-0-a8c067e22295@amlogic.com> <20250403-a5-pinctrl-v3-1-a8c067e22295@amlogic.com>
In-Reply-To: <20250403-a5-pinctrl-v3-1-a8c067e22295@amlogic.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 15 Apr 2025 09:40:18 +0200
X-Gm-Features: ATxdqUGH5zAtbvjbTyVv3OZBDQWbnPFIqXVT2OLZ9OTJTUgQ_9-qW1g1gPLhhII
Message-ID: <CACRpkdZATVbE8nrk7_B2jE7MOqqeruV25mRdZaXdGNJ_kh1S1w@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: pinctl: amlogic,pinctrl-a4: Add
 compatible string for A5
To: xianwei.zhao@amlogic.com
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>, linux-amlogic@lists.infradead.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	Conor Dooley <conor.dooley@microchip.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Xianwei,

On Thu, Apr 3, 2025 at 10:33=E2=80=AFAM Xianwei Zhao via B4 Relay
<devnull+xianwei.zhao.amlogic.com@kernel.org> wrote:

> From: Xianwei Zhao <xianwei.zhao@amlogic.com>
>
> Amlogic A5 SoCs uses the same pintrl controller as A4 SoCs. There is
> no need for an extra compatible line in the driver, but add A5
> compatible line for documentation.
>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>

Patch applied!

Please funnel 2/2 through the SoC tree.

Yours,
Linus Walleij

