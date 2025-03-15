Return-Path: <devicetree+bounces-157808-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DC52BA62F01
	for <lists+devicetree@lfdr.de>; Sat, 15 Mar 2025 16:20:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 80D5B7AABC7
	for <lists+devicetree@lfdr.de>; Sat, 15 Mar 2025 15:19:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9C5B17995E;
	Sat, 15 Mar 2025 15:20:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eHTiW3Xt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6110C1C8621
	for <devicetree@vger.kernel.org>; Sat, 15 Mar 2025 15:20:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742052027; cv=none; b=Om6egB4GPisB2i/1cYZePQOQTxZG4PU2xJIS3RqlQkbYdb6hQkaoOa6pdIvsDrs0bfR3Fvu7MvcS8RmUSfNA75Zxwi8oYs5hNIyyx2kjzpjQK+6WJ8sQAWsJx8uhXR/KmFj+v0x2abyc1iSpxgj+ezptvWpriWdRq0syx+OVoDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742052027; c=relaxed/simple;
	bh=39por3/JtelL+7YTHoEk5X9NoxBVkBIl6QF/QgMyCOA=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=KdedMjOyjQ4KklClDkztOJe+6d21wPivrZD16fYaxME8LpCta/mDt3gVOZuTFmnpxLbcGDW3956fd12hrzDHpaqKXZWGWvrMTxLxQ+Xvugw7a4Er8W3HiK0cA1HA7D9svN0+NZ8YnCs0vROdBg5ZB/lTNIUpYIzTBWV96x2NJUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eHTiW3Xt; arc=none smtp.client-ip=209.85.219.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-6e8fc176825so27032426d6.0
        for <devicetree@vger.kernel.org>; Sat, 15 Mar 2025 08:20:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742052025; x=1742656825; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=39por3/JtelL+7YTHoEk5X9NoxBVkBIl6QF/QgMyCOA=;
        b=eHTiW3Xtfq/t8pkUL9BwMwr2H1VZrsWQt+UiIuP1a1+PHsEpjaZGsjhWgzVjhVV500
         CwQ8x0xLQFBumFjrBY2X9Q3cs+aXAFUvmOjkp9g5xLtooI6p9bNfJL4pfwBUZZndehoF
         dY3OGgcZoC0u06zWYZbOPo70dx0+rddgqaDxInPvmgpEQC2JqLJl+jjFh6U/3Nx2MX+k
         vL67aKfGZjZrhmR84+NsybEzfUEpaR8RXe/MYMOuwEg5jTqoc8nt7aVRbkxQcxL78Xv/
         b2wqp+jvpQymVtt6ugKl4/kkg/lpkUcLRZjbz4hYLdCaGTr3XJLIgFp0KNw9nYLF8NZ9
         eCUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742052025; x=1742656825;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=39por3/JtelL+7YTHoEk5X9NoxBVkBIl6QF/QgMyCOA=;
        b=Sw9+R9R/66Wz23717YL5hJJVy1a9Ksv/cJclMiU2/grd/19sgksrqgD17l0n0q2sqz
         fwm4E2AzDQPpJT9to2MeRbCtqtycAM62T7QP3NRWuQ7b6scHRKxM1THwT3C3pGw3XWyL
         rCKf1yEH5uER8XR8VY3Ne4sHDcYeHsPCoFvG4KCZCCp2d/MCm83fjPOwU/Ol1yBrxU03
         540cLQi3nQxDbuYZ5Lginb9o2TX6chqBGcGIuO6N2DKXAI0isHruzvAkrlwm7g/PVCbm
         PRSZ10qSw0ULFjFG4jQuu+GNHJZ3SFBJM6eXXdSvruXfx9aV4dJCkphXR6ZVfmYfTfB2
         6tKg==
X-Gm-Message-State: AOJu0YwEpM/mjUsFMEfgFUMMRSF2BIC6LI/N7kj0HqBcx60z8JDYbJ59
	eTHTscU2qHaXY0zCa8X7iKErd6bF1CvMsznv19XlYGvEJwtGwapYfpFO6A==
X-Gm-Gg: ASbGncvdZxsdkaYz5WIH4U8el19+CFt7RVRaMRGT6OLNw+6zhlUZfCI2noY8g0ayO48
	R96HaeMyEGfhP7UHB6+KMu5y2M1sO/DGA5IKN8E7fNdcAQ0jIh5DxodVVBywIHgLdJ1dkwsl/gz
	W6YIfIjq8NV/g0sH5WilVzUogwNtPeDKoAFZ3PQwmpWIFEWqHaF4ujHmftB7pJHY1z585+q8WZ7
	3iXub+4YLtI/MCWPeNwzp3F2BsuzYjXPG4Oy5ZtYjk62qlz226RPxs7JYL0/c52IyQl33X+Ocab
	q9ZxaMcyV28M+jNT/SwKqTGMhgF6bYSsTDHv1OcwY112TzQIhp9U6KawAV1GQDWSDuqAdhmCMAC
	n9vCGaA==
X-Google-Smtp-Source: AGHT+IFl2giQDdsX8F/3V1noWjAAWkNARQh+KylAf2Xqqf7BO0qfokc0vvxc9D/+GvsgddTZaf40Cw==
X-Received: by 2002:a05:6214:20c1:b0:6e4:269f:60fd with SMTP id 6a1803df08f44-6eaeaa8dbcfmr112377876d6.23.1742052024970;
        Sat, 15 Mar 2025 08:20:24 -0700 (PDT)
Received: from VM-Arch (ool-1826d901.dyn.optonline.net. [24.38.217.1])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6eae3c57becsm29687336d6.11.2025.03.15.08.20.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Mar 2025 08:20:24 -0700 (PDT)
Date: Sat, 15 Mar 2025 11:20:22 -0400
From: Alex Lanzano <lanzano.alex@gmail.com>
To: devicetree@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Josef =?utf-8?B?THXFoXRpY2vDvQ==?= <josef.lusticky@braiins.cz>
Subject: Bug in mipi_dbi_hw_reset() causes incorrect DT entries
Message-ID: <v7krb2k3aybcpbzyx4ysjxpdpljpadk6xugpdsehzc6wp6aejw@53flicuphar4>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi all,

There is a bug in the mipi_dbi_hw_reset() function that handles the
reset logic of the controller. Currently, it will set the reset gpio
value to 0, wait a specified time, then set the reset gpio value to 1.

The issue with this implementation is that the MIPI DBI spec states that
the reset signal is active low. So, in order to correct for this logic,
the developer needs to incorrectly define the reset gpio as active high
in the DT.

Fixing the logic in the driver would cause all the displays using this
driver downstream to stop working. To mitigate this, Josef and I were
thinking about adding an additional boolean property to the DT that when
present would use the correct reset logic in the driver. And if it's not
present use the current reset logic and print out a warning that this
reset logic is deprecated.

The overall plan would be to have this temporary fix for a few release
cycles so downstream has time to be aware of the issue and update their
DT. Eventually, we would remove the incorrect reset logic in the driver
and this addtional boolean property.

Let me know what you think of this approach and if there might be
something better we can do here.

Best regards,
Alex

