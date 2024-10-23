Return-Path: <devicetree+bounces-114805-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D810C9AD125
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 18:38:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0504F1C220CC
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 16:38:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A34A1CBEB5;
	Wed, 23 Oct 2024 16:38:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="uGCpb5ab"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48E361C3306
	for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 16:38:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729701520; cv=none; b=utk6/Gha2fvDFLrre8Y4njIwj/c+DrgYB3ivoPGOt5pRJt70UGc09couKpl9tKStTxKa+6tLD7aG5ig0FDNKkt3EtUgWHv/MhqyWhMyBzkXUQ8vN+1334jIg4BDzGgi0tngS79+IgzffeB/6QvA8QCXPkcUY5AOL3pSqItu3+OM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729701520; c=relaxed/simple;
	bh=2KGO9/x+zR1sj8A0z8FXdfQsavpMZB5tjb8iXzv7MBc=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=eM5y/lLRBqsjrnknzeU8f3arljMPVHrQEK+RDqPKz+TAEMeot1H7SQ5h6GR6Z9G8OhIwFGTMqrD7oXFLSMW4a+BHkZpOWBpL/H4MH0bxTDUzgmfCw4T8PjwO6lz9nOmvbRN1Rkhu3Nha0UqktAbGQ8eTwLT8ZJUdNPkE/4viDJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=uGCpb5ab; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-oo1-f69.google.com (mail-oo1-f69.google.com [209.85.161.69])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id CB45C4121A
	for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 16:38:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1729701509;
	bh=2KGO9/x+zR1sj8A0z8FXdfQsavpMZB5tjb8iXzv7MBc=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=uGCpb5absfmh85IqbmT/JDjoYaOy3iXil7ITsr9Otsx66wPabRbZxFQl6p1WrRHgJ
	 b+pUgSaCQ7FTvVhTn/iIAH1tWEgnIGCZxFIRrxigL87bnhfqohhA+RujsO3zy3Vm0i
	 EASop8057c5na5h/RO1Gugby1KmzpGm4vQB0SbVPzkma279itG1ZSQfykrXmPRydfM
	 IhFkjBR9Y+YAmpHqomA9HSajfXqFPBn10tscA64GyPGgvMPzwEez5WiOIIHPIYPhUs
	 R6Q38EEO7wwSArr/3bz8R7JNSzA9xmgCqjkCk0cxbjDFk+QveZxGQoYCqQi7XzrAGl
	 M5MP8jH4zDZmQ==
Received: by mail-oo1-f69.google.com with SMTP id 006d021491bc7-5eb24a3a3d6so5563405eaf.2
        for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 09:38:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729701506; x=1730306306;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2KGO9/x+zR1sj8A0z8FXdfQsavpMZB5tjb8iXzv7MBc=;
        b=Y9B0g//veryD9xrr21FHu8BeVFZRzkr8lc5SOoYK7T33zrBiQYW/Hzdk9ZXn2ll7Tv
         HlbT0GVCkszO2d2PMxSM4hXSsnXpkKuFPFyP6xlMrhwlLyqQ3DISjFjAfNjU/e9P/qmp
         X78UeVl5CTnLjRfltW6AOI1v6D0hAA9lQltIKTBX0mhDMibT7JRNFKDQ0al3sabu6F2N
         g0eoQiRMFWF4zK8yUydQQlSqZ7o2zpRgcUiPPeLPlSRqJuL0o0UZ0dT48DBquGyitFZu
         jGlnp+X5cgzlVwXeHb57Z8V6viw34fyTqKzyjaygMZdTA4KGBU5DaUdOZisg1x+LKcry
         E7jg==
X-Forwarded-Encrypted: i=1; AJvYcCWis0L2yN6Novb6PAGjthFDchjRNN2rumhYed02j4sPiuqpAjEOnFo3m9qIOE2/8SrMetHBymb7DCgr@vger.kernel.org
X-Gm-Message-State: AOJu0YwqmIb1EUX8QjAh6DDgOzey4C70ra5K5U5PeWkqCcyWgKE/fBdo
	o2AoRyHvQgWZkbs0gMSNLXX5FSk5b0W9Fsaaw5SQ5uerKh38L8ZmS1CFUsB83z/JoCTOSeqy4BO
	UIkpuhFunIVH8soy4fCl3QbQ+2MjSaDBLqhUCCGwRO+Tqch5jhLit3rUUhdzzZZfRInUOTaWJu7
	YoYBgCyr8XIYa1XoFSTLklhvBRnQ8rXyxw55ax2HxShemZIQD7dQ==
X-Received: by 2002:a05:6871:58a1:b0:287:c014:c979 with SMTP id 586e51a60fabf-28ccb404424mr3446452fac.13.1729701506395;
        Wed, 23 Oct 2024 09:38:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGYKVer8iHAkiMMpVseZz+FbkbvOVCl9iXO7WeY67iQ2hOj/Lh97N9pnwdvNGMM13TWHpzNMqvtkjAlCvvT1/E=
X-Received: by 2002:a05:6871:58a1:b0:287:c014:c979 with SMTP id
 586e51a60fabf-28ccb404424mr3446372fac.13.1729701504622; Wed, 23 Oct 2024
 09:38:24 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 23 Oct 2024 12:38:24 -0400
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20241020134959.519462-3-guodong@riscstar.com>
References: <20241020134959.519462-1-guodong@riscstar.com> <20241020134959.519462-3-guodong@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Wed, 23 Oct 2024 12:38:23 -0400
Message-ID: <CAJM55Z9amwkWEK5GGKMiqh_6NQY=TBQhjEuFdMPBFd_hHM==4Q@mail.gmail.com>
Subject: Re: [PATCH v5 2/3] dt-bindings: riscv: starfive: add deepcomputing,fml13v01
To: Guodong Xu <guodong@riscstar.com>, Conor Dooley <conor@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Emil Renner Berthing <kernel@esmil.dk>, rafal@milecki.pl, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Heiko Stuebner <heiko.stuebner@cherry.de>, Michael Zhu <michael.zhu@starfivetech.com>, 
	Drew Fustini <drew@beagleboard.org>, Alexandru Stan <ams@frame.work>, Daniel Schaefer <dhs@frame.work>, 
	Sandie Cao <sandie.cao@deepcomputing.io>, Yuning Liang <yuning.liang@deepcomputing.io>, 
	Huiming Qiu <huiming.qiu@deepcomputing.io>, Alex Elder <elder@riscstar.com>, linux@frame.work, 
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Guodong Xu wrote:
> From: Sandie Cao <sandie.cao@deepcomputing.io>
>
> Add "deepcomputing,fml13v01" as a StarFive SoC-based board.
>
> The DeepComputing FML13V01 board incorporates a StarFive JH7110 SoC, and
> it's designed for the Framework Laptop 13 Chassis, which has (Framework)
> SKU FRANHQ0001.
>
> Signed-off-by: Sandie Cao <sandie.cao@deepcomputing.io>
> Acked-by: Rob Herring (Arm) <robh@kernel.org>
> [elder@riscstar.com: considerably shortened the description]
> Signed-off-by: Alex Elder <elder@riscstar.com>
> Signed-off-by: Guodong Xu <guodong@riscstar.com>

Reviewed-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>

