Return-Path: <devicetree+bounces-211517-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BCADB3F57D
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 08:31:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7199D1A83F9B
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 06:31:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06F442E2EEF;
	Tue,  2 Sep 2025 06:30:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="VKklBFju"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C3321DFFD
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 06:30:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756794653; cv=none; b=fxPqis6i2V0AHztiBmLTMq1bXdbvzfsQ26JYWuD5nZsQRWDV6R2WHYcftYlVSOsWrQdhcdbpvz77DQBhSYisynuOq377UevbYhiM6lRdms59SWVKWtY8us3hiK84z1fURW7WI2i/m4jg2e7/7Z+8rVcEAO913s/N+VgnS+U47BE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756794653; c=relaxed/simple;
	bh=Q6SOpAgFsbSqxChGBgtYqn42FMCU7TsqWdMn2A9wyUs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dlzYHN/qstfmpsJO6y9QwMwVB8BMKrB0XLJDH0TVR0xJ4ljRjYgxPZtwKG1N23477+ol/rruG1REqSU0N37G9MAJOGThBoHxdGMkrl/poZCCVGwJbgD/Id6S2AfZO0gizbbnNPoNE6YfPVMazTW/1HceJ7N+UFORa/4HxMBpT4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=VKklBFju; arc=none smtp.client-ip=209.85.219.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-yb1-f179.google.com with SMTP id 3f1490d57ef6-e931c858dbbso4017175276.0
        for <devicetree@vger.kernel.org>; Mon, 01 Sep 2025 23:30:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1756794651; x=1757399451; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GldbsHOxwOqRszhiKUe3fdsQM11GQH7faWzrEcD84Hs=;
        b=VKklBFjuRZv7qiusTQX74B9FSWxSIKtH1GjtJlgkKCiV/uXyG1GOdF46QCM+w7Nb2X
         eUBt3AL1r6vfG6pcsFUKoWD1HZVKbgqxKJendcDmNopojbAq5cajzIxkFAj3+sN/TLZw
         8kAykyy/pS6vFFD7sEbae6FwM+9+z+xP7Az68=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756794651; x=1757399451;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GldbsHOxwOqRszhiKUe3fdsQM11GQH7faWzrEcD84Hs=;
        b=XtgZpfCEcPbTPVgCnK9+BK7/CfmHoY0q8VOAIZsRMuAR1tvu8gras1cWNWGBlBqg+b
         Srz/HS4JcX2Tjlb8Ev0S5Kk7/QzUqB777vEUCDECjkeqK7NICUQKbnlHWIYGuGqNb5Vv
         Ha9kzY8moh3TgLucelVTe3ssNAmFIRvLS2LS9nHestb4gM0soAn74qGT48DfyQKdBla5
         JtBioOCX8xoKcKK/CzdwZ0FVXHjtqfXEiXP/lHm7tWexAq5HdldxGT1kHdmEln5m50k9
         SgHz2dQdZAgBbmFPYCsT7CyjIN7Yrl/bfSvIuKxVBN1MMTRNEF+5IEILnHn1DsSliEHe
         oHaw==
X-Forwarded-Encrypted: i=1; AJvYcCV98i4mvMvI0WJVFOXn9iizwgHvH/Hxi5UF1Y29U3aPKY7A+vTqiWs/J2z5Wlm6lD8HwFqns4csR1Bp@vger.kernel.org
X-Gm-Message-State: AOJu0YymxZWu2imEORGx1y7Klgt4Dl5ZDJIFcYzKn3ct24eMqkQaVZy5
	0W1Qo3ikzOJe8SnDX5ttSnYufpqTF3Jv+Ez3oMWBKOFVCRvuyGUvm+9VEG3CwR/GNFPNAdZc28E
	h7SBgDBBzxPI/gfeg+axFKBXpKrYgIfHh7H4ST+P3FSrThSOUr9pyrlu9mw==
X-Gm-Gg: ASbGncs5iPwGKzeY2cXAvOzP36DFQQ+f7z4kkwXDhxvh326YEwgCQW13vPdERLgJeGC
	CaKN6wJXj+WTqc84NjIzdXpCqRkcpqk76m0H3EwEEHCfazMjaNnGsZKZToOoDKuez5YpTOFksZ/
	WeTuqoDG7msyaKJSt/DZudSIgezWbWPSN4eZm6ox/gGRXPyC+klABiBNh0MdD0Uf5fy+es8iHee
	m3gzQ==
X-Google-Smtp-Source: AGHT+IFhB7Yl9/OZwualFBQTMDBb72xbz0Pgu+LMqFnInMFJirNghOMFct+IVEyMhDl89O9Jsjjbl97dtB7oxxL5r+c=
X-Received: by 2002:a05:6902:238a:b0:e98:a36a:7635 with SMTP id
 3f1490d57ef6-e98a578c2admr12602864276.12.1756794651306; Mon, 01 Sep 2025
 23:30:51 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250723071442.3456665-1-dario.binacchi@amarulasolutions.com> <20250725230342.GA1993803-robh@kernel.org>
In-Reply-To: <20250725230342.GA1993803-robh@kernel.org>
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Date: Tue, 2 Sep 2025 08:30:40 +0200
X-Gm-Features: Ac12FXxNBkEwJsqkZcDT2ePkxFGLxfZm9eNi6M7jREEW07RJgdKjrq9oLA6y4Bc
Message-ID: <CABGWkvpeKczJVhDbhyKPDgNyYKYkEaTzJ+xDqCgkuqKJAyCa0g@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: touchscreen: drop any reference to touchscreen.txt
To: Rob Herring <robh@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-amarula@amarulasolutions.com, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, Conor Dooley <conor+dt@kernel.org>, 
	Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-input@vger.kernel.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

On Sat, Jul 26, 2025 at 1:03=E2=80=AFAM Rob Herring <robh@kernel.org> wrote=
:
>
> On Wed, Jul 23, 2025 at 09:14:20AM +0200, Dario Binacchi wrote:
> > With commit 1d6204e2f51f ("dt-bindings: touchscreen: Add touchscreen
> > schema") touchscreen.txt is no longer needed. Remove the file and
> > replace every reference to it with the corresponding YAML schema.
>
> The point of what touchscreen.txt says is to not do this. I'd rather see
> time spent on conversions. But you've already done it, so:
>
> Acked-by: Rob Herring (Arm) <robh@kernel.org>

this patch is Acked-by, but who can take it for merging?
Please let me know the right path forward.

Thanks and regards,
Dario

>
> >
> > Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
> >
> > ---
> >
> >  .../devicetree/bindings/input/touchscreen/bu21013.txt  |  2 +-
> >  .../devicetree/bindings/input/touchscreen/eeti.txt     |  2 +-
> >  .../input/touchscreen/raspberrypi,firmware-ts.txt      | 10 +++++-----
> >  .../bindings/input/touchscreen/touchscreen.txt         |  1 -
> >  .../devicetree/bindings/input/touchscreen/zet6223.txt  | 10 +++++-----
> >  5 files changed, 12 insertions(+), 13 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/input/touchscreen=
/touchscreen.txt



--=20

Dario Binacchi

Senior Embedded Linux Developer

dario.binacchi@amarulasolutions.com

__________________________________


Amarula Solutions SRL

Via Le Canevare 30, 31100 Treviso, Veneto, IT

T. +39 042 243 5310
info@amarulasolutions.com

www.amarulasolutions.com

