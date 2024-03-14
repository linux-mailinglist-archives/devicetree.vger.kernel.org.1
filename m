Return-Path: <devicetree+bounces-50460-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B932F87BC53
	for <lists+devicetree@lfdr.de>; Thu, 14 Mar 2024 12:56:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DCC291C22AD0
	for <lists+devicetree@lfdr.de>; Thu, 14 Mar 2024 11:56:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C930D6F06F;
	Thu, 14 Mar 2024 11:56:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nNbjRRsr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com [209.85.222.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 055696EB41
	for <devicetree@vger.kernel.org>; Thu, 14 Mar 2024 11:56:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710417401; cv=none; b=u4TRXDkIn/QvjaGmlAkK0tHzlcBcoFezT9Js0hg/DVVjdag2/YN0CluK6DXgvzJPKeeWqz7eaMW3CoNo9BmgThutx+sdOvUmSL7bHgXQX0mpLaEFU7o4NJqqTS+zpLBLV4ppG9pDc0hTD27oC3xDzMA4RpTWpEPEVZIz09G+MgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710417401; c=relaxed/simple;
	bh=OnR+b4vuwemmK4UxRqvqWSVAvC55cRTDFTw44osbDl8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=scwpnCLjhd7ho2neIULJLR4vgnT0p0DmHa1uOnMorEIFLEgI4/z3QpmzruVeV7DOeBRfq1jjA4fzBG9sQOzpsXIqZokJmB8XWqTxtYcufgc68rNPRp5jOwZiMi7gaAaxTKQydsfsFr+K/nYMaap0zI7SyRx3So98kl0ZoyH6p4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nNbjRRsr; arc=none smtp.client-ip=209.85.222.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ua1-f46.google.com with SMTP id a1e0cc1a2514c-7db123701bcso361332241.2
        for <devicetree@vger.kernel.org>; Thu, 14 Mar 2024 04:56:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710417399; x=1711022199; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=4p7bU1aHHtSQT0obHNU/eUyOrGVsRVnhtaCT7GQv+pA=;
        b=nNbjRRsrdohsFl+xJVvy5TycmFhpa5QF38zbtA6+Z3CthHwmodfjMFCCuJjvrP/DzV
         ipzyr25PqVyiGHGgE8w8UzAxqBEbMdpipnzaQWywEKgaSDCDVnc4sLdsk1Lhn1+NZkt6
         KQ9o3JCghgatsFrCOfeYovst6WEjlLHXID6bMPCdB7WTt3V/OnN53bEZltxv8nZci8wv
         gxbg+eCXIrr2dGWPW1Vx+Qkaaz4VxHRQWpPkh3kAWT8CfkCuDEkIvTBk86FIwTqH4XTH
         WbAaDMjMRspvcu+MuTTVoj3AgzrxC4qUdCtJxx7+1CupYw/T+9q23t7+6XZ9wTsMaopP
         OYzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710417399; x=1711022199;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4p7bU1aHHtSQT0obHNU/eUyOrGVsRVnhtaCT7GQv+pA=;
        b=EjbYE4jzRkwln4FUmp22iL5v2L1ZSdd8IIq36l949hZP1ZZCC/CEnBUiuKBkcsXT9H
         E5poQ9Q2Ozm1XFud9CLqi6dA3B7W3p32b7Xbd8sRzQvxKLGhAxbjvOJZOXrtnMCdy65x
         t3q8W2Jv/r0G3YGtbIsKo/4V8u8Q8wn0sp1xFR92BUlRJBxLOsbIdzkPxI2ZhNEvrOTo
         6iEng5NNNoDX7iOjve/AuQ2xyhGian2c1rxa8yWZf+3Uht6ykG34+0kmhUdj90z6Ycvo
         IihKAkJV8RD2DCYgGv5oanwNMiqxGrQZIPkpdxfbLiMa+OwyS68qQV7DNqoaaf5tKmQm
         2WHA==
X-Forwarded-Encrypted: i=1; AJvYcCUT8Lm5heQa4MeNWQeHlV5MR5ABswr9XUDOc5x9CrWVaf8ycvI6mtyXvVT9tQsj/Z/BD99TCgelD0zgHsCPJl/RNsrd2ZmKgth6tQ==
X-Gm-Message-State: AOJu0YxW1O5eAv8L82ZII4KC6OFaf9vtpbDn4dQCuQZcBD37W+Q0Kll7
	GdLQhOk5nRG0QgqM3MyOLKnWuoozkjn3ACp30AvS0Tr5e78NQokGKF9BH5GZn4Q+h7zmpMzTPx5
	CwaS4t0fu1jEGc8HPe/xXYYyFiCzS8hwVd94AxQ==
X-Google-Smtp-Source: AGHT+IFw6UFe8Y6PwM28pisV3eC96R7jT95oGvUJqCkFT7yNA+I/M7/0r+6kLSxppke9VRZdanPgRKOSZBgImSorCr4=
X-Received: by 2002:a05:6102:2907:b0:476:262:1245 with SMTP id
 cz7-20020a056102290700b0047602621245mr1948187vsb.15.1710417398935; Thu, 14
 Mar 2024 04:56:38 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240313123017.362570-1-sumit.garg@linaro.org>
 <20240313123017.362570-4-sumit.garg@linaro.org> <c0e10cbf-c6f3-4b0c-8616-983da2a40236@linaro.org>
 <CAFA6WYNMjCaa0FKjNv6a8VFkco3=GBfgWNDuckGZdiZ9dGmHgg@mail.gmail.com>
 <d82ab1f8-e677-485f-9a6b-4115acfd7239@linaro.org> <CAFA6WYNSumyScax=GkN42GJOG56T3odF5Ed9A2i1nk_exCyGtA@mail.gmail.com>
 <ZfLUu6_Vq7MvG2G3@gerhold.net>
In-Reply-To: <ZfLUu6_Vq7MvG2G3@gerhold.net>
From: Sumit Garg <sumit.garg@linaro.org>
Date: Thu, 14 Mar 2024 17:26:27 +0530
Message-ID: <CAFA6WYPN2Bt7zvDyd+02jrsZJz0sFhkD_o4W+PvU=-VC4W5k=A@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: apq8016: Add Schneider HMIBSC
 board DTS
To: Stephan Gerhold <stephan@gerhold.net>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, andersson@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	caleb.connolly@linaro.org, neil.armstrong@linaro.org, 
	laetitia.mariottini@se.com, pascal.eberhard@se.com, abdou.saker@se.com, 
	jimmy.lalande@se.com, benjamin.missey@non.se.com, daniel.thompson@linaro.org, 
	linux-kernel@vger.kernel.org, Jagdish Gediya <jagdish.gediya@linaro.org>
Content-Type: text/plain; charset="UTF-8"

On Thu, 14 Mar 2024 at 16:13, Stephan Gerhold <stephan@gerhold.net> wrote:
>
> On Thu, Mar 14, 2024 at 03:02:31PM +0530, Sumit Garg wrote:
> > On Thu, 14 Mar 2024 at 14:48, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
> > > On 3/14/24 10:04, Sumit Garg wrote:
> > > > On Wed, 13 Mar 2024 at 18:34, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
> > > >> On 3/13/24 13:30, Sumit Garg wrote:
> > > >>> Add Schneider Electric HMIBSC board DTS. The HMIBSC board is an IIoT Edge
> > > >>> Box Core board based on the Qualcomm APQ8016E SoC.
> > > >>>
> > > >>> Support for Schneider Electric HMIBSC. Features:
> > > >>> - Qualcomm Snapdragon 410C SoC - APQ8016 (4xCortex A53, Adreno 306)
> > > >>> - 1GiB RAM
> > > >>> - 8GiB eMMC, SD slot
> > > >>> - WiFi and Bluetooth
> > > >>> - 2x Host, 1x Device USB port
> > > >>> - HDMI
> > > >>> - Discrete TPM2 chip over SPI
> > > >>> - USB ethernet adaptors (soldered)
> > > >>>
> > > >>> Co-developed-by: Jagdish Gediya <jagdish.gediya@linaro.org>
> > > >>> Signed-off-by: Jagdish Gediya <jagdish.gediya@linaro.org>
> > > >>> Signed-off-by: Sumit Garg <sumit.garg@linaro.org>
> > > >>> ---
> > > >>
> > > >> [...]
> > > >>
> > > >>> +     memory@80000000 {
> > > >>> +             reg = <0 0x80000000 0 0x40000000>;
> > > >>> +     };
> > > >>
> > > >> I'm not sure the entirety of DRAM is accessible..
> > > >>
> > > >> This override should be unnecessary, as bootloaders generally update
> > > >> the size field anyway.
> > > >
> > > > On this board, U-Boot is used as the first stage bootloader (replacing
> > > > Little Kernel (LK), thanks to Stephan's work). And U-Boot consumes
> > > > memory range from DT as Linux does but doesn't require any memory to
> > > > be reserved for U-Boot itself. So apart from reserved memory nodes
> > > > explicitly described in DT all the other DRAM regions are accessible.
> > >
> > > Still, u-boot has code to fetch the size dynamically, no?
> > >
> >
> > No U-Boot being the first stage bootloader fetches size from DT which
> > is bundled into U-Boot binary.
> >
>
> Back when I added support for using U-Boot as first stage bootloader on
> DB410c the way it worked is that U-Boot used a fixed amount of DRAM
> (originally 968 MiB, later 1 GiB since I fixed this in commit
> 1d667227ea51 ("board: dragonboard410c: Fix PHYS_SDRAM_1_SIZE") [1]).
> When booting Linux, the Linux DT was dynamically patched with the right
> amount of DRAM (obtained from SMEM). So if you had e.g. a Geniatech DB4
> board with 2 GiB DRAM, U-Boot was only using 1 GiB of DRAM, but Linux
> later got the full 2 GiB patched into its DTB.
>
> I didn't have much time for testing U-Boot myself lately but a quick
> look at the recent changes suggest that Caleb accidentally removed that
> functionality in the recent cleanup. Specifically, the SMEM-based DRAM
> size detection was removed in commit 14868845db54 ("board:
> dragonboard410c: import board code from mach-snapdragon" [2]), the
> msm_fixup_memory() function does not seem to exist anymore now. :')

Ah now I see the reasoning for that particular piece of code. Is SMEM
based approach the standardized way used by early stage boot-loaders
on other Qcom SoCs too?

>
> Also, the DRAM size is now always taken from the DT (which is probably
> better than the previous hardcoded size in the U-Boot board code).
>
> I think we should bring the dynamic DRAM size detection back, because
> there are quite some boards available with varying DRAM size. Restoring
> msm_fixup_memory() would likely be easiest, I guess the ideal solution
> would be to parse SMEM in U-Boot's dram_init() function so even U-Boot
> has the correct amount of DRAM to work with.

In the context of the HMIBSC board, it has 1 GB RAM LPDDR3 internal
not expandable. IMO, having it in DT as default should be fine.

-Sumit

>
> Thanks,
> Stephan
>
> [1]: https://source.denx.de/u-boot/u-boot/-/commit/1d667227ea512537b8453abeb49abbf19a1a18e8
> [2]: https://source.denx.de/u-boot/u-boot/-/commit/14868845db54b4f64701977385dc9a6e951e4139

