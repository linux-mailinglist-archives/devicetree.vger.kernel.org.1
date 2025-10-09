Return-Path: <devicetree+bounces-224963-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E03ABC93C0
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 15:17:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 665204E54A1
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 13:17:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F47C2D5946;
	Thu,  9 Oct 2025 13:17:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com [209.85.221.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90BD52E6CB3
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 13:17:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760015864; cv=none; b=n4m4NRmj2XbhVqEv3B5wHO/ux3aDnN3bcTRuFfkysxC3X3NqLyLqmf2CcK4FWb/iaVzV4Ka+2NAJDceBeB6dYb/zgg1t6Dz+KoGRsl2eBtoj7I6m7W75LJdfzN24I47zXbk1lzbl+iu8OoTsJ7UfIV90hhwp44For0Gou7ooAjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760015864; c=relaxed/simple;
	bh=Ltmobvy1f84KfY6EIOg6LAsOL7fbdFI22vqu7qYDFx0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=D7cvzifYmjp8cnEjraNbBm876HrsK624TY5xZDUMlOtO681CHUdINKlMX9Wg7q9oC3LkoWXhsCokH5NjyWlyzz3Ee6NK+joFybFIm5C9y42J9oftifrMrFnRIEGE+PYfBIoqPMUdChYh/y/iDAN7ABxI5cGTJ1w6LIZ6fYLFx+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f181.google.com with SMTP id 71dfb90a1353d-54a79cadd1fso466152e0c.3
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 06:17:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760015861; x=1760620661;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cZDDJZzAoOLlZiieGR0CA2H6w2gRSUvJq4uwBr2r9KY=;
        b=OT07BRWKl6BrOF4pwwpecKVKXKYrLRVeGpxD46E/GUAiN1M5eGl0g6EohJXT5ve25H
         33bDkjV4WzR1BPQyec2Swcig/RY3YhABDZ1eSKy1KZyRmzzcdO/Dv4VASCIh64czGXie
         rmez7UlmfqGGdhlVldF+ul8yuOvOkCwQGrCkjBFfm6JCxwVGYYn+Z1U7C7fG553gBPoI
         hXUjsULLXVl9Bt8o2IIkv7iYPrERjWYinSPCrVsqo4LQ66l6368ygfFlYd7jz8AR0GKI
         tkd5vdJUP5aAE/oI9Q0PBlZvS4hJtmLumoSToLZqWC1pYUD9XYkLw8WfhJUd2Fpv/2kV
         f8/Q==
X-Forwarded-Encrypted: i=1; AJvYcCWTCDhjYOupa5G+VOYCLh1n3vEzQXIiEByn5EVzuAPYrOuwzbH5egb4pA+0q3PN8ZK8qOdcVjGq7PFw@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3G/gEtYmuBWe611C965TDL7ZkofePwvl/IJEKFsyyZ3bCR9/X
	Z/wj1K4m7rethgE+i7ZJWbkhA31DQNidZHodamNENupDpmNrvQyaCpz/BX8Tqzbj
X-Gm-Gg: ASbGncvyB6dst5whXMC42tkIxM0jIRlqqAB6wBF7/p2p13oW0IIveI+RltuhFSIQ+GA
	KR5Xc5e2thIOf1V8PsBECSOLvEsDWfGTtYh8T3PcKsxyAou0FiZTjO/jh3z8hnJRCW5XIBhCwq8
	Am3CBKlXUqDvbIBaFrKW6s2MWd2L4cjeg4ix3/uHjRws9EspTUYj7CeeSiJCkXoC74oNEl9gium
	4mUMzuVXKJVNS2GZmdU9/kyvGVZel3E5W0hX32HTf7LVqc+OffNAiZrmJAGhknTrQVAfUXNRTVm
	PJIr+P4yX06RlX73isY1UetPA8LPCHj1SfCcwozrdh1vyJL2Dsnqk0PZ49VU0O1+FQ7PzgneHd4
	ey1B5e2WXkrx79vikrLzsGGa68ywFbT4hnBAU8LCGLTaBpZlOaOnm3LyoOjJy2PvFGMgSLodbuI
	0yszFVa5RO
X-Google-Smtp-Source: AGHT+IHZbl0PKMBt+vldRjJvE5Vo0Qt1EkjTsi91YIMLcQ3EmYv+liprIYH2tQXRcpnTTe8ZifecdQ==
X-Received: by 2002:a05:6122:510:b0:54a:94e3:958f with SMTP id 71dfb90a1353d-554b8b88f1amr3108672e0c.11.1760015861039;
        Thu, 09 Oct 2025 06:17:41 -0700 (PDT)
Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com. [209.85.217.42])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5549ab319e0sm3102666e0c.0.2025.10.09.06.17.39
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Oct 2025 06:17:39 -0700 (PDT)
Received: by mail-vs1-f42.google.com with SMTP id ada2fe7eead31-58de3ab1831so913556137.3
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 06:17:39 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUcVtYm+UH80/eDzEp+LGzB/fFxULW/3EB4a/lvp9YWy9OGVTWq1YJB/Gt4ITaUsXkTv9UwTTh7fZak@vger.kernel.org
X-Received: by 2002:a05:6102:290f:b0:5d5:f6ae:38f4 with SMTP id
 ada2fe7eead31-5d5f6ae3ec7mr514763137.43.1760015859180; Thu, 09 Oct 2025
 06:17:39 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251007121508.1595889-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20251007121508.1595889-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20251007121508.1595889-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 9 Oct 2025 15:17:28 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXTvANxZr5wYD2EG7WGkkqGw5B5O-3=bVuRv3ToE2mvkw@mail.gmail.com>
X-Gm-Features: AS18NWAFS_XUFRrNgdqk12yyHdAEMQhOLAy2yQ8EvwK3P_MM9bEB4ZpzZb7CSuA
Message-ID: <CAMuHMdXTvANxZr5wYD2EG7WGkkqGw5B5O-3=bVuRv3ToE2mvkw@mail.gmail.com>
Subject: Re: [PATCH 2/4] arm64: dts: renesas: r9a09g056: Add Cortex-A55 PMU node
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

On Tue, 7 Oct 2025 at 14:15, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Enable the performance monitor unit for the Cortex-A55 cores on the
> RZ/V2N (R9A09G056) SoC.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.19.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

