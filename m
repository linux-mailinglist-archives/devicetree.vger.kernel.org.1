Return-Path: <devicetree+bounces-175277-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 83AADAB0537
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 23:10:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EF22C52604C
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 21:10:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB625221286;
	Thu,  8 May 2025 21:09:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="edX28lgu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FEC3220F28
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 21:09:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746738591; cv=none; b=evzO/oMvGRSzlga2ITkwGzN5L7DM/iiul9BwKLBfIkVV8Hi/r7f2647QTCpSFohKETjrkwA7CBZAGmj2OON+VIDPsJjipwLt8ZrZINHOQC7ox4jfjKklUn+JehNeuX5vKnCEVk/y4ZhNMnF2JmsGCXen4+E9m3Lf+bhj79La8e8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746738591; c=relaxed/simple;
	bh=qbdKh6U/taZO4MYmSt7at007SJ4byPEZOOzFjEpQCDE=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uNmvN5gi/NZYIhTiQPzggodvlQxiQnDFdrao5J7ceVOlQyKyyx79ZV7yJUi390aKiGlBtpZlA4XYLiU4HKoY6B88tf8RY+vtGtDorw26rlOXsXohCu+37/iw7befyyHdiE0uPx6yOBd8R5l6JF6PHJ9gprGng0Jxi2PipelYlQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=edX28lgu; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-ad21a5466f6so52727166b.1
        for <devicetree@vger.kernel.org>; Thu, 08 May 2025 14:09:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1746738587; x=1747343387; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Wt3w+Gn0EgqSBVHw6lctS6c+Nq+52QzX7+ZirB7/L34=;
        b=edX28lguEaflIKXX08fLX+sw9WNyNHPazoyiyRPyg31tnuNVqqnyFlVIk2XP9iJ9uz
         o3YArgU+qZw+35Tm92MfsJ4Pqt1UvVKaA0E5m1e6YJyno437qHRGF7/ACZJ3rnFmUVne
         fOgIoqRrWRoNwg6Z30Izr/qfq3OX7BlN74CKiCVznsn+QkArKQRZANzaRfQKoeWcRe3l
         VPmi5krrklnJE1U3O1UuoPYsPv/8pLurqrJULBj2ZMrq+AxfE7XZyfP7O819qhKmoYId
         H8aI/JqOD+myUqnYi4zBoApiSbLDzXoE+MXdpFZ6hh2DnRjf6fXlP/NxaNIIqB6DvMEd
         gunA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746738587; x=1747343387;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Wt3w+Gn0EgqSBVHw6lctS6c+Nq+52QzX7+ZirB7/L34=;
        b=XkqqzkXwfJoHJIK74c/O/buoNsi47+/AsgEQQ11SEsBD+WTJSASiXfbSVnhcreGiRc
         EYl4riS6M5wamIz/GmuiF/uU/4M2f5i5eJxN3P+IYAFJ17GvBgwcHjJhkphskxvZLcfd
         Npp3i8LrBCGGT/gQx/jvJ3UqKGwgyODH4UKMRlHzXyDXOmzbEPBQTqOmPdEyMRhAfIGr
         zKZCxnVs4mQ2w5QCXoqNJNExKHi3BOLUhvfCUeLv3hnWRYNAbUQwXnYFI0DAwEaq7ybB
         tetJJhqSrP+c9Qunn0dvMu46ip2oTHIhStmKRLyX8HpWzld7nFH0ci66q/gMqozFlgRA
         hEOA==
X-Forwarded-Encrypted: i=1; AJvYcCWXNan3SHzNgtVfjpByXm4p406GvwEvXh0/i8+8aiiRJ72ibnwij5vzh3zN8Thmj9ISvwuqos8j9I40@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7mK7bXxuVcu/feJgRP4WogzfB26af9vV+IbvDZt6a1OU38GUX
	JFDk3NfM7fUElslSGqZi9A6wRIM8/RYEl+8m4/4CnLi+CDjVtNzXLkBF+bzlJ64=
X-Gm-Gg: ASbGncvIs42u8mNW2lpZCg0n4bRyuMUi+4d/wJQBOLKf6BKbXdyt0efucCtUNfBKXPz
	cWIOOXSyVBDZ6DSXzsFVw5KG7SFUIKlmMMy7Mysfv+4fcSGbUyrnBhoxYlGE/x8cVcFdUzW/7JD
	OsrRs8C8k92kQQUslkBsRT0E9FDsItY4tNzn0R8W3Ku9MXHS+t6TcpdmAJty9V1Y/AVBdFnKnxn
	ZOs/SXQ+v1BHHe+sqY98TpfUboaRlDFEcq4unHRxiiG5IWk3NXtBFW8fboKPjI9/q5+SpxXZqQk
	Dy+O2Ku5u7aojEN/e5JABj5n5BUBVX3fAVYEBCl2Oy2nMsqv+r8rvulXY/D7rtjIFrBvgr4gsK5
	IjGZCeQ==
X-Google-Smtp-Source: AGHT+IGtTDHi/AvD/8xVF94y9tqkLvaBF9rJtu3zqfIKtlmqKgx0l8+YKQe7od5kLKnDVvo8pbUjMQ==
X-Received: by 2002:a17:907:7f87:b0:ac7:b1eb:8283 with SMTP id a640c23a62f3a-ad1fcbdb0afmr453119666b.17.1746738586640;
        Thu, 08 May 2025 14:09:46 -0700 (PDT)
Received: from localhost (93-44-188-26.ip98.fastwebnet.it. [93.44.188.26])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5fc9cbe4c83sm405206a12.8.2025.05.08.14.09.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 May 2025 14:09:46 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
X-Google-Original-From: Andrea della Porta <aporta@suse.de>
Date: Thu, 8 May 2025 23:11:14 +0200
To: Florian Fainelli <florian.fainelli@broadcom.com>
Cc: Andrea della Porta <andrea.porta@suse.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-gpio@vger.kernel.org, Masahiro Yamada <masahiroy@kernel.org>,
	kernel-list@raspberrypi.com
Subject: Re: [PATCH v9 -next 08/12] arm64: dts: bcm2712: Add external clock
 for RP1 chipset on Rpi5
Message-ID: <aB0d8kNVtAEoW8Ts@apocalypse>
References: <cover.1745347417.git.andrea.porta@suse.com>
 <38514415df9c174be49e72b88410d56c8de586c5.1745347417.git.andrea.porta@suse.com>
 <aBp1wye0L7swfe1H@apocalypse>
 <96272e42-855c-4acc-ac18-1ae9c5d4617f@broadcom.com>
 <aBtqhCc-huQ8GzyK@apocalypse>
 <779ae10a-3174-4dbb-9130-008393b59745@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <779ae10a-3174-4dbb-9130-008393b59745@broadcom.com>

Hi Florian,

On 19:10 Wed 07 May     , Florian Fainelli wrote:
> 
> 
> On 5/7/2025 4:13 PM, 'Andrea della Porta' via BCM-KERNEL-FEEDBACK-LIST,PDL
> wrote:
> > Hi Florian
> > 
> > On 09:32 Wed 07 May     , Florian Fainelli wrote:
> > > 
> > > 
> > > On 5/6/2025 10:49 PM, Andrea della Porta wrote:
> > > > Hi Florian,
> > > > 
> > > > On 20:53 Tue 22 Apr     , Andrea della Porta wrote:
> > > > > The RP1 found on Raspberry Pi 5 board needs an external crystal at 50MHz.
> > > > > Add clk_rp1_xosc node to provide that.
> > > > > 
> > > > > Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
> > > > > Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
> > > > 
> > > > A gentle reminder for patches 8 through 12 of this series, which I guess
> > > > would ideally be taken by you. Since the merge window is approaching, do
> > > > you think it's feasible to iterate a second pull request to Arnd with my
> > > > patches too?
> > > > 
> > > > With respect to your devicetree/next branch, my patches have the following
> > > > conflicts:
> > > > 
> > > > PATCH 9:
> > > > - arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts: &pcie1 and &pcie2
> > > >     reference at the end, my patch was rebased on linux-next which has them
> > > >     while your devicetree branch has not. This is trivial to fix too.
> > > > 
> > > > PATCH 9 and 10:
> > > > - arch/arm64/boot/dts/broadcom/Makefile on your branch has a line recently
> > > >     added by Stefan's latest patch for RPi2. The fix is trivial.
> > > > 
> > > > PATCH 11 and 12:
> > > > - arch/arm64/configs/defconfig: just a couple of fuzz lines.
> > > > 
> > > > Please let me know if I should resend those patches adjusted for your tree.
> > > 
> > > Yes please resend them today or tomorrow so I can send them the following
> > > day. Thanks
> > 
> > Sorry, what's the best wasy to provide the updated patch 8 to 12 to you?
> > 
> > 1) Resend the entire patchset (V10) with relevant patches updated
> > 2) Send only updated patches 8 through 12 (maybe as an entirely new patchset with
> >     only those specific patches)
> 
> Either of those two options would work. Maybe let's do option 2) in the
> interest of keeping the traffic low for people.

Could you please take a look at this:

https://lore.kernel.org/all/aBxtyvI3LUaM3P00@apocalypse/#t

besides patches 8 through 12, would you like to take also binding patches + clock
driver (patches 1 to 4, if Linux Walleij is not willing to take patch 2 himself),
and maybe also misc driver and its dts (patches 6 and 7 unless Greg has different
ideas)? I know this is almost the entire patchset, but it's getting hard to escape
the dependency maze.
I'm open to any alternative solutions, more details in the link above.

Many thanks,
Andrea

> -- 
> Florian
> 

