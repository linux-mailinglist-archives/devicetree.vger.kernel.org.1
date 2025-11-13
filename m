Return-Path: <devicetree+bounces-238088-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 49C1FC570FE
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 12:00:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 2CC3A34B637
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 10:55:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D3EB334C17;
	Thu, 13 Nov 2025 10:55:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B913B33375F
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 10:55:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763031332; cv=none; b=FSpIu9BbOlFXQ0o+V0uta2NssWw5oXcS5+deSeo2VWrIoGZ/KaV47EGNUcLTCNMwzRDy2ONBek18hCgsOY1DLjeRSZOSQxB75unKzQ6NLFWKpP/df6vOekqPB4LCZjAaJBylTbd1l7da06dAiVCXH1C9jR358nNZIV7fgjtLJyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763031332; c=relaxed/simple;
	bh=oYLy6f12Q2Jboam6/0ZuloRUuDWcgvKk36LE2LNyfbo=;
	h=MIME-Version:In-Reply-To:References:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KWk5ErMnQwrIstTUUKzOZ29Usu5JRO2+Ikp6+YskLr1xgTHEF/B7mkPX7gEgcEGJvJ6vNdkGZTX8MA5RoZdwxm0EtW7GeyEIkkxFG6bakYMMJFW1clyx2PxWrYQIGigFRwNe7KWGkowZ13emk7QDvy5zHor7IPoj5LOIQrh1iWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=esmil.dk; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=esmil.dk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-b7277324054so85159166b.0
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 02:55:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763031328; x=1763636128;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oYLy6f12Q2Jboam6/0ZuloRUuDWcgvKk36LE2LNyfbo=;
        b=R99932hJTE01c/eVBJJqBYwoxKsoPyrlwrYTcrA4e9lfWiT6DoLJR8XNRaDCwqFvxG
         1T7mbT9UcmvRi/yrnXDTS8J9RT6jzSw5uP+OJe/eN4wGmPU4PZD5GTkeQoPdc4Ntyjoj
         yA1iUaYsEQ/5ZOuy7RqS/drXYHA1XCyWcKlg3d73jhnWw6XxQeTmtKbisd7Rq07bKNC2
         YO48nwpBMwdibIdS89FLUXR7BDB5e+hnrrVv/hTRrVfyYrfvsquE/uhwnwR7RniekkYn
         YC7pWgSJBV+d4igenJT6V1DC60kN8Mz60M+axXCQx1ITUYjViDOYV0qka0Ybxik0PzdP
         8Ulw==
X-Gm-Message-State: AOJu0YzwumoJxZZxwR9AZDhcsVMJWHSy0AnvVRKG+TkTUeCoyB7yEo9y
	tcWFXotUsknkdku8iKoyXYyURWTEJTTbE2NVwj/2rwe8b7NapS3eLn2xhavw2w4l9p+T1ZfTjmd
	J1PLoMoHAGUlsTcTcNhJzGkqws2Y7y10=
X-Gm-Gg: ASbGncu7yxuqUJAtKKyfjxgBCVlCI0lBobN4/DPTzVSZLmCc4tfjPbfEe64N8h9APv4
	nroLG/jFtJ979e/OifBTUGfQc9lSPgWPzEPYIVtyceRG2zbIOOs1DNOKXFZyDgfF73FPXLILRqv
	/++1Dr/ld/2CPUXJmpHULbEQRwVTr/3ao7fcXdtVutElgVB/STe812BvTLMi0DZ+NEtKeaWjAUB
	V6Orr0vOgB7mjdXlLYS2U+f6CtU+LKx8/dGfrPlh8zNVc2G0A0tMP/7nLI=
X-Google-Smtp-Source: AGHT+IFCyVqsw2+mgz8mfuCEPNfXp0t+5XcyTI715hdb63+s/UhCXEFupENodKnAqz5ba3myi1+u0of84SAgLVZPwRQ=
X-Received: by 2002:a17:906:dc8c:b0:b72:a899:168d with SMTP id
 a640c23a62f3a-b7331a048efmr738157166b.13.1763031327797; Thu, 13 Nov 2025
 02:55:27 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 13 Nov 2025 02:55:27 -0800
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 13 Nov 2025 02:55:27 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <20250930100318.2131968-1-uwu@icenowy.me>
References: <20250930100318.2131968-1-uwu@icenowy.me>
From: Emil Renner Berthing <kernel@esmil.dk>
User-Agent: alot/0.0.0
Date: Thu, 13 Nov 2025 02:55:27 -0800
X-Gm-Features: AWmQ_bkFwDX5GCFZoiVVhocVq5p5vwtP3bOMdOUIgJzbGU6s45NPbnBPHC3DIsQ
Message-ID: <CANBLGcxoD5w7ApN9mNHWym2oo5XscV7B0rrU5MF68wiS52Eecw@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: riscv: starfive: add Orange Pi RV
 board compatible
To: Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
	Conor Dooley <conor+dt@kernel.org>, Drew Fustini <drew@beagleboard.org>, E Shattow <e@freeshell.de>, 
	Icenowy Zheng <uwu@icenowy.me>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Michael Zhu <michael.zhu@starfivetech.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Rob Herring <robh@kernel.org>, Yao Zi <ziyao@disroot.org>
Cc: devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Quoting Icenowy Zheng (2025-09-30 12:03:17)
> Orange Pi RV is a newly released JH7110 board by Xunlong.
>
> Add a compatible string to the starfive platform DT binding.
>
> Signed-off-by: Icenowy Zheng <uwu@icenowy.me>

Hi Icenowy,

Thanks for the patches! Now that E's patch is in Conor's
riscv-dt-for-next branch
will you be sending a v3? Also please add a cover letter when you do.

/Emil

