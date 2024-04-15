Return-Path: <devicetree+bounces-59426-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 313458A5601
	for <lists+devicetree@lfdr.de>; Mon, 15 Apr 2024 17:07:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DCE481F23295
	for <lists+devicetree@lfdr.de>; Mon, 15 Apr 2024 15:07:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABCA07EF06;
	Mon, 15 Apr 2024 15:06:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="uBV7N/na"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88B8D79B99
	for <devicetree@vger.kernel.org>; Mon, 15 Apr 2024 15:06:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713193601; cv=none; b=mYmARfVP07pWox1qWZfOIZKGv73gNest9cv8z76KDJr6QS8LbmquUY1pmyuz9zrGNjpG//s4vX4i+kCOGnmUbArzXMfhqH2ik8EdMxUYpF2EzfN5rAibkyr8kK1iQm9tDoJhFDI1NpHty2b2VG5qxMyP2lApzU8a59v0kTlMA/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713193601; c=relaxed/simple;
	bh=ACwuhXQnvEF/hV0r95JlwFy5n6kf1JPHYsrQCK8Kf6s=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZGL+SS3sPGhxlU4uGxVHhtCDFCGVzJp71UnE+1t4beWh7jGTA7rDSw8CKngOUcLAel2tDJI8HmfTgvt9ofO49DYywahYKeYDL998wyxEzcsJhLXxb6lPzTiM7YAARgQgxdqtbSn26lZZ/NzqJh2Oj0DWkEggkC8uLf6AuTMjTaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=uBV7N/na; arc=none smtp.client-ip=185.125.188.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id E525440D7A
	for <devicetree@vger.kernel.org>; Mon, 15 Apr 2024 15:06:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1713193588;
	bh=ACwuhXQnvEF/hV0r95JlwFy5n6kf1JPHYsrQCK8Kf6s=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=uBV7N/naV7RHdasrQ3oFNNc0qqhpyw9peah1xiNzX1nuDV7x/oMauDZ1F+pVwmuaF
	 ZPuAR9vlyv0DJMI40tjQgV3Q6yfZAjc7MDx9p4LqbMenZ6JQ+9eZXwD3Jo4d9w852r
	 yIdozMvZnVjMWn7SbriD3LZos8sHsjNeEUA9t0UIBWUrFRZbjuFRbgZBv3973hqdWW
	 rJZYwtGDlUKj5VFLexp2UQUtstfrey+sOtHA2MPAqO3h9R0QPFGrqdf4kyO9Uipoav
	 srDL5CzfI6nuxNBq1NubVBBzUA0A3BVHvwLx2FSdKLTtN5/J5f2Ksyrv4aUM/sOuNU
	 I45s3uPoLAZYg==
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-43493db2263so42846761cf.0
        for <devicetree@vger.kernel.org>; Mon, 15 Apr 2024 08:06:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713193588; x=1713798388;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ACwuhXQnvEF/hV0r95JlwFy5n6kf1JPHYsrQCK8Kf6s=;
        b=vvg+ZOPSAZhYPbzI5nIk7aGdQL9l+kod9qO8Ra9M0YJa5vyUAGW7yfUjeyfspSIO6q
         Dj1ft+gYnLsl/gx7cDvLC+OTbMH1Lm8k0MBYYex+OP61tBzIGQiqLXm/uH/2+MM7wztW
         cwSKgq19c5p1tU3bXytuVcyBihCGccG4GIhznUsVgwuKWDiw/CeR1fj01AdhW2R+tLj0
         eKEc52JWC5Sa9+co9aC9ryJ6G9aihY7qfZBWPoSi+74Wu5Hf/eZOI3HWGFT18J+gn0yV
         XBZ5ozqn1xhWkmxRfqGopH9O1RYtslp5RfLKyn/g9VUo54hUauD65WNP2uEa3ehQZMNz
         OJmA==
X-Forwarded-Encrypted: i=1; AJvYcCXgTJUxT654PF9KuT1eXWK6CCb7Y2ExH22fmSHjGakW3PP1i11Flyk5sMNlQ3kCshWjojvSw7iImSxazG6uTZGaXaAfJ+JjdM+3Iw==
X-Gm-Message-State: AOJu0YwL0CQAfdGHLy3Pg2munR4pY/MgRIxqUbHdpi6ry0OlHOU/hMmo
	sPQJtMD7zu678hW9FJRXaCJ/wmSX7dRpi4IfKs6lYULqdt4EH6yiD89ssccFJEX4yDnT5MFN4L4
	MKjs1IosomjSPCq+HW3qSim+WMJVrIi3E312DWLvVqZ1k2kBOAZ7t4iPplBin3WrCMJVwWbOPG+
	G/ljC5Vkn3nY3RDS5J2LXcIU1pZO/pCxb0O5RfKsLUITSOe9woZQ==
X-Received: by 2002:a05:622a:4b12:b0:436:b123:55ff with SMTP id et18-20020a05622a4b1200b00436b12355ffmr9754555qtb.49.1713193587806;
        Mon, 15 Apr 2024 08:06:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEAxaLjMo3rAfRURiOBsbEy16nq0/dLKE9lc5CMmTWJgal5h8DTe6WD4CmrcXUb4G//Sa0GxBleowzaGmTznrk=
X-Received: by 2002:a05:622a:4b12:b0:436:b123:55ff with SMTP id
 et18-20020a05622a4b1200b00436b12355ffmr9754533qtb.49.1713193587537; Mon, 15
 Apr 2024 08:06:27 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 15 Apr 2024 08:06:27 -0700
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20240415125033.86909-1-hannah.peuckmann@canonical.com>
References: <20240415125033.86909-1-hannah.peuckmann@canonical.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Mon, 15 Apr 2024 08:06:27 -0700
Message-ID: <CAJM55Z9CpGCJ07kJ=eoSCJBg=qpHurq8j_dBMjkTNVsb25VyJA@mail.gmail.com>
Subject: Re: [PATCH v1 0/2] riscv: dts: starfive: visionfive 2: Remove
 non-existing hardware
To: Hannah Peuckmann <hannah.peuckmann@canonical.com>, linux-riscv@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Emil Renner Berthing <kernel@esmil.dk>, Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Walker Chen <walker.chen@starfivetech.com>, Hal Feng <hal.feng@starfivetech.com>, 
	Xingyu Wu <xingyu.wu@starfivetech.com>
Content-Type: text/plain; charset="UTF-8"

Hannah Peuckmann wrote:
> This series fixes the device tree for the VisionFive 2 which has nodes for
> non-existing hardware which should have been left to overlays. It also results
> in error on boot when both both the TDM and I2S drivers tries to claim GPIO 44.
>

Thanks! This fixes the error mentioned in the commit messages for me.

For the series:

Reviewed-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
Tested-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>

/Emil

