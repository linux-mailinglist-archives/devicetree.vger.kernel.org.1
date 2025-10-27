Return-Path: <devicetree+bounces-231568-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 90EB0C0E5A3
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 15:18:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B455C19A4D1D
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 14:16:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9942305940;
	Mon, 27 Oct 2025 14:13:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com [209.85.222.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03F012BD5AF
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 14:13:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761574438; cv=none; b=pu8xtX1sIhWxHryZIf+GrhAGV6q/sSc2susN2nCUKkAAaY0TJuuHXGsH7gIpqz0VPAwCIcr3t4QLgvwPlddMKszBaY+VyDDQhNlEyzB10Q9eIDGAUuKQfqJIQx2Hw0yzGbayqwg9MB7+jk5aWIsOp7wTG15IM4s4q4wulSkU0qI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761574438; c=relaxed/simple;
	bh=/4d4HjF1+DuKlFMPzricyRHQOfHfI+zvHpJwBUDOmKk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=b38ixwI6s+7is28Pgjb8KWMEEncAAwWvHSTbPUxXyTjiyvM+HW/BDjHQfFRWaeLzpVyccpOZ0V70vBtWcxkfOAaBqxnGzq7loSLo0A601QGDFU8wwJ3NE5cTxjSKzAinEDxFxbYg7eS9hmn2nmmSCG2wfcssdziykg81DZflI+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f46.google.com with SMTP id a1e0cc1a2514c-8eafd5a7a23so3548169241.1
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 07:13:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761574436; x=1762179236;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JyGCp9ASaMEVdd7OGwSr0N7G26LNgplWkJBV0Rgw9hw=;
        b=veUvs3R9HOXFUpniyegDXo5LIQ2j8MtiMEQLHp/osIcwL/d8MJDogKB8bdr/87lQ1F
         9nrDWE9JkBCh4Xncn8bQHOJks5tjH60Xx/HBdIYyAXxGPiofDL0Sdw7byvkzqGiBJYUE
         LX3B2mmtbPLmfwZQ3OKBihckU5LLjB2dZ43h14IVJhJFAigZ08mbrvrzEBTQoqPtsvWd
         FfLXYZRsO7ajjs8xgmEalJsuRIOgx9PCR0srzeMNQj9swqEC4Sco7P9udUJAxIFZo2Kr
         FayWdqnmX3DILr5WM7km4AC7q4GQGl+tMKK8RIO/cx6MTp8YLT8XRjR3jMkL+KbQm4O5
         O0hQ==
X-Forwarded-Encrypted: i=1; AJvYcCV87Stgh4MHrYLTLDs4BOzDBJbj7bDCS/pJLBlVh+n0pYaVshgw8NM3pi+HUFHXhHpw5yi1GpG4pnvY@vger.kernel.org
X-Gm-Message-State: AOJu0YxV4tmIIFomuhUOXGqvHlNPGRvbPCLz/CpZwAxbXNhp3UMsQ7Ua
	AX8Wf2p4ZI6iBGuebteull+i3A2yMRQkz9cxhKEGF/tgJhVK5ij02Fq/omqrVN8P
X-Gm-Gg: ASbGncuy+TwfkDeX/qTcLw+96BGJ5LEaV1J9pBbfVXTs8rZYTuFz9UJK522SPUU/4aB
	a6NVujLws4TruPPm07fG0ujEQ84c80alnFKR7kD9P8UtfoxeWNTY3zXf4JS9LCwcTasx6DHlZkC
	zOdPnukQtuwxy4mdmThc2W7TZDjdNhDLZIeZD+khhrplNGMVGU4+ARP+1S5qK1myhpvg+i1Z7iq
	1CBVqCRss9gEGgRKZtyqkTSWsnwvOjjn+bFeJmLk20sedztTmWPUj33mvehqytSe+IhhBrQ2RNI
	JQA9l6FcQKNy9yokaAhT03opDNTfzvxwcjVgohOMPsTS+iyLDO2uamlq+E/qZPALgPjfj90GbHD
	2CT8yw6OlCqEWdbrsEbTMhHyaOXrkQB9sB5tH3eqxZKPIGprfHIm1LiD/YnSj7ExST/BMHIO04t
	9arvLK+l3QxULHu9hZyLS372YIeT+XwBXjhZWzKQ==
X-Google-Smtp-Source: AGHT+IH/IbhRK1d/3b0x9HFR1ol6L3Erm1F9YAR9FeqIEXFch2l80VcVS879VeGaSg/DKQDmTgHgjw==
X-Received: by 2002:a05:6122:828f:b0:54a:8deb:21a7 with SMTP id 71dfb90a1353d-557cdc08cd3mr3592220e0c.4.1761574435574;
        Mon, 27 Oct 2025 07:13:55 -0700 (PDT)
Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com. [209.85.222.53])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-557ddb06b1csm3025052e0c.8.2025.10.27.07.13.55
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Oct 2025 07:13:55 -0700 (PDT)
Received: by mail-ua1-f53.google.com with SMTP id a1e0cc1a2514c-932e88546a8so2359065241.0
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 07:13:55 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXjzrKpHW6Z2aIHExAmBwC0KrcU6Pchmsi1uhLsQ6IVfdT5U9xFU8Gihh87+c0gCjAlpTEMObwhrkWx@vger.kernel.org
X-Received: by 2002:a67:e443:0:b0:59e:73d5:8b57 with SMTP id
 ada2fe7eead31-5db3e22dde3mr3134960137.16.1761574434833; Mon, 27 Oct 2025
 07:13:54 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251022033847.471106-1-marek.vasut+renesas@mailbox.org> <6bc264c2-0c1c-492b-ba58-8c7609cfc565@imgtec.com>
In-Reply-To: <6bc264c2-0c1c-492b-ba58-8c7609cfc565@imgtec.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 27 Oct 2025 15:13:43 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXyrkDuciWUxpSM746mL67KaZvcwzFVLLMj=NmqNXdg0Q@mail.gmail.com>
X-Gm-Features: AWmQ_bkADagh4uPO_Rn8vJHrRcLCHt41Yo3zGWeig4Q4PkqMqdfqLZfmPk9_Qcg
Message-ID: <CAMuHMdXyrkDuciWUxpSM746mL67KaZvcwzFVLLMj=NmqNXdg0Q@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] dt-bindings: gpu: img,powervr-rogue: Document
 GX6250 GPU in Renesas R-Car M3-W/M3-W+
To: Matt Coster <Matt.Coster@imgtec.com>
Cc: Marek Vasut <marek.vasut+renesas@mailbox.org>, 
	Conor Dooley <conor.dooley@microchip.com>, Adam Ford <aford173@gmail.com>, 
	Conor Dooley <conor+dt@kernel.org>, David Airlie <airlied@gmail.com>, 
	Frank Binns <Frank.Binns@imgtec.com>, Alessio Belle <Alessio.Belle@imgtec.com>, 
	Alexandru Dadu <Alexandru.Dadu@imgtec.com>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Magnus Damm <magnus.damm@gmail.com>, 
	Maxime Ripard <mripard@kernel.org>, Rob Herring <robh@kernel.org>, Simona Vetter <simona@ffwll.ch>, 
	Thomas Zimmermann <tzimmermann@suse.de>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Matt,

On Mon, 27 Oct 2025 at 15:08, Matt Coster <Matt.Coster@imgtec.com> wrote:
> Apologies for the delayed response, I was on holiday for the rest of
> last week =E2=80=93 I'll apply this to drm-misc-next now.
>
> On 22/10/2025 04:37, Marek Vasut wrote:
> > Document Imagination Technologies PowerVR Rogue GX6250 BNVC 4.45.2.58
> > present in Renesas R-Car R8A77960 M3-W and R8A77961 M3-W+ SoC.
> >
> > Acked-by: Conor Dooley <conor.dooley@microchip.com>
> > Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>
>
> Reviewed-by: Matt Coster <matt.coster@imgtec.com>

Thanks!

> And just to keep the test bot happy:
>
> Reported-by: kernel test robot <lkp@intel.com>
> Closes: https://lore.kernel.org/oe-kbuild-all/202510242309.6p5FyVLQ-lkp@i=
ntel.com/
> Closes: https://lore.kernel.org/oe-kbuild-all/202510250550.66T4zLPd-lkp@i=
ntel.com/

FTR, none of the 3 lines above should be added to the actual commit.

Gr{oetje,eeting}s,

                        Geert

--=20
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

