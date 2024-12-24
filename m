Return-Path: <devicetree+bounces-133872-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C5639FBFC3
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 16:44:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 89F33188493D
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 15:44:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5F801D79A6;
	Tue, 24 Dec 2024 15:44:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hLNElQX1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 553E7193409;
	Tue, 24 Dec 2024 15:44:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735055091; cv=none; b=P1hGvE09MDeY5qgvoxM17Pp/IkQDdszKB5FSSebUwB9+ikNDk/rDUdpi65SiywnKuTUa9xBUiwpduKz/0GdlhF4Atm+ruekBGHwUf6BHJt3JofvlG1Wp9M6V3GBx7n71XBTt0kbpKjK2sOfNCbcQRRRdFGrZ1shjkmxa6y82j80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735055091; c=relaxed/simple;
	bh=f94U8KYJXVOzQ/D009aCP0ESvA791ZOqrweMHFMciN0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lE4LvPrribeKrroexOxBGJrtBF8IVSY4XZ2pTpnzJaOq6hpBq41Vb91nG8FPUbNblZ4Vph8YyCTd1is6dKQ8DTGwsnrqiQnuu97YqdgyUFBj8rwHzIjDxklWAWEAodEZKd4HJvn32sF52s3pdbdSUuKg8CZphh5g9S3FFQi6tc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hLNElQX1; arc=none smtp.client-ip=209.85.219.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yb1-f174.google.com with SMTP id 3f1490d57ef6-e3978c00a5aso4758540276.1;
        Tue, 24 Dec 2024 07:44:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1735055089; x=1735659889; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=IUthszcY7WUoYLW/EhDuHucO4Lic/IF30bEB9ypkHzU=;
        b=hLNElQX1QlueJ9Em8jKbUkMFxIhdc96tm2XEyuWqLlvLnhaGw5qOn7Z+IDw6utX20U
         0u22tYI5LuC9RYYGI/s/b8f0coRTUE6nfK/bVXc7z0q5h7d1gP5yPJwo0qn7CxXNkv+g
         xWHmUC3jSWYrFuUqZAqz5WV4FsjZkhmsQK/CvUif3P/6FT2Lr+Oc0gYhnzb7KpO9I8oQ
         HS4Y7AmUC6Jz8pQyrd5/jM7dTT/itnE/+hNoP991gW2wFhlBx0C99IJ+iLhIT0WBLarb
         dslQzDSPEa1NPNo8vLewEI5XM1a/CW5Pp9Rbm5cQJ98wEWXNptn8Raw+bpxiD/tAfrMo
         xltA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735055089; x=1735659889;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IUthszcY7WUoYLW/EhDuHucO4Lic/IF30bEB9ypkHzU=;
        b=twST9YdPlsZtG6VY7x+b9yKfbA4Z5PrA1lR0btZ17AnVKle6vcUvxm5y2YhzT74IGu
         mulTsJjNKNtS4xs72HMrP42eKa7iyv7ql8iqgNB94+vTvzXrYUt0SaqK9/VbvA6Hs/0p
         q5UQaWOiz3OQYuxMY7iDnCP0yHWgC8YtrwBK6RqcyYpThUh9lHPVJ256Ib+ACLv9WP28
         UVl8FIL0bMGzHNKHRPIjsnG5NTFBBmjoPpKS+nUzp58/WV1lTgQrK4gsCzwQ+H45vjP1
         +GziXm0fcDOoYsZMu3CnazWijUAuxrT7Zz+g4OFVgiXdwqPV+1P1PBgMxnPekiGBhpi4
         uYvA==
X-Forwarded-Encrypted: i=1; AJvYcCVIiAG48LUaEoO04qqSpKgpFHNfWjqQY5UUYZ2V5gJIu0jwneoAac2qtkiYrnBuUXfQ/bigzbu39Hjt@vger.kernel.org, AJvYcCWTrWotOdx28U4ujQtxeEnSclvL+8+Nk6YhJfeOsIXkR1cUX7g4r6beAgvKyoTUl9B75zcCboJJY2lcN3OX@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1qPGrx3accuuKcJf2U5NS8UoqE84WIfFma/zWvxKSZb6b1nmb
	wdGNmEQYZPoQ/MVTUkwhkmfVlKU6/fL0RIBxPFTfv3zoQwOHn8ag
X-Gm-Gg: ASbGncsjli/I+6Bheu7uXZ15vNRB+zSZEc0gnOXckg3UQKj7GTkwDbZmT79bj+MSrl5
	xKnPjMPboSo3UaVCco26aD/VLgyRsYgOU4TDdXwK0UcpUIKtDibG3j7TU/Y1XKRoswyB+9/WezJ
	s4dltRQFyGdUqF9tln1m0JNvOPqXh5xY9qn7SYAmzoB6hZOqqsfiHWjxxfEtuwlzpeHBwI2copU
	T0RGMIMAsKZXnKkPXaZEBCBb4Fx3kECahUd7R5I4IDq9sk=
X-Google-Smtp-Source: AGHT+IGS01EhQzLkGSG5QTs8kVJO38w9bONzDU7GkpYvQ0IQiouZvmnxnTA/0j1IS6e2jMjLsjqvdA==
X-Received: by 2002:a05:690c:4d01:b0:6ef:529e:6049 with SMTP id 00721157ae682-6f3f80d5c86mr110219607b3.4.1735055089247;
        Tue, 24 Dec 2024 07:44:49 -0800 (PST)
Received: from halaneyt14s.local ([2600:1700:1ff0:d0e0::37])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-6f3e7836ee2sm28920277b3.98.2024.12.24.07.44.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Dec 2024 07:44:48 -0800 (PST)
Date: Tue, 24 Dec 2024 09:44:46 -0600
From: Andrew Halaney <ajhalaney@gmail.com>
To: Enric Balletbo i Serra <eballetb@redhat.com>
Cc: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
	Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Andrew Halaney <ahalaney@redhat.com>, Udit Kumar <u-kumar1@ti.com>, Beleswar Padhi <b-padhi@ti.com>
Subject: Re: [PATCH v4 0/2] arm64: dts: ti: k3-j784s4: Mark tps659413
Message-ID: <bamrgf5yiksx6rgxljgw5r3y4nkno2el7qigynynubehullurd@q2xptf5wndcx>
References: <20241113-b4-j784s4-tps6594-bootph-v4-0-102ddaa1bdc6@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241113-b4-j784s4-tps6594-bootph-v4-0-102ddaa1bdc6@redhat.com>

On Wed, Nov 13, 2024 at 10:15:15AM +0100, Enric Balletbo i Serra wrote:
> This series marks tps659413's regulators as bootph-all in order for
> the nodes (and parent nodes) to be accessible during MCU's u-boot SPL.
> 

Merry xmas eve, going through my queue and thought
this could use a gentle ping :)

Seems to apply fine on next still and it would be
nice to land the associated u-boot changes eventually
to get the watchdog working!

