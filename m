Return-Path: <devicetree+bounces-231186-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A4B6C0B491
	for <lists+devicetree@lfdr.de>; Sun, 26 Oct 2025 22:35:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 22D383B6D85
	for <lists+devicetree@lfdr.de>; Sun, 26 Oct 2025 21:35:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C98225F984;
	Sun, 26 Oct 2025 21:35:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KWAOCwFJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0779B1DFE22
	for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 21:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761514535; cv=none; b=fMQKazOq5+BQ7ON4QCK/ajuNwFHM7BQozFbPJWKCqEM6Z8JF6j6y626kjsPxfPHgDvtD7w7VkgVYhfARtUGShZCjkXfJOoqFr0xpSDdpO6heCYNxAX8tFeVR5+YScqGY6YLrt3tFjTcYSedhBBjiSvMuu5BoFC0TIOJutMwnN20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761514535; c=relaxed/simple;
	bh=NYDZOsinQgPFYXjckA1jriCx2zkd+8vOIx52Ygv9OCQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RtNOhrTSAYEHV6saxvqNPuRnLXF2URG90+Q+wi+G1BTP6HwqbdCjwTKjDOKOI36cpZEITvO6YRrpD7nJIv+cUBYq2dRmMVDhR1gxhqNIM+YzbqevJ/a8W1GZxDUY1gzIvN4SMLaBHa1N5s6+Lcd5SG1hLQS/Sl9T6p2lWx5DETo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KWAOCwFJ; arc=none smtp.client-ip=209.85.222.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f181.google.com with SMTP id af79cd13be357-89ed2ee35bbso332927585a.3
        for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 14:35:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761514533; x=1762119333; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=NYDZOsinQgPFYXjckA1jriCx2zkd+8vOIx52Ygv9OCQ=;
        b=KWAOCwFJrt6etTxu5dk28fQBprM9mzFBd+6tXN4qm3ZAH9WfyYt4d3tqaSqArD02js
         1ACEBVn1DCngcKhNghOkvJmjGLkfYjJbmETo6H3vD7pE6DKd3BT51TfawfzNrRnPX/+J
         tDATuxj5G+hpwWSJxzbCayJtns6HVGAMaB1t7mlSh6atNFLlGuGYUg7f4h3lt97DdnG3
         zlofeEfFPkLMGL71tiCDsl1fMvhk37sqFGe/VxAIZqmDd5ufNjPafsMQk1YdCF0vtHC/
         75rODQYC6TeUuWHJm9HEX/TJlgz0avNtYx5yYWDqqFsok/48yx2V5TQxuyyeoWIGVvnw
         V9rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761514533; x=1762119333;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NYDZOsinQgPFYXjckA1jriCx2zkd+8vOIx52Ygv9OCQ=;
        b=RFy4oFWoNhw0hjn8Wnv9dO2Mf+zPIxVU6oOfABuNZzhVdn7LNLUHD75imNKDs2jyMt
         A5QUsTFbgSU+V1flIAtZJNNe33cVA8S/+BPAyBNg6zhqMQ0fpqYOPjGXz5+HR93koH2k
         g9nJoyCkQGYTA8oJM+B+HyThxn4ZOqmaAlO8y5er4MPBsKkc9o/+wLfQKo3EZH1zU+0e
         S0IsI8gVzGZ/Yt90cuqKkfKLuSyGsblN8cQwIE4mvjWapgw454JoYsNyxfwNRzNhUp1M
         onTRAOb1tZXwWAH+L8X5/npeAFwu/9sob+jaN6iW/sQluaKDwfWivT+fqcVuc9bHGjwY
         lOPQ==
X-Forwarded-Encrypted: i=1; AJvYcCWVcs60QPEYyDgl5dMRd9m34XkDtgrQCAnQxzti14XMM7a41jqD1bDKkiu92PG9MYA2s68ksazCfMO9@vger.kernel.org
X-Gm-Message-State: AOJu0Yx70DyTwbdQbrovl1fgAWCN0ShccFjodukjH/QxHpaIwsUzdG2m
	+8GgMdI9I5p5lva8QyWjP26fxa8QrwK0mjAN0mEMNBnGCHILk2DwZ1O4
X-Gm-Gg: ASbGnctpwzLxqFdDkPoacG7o3iZOMe28dHSFsd0aPqCi01VqWcCpWL7hoKGpraCih1q
	m1jPmdsZCh27ytZUGtyCAYYwnbiHfXOkvxEVoUKcfkXjCCxompe3mkdWPy6OZABKRLZqP4lniif
	dHJNcv1Ccc/9xm2jwOs0lWccn4sc4x3IVOv12GTTV7qNrwFn7Z7u2yEok0A5dJnWM+z61+3TaDT
	07h3rF5iOPJd36UGxbSunJsSxGTM+4BBLYfsEpcDso28jW9anc7mfZbjoPP6fkIlkv6Vy8wa8DC
	bpev/+XOyqfxL3kD00sT+7XVLVeh3/x5kl7V1BLTM/GPJ8MJFWrNIjFlyqD1XpLvSeuDin2iXYw
	1AqhAzBi/tsk8pS5bCKtcC43bH7pGyfqw1KD2LdMiWMiNQeetY9l8W2TYVH+WGwlSNtP3km1DF4
	t/fvaugdfxQDu3rMuo0TKhnQ840ZowOLI8Y6zHeNuRdX0h
X-Google-Smtp-Source: AGHT+IHt/luqZvANRgRcr2vtzwDE+8CzdHe1TEyhm26Gx0eGps4kw0K7r0eBfcuENU03yCMR5zjOaA==
X-Received: by 2002:a05:620a:a1d3:20b0:8a3:52f5:3533 with SMTP id af79cd13be357-8a352f5383amr171252385a.58.1761514532909;
        Sun, 26 Oct 2025 14:35:32 -0700 (PDT)
Received: from sleek (d-23-244-200-70.nh.cpe.atlanticbb.net. [23.244.200.70])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-89f2607f05csm414685685a.53.2025.10.26.14.35.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Oct 2025 14:35:32 -0700 (PDT)
Date: Sun, 26 Oct 2025 17:35:32 -0400
From: Joshua Milas <josh.milas@gmail.com>
To: Inochi Amaoto <inochiama@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	unicorn_wang@outlook.com, paul.walmsley@sifive.com,
	palmer@dabbelt.com, aou@eecs.berkeley.edu, alex@ghiti.fr,
	alexander.sverdlin@gmail.com, rabenda.cn@gmail.com,
	thomas.bonnefille@bootlin.com, chao.wei@sophgo.com,
	liujingqi@lanxincomputing.com, devicetree@vger.kernel.org,
	sophgo@lists.linux.dev, linux-riscv@lists.infradead.org
Subject: Re: [PATCH 2/3] arm64: dts: sophgo: add initial Milk-V Duo S board
 support
Message-ID: <aP6UJFPP-ReYPzmq@sleek>
References: <20251011014811.28521-1-josh.milas@gmail.com>
 <20251011014811.28521-3-josh.milas@gmail.com>
 <hkdnjyldwr4watvizsju4qcvpvkb3mtt5rathaooembpceyufx@ega5xrqj6v3y>
 <aOqtt7BDXxItrs7W@sleek>
 <bsol3uim4brrrsdmvuk6f3uzampbki2pyhziap6x4rw7txl435@rwoxrnctkf3y>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <bsol3uim4brrrsdmvuk6f3uzampbki2pyhziap6x4rw7txl435@rwoxrnctkf3y>

Inochi,

Thanks for pointing me twards duo-pinmux. I was able to use it to get
the default config which is uart0, spi3, and i2c4. I can change the
dts to match, but...

> I suggest enabling devices that are accessed by default

Would we rather enable anything that can be accessed by the pinmux?

Thanks,
- Joshua Milas


