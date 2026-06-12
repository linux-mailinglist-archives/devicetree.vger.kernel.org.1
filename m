Return-Path: <devicetree+bounces-310878-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id QJpIDqboK2pLHgQAu9opvQ
	(envelope-from <devicetree+bounces-310878-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 13:08:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 99440678DF6
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 13:08:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=LrVnDpn7;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310878-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-310878-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0042C31928AE
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 11:08:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C3D7345731;
	Fri, 12 Jun 2026 11:08:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60A07376BEF
	for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 11:08:13 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781262494; cv=pass; b=T9Yxcz27CeeAhB40J5eJiC/UBhcdQtAtli1XUobtzR9lwoxArb/UaxUpg+bK9et4x5pj+/wxPLeryDPBSOiPgDjRTOw1SOKdn2uulrpv2ViEN7pEQFGxlO3r+K704eMLD7ZRlkLt8yJXj5tvnDJ4blNDUIoXHHZW5aVTMZNPKiQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781262494; c=relaxed/simple;
	bh=46tK2SY8oxijrIbVND1wuLnWgyakUWAvGn7lOjZ9328=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=EdZBT36WxneA0VPAU6r1tkP4gvACF9UDzgeXUr5j/lKzgyIQOOLUtrpyGESBisur4rhPYCxT+NhNtL7iRHvBIuVkFY6rC1RXMoz8ZIu7GuErlbbo8O4yCP04O+M8l06gxDfjTEmpA6hawnyqcg17Ik1Nc5VRIqd2sGBJvFUPqfg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LrVnDpn7; arc=pass smtp.client-ip=209.85.210.177
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-84347ad88edso536676b3a.1
        for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 04:08:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1781262493; cv=none;
        d=google.com; s=arc-20240605;
        b=k+09NgyaHnFcieYGP7ctLGair/NOresckpERzSY09zmMQBdXo73Ftllzd/I2QC61Gd
         2MSIJ5Vrtba7IAx3wvsKowsCwp/1RTKHiGVgBraI3m6l8//OXP7eZuay73weuoJj8tU0
         9NrNpo8yvQlOE20d57NbtkzYH8BMrHwan/EQaNGuxdB1FSj50JbayffzVRDUkAqeXLIR
         ufjdgUtGl/UXuHNGTI3SREFDGLrVPhXehnG8jeO/To4gWMR39ePaDm0+NUpSL/smm+LE
         ZfNrydB+lkVIDc2rhroiW7ktlNCdl8eqmqToxZsmbxailsQdpUMnL4fyIR7uN9hN/RqQ
         3UTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=C8RG8wfZcQWUkvU7NuWObL4uAtXpFMwBEsyZAZlGxso=;
        fh=1MHh/6qM5+PwA/yuVGE+Sp7ewU2Ny+m92vu/D2ksIfU=;
        b=bzj8aed4MqM55/F3MpZ1BTUdsLLhNayqeVCx1PcTOVv0Rc9rtcW/pP3jz0uVr7sIMD
         6vcJFixW0hOCSjxePEFf6+b1pgjzX9B6cUK4RvvcM6jHAY5PXG1Z6MIGtttmf8LKkKMp
         f2XiOg1zZU9VFo96vGtxFViGXUP5MEkZ78TrZMMkwvQDUkmon0kelNw8lqLen9R0MWqJ
         f6HCJ9UuT/XwcP7J4qP968dp1Ucm8FCaczike+JF7YDZ0ryuOe4SAE+PQS/HtboomGM5
         XLzw1KrEht1pJMOiEYjfcDlFzxIx24p/990qLpQKyday1aXVOonFNamSpmUcfZrcdDYv
         /MBQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781262493; x=1781867293; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=C8RG8wfZcQWUkvU7NuWObL4uAtXpFMwBEsyZAZlGxso=;
        b=LrVnDpn7bA0lGrLH2SO7PGUdXWe3BMQ4RVbOBDaQgZh+k9d6A7aYAB4AIr6AGQzvY9
         0S1r91PPdcBldK4sTt1uTSyHmos83NTJucuawzTNsazAWSbYopGgsSSbz4GhajxMCtkb
         cMmEOSFuGzX0hTWKC41NlYycgVV5ZvuL1WHE/9mbAB1Xusoh/VRQGC86V7/d+gjSlnuL
         dy3Yt2pokH8DI0VRw6zE/gtWXfJw3oCZp2ptPEeJCBz4otDdC4C+1r2eLzbcbZpOweAJ
         26nIsT+F47av8PppgoTGAtv9JNzsYTdwd0o2lT4GrNKmyfGxv0nY3o2xm4aZTxmS+RcC
         sSDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781262493; x=1781867293;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C8RG8wfZcQWUkvU7NuWObL4uAtXpFMwBEsyZAZlGxso=;
        b=RhaSlye/1mjFtrVLukrukcPvpMd1AX4+VZMD4TvOkRp+nXzuJC6IGqX8q3lCoFZ+L9
         YSn2M9xETS47Php//bYHA701JH48rM9DSLAkgmsdhQh/qdL7AgV+KWvm7SMl/Ut0fTt1
         /AJ4JyGI4nAgWTm2d3dIGR0tyOfix9BB+ve2iM2ZRZOA8Zx4O8XiqVKbGzFaBiL6fllx
         rbSoeYgiH7w8Yiil91CTYabVYCglQxWlFEkzH7O+JLE4MZQDlOgfLaNPKqa+qJJPM9sr
         NJRi3wk902ceuLOTsEyt1w3ve2a6q/OH9vGc/BMjVE3I6leX5G1icrczhsbG0uMy6sIB
         qd6A==
X-Forwarded-Encrypted: i=1; AFNElJ9aTSSeCB3wNwGuXkRHY0pbJf51vFJE9s2GZTv9MNqT6t5tcBwr2vkam9Ux27yFEKNX+Gpv9IwM4EWV@vger.kernel.org
X-Gm-Message-State: AOJu0YwlVMy9yDkUSwMzZBq7kIcDae3Voqo45NACyM40YnXoG02DpOKh
	ueD6uXXIqZYCPXBobENYlFJVWq7fsQT8AhN73RzhSg8v3lj29DhOvQwceaN6lbOT8VuMFETppDd
	wY0Xu2KwGriYooWoo4mFXpseS1BBgL38=
X-Gm-Gg: Acq92OHhxgAHrVJSl7xAgPkqhzQiXwYl3B5Vm2AlosDjOV3cu1hKpxWiX2JB+mu2Bls
	3YFzcPL5Z+p1J8rBEmYPXlTiG5anVNspLIepfT5pLKBaEc6cUiBcKyfSFaRa4UUZgRFHisFJmv8
	aLuamD8DYev6CQ9DJ2yzEr+GkKS7h8KrmeM79O1V/W/4nYVOywIpydVIw1SWFgs98V1wOHEzNIU
	olgmhy1jvHDH2VsiM4nBDe6UsqWvcAIqO8/gT1hIJphV3aLazc59fBjlwAcM8tJe8VlPgLf3CbA
	Q2Jq35RUiyj0Jwn+QEGPGAXD8CzYt2VWAh+YdQ==
X-Received: by 2002:a05:6a00:805:b0:842:3be7:4d54 with SMTP id
 d2e1a72fcca58-8434cc0b564mr2663158b3a.15.1781262492776; Fri, 12 Jun 2026
 04:08:12 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260609113836.45079-1-phucduc.bui@gmail.com> <20260609113836.45079-3-phucduc.bui@gmail.com>
 <CAMuHMdXku0BVRgwWWv1vNccKpRbvTu+1b0TjYacNJH94XBDOGg@mail.gmail.com>
In-Reply-To: <CAMuHMdXku0BVRgwWWv1vNccKpRbvTu+1b0TjYacNJH94XBDOGg@mail.gmail.com>
From: Bui Duc Phuc <phucduc.bui@gmail.com>
Date: Fri, 12 Jun 2026 18:08:01 +0700
X-Gm-Features: AVVi8CfMXSYu3RrDvNLF_rgtRUBfjvN1-IvBNNlzLi33SiKq9QBt8Ro97SYOt1A
Message-ID: <CAABR9nHFHWFeEaaYE6X9fqt_Zb-3pF=jJbHQpsiBTgkS5LyTLQ@mail.gmail.com>
Subject: Re: [PATCH v6 02/11] ARM: dts: renesas: r8a7740: Add clocks for FSI
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>, Mark Brown <broonie@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
	linux-sound@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:geert@linux-m68k.org,m:kuninori.morimoto.gx@renesas.com,m:broonie@kernel.org,m:lgirdwood@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:magnus.damm@gmail.com,m:perex@perex.cz,m:tiwai@suse.com,m:linux-sound@vger.kernel.org,m:linux-renesas-soc@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,m:magnusdamm@gmail.com,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-310878-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[phucducbui@gmail.com,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phucducbui@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[renesas.com,kernel.org,gmail.com,perex.cz,suse.com,vger.kernel.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,mail.gmail.com:mid,glider.be:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 99440678DF6

Hi Geert,

> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> i.e. will queue in renesas-devel for v7.3.
>

Thank you for the review and for the Reviewed-by tag.

> I have one more general question.
> arch/arm/boot/dts/renesas/r8a7740-armadillo800eva.dts configures
> audio for FSI (fsia_pins), but does not fill in a clock-frequency
> in fsiack_clk.  Instead, it fills in 12.288 MHz in fsibck_clk, while
> the schematics call it FSIACK.
> Apparently the FSIACK pin is shared with FSIBCK on R-Mobile A1, so
> which function is used depends on pin control.  However, the DTS does
> not perform any pin configuration for this pin?
>

I checked the schematic in more detail.
On sheet 12 (FSIA section), the FSIACK signal is connected to the
WM8978 MCLK pin (pin 11).
It is also connected to the X8 oscillator output (pin 3) through R121.
By default, the board populates R120 (0 ohm), which routes the signal
to R8A7740 pin K5 (FSIAOMC).
If R120 is removed and R250 is populated instead, the signal is routed
to pin G3 (FSIACK).

From my understanding, the default resistor configuration places FSIA
in slave mode.
In this configuration, FSIA receives BCLK and LRCLK from the WM8978,
while the codec receives the 12.288 MHz MCLK from oscillator X8.

This matches the current DTS configuration:

simple-audio-card,codec {
          sound-dai = <&wm8978>;
          bitclock-master;
          frame-master;
          system-clock-frequency = <12288000>;
};

Therefore, I do not think it is necessary to provide a 12.288 MHz
frequency for fsiack_clk (xcka) in the current configuration.
If the hardware were reconfigured to operate FSIA in master mode, that
might need to be revisited.

I have considered testing the alternative resistor configuration
(removing R120 and populating R250)
to switch FSIA into master mode, but I have not done so due to the
risk of damaging the board.

As for the relationship between FSIACK and FSIBCK, I am not sure.
The schematic I have does not appear to describe FSIB at all.
The HDMI section only documents video signals and does not mention audio,
so I do not have enough information to determine whether FSIACK and
FSIBCK share the same pin on this board.

> Note that I have never tried audio on Armadillo myself.
>

You should give it a try sometime.
The audio quality of this board is actually not bad for hardware that
is more than a decade old :-)

Best regards,
Phuc

