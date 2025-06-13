Return-Path: <devicetree+bounces-185688-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CEEFCAD8CA2
	for <lists+devicetree@lfdr.de>; Fri, 13 Jun 2025 14:57:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 926ED1E25C2
	for <lists+devicetree@lfdr.de>; Fri, 13 Jun 2025 12:57:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26028200A3;
	Fri, 13 Jun 2025 12:56:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=easyb-ch.20230601.gappssmtp.com header.i=@easyb-ch.20230601.gappssmtp.com header.b="G7EMkuUj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7959286A1
	for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 12:56:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749819419; cv=none; b=q4P2NDjrWiknMeYGwuJtZU+0ZbsLrQ5jXn5OnpD1SwfW6+egPN7zeNeEuQmAI9SXngKLdOl5S+58eiDLh1/xc9SvwElKiXe/PzG4E5gyqn/eEJSLu7754yxxcRWxTNadwhhN3Rmfv5sHZiICJezceVwY0XzZDYYtk++62lIb8R4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749819419; c=relaxed/simple;
	bh=aE22SOQvZ4NboRw+vhfJKx6DgFaydjXtrHMM6GlB71A=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ndciC9Y7yyItnKIsicibgBa7F8PEU1B0Fz7AM4NMY4SizSpsvGeP+HPCF73t7c83J0bLTP9XBNwHriav2Awtax1l0YdjI3LnCzDq79RZUlXoGc/FZHbRPo3VZ+A3musbtoAfG/thyx67QaVSIMPe2QfVAdmv3BJ+aG0WWQ/X2qY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=easyb.ch; spf=none smtp.mailfrom=easyb.ch; dkim=pass (2048-bit key) header.d=easyb-ch.20230601.gappssmtp.com header.i=@easyb-ch.20230601.gappssmtp.com header.b=G7EMkuUj; arc=none smtp.client-ip=209.85.128.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=easyb.ch
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=easyb.ch
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-70f862dbeaeso20966387b3.1
        for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 05:56:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=easyb-ch.20230601.gappssmtp.com; s=20230601; t=1749819415; x=1750424215; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aE22SOQvZ4NboRw+vhfJKx6DgFaydjXtrHMM6GlB71A=;
        b=G7EMkuUjg83aQqNVAMTRIX8+gssFDXPDydUJjjGRBcYHPpul6nFNmWi0zekcMZDr5Q
         XWSphwPFhx/LIXTul8MnttqQ15XTsLJ2OoHUM3SPx4psJg8W2SaL5YJIsOqhBa7Eh1yF
         p+0UeEbrXTtFCuw7TcjAEx/6tNQQcsQ9GG+JYDfCm0ryNjp9veLXpjp5zpYmAYBGKFIx
         LpwbBgZfUHbVwEG33j3K2RnAkHpeIDT5ieBGrN59G77JJwWY4rNaO5ChSwH0q6LKDIVy
         M9IVC3quztfvL/8hqixvDUGDrMIzVzrlPxgZpWslCSxI92DcSQuewHFpfksqqLysA1hW
         /rXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749819415; x=1750424215;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aE22SOQvZ4NboRw+vhfJKx6DgFaydjXtrHMM6GlB71A=;
        b=L4z8orjBTpBazQWB0QIese9jef9k7+00YbteI3Ps04LhKAfweaBMEqhclN9WQZv793
         1e/sfvgMJ1vXxKYvY80krvfzsNL4n/DKkIoowJuDNYuqOrgVi5dNX0NOh3+70xtxIsqY
         ZkMbsGnvmcnuQ6dHufkZBIY0fNGKbb7zU8Z6jjO9YZqanDiL/+CQ0d2vuuxnIZ+DMdlJ
         1d+WOIC1wzFzUo5Cn9wWsXYFK8vyVI61fCfo5Kyf6euzvbWbq8DoNSttTSKGePlq9T0E
         9HgipNY5MDr5Yrhk2wlsL83mdYMUnHWASwFK+lDeVHke2DwIjgx22S5KrpCI6JOZaadL
         rJ9g==
X-Forwarded-Encrypted: i=1; AJvYcCW8MuPUMfnFBUvUncE3+VR+bLMKLf7m6PI2GTjmxJZmhinnWfy0Lyuj/Ygf3zC6sACPphoqF8AQTvDx@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5McouLre06opkZaTV6eg3JgFJW2xrVunsaH0jxbEj6VbPSsFh
	+CtBzYN8iCV8oSlYmuy3OtTFJQwIVFv10Nzpkiw2Mspecr8PkhtuRc3nwMWz8RcJbak48LEgV48
	ahmWXl3aw8X4J/t5JGzOBo8Rb4UZnZEN7iIktnaqSNhOFIWvuDkGzYOU=
X-Gm-Gg: ASbGncumyFAjf+H4jLNS66qo8PKzzmpBDSS3MC74inq4g8f/ogL0fyrTlrhtTxIfMFP
	XNninYoqWEAOAD9qj+8R/HtpHhStHYnRC1UipXjHfwxqaq6UbRdT6WMDX6Q+Pz9SzlQ86lRKI+f
	Jq1ANLedMFObKyRsnxk0vX37Ax9/BFlT0E+41djL0vVMjIaQhjCm0VCX+Pnq/zPq/Yyw13/rRL
X-Google-Smtp-Source: AGHT+IFYgeldfZwYp3BHb1tpuFBy5VB45y2nB1s8q+rJkQPG+XygN84yNhBbrR/75HnxNyXPI4/9cR1MA7nbO+1HRlI=
X-Received: by 2002:a05:690c:46ca:b0:710:e4c4:a938 with SMTP id
 00721157ae682-711638009d6mr43312777b3.38.1749819415623; Fri, 13 Jun 2025
 05:56:55 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250611194716.302126-1-ezra@easyb.ch> <20250611194716.302126-2-ezra@easyb.ch>
 <e2ffca36-d2ed-4253-86a6-a990e7931ba0@kernel.org> <CAM1KZSkcc8wh7yuJ-26ASKSehjWfD_QGs0JrKOWm+WMfXiY+DA@mail.gmail.com>
 <9a23e0e5-f48c-41a9-8e15-69cdfbc7eca2@kernel.org> <CAM1KZSkKUYcsx_gpvtEaz7hoT-KfJmQ0xHeFYEGMSZ7FEBDyjA@mail.gmail.com>
 <2ca2da8f-92b9-475f-aa41-bd54a95bfc69@kernel.org>
In-Reply-To: <2ca2da8f-92b9-475f-aa41-bd54a95bfc69@kernel.org>
From: Ezra Buehler <ezra@easyb.ch>
Date: Fri, 13 Jun 2025 14:56:19 +0200
X-Gm-Features: AX0GCFs0wH48KYSiwteC0kCsIqGsw_UEw1jb3xtZM9hqtvaV-ZBcyYvNeV2wYxE
Message-ID: <CAM1KZSmLwLopU8rVrPS+wFqAGZn-7LdsikEg6p2f93EiK9_2_Q@mail.gmail.com>
Subject: Re: [PATCH v1 1/3] MIPS: dts: ralink: mt7628a: Fix sysc's compatible
 property for MT7688
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Sergio Paracuellos <sergio.paracuellos@gmail.com>, linux-mips@vger.kernel.org, 
	Conor Dooley <conor+dt@kernel.org>, Harvey Hunt <harveyhuntnexus@gmail.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Reto Schneider <reto.schneider@husqvarnagroup.com>, 
	Rob Herring <robh@kernel.org>, Stefan Roese <sr@denx.de>, 
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>, devicetree@vger.kernel.org, 
	Ezra Buehler <ezra.buehler@husqvarnagroup.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 13, 2025 at 2:41=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
> That's not a binding, but driver, so obviously it is fine since you are
> not removing it from bindings.

And, if we also remove all occurrences of "ralink,mt7688-sysc" from the
code, as it is not needed from a technical standpoint, can we remove it
from mediatek,mtmips-sysc.yaml or is there no going back?

Cheers,
Ezra.

