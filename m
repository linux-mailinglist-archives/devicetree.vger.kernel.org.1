Return-Path: <devicetree+bounces-301841-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CLOGIoFeEGoLWwYAu9opvQ
	(envelope-from <devicetree+bounces-301841-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 15:47:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 97DBF5B5736
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 15:47:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 6031930B4562
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 13:20:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 328A63A382D;
	Fri, 22 May 2026 13:20:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD5E23A1CE6
	for <devicetree@vger.kernel.org>; Fri, 22 May 2026 13:20:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779456027; cv=none; b=HnsJ7b1w5WQmJOMkNq7U6kwFI/jPWdJRndnNNXSzHhWZ/I7JvPqfzu1Hwuj9ob7wQOPHGRk+WfwUDCXgir9bnjbb+bnYh5WAvkhpG28U4XSqa2OX9bB2P2BKMCmH70fwq99CXedKVkCC3qjKVibLFQJz2WWQTZpFS1dl+t0wkKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779456027; c=relaxed/simple;
	bh=P3LYmZ7DJ6jiTlG0wZUwYnVm6oDbKtlScDzsiVFvWrw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MB7OirRLS7uLMAUGvwEadDTkla34g4C+DB5pjQTZitUyC/zEa9qY818ipHYhps5Iqo2uL/VD0PoCeUyf8kIEABCMEwGb03Lj7AzTAlqgnd549YAk5qUqn4rkq5/+edhR6idVQ9/d7GoZ3YC7V/75XLJ1GhRJ9JFHCCm4iPicxCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-bcd0111ea98so1078028966b.1
        for <devicetree@vger.kernel.org>; Fri, 22 May 2026 06:20:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779456024; x=1780060824;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rof2e6OjGUUG+ZoOg7L3bn2avl1gX+MuD7fzpYfe/9c=;
        b=ZEmzL0u8Omr6WR8FE/B/ifFhrzfpkdObugq2pD9Y4DRFrK2lVLkwGNfVGBRtaaa83d
         hqttYeQB/xx4LSv0HanF9IiTRHAxSziQfKyTpmYuP5GlFNjYNMSfZnJp1Say5UKgNuea
         oFqaURwK1i+HGRuEvfczyrVbJgfkuJhlt7qVCw3WnsZicEVMS50wPtaQ8MP50nPkBQRK
         E13mAR+T4GY+jCA5k+lEu812FiL+ohAqdTRynXgU30RwzvuEXWfx9/a0vYOYUbPvaD0U
         K6rpwNYc+JDDBjV0iuHO731Ho8TGf3U5+iYI2/x9l/mzJ7cRf3x0Vsf20gE+SWLyFglB
         ZE8Q==
X-Forwarded-Encrypted: i=1; AFNElJ/CjvdJOHjosbqVPwUM+920CLNc6nAxBM+1W5KCRr88hJOM7A+WazVOHS02U4P7iu2oikI4VjMfOefK@vger.kernel.org
X-Gm-Message-State: AOJu0YxxWaRAUmPR79Yod3Yg8i6iQLOPcsL3YAlmUtzfAZiP6/vVa2HQ
	CXjMftF0Ka6UPxcXxDt2dIp+DNk63CdebhLfnUMS921SiBPUmLx3arE77O4cm42qQTg=
X-Gm-Gg: Acq92OE8CLmeIyR4aijvyT5J7ni8359u7ag2V3/xueHEUf7oumpCMcNSRcv5uxoOiV5
	+N9De1wjgbQsLYGMBGlQkRD9Fjyr3e0nuwcQku9BPwO6YuUfcxBe0T7uC4pjNmOhJG0o2axWDKy
	Ra2QFwnAA6oguaZ7URUIKH9v+fq3vuihwLQGjs4tp2vcLDbV+CIXrqPwAwpIsNopIpIfDMVGiIm
	SZZRbDUYKqd/BAte2agi1iDV/LvzSkVqV9Jao5giSEh9kNX/nI0g0x9OEHioUgmdLNTpgN2wcMp
	TZCIJrOm/GYesRzHfvBerD+wnVaK9cr1kiLHxML74MP3Ko7qzjN7nCaAfC3mKqm3n5TOo82PmOr
	J3jfBBD22UyH2CqxB6kfSM8oZxpX8WIIN0gK0L4hdUT37HuQfLMPvNd8dYJD7zOxRbIYTXPpzMe
	Y8sDHD5jZdloHj2yXa7RklC4WxTyMUQUF6HmcYIivlxAMO3KfBqGOmxYYq1XsF
X-Received: by 2002:a17:907:7382:b0:bda:f14:43e2 with SMTP id a640c23a62f3a-bdd2a408f8emr180273166b.26.1779456023949;
        Fri, 22 May 2026 06:20:23 -0700 (PDT)
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com. [209.85.208.45])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-bddc264d996sm56494966b.13.2026.05.22.06.20.22
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 May 2026 06:20:22 -0700 (PDT)
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-6870f904c6bso5816379a12.0
        for <devicetree@vger.kernel.org>; Fri, 22 May 2026 06:20:22 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ9rJDys2o9Aq82IpCwt0C4rJMogfwGu2dhCYkzlZUmfDyoMr2NuO0FgFQfZhlLF1qGA3jrNXrbsMPDA@vger.kernel.org
X-Received: by 2002:a05:6402:538b:b0:688:34c4:e8cc with SMTP id
 4fb4d7f45d1cf-6889c43eb03mr1886593a12.6.1779456022655; Fri, 22 May 2026
 06:20:22 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260505034325.167797-1-marek.vasut+renesas@mailbox.org> <20260505034325.167797-2-marek.vasut+renesas@mailbox.org>
In-Reply-To: <20260505034325.167797-2-marek.vasut+renesas@mailbox.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 22 May 2026 15:20:08 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVbJ-SPK5wmA68bg-iF6mhaHx8gzxRK_co7E2w+BfaUNg@mail.gmail.com>
X-Gm-Features: AVHnY4KgBi27n3nuGQlpIbkeEOVvo7gucNBwkT372ZXFKVfmiLEIJgWEfOyb6mI
Message-ID: <CAMuHMdVbJ-SPK5wmA68bg-iF6mhaHx8gzxRK_co7E2w+BfaUNg@mail.gmail.com>
Subject: Re: [PATCH 01/11] arm64: dts: renesas: salvator-common: Specify
 ethernet PHY reset timings
To: Marek Vasut <marek.vasut+renesas@mailbox.org>
Cc: linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[lists.infradead.org,kernel.org,gmail.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-301841-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	RCPT_COUNT_SEVEN(0.00)[9];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 97DBF5B5736
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, 5 May 2026 at 05:43, Marek Vasut
<marek.vasut+renesas@mailbox.org> wrote:
> The KSZ9031RNX reference manual [1] DS00002096H page 60 FIGURE 7-7:
> POWER-UP/POWER-DOWN/RESET TIMING Note 2 states, that after the
> de-assertion of reset, wait a minimum of 100 us before starting
> programming on the MIIM (MDC/MDIO) interface. Set DT property
> reset-deassert-us to three times that, 300 us, to provide ample
> time between reset deassertion and MDIO access.
>
> The KSZ9031RNX reference manual [1] DS00002096H page 60 TABLE 7-7:
> POWER-UP/POWER-DOWN/RESET TIMING PARAMETERS row tSR Stable supply
> voltages to de-assertion of reset is at minimum 10 ms. Set DT
> property reset-assert-us to 10ms because the KSZ9031RNX RM does
> not explicitly spell out how long the reset has to be asserted,
> but this at least covers the worst case scenario.
>
> [1] https://ww1.microchip.com/downloads/aemDocuments/documents/UNG/ProductDocuments/DataSheets/KSZ9031MNX-Data-Sheet-DS00002096.pdf
>
> Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>

No regression on my Salvator-X(S) collective, so
Tested-by: Geert Uytterhoeven <geert+renesas@glider.be>

Modulo the document references:
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v7.2.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

