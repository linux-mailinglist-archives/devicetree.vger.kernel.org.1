Return-Path: <devicetree+bounces-173417-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BB00AA8654
	for <lists+devicetree@lfdr.de>; Sun,  4 May 2025 14:33:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 74EDB176CBE
	for <lists+devicetree@lfdr.de>; Sun,  4 May 2025 12:33:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 202DE1AA1C4;
	Sun,  4 May 2025 12:33:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b="X9p/SyRu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 838571A83F2
	for <devicetree@vger.kernel.org>; Sun,  4 May 2025 12:33:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746362028; cv=none; b=adGBkQXVSp+3Uub1hSJ/ytdqXDoNZ62syh7d5NevjJAjIqQWqqoRitbd9P4T2rd3CmaMxtAZEjYV+rnN1UDRzudEBF+FYtxJICuL8iW+/c7QaLNApld51rP4FBeTkzVAbaD42LajuRK+wwEWjXI2PMup/VcZtPIqccOurPGZGrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746362028; c=relaxed/simple;
	bh=4B32Fm0s/baIe83VPoBaFsa/QIb0HD6mhWP70gTNV7E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bfpoiYCaZYusx0TVGwgR5ahzLnK0lrCTI+wm7jVYNz8EjmAvGPxwGq8nBXRPNGW945Tt+ANGSMjbv5JVWQgb/lsf60epEDQ0UYsOiGC2rk9FykSPaUdx/6vrC24YfQyWzmvf9fJNJwDs888+LRDQclg/XcBb4kp1scUWcBbjA+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org; spf=fail smtp.mailfrom=beagleboard.org; dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b=X9p/SyRu; arc=none smtp.client-ip=209.85.215.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=beagleboard.org
Received: by mail-pg1-f170.google.com with SMTP id 41be03b00d2f7-af59c920d32so2339499a12.0
        for <devicetree@vger.kernel.org>; Sun, 04 May 2025 05:33:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=beagleboard-org.20230601.gappssmtp.com; s=20230601; t=1746362026; x=1746966826; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LOSXI/OcKrzZUeNPNP0m7qowONkz227CA7/4JNyGcmg=;
        b=X9p/SyRukQg/y615xWBWZtZh++KDBF4pyhuVPFjmyoBNw5eYBSeUIku9C+H3UNmJpv
         vA9WwzhY9No3wbhuj0Ou/ZZCEQG55GfIL7qNRlktI6rUV+b3KpkvDxGZpBF5XfEhtgyO
         gWm1WiWEzfLJag3HmzMfNhk0Tjt4mVNQ7Wt9bT4O2eIxReGW+j9n2pNOiVG++WGYdw39
         fDaDBBkd5ewGtqh5cceZPkxGILydP4absqJYxgCa8h0KOC/Q0n5DeQJtFDZWLJfXRwX2
         ejtCDeRWYZYfBmqJXCeNwW50i26X4JTlVu/z7Uh7B6KguK23/MvPl2rXjQ0FqSM3yT9y
         z2VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746362026; x=1746966826;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LOSXI/OcKrzZUeNPNP0m7qowONkz227CA7/4JNyGcmg=;
        b=G/OLJjSUN0NqLgKxPZWluEePwflOg5VSL1VFvd9iImC61YD1EvXFN4NWKIwoUpuUq0
         d9kwODqWh9kMWx0qjzt9ouVLEV9jjfLZxazIGfrSlM90zG/JnioxSesQQ/KITMs0RyWF
         O1PddXdXJz6cSaaeVa6YQIs2f2hu90OxHP3/Dcr3imr9hNKFnjhOG3dDSW/GYjAl8rPI
         7v9jtwX6BeOb50vmkO1MX3KopwHVY8xwYPt1/lkwuNJRU/kq7B/XYek0BKdWgrYsub2U
         VLNL9h17VvRpWFdsPH18URIGjs88KT2Nkb5eFfC7RhQlxEMTEshEfr8qYbxpbPOgD/H1
         Rqxw==
X-Forwarded-Encrypted: i=1; AJvYcCWLCPvk6W2HGAMxEeXsj2Mi3DmRyLpuQq36cx12lGHFpa+WkRA0ZK7imyoszuQaEL+EXRTB4OMiqZGI@vger.kernel.org
X-Gm-Message-State: AOJu0Yyv96omeWJ794ZPXG1rb96T1MK7khtOwlbnWJH3djCf2mMwFcgP
	HA5TdahsVAkzkaPJgbOXwlzbpzrgo1XGNj27aaT0iOI8JAbdHnXF72Apl6PjHg==
X-Gm-Gg: ASbGncuMmS1hgQ77LUS8fB8B7m4I7v0K8LcKYH1OvrgLGbBDsxnDUrdLXfQR5ITC01C
	KT0q7rvUy3B/QDzHnNdS58Pl7Tle5dgnLLRLgdwujTqtxsbB143sdnymWaekSOWhDRqmiScYHkx
	bEhPqNxTYHCXFpPJTPeUkq1S5vkXSUR8RINHHfXPrbo3zP9Bv72G0s1k1/nHaLRLv7+vOhkRLXK
	0KveSLZAdnmnBxgVp0kjcRS+ysggwcypNTJAQoEs5y9yNVeSP2Hb1VfM0N/lxG4L6Qgh3NAw+HE
	CIwcrU4hh/wEfNYpQa5Dvcv3+LxPkLO91nXgfiSa/r546a0=
X-Google-Smtp-Source: AGHT+IHq2YVjfYe0OyALgfaePEq9mmaA1jwTUEbvkKFySNnqgRFOichVPYS8KUrysr+L3G5suaVRUA==
X-Received: by 2002:a17:902:daca:b0:220:d79f:60f1 with SMTP id d9443c01a7336-22e1ea7844cmr53010185ad.42.1746362025593;
        Sun, 04 May 2025 05:33:45 -0700 (PDT)
Received: from [172.16.116.85] ([103.15.228.94])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-30a4745f915sm6677721a91.9.2025.05.04.05.33.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 May 2025 05:33:45 -0700 (PDT)
Message-ID: <e05c315d-a907-45f0-8f5c-1c106b05f548@beagleboard.org>
Date: Sun, 4 May 2025 18:03:26 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [Discussion] Global vs Local devicetree overlays for addon board
 + connector setups
To: Herve Codina <herve.codina@bootlin.com>
Cc: xypron.glpk@gmx.de, Jason Kridner <jkridner@beagleboard.org>,
 Deepak Khatri <lorforlinux@beagleboard.org>, Dhruva Gole <d-gole@ti.com>,
 Robert Nelson <robertcnelson@beagleboard.org>, Andrew Davis <afd@ti.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 David Gibson <david@gibson.dropbear.id.au>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Pantelis Antoniou <pantelis.antoniou@gmail.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>
References: <b1990c97-8751-4964-a3e8-9598f4cfac2a@beagleboard.org>
 <20250430160944.7740d5e9@bootlin.com>
Content-Language: en-US
From: Ayush Singh <ayush@beagleboard.org>
In-Reply-To: <20250430160944.7740d5e9@bootlin.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

> It depends on the bus the device is added.
> when an overlay is applied by the kernel, OF_RECONFIG_* events are
> triggered. Some buses handle them:
>
> 	$ git grep OF_RECONFIG_CHANGE
> 	drivers/bus/imx-weim.c: case OF_RECONFIG_CHANGE_ADD:
> 	drivers/bus/imx-weim.c: case OF_RECONFIG_CHANGE_REMOVE:
> 	drivers/gpio/gpiolib-of.c:      case OF_RECONFIG_CHANGE_ADD:
> 	drivers/gpio/gpiolib-of.c:      case OF_RECONFIG_CHANGE_REMOVE:
> 	drivers/i2c/i2c-core-of.c:      case OF_RECONFIG_CHANGE_ADD:
> 	drivers/i2c/i2c-core-of.c:      case OF_RECONFIG_CHANGE_REMOVE:
> 	drivers/of/dynamic.c: * Return: OF_RECONFIG_CHANGE_REMOVE on device going from enabled to
> 	drivers/of/dynamic.c: * disabled, OF_RECONFIG_CHANGE_ADD on device going from disabled to
> 	drivers/of/dynamic.c:   return new_state ? OF_RECONFIG_CHANGE_ADD : OF_RECONFIG_CHANGE_REMOVE;
> 	drivers/of/platform.c:  case OF_RECONFIG_CHANGE_ADD:
> 	drivers/of/platform.c:  case OF_RECONFIG_CHANGE_REMOVE:
> 	drivers/spi/spi.c:      case OF_RECONFIG_CHANGE_ADD:
> 	drivers/spi/spi.c:      case OF_RECONFIG_CHANGE_REMOVE:
> 	include/linux/of.h:     OF_RECONFIG_CHANGE_ADD,
> 	include/linux/of.h:     OF_RECONFIG_CHANGE_REMOVE,


Well, if some bus does handle the event, I guess it is a bug in the 
subsystems that do not? Maybe Greg Kroah-Hartman can clarify the 
expected behavior here? Maybe we are in transition phase here.


Also I guess, feel free to suggest anyone else I should add to this 
discussion thread. I want everyone to come to an understanding regarding 
the fundamental behavior. I have been getting mixed signals in the 
various discussions I have had till now.


Ayush Singh


