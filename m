Return-Path: <devicetree+bounces-82168-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F0CB91E9F8
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 23:08:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C25E21F21A87
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 21:08:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7791171644;
	Mon,  1 Jul 2024 21:08:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OYW/E0aa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F1A116F85E
	for <devicetree@vger.kernel.org>; Mon,  1 Jul 2024 21:08:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719868106; cv=none; b=rvg4IIFMWKehoGDI9UlNj4W7hDJLnHsChDAQ5Ikj5RZ6obvC9op8fxEq8HG5BKpTIqunsxE1mx0l8wEXvs9llwFYc/K8fG84RZZDzHsvtFnTOOyO0StHS8PISdk+9CtyxVoo9VFHjT2uJcjpeJpwmGsaSoOuRAwAZ4j0lgs5lm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719868106; c=relaxed/simple;
	bh=8Zg+wlgvAADR7KQVVOswBUJlKgkjNKmpMszyFdT87m8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PVaPs06Q1c2182c/k6TnnqGnKyh0q5WLWJR7zU7PFEF9Sfc8TQylR4ZYwWJkSefBohOAWxiaaDIbjfTwt2A4HPxVHz9wISnHSgjSSS/efoiPckwPCyjMxp2s2KCsmhjzkvi5/VH3svFiKMN1CoFKnCbIAskOVWpFPr4XEhHfPNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OYW/E0aa; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2ec5d86e759so3174151fa.2
        for <devicetree@vger.kernel.org>; Mon, 01 Jul 2024 14:08:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719868103; x=1720472903; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8Zg+wlgvAADR7KQVVOswBUJlKgkjNKmpMszyFdT87m8=;
        b=OYW/E0aatf5+I5T+sBfnndybCkR7X/pzlb0JkODGKS9r7nFKp8uv1lCrHS5NbFzsTk
         js3Ch1NfZwv1zQlByKWOWFRLxMesdQzL/PVLjF0TNq+Yh5eNWhKlm32O3XX/UO0v4iXZ
         WRNuRK6rsWAn4fajj87Uo81CI4ulZK0Upk2zaztxH7di9OHD783Kh5RxXvGpfCiffEpL
         pCIv85qrra1UDigwpRTzrDCkxyYfmeM+9+CeI4xGCPii3H7XbI8XMBT7SVDTXKy1a/7d
         NlSWnbsdyy024XBVU0V0faFArx8ws9Jacn78nLa2r2/+8rRxuuRQBsohDFfyMkd05Tmm
         uK0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719868103; x=1720472903;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8Zg+wlgvAADR7KQVVOswBUJlKgkjNKmpMszyFdT87m8=;
        b=mz199eYluTZfFzkSS4SDAhSUZVZ4ehZty2gluFC7RDs68IW9isyKpZ7CTsCUN/RSDT
         efReEv7G3nlwUyu1eg9OsUUaqqRyyHUq4/jtTKd4GJ7YY/9/W77ThUJokwN+/2wsqpre
         zGopRt1ktrUe8NqKfjuQRYooc++3xMcQkvJrJJp9iPcnPBeH9Yk65ue5URaY4lNg95jI
         gRxVZeUFPSBBH/iQfgfgsRqOAAjsmDHZCaQFzCkCEiy8vhYajUMsHH6UxJAnRpYuyByc
         GNPgqwgVITq1AgnOrXGAQ3q9c++DXsV6MdtxN6BLqxH7iazM6OkGIavdCp20oeJs70EA
         eADQ==
X-Forwarded-Encrypted: i=1; AJvYcCXx+BsOBB0Z0ACg+5yzNHzP8KUf6F6XpQF0UE3ijlOqN6j6bst5osCEsjEpmfEe801jun0gRGQTVn1xyG9qP9CNxZlKjhg0JETgYA==
X-Gm-Message-State: AOJu0YzYYfqG70sLdz0YbQY8II3kRN41v9u6nCH0Cm8Hpg6SCGAQhram
	LrN9bXAbg5JYfSNS/nbIiKWTU1Z8LULjWUYiNUksx2+13Lc/BP1n5zJ43e8ekO14H7EsvGkGKE2
	pnKULwaRjoJwQvxyT7QUT+CscR/hSZlUh
X-Google-Smtp-Source: AGHT+IHJv+oPAf6JvaPjaNkLp5qGp4JhBt1bSFmAVSHpVVK621NLpVVPq7w6X1NUFHzeekPKYhtpv6YQfNnML1RajbU=
X-Received: by 2002:a2e:a16b:0:b0:2ec:4399:9bfc with SMTP id
 38308e7fff4ca-2ee5e2a6afamr35728631fa.0.1719868103049; Mon, 01 Jul 2024
 14:08:23 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240701205458.164053-1-festevam@gmail.com> <ZoMZ1QTNyTNmh7p/@lizhi-Precision-Tower-5810>
In-Reply-To: <ZoMZ1QTNyTNmh7p/@lizhi-Precision-Tower-5810>
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 1 Jul 2024 18:08:11 -0300
Message-ID: <CAOMZO5C7qUOSqmjZMgx5=zZD6PapcU9Jgmigw4CAveAtkx-YVQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8mp: Remove 'snps,rx-sched-sp'
To: Frank Li <Frank.li@nxp.com>
Cc: shawnguo@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, imx@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, Fabio Estevam <festevam@denx.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 1, 2024 at 6:04=E2=80=AFPM Frank Li <Frank.li@nxp.com> wrote:

> No sure why Krzysztof NACK a similar patch

If I understood correctly, he did not provide a Reviewed-by tag on that pat=
ch.

