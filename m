Return-Path: <devicetree+bounces-123418-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CA1C9D4763
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 07:01:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B7EC61F22086
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 06:01:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F15AB1487DC;
	Thu, 21 Nov 2024 06:01:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nigauri-org.20230601.gappssmtp.com header.i=@nigauri-org.20230601.gappssmtp.com header.b="CpJU8sRz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 269341369B4
	for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 06:01:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732168895; cv=none; b=epllwKvzTc8BPUxwx/xBr2d2yUtYc+1dwrwITFadJAdPV104Rs55XZv1fhed7K8y8MQYRKQovvbmAfZvePlyy7PkzOW3L6GVsR3qu5qrA9doCHLzeyur50rHR4tRWlf1lTwOtQk+n0Ohd5ElvhA6I7UM9IhIgLUj7prTGS9evGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732168895; c=relaxed/simple;
	bh=ayAF/Veqgd3KzXVypEg2pEzxccluRkLQTpGNhJAtHko=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BYUmSE4KFzPC3yDLiMH/vaJCPdlmwRdQtrVN8t8/YViR2muUwRQKYp/qpLrP1IlZuhhiTTyaMyx5sxfGkq4OaFsx+fCVztvS+3mga4whATwQv3PqpU0G6xRG3pbW+e3Tr8PTaNK4BxwhsungxqrVUwJ+qA9tjvwYwI7fnQo3nRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nigauri.org; spf=none smtp.mailfrom=nigauri.org; dkim=pass (2048-bit key) header.d=nigauri-org.20230601.gappssmtp.com header.i=@nigauri-org.20230601.gappssmtp.com header.b=CpJU8sRz; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nigauri.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=nigauri.org
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-a9e8522c10bso81969266b.1
        for <devicetree@vger.kernel.org>; Wed, 20 Nov 2024 22:01:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nigauri-org.20230601.gappssmtp.com; s=20230601; t=1732168892; x=1732773692; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pXBYO7IREaqcFC1AY+U6gH0DW+PukJ6oZRwSeQifutI=;
        b=CpJU8sRzY2EEa+z5YeRkrhaF3FQjLdDh7emQQT/LnPbqFAf8CPIiYAHlrripuJUR3B
         Gdcz/najSPZKLBTkEqYZFVTIP5RRXLA/4//XfEk/divhYiRVba0sPXLyHWW+slEYFStl
         0h4LI9au/JIv3UBWVzapthJrquo3+7jZQjC09QUPi7Tj5hR5OhzZv2tiCUzUIuwtHEpw
         0bzyOQmMPmYW++s0IgjIxzgJMwos/6Y2ba/i9FwWjj4dqzvOzYNmL+V/ZmqO9TJxB53I
         oRhc7HV7iXo26jWR1QeVR1qpQXTX4yb7Dm7otAsF4r8jyjPwaAq4+aX2K4miuLTlJFM1
         kuGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732168892; x=1732773692;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pXBYO7IREaqcFC1AY+U6gH0DW+PukJ6oZRwSeQifutI=;
        b=d+68LiYNmOUPzU/rlh68TuQ4SZYsIxVTLkFly3ME9f7NvIKba1502HrvVgr4JTeLpR
         pBJ3hcxyAdzmqsvtvSdQyz91/eHDTFGVPZexwS6ZqruaD7BfcYOVXXf3x5ARkygVH1WN
         RfoYsrurAOx1yD2C2mYzAhBxWdWqsHPzJ9VVpLvG1vYroBcsSfniR8/5u9DRJ1xma2aL
         +uMKtaVihzrTDjNHxeO0sBXP12Qwzqx/QmtGV4IP2F+h1n8NawnHmAYda4Gv/mQi/Q1+
         x/pFFuQIzL2nVqhmuU/3w9q+hmVaSoFhel2Z/TftYqQr5ouwULFNJJmi5z9tw1mkmaXc
         4cbA==
X-Forwarded-Encrypted: i=1; AJvYcCXT591ufUyYgw0AFfpf5kItuCQ2ahdqrHAXExrML/dPM8VZX2LzpTbuTMN+HUDaAjvz2LwwJl9lM0BI@vger.kernel.org
X-Gm-Message-State: AOJu0YzFDGniY2fic9XcNKG1Qmvx3LU07JBKm/YwOHjcKmjurORtHuY3
	jAjKknm9lfDjjK6A4OYqCrKkKowcGrQksQ1KVXGwqFj5os5PAkLxlVdLqDGUPekpN5q839VqkGW
	CrRRtwRzJqmQhYicJfkYvu86A60MJ0ZeapSM=
X-Google-Smtp-Source: AGHT+IErmyO6Auj29nMzsQsciAeQieUSQ40mWvouilmqn2J8jN6CWiJnyXtOkmFurSkWnL1C/48LjVI6yqaWSkbNQBg=
X-Received: by 2002:a17:907:3d92:b0:a9e:85f8:2a6d with SMTP id
 a640c23a62f3a-aa4ef969eedmr214855766b.11.1732168892228; Wed, 20 Nov 2024
 22:01:32 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241004061541.1666280-1-nobuhiro1.iwamatsu@toshiba.co.jp>
 <CABMQnVK_RUC84QQ5zb+ZpuMOZcFMNV6HzEYAfmX4bOrRm+rvTw@mail.gmail.com> <90978892-2086-4c70-9698-0957cc71abb8@lunn.ch>
In-Reply-To: <90978892-2086-4c70-9698-0957cc71abb8@lunn.ch>
From: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
Date: Thu, 21 Nov 2024 15:01:06 +0900
Message-ID: <CABMQnVJES+VoqNYNgo3zxFkTJVYkR=ZCwWsEFEe=QhKyaYie9w@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: socfpga: sodia: Fix mdio bus probe and PHY ID
To: Andrew Lunn <andrew@lunn.ch>
Cc: dinguyen@kernel.org, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	stable@vger.kernel.org, robh+dt@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Andrew,

Thanks for your review.

2024=E5=B9=B411=E6=9C=8818=E6=97=A5(=E6=9C=88) 5:06 Andrew Lunn <andrew@lun=
n.ch>:
>
> On Sun, Nov 17, 2024 at 05:53:51PM +0900, Nobuhiro Iwamatsu wrote:
> > Hi Dinh,
> >
> > Please check and apply this patch?
> >
> > Thanks,
> >   Nobuhiro
> >
> > 2024=E5=B9=B410=E6=9C=884=E6=97=A5(=E9=87=91) 15:16 Nobuhiro Iwamatsu <=
iwamatsu@nigauri.org>:
> > >
> > > From: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
> > >
> > > On SoCFPGA/Sodia board, mdio bus cannot be probed, so the PHY cannot =
be
> > > found and the network device does not work.
> > >
> > > ```
> > > stmmaceth ff702000.ethernet eth0: __stmmac_open: Cannot attach to PHY=
 (error: -19)
> > > ```
> > >
> > > To probe the mdio bus, add "snps,dwmac-mdio" as compatible string of =
the
> > > mdio bus. Also the PHY ID connected to this board is 4. Therefore, ch=
ange
> > > to 4.
>
> It is the address which is 4, not the ID.

Thanks, I will fix it.

>
>         Andrew

Best regards,
  Nobuhiro

--=20
Nobuhiro Iwamatsu
   iwamatsu at {nigauri.org / debian.org / kernel.org}
   GPG ID: 32247FBB40AD1FA6

