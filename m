Return-Path: <devicetree+bounces-96885-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AA7195FCAB
	for <lists+devicetree@lfdr.de>; Tue, 27 Aug 2024 00:21:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2E83A1C20DAC
	for <lists+devicetree@lfdr.de>; Mon, 26 Aug 2024 22:21:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A968C19D08C;
	Mon, 26 Aug 2024 22:21:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="jHLlUPgM"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA37319CD12
	for <devicetree@vger.kernel.org>; Mon, 26 Aug 2024 22:21:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724710872; cv=none; b=ZVFJw36kpT6PDQHusebYayoGpk/RKlBIpiKzHBDp1npWam9IFFMvKqJ1iSZaFApS4iU54Cozx+WxNG3rq5aUorMXdubFATy1K/hXzjDgymKrewTxZx7BhaWo3UNQLGtmfiYXsWcAY8TylmITCD0tVuLI9yUxjh4No2ZBVa09DFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724710872; c=relaxed/simple;
	bh=o5inbK5k5jJkCSFBq8jKV4/XzEa4ReX37kh9WGWKFkM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aU1Y+QCF41g3sJkHkSwcVlSRBuiB1CGj3vv9Bx44tHcRP7UFr+EvfLCWCFy+MTtO1MzSG2DcL/1+Z3H2A3beZlW2kiW6cXInwEUI+q+sH2iYvHU26mPfiq3uQ6Px1ojtgFqjYYqCFpxK0bPGHWi7z/djE+hNfl2zlomfVRPHnoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=jHLlUPgM; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1724710869;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=uVnGMUXouwLWzh2JPfjWaejU7vTfrT6N/vmKgxEOM5c=;
	b=jHLlUPgMvFMaCuwTgJSwtLcOt0/R2a69LnuwwvO250dXxoZP85wCRd0qRXqgW184lzQQ8M
	V56WqSAy1cde0v/gjWqCZOVc3fzc6NYFzx29cg3nbUPYyD/ywNGhqts7KhAn0du8cloV0A
	i618i1NeRa/aG0MU+cOtzGB/wzwWywU=
Received: from mail-yw1-f199.google.com (mail-yw1-f199.google.com
 [209.85.128.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-571-wl-DnY7dPA2JpN_Sz34bkg-1; Mon, 26 Aug 2024 18:20:48 -0400
X-MC-Unique: wl-DnY7dPA2JpN_Sz34bkg-1
Received: by mail-yw1-f199.google.com with SMTP id 00721157ae682-6b38bd44424so87434017b3.0
        for <devicetree@vger.kernel.org>; Mon, 26 Aug 2024 15:20:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724710827; x=1725315627;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uVnGMUXouwLWzh2JPfjWaejU7vTfrT6N/vmKgxEOM5c=;
        b=CCqdqm9hR/tGzUrNPXv1rJnCXim5JGtSexdFw5AIaz+G/6x0mG3yhq0LeT0u9KrZq9
         029eYzqi5lk/GfTsGDRB+elGhsjb0J2E8T5JJFirlrCtGT6oyN664tNTA54gu+9lV9hW
         uawd103txwFuMZdiPa/xOuPsYLudsam0pwt2YqCD1A6/kKQ7Xx+dfnSM6mR6SPm5fRMz
         kqtSYZT/jPHaQaX1r3trYxisi+1mOKgeJKLCIasgKOUxb3GKAYHOTmLQ/WuqExJyX9tj
         2S72SX2p8A7QXm1og1m/DMXMufQPNhFLwLgXIcHWNreLAqLraN1UFBsGnkHgSfSWQ+Z/
         zr8Q==
X-Forwarded-Encrypted: i=1; AJvYcCUqc5DqczlBYxK0yqp3j+NL+vW5Tjo8rxdfnlmglK84donBjVMZ2fnVPABwkB9UhxMOG+IJTc59jnCi@vger.kernel.org
X-Gm-Message-State: AOJu0YwIqoQRUMK75uAyy3S2wgAodvUCu9a+/IyvZeavcbc4Vxr2PU8d
	AgddxGcNMTasUzDtAfOn83ZR9BOwrgbwS4gbNyyZkdTpvmZGY71OwWfySBjRsS9YlANGXyoOZEo
	kbjypdfu5DLPbUZnR2eTq9UpSmGLh88nHXZBiC6/wry2IXbggEARRY0y/AmM=
X-Received: by 2002:a05:690c:480a:b0:64a:4161:4f94 with SMTP id 00721157ae682-6cfb9ebbdadmr12189107b3.20.1724710827527;
        Mon, 26 Aug 2024 15:20:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGCt7ATrJ76cUPLhlo5TYvGQOosCLkwO2wXQz1V6PkjoZ9BpjTuprffh0hZuR28QBnONhXgbQ==
X-Received: by 2002:a05:690c:480a:b0:64a:4161:4f94 with SMTP id 00721157ae682-6cfb9ebbdadmr12188837b3.20.1724710827121;
        Mon, 26 Aug 2024 15:20:27 -0700 (PDT)
Received: from localhost (pool-71-184-142-128.bstnma.fios.verizon.net. [71.184.142.128])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-6c39b007461sm16730287b3.64.2024.08.26.15.20.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Aug 2024 15:20:26 -0700 (PDT)
Date: Mon, 26 Aug 2024 18:20:25 -0400
From: Eric Chanudet <echanude@redhat.com>
To: "Kumar, Udit" <u-kumar1@ti.com>
Cc: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
	Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, J Keerthi <j-keerthy@ti.com>, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Andrew Halaney <ahalaney@redhat.com>
Subject: Re: [PATCH] arm64: dts: ti: k3-j784s4-main: align watchdog clocks
Message-ID: <xlmi5cm4lcnohz3glzzxqtffrbletvsos2i2l2ytr55yjnwl33@fae24t7xvzj7>
References: <20240805174330.2132717-2-echanude@redhat.com>
 <wiyw7h7hkc7u2brehi6zgxykesajtqmwwajo7tpwwvayjtcykw@w7rcmojs62vi>
 <f42f092f-2199-4cbd-8cad-96ccf4f100d0@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f42f092f-2199-4cbd-8cad-96ccf4f100d0@ti.com>

On Mon, Aug 26, 2024 at 11:53:56PM GMT, Kumar, Udit wrote:
> Hello Eric
> 
> On 8/21/2024 3:31 AM, Eric Chanudet wrote:
> > On Mon, Aug 05, 2024 at 01:42:51PM GMT, Eric Chanudet wrote:
> > > ---
> > > I could not get the watchdog to do more than reporting 0x32 in
> > > RTIWDSTATUS. Setting RTIWWDRXCTRL[0:3] to generate a reset instead of an
> > > interrupt (0x5) didn't trigger a reset either when the window expired.
> > Re-testing using u-boot from the BSP (2023.04) has the board reset as
> > expected when the watchdog expires and WDIOC_GETTIMELEFT report the time
> > left coherently with this patch until that happens.
> > 
> > I initially had a u-boot with a DT lacking:
> > 	"mcu_esm: esm@40800000"
> > and I could reproduce the board not resetting by commenting in its
> > description:
> > 	"ti,esm-pins = <95>;"
> > 
> > I don't understand why that is on the other hand. The TRM says ESM0
> > ERR_O drives the SOC_SAFETY_ERRORn pin, which goes to the PMIC GPIO3 on
> > the schematic _and_ to MCU_ESM0 as an error input event. The tps6594-esm
> > module is probing successfully and it sets both ESM_SOC_EN|ESM_SOC_ENDRV
> > and ESM_SOC_START, so I would expect the PMIC to reset the board without
> > MCU_ESM0 being described or configured by u-boot.
> 
> AFAIK, Keerthy correct me. GPIO-7 of PMIC should reset the boards.

That is what I'm seeing too, MCU_ESM0 is able to reset the board.

> If you see figure 5-27 of TRM then SOC_SAFETY_ERRORn goes to GPIO-3 of
> PMIC (schematic)
> 
> Same time this is cascaded to MCU-ESM and WKUP-ESM to generate
> MCU_SAFETY_ERRORn (from Wkup_ESM)
> 
> and MCU_SAFETY_ERRORn is connected to GPIO-7.

Agreed (Figure 5-25, in TRM "SPRUJ52" for J784S4).

> Unlike other device J721E (for reference)
> 
> SOC_SAFETY_ERRORn is generated by Main ESM and MCU_SAFETY_ERRORn can be
> generated by WKUP_ESM and main_ESM.
> 
> Please look at schematic of J721E SOM [0], both SOC_SAFETY_ERRZ and
> MCU_SAFETY_ERRZ both are connected to GPIO-7 of PMIC.
> 
> So on this device and board, only main ESM configuration is working for us.
> 
> [0] https://www.ti.com/tool/J721EXSOMXEVM#tech-docs

Sure, but I am using J784S4[1] and the schematic of that board
(PROC141E4(001)_SCH) shows SOC_SAFETY_ERRZ going to PMIC GPIO3.

So when u-boot _does not_ configure MCU_ESM0 chaining through pin95, I
would still expect the board to reboot, because ESM0 raised
SOC_SAFETY_ERRORn on TPS6594 GPIO3 which should reset the board. Yet
that does not seem to happen.

[1] https://www.ti.com/tool/J784S4XEVM#tech-docs

On Mon, Aug 26, 2024 at 11:48:34AM GMT, Andrew Halaney wrote:
> rti0 ---> ESM0 pin 688 --SOC_SAFETY_ERRORn--> TPS6594 GPIO3
> 				|
> 				|
> 				--> MCU_ESM0 pin 95 --> WKUP_ESM0 pin 63 --MCU_SAFETY_ERRORn--> TPS6584 GPIO7

Using Andrew's drawing as it matches my understanding as well. So the
PMIC should reset the board even if MCU_ESM0 isn't configured with pin95
to chain SOC_SAFETY_ERRORn.

Am I misunderstanding this?

As well, since it is mentioned in Andrew's reply:

On Mon, Aug 26, 2024 at 11:48:34AM GMT, Andrew Halaney wrote:
> did you ensure that ESM0 was programmed in this test? Right now if
> you're using upstream u-boot and upstream linux, nobody seems to be
> configured by default to do that

I am using the BSP u-boot (2023.04-f9b966c674) for this test, which has
CONFIG_ESM_K3=y and esm@700000's description with pin688.

Best,

-- 
Eric Chanudet


