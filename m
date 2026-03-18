Return-Path: <devicetree+bounces-277264-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6OTLDCCwumlXagIAu9opvQ
	(envelope-from <devicetree+bounces-277264-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 15:01:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 42A6C2BC862
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 15:01:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 21AFB30478A3
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 13:56:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D16513DA5C9;
	Wed, 18 Mar 2026 13:53:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com [209.85.217.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92172387350
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 13:53:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773842009; cv=none; b=P7Q+bgBfAvceluENPSU5ekse2qVhkfegeKKeCUxsnO2xXQb3Kcj3LZe4RbHma3bCg9K8E0IvFtsI7UjOYertu9WZDDpR8Hoq8EHUoi8FdoJ7CYw7d/6tsLBED1bUEGBzUr7dr4ubXjnZIsyGMmOJ3qLwnPYZFVtSaJ3xBo+NgNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773842009; c=relaxed/simple;
	bh=1J+ZEWWCwKCOBXUBCktxq34rBZAyz3nNsU6vGV7upsM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LrQ3GRWBcjNUEd+WYY9Pq1E3hPbS9iD1XGD8EObMBONLdMET9j6w14b3j05Qg90PmJ4aqunmxXViCflBlj+qRLsZiVHsvSVmpmi9zb4kSPmsEuZf/3krABI8Z2Q0mJyFtCkhhPdmNN8vImv0Ix01K38s7Tbyw/oAx4OkNrLkFXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f45.google.com with SMTP id ada2fe7eead31-5fff18d44fbso4278514137.1
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 06:53:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773842007; x=1774446807;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LtGq/NmoEQrnt3QSlNTziM/yJWABLbCKShsDsvXl5bY=;
        b=UdKJbrtVvKbGFIGQRLCm6kDxe+FWyuObMk2lTPE6davDUGZ3FJ6BVLvp9a5dErTFiu
         r3XdgO3HRZkAGq7CHOVDMtURoT26zwypDR82NHx7fG7fwkVASujgGW8mOM0m/0OJ8di4
         ijCiv6QS4WkRZAHQp45TiBFebNk5MuRRhaDu7kFnbo4Sz2y3rbLe95eaxkSuzVxQ9fg1
         /cyW4im17lf+xNU5wiSLinCDMzn5/oEiVVQ9CZpKGN2xheNdOAiG+HbDZyD9NDPI9ObM
         MDVB2KLi+HRYOglhAhXCaNPMX7u/icz3DmSsb2l9/bZxg89mg00Tw9Keq5UGzZ2aT/Gf
         RrDQ==
X-Forwarded-Encrypted: i=1; AJvYcCUDfEQHaRvKMHUfMET37d6AGo+abF5/T/0yJ1BqVfFZzD7Hy7nAzmvXLVrAM3L5Pgl8kf5Fs2xErNfV@vger.kernel.org
X-Gm-Message-State: AOJu0Ywln7p2ZdQNj5oT9lrtHisAeHxIP572R7e2gtNT0Qw3lSuY5kH8
	HStbliu0oy//nduNlm6I2hxqrEbI0C1Uk8f1ORRDAbrdgC1SEr5oiLqG00HNxFmk90E=
X-Gm-Gg: ATEYQzxFQUaCZFX5cXIhi5DJUquqDSZkxUJ76467wdnJghqm4839mWzistvYsGPAqct
	Dv18Ki16sAM74PkXXDbtnDtZ56xJLtepQ7F+jw5zeVYPrZTFx3ajBSWiEP5N9TUNmO4t9rokNcM
	VHF5wSn9iSUGnsHpjrKIqwHdxC6lOcAwffUykYpNSl3ijXq6mAG6V6KBPnHbe1KuEJ8pLVClmMA
	7fFuzrxIUkIN2F8Omni+00Rx/Y68wOK2hr2y/pKUH7eQ61WlTrFlwjXbG2rP3sZRlmqpcyez9tH
	4U9KUmO86m8SXXAg/VJp0i1Yil4MXGivNlceI/41hOjcOSvRqfo6XXsUsR1mfou1ApiGxr0NSkQ
	piO6w8ycJ/+Ci7yf8a0v6oFtF9jvmmeoCag/h3hP2xbHVjm312gQRZ/eJ0DUucifLUhI3/WF7nu
	wKjcjpmgTp4n4JQpKveoroBdnSqNBcNYBmvgsfMN0fuiN9DNjRHSvr2GW/kW8W
X-Received: by 2002:a05:6102:84d1:b0:602:9228:34a3 with SMTP id ada2fe7eead31-602922838d1mr131282137.0.1773842007351;
        Wed, 18 Mar 2026 06:53:27 -0700 (PDT)
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com. [209.85.217.43])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-951034737d0sm1272721241.13.2026.03.18.06.53.27
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2026 06:53:27 -0700 (PDT)
Received: by mail-vs1-f43.google.com with SMTP id ada2fe7eead31-5ffc879c1aeso4342321137.2
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 06:53:27 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWQAyv5S5LqXXuCpJTj9LYag7OrB6BeWbIRd5tq0Eweh7aal+U1C5wXICzq1vCUEWBlCcADvn+QRB3e@vger.kernel.org
X-Received: by 2002:a05:6102:54a4:b0:5fd:ea66:92cf with SMTP id
 ada2fe7eead31-6027d12f4bbmr1813772137.13.1773842006913; Wed, 18 Mar 2026
 06:53:26 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260312160407.3387840-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20260312160407.3387840-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20260312160407.3387840-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 18 Mar 2026 14:53:16 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVAS8GKPKDQ7Vrd5b3LOGpPS=ppKW=77Qx7nGPTnvwecA@mail.gmail.com>
X-Gm-Features: AaiRm504El8BNgJkH-FqgtHlRrAv-EcJsoGOe-ua0DTgkwbK3k9eDXyAB8MmeFc
Message-ID: <CAMuHMdVAS8GKPKDQ7Vrd5b3LOGpPS=ppKW=77Qx7nGPTnvwecA@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: renesas: r9a09g077m44-rzt2h-evk: Add PHY
 interrupt support
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org,bp.renesas.com,renesas.com];
	TAGGED_FROM(0.00)[bounces-277264-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[linux-m68k.org];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.996];
	RCPT_COUNT_SEVEN(0.00)[11];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux-m68k.org:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,mail.gmail.com:mid,glider.be:email]
X-Rspamd-Queue-Id: 42A6C2BC862
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 12 Mar 2026 at 17:04, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Add interrupt support for the GMAC1 and GMAC2 PHYs on the RZ/T2H EVK
> board. The PHYs are connected to the ICU via IRQ3 and IRQ13 lines
> respectively.
>
> Define RZT2H_IRQxx macros in the SoC DTSI to map the ICU IRQ_NS lines
> to their absolute ICU interrupt space offsets.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v7.1.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

