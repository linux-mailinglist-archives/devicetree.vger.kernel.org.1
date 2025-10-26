Return-Path: <devicetree+bounces-231074-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CA26FC0A23F
	for <lists+devicetree@lfdr.de>; Sun, 26 Oct 2025 04:54:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6CF063AA2EB
	for <lists+devicetree@lfdr.de>; Sun, 26 Oct 2025 03:54:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5010F2253AB;
	Sun, 26 Oct 2025 03:54:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nigauri-org.20230601.gappssmtp.com header.i=@nigauri-org.20230601.gappssmtp.com header.b="muCG6ZIW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E42D22423A
	for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 03:54:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761450878; cv=none; b=XZOr+e1JpvifXnHuqi+rMXbpbF9kiMM5MvcONb6ohF8e9GT10OyPB+keDmuOrdYu4RLMoQlAVliU0WO10tWwi/zamt9qsWTW+QDHzklzDoijGa7WoMdVfJT4cBf8vex5IRAyGncaaNrLmXXHEk9mM49gVTBD9MFUDebAcBrfstc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761450878; c=relaxed/simple;
	bh=g2hrsp7pYSc3TMauoqecoCt9sBorwJFdn/D9z5eOAJ0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=EUaB69u7g9ipEQmhJ2JEIVX2rz6lEav5lsjfqPA1BHIJc2nYLr/3CbehkZvGJHV9Bej/H/lhNXrR4ehVlWvpH+Sq1okP9T1iVXmR/OFm0DbRgqlJu0n+dfJE0TGGdWCwxj02lpD4MvQhwCmBXSCwnakVjqjLOqq4yNA3dwFVEXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nigauri.org; spf=none smtp.mailfrom=nigauri.org; dkim=pass (2048-bit key) header.d=nigauri-org.20230601.gappssmtp.com header.i=@nigauri-org.20230601.gappssmtp.com header.b=muCG6ZIW; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nigauri.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=nigauri.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-b5a8184144dso557585466b.1
        for <devicetree@vger.kernel.org>; Sat, 25 Oct 2025 20:54:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nigauri-org.20230601.gappssmtp.com; s=20230601; t=1761450875; x=1762055675; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zTQ9cf8o/wtq1sm9SRIzH1CynBp91izO1iYPl6NL5fg=;
        b=muCG6ZIWEYq03zasG7tywPJfpG27DH15AwzB3w88Y9qiW/t4hmX9xeUNBn+TMtgp9R
         DyJTVlCEv/iJS9Q8VTT5WU+/Ly+gHEBX0Gt7PO6cNky0fHXLM/lkAqdJdBO1WtD9wghX
         gVXkbYdGbEFneuNukzS3k3ZDOa9yrIIk1PsiruHfiigWZGFtNEeO2DvOIE8muvdJBk+F
         MvYRsR7H1YvnqzDTR3d1povZkzmSmerXtdxZrlWrtelsY2lLq2sdXzc1ga22I2XenJPZ
         ry0p7eLKH/eTPvDQK9HYg4zdInmQd74hwDgQdgF0Ov+p+H+K7s4E68Do6jmalCfuxtVj
         4IIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761450875; x=1762055675;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zTQ9cf8o/wtq1sm9SRIzH1CynBp91izO1iYPl6NL5fg=;
        b=O1M6TTMuM/ateIiUh+fwp+NRLOCj8DFGLMQtZTcoaSOXtx3JQC/UzJ9ngyLrkGIzzk
         w9hCyoLt1Kl3RLX8rILhS0LVbfJgPowpqYwN/gY/R2AKewl6wjr9C4phxRSR0Vds1gbt
         zgJS/PcArTwnddQo00cOy3oS18XuTaVKU2gOgYLusP9sBtwuil0Qe0sKTALo7gYZOw2N
         Hhb1Cu0pfHFnUXRwybuMjXxZ9DVa+AwiKA7W3klMcA4s+Ki40RRWkfkQ7jSj268VTE8T
         mZcKVXpXoHgEQarzKcGQO6SzvYAepGyX6ywyUZtezkRvc2d+Y/q6z/gHcfbBjiLZDzF+
         T9yA==
X-Forwarded-Encrypted: i=1; AJvYcCU1FqH0kAlxpGJSLLaNgqb9cEzETxm3KxKB8nBJJ1cfohyCgvZVI83MF11NnNZDjKrE6+BaFlZho5bI@vger.kernel.org
X-Gm-Message-State: AOJu0YwfrREyHUyOUyofzjfe3hHVSPfXZDzMC6AUyh7ggYBNrCBNJNTf
	U/U7i9po6o4WoiDBtHovrUbeUZSW+eF5pJN+0hxAvV53aTY1SMulx0d4kylaTAigzy1uuAeLKXE
	EokzQSSbnPB3f3ygKAeOfLQn1G66mLBz4WLUYrbQ=
X-Gm-Gg: ASbGnctQxOiVyNPIxg5F0olcngAer1o6fEsbVH+9rNEItjEoGV7NOELXsY5/j43+3Tc
	WGZNTTFoavgWnqwlX0tDVC8ChNfpjiNsWy8LugagEYJNKKFVcobgMdSPoYF/DTYQTVNXKVtLQwV
	mbCUONz1ZOBffxWAQyoOL1AL0KKIAgAO5Ce0naqA5VxyLROoIKfcqe3eXmpgfcYXqKLbGDFR6OY
	YsVjceUzN2hJsrkVcppaExv3HpPS2wkIZZ8/c0cIjI2+r/26GjcLgCE7s8cIe5F
X-Google-Smtp-Source: AGHT+IF2+lRvi7mDNU/JIymzliLzIw16APGfZqTPJCYctAtko4LXYFcmoi/L1KJs8634VhqzZUPOYqgG3xi67i7zB7A=
X-Received: by 2002:a17:907:9481:b0:b3c:1bfc:c552 with SMTP id
 a640c23a62f3a-b6d6ffac8e5mr638892066b.42.1761450874010; Sat, 25 Oct 2025
 20:54:34 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251010-kakip_eth0-v1-1-0d8fdcbceb9a@ideasonboard.com>
 <CAMuHMdWZD1m6t8MnYTA83RV=h9G9o6M3KSZjO32rRjOpz6px+w@mail.gmail.com>
 <bcdc9a86-bda1-4646-9ccc-1dc00a710b44@ideasonboard.com> <CAMuHMdUDuuXncX4sbd6oa+8KcS8x+1Sp-ahmvyh8fRdQt1GqKA@mail.gmail.com>
 <8b984f13-0498-4cc6-a64e-e2b6b147c346@ideasonboard.com> <CABMQnV+z=8-ORRGTjxM=6iP+6+qbJa-N_C0csi8K53wpFwLp_A@mail.gmail.com>
In-Reply-To: <CABMQnV+z=8-ORRGTjxM=6iP+6+qbJa-N_C0csi8K53wpFwLp_A@mail.gmail.com>
From: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
Date: Sun, 26 Oct 2025 12:54:08 +0900
X-Gm-Features: AWmQ_blfwE2EJGb3gpFQC-dypJ-57A6h4oJ5zyEWk7e2ykevzEHoivTUVjag4og
Message-ID: <CABMQnVJu-rVHSYcSU271sVeVvuHN=+h8YOAMkDXW--MWfxguuA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: r9a09g057h48-kakip: Enable eth0
To: Dan Scally <dan.scally@ideasonboard.com>
Cc: Geert Uytterhoeven <geert@linux-m68k.org>, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

2025=E5=B9=B410=E6=9C=8826=E6=97=A5(=E6=97=A5) 10:06 Nobuhiro Iwamatsu <iwa=
matsu@nigauri.org>:


> >
> > Indeed, I couldn't find it anywhere either so resorted to phytool.
> >
> > >
> > > Which PHY is actually mounted on the board you have?
> > > Can you inspect it visually?
> >
> > It says LAN8830, plus a couple of other strings.
> >
>
> Yes, this board has a LAN9930 chip.
> Since this chip's PHY_ID is 0x22165X, I believe the PHY driver needs
> to be modified.

I have confirmed that this IC is supported by micrel.c, not microchip.c.

Best regards,
  Nobuhiro


--
Nobuhiro Iwamatsu
   iwamatsu at {nigauri.org / debian.org / kernel.org}
   GPG ID: 32247FBB40AD1FA6

