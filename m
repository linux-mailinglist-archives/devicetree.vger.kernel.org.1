Return-Path: <devicetree+bounces-213712-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E530FB46598
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 23:34:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B3A8517A268
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 21:34:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A53372F28E3;
	Fri,  5 Sep 2025 21:34:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 117BD2F0669
	for <devicetree@vger.kernel.org>; Fri,  5 Sep 2025 21:34:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757108047; cv=none; b=IAiP7yGpy/3EcWEZDUEgDmvl8V02stB5puM0aXXo208dhLICsYL4H1h0vGNbL2te+wZx3Mlb4h+YqbY9M2ygDSZlmtan1zk7b0CELDQgCnXM5FP3CEuyXZTW4YlKqAauZ1P3K5+N9p2NvOdA5hBtlREjvrMUPKwcULxefIODkNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757108047; c=relaxed/simple;
	bh=OsQ/XCKuRqaR6esTNv31pT1uTGcb2x5eU2Mmmfq90VI=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=eGxHhTs0Fj824n0WHfH+WRW97L9Lh6bqhQZR6RWa1zoqhMzYRF5Y4UUmXBQ4gUEVlYyXgAK54kDsDzY0yo1ATVX9FiwLvFStvKCS0lzYIJA1jgl+a1nLd4UewnhnOIA7ME9hdphx/valX8IcMTNKmjmPdZpsc5eIV5lrdNMNDLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=kernel.org; spf=pass smtp.mailfrom=baylibre.com; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=kernel.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-772843b6057so2159888b3a.3
        for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 14:34:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757108045; x=1757712845;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OsQ/XCKuRqaR6esTNv31pT1uTGcb2x5eU2Mmmfq90VI=;
        b=dDqkFX0KAwqbEju57/Zbp8NOnQmOpRjkfOs084eDR0pPuVVX0nIIbatgvJG+nT82kj
         fTLx1oeeSx5Br5TaddSqNRT7wgJ1qMtdqQoA+SDd/OUtX/metKgw6A7WtgC2SdQ0lUfI
         XO/xXyxH1kbrpcZL8xfru0CDfByy1jIPlT/uwX7VxDCGU4tYoj+vgkyhRtvU6a/AN3K1
         FMtRES/GCqtwCnc6xBk15lSALQFD2C6um3V2Y9agf5UXZYBRfhqgff1ObWFC0xiVcoDG
         p/LTfZA71rjojuTv8QNLuqNMlx0X+kC7IDIWoCYSFOPaBCefJEc6kpK4dwZZ8/Y2QZrd
         VCHA==
X-Forwarded-Encrypted: i=1; AJvYcCV3+OdUwOGpSpjoaWHPxm6AuHiNqZbFdtHkho8UoLFA1vVEDp90ND2sBCCKpgQs/VM6oIMF4mssRtRY@vger.kernel.org
X-Gm-Message-State: AOJu0YxqbgkqOKRRRio4tb/vLkQRakgOnwaoM/Ic4cVSENUTUyJmkQIU
	9tcY4Kp0Qt2BZ7hiEGbC8H/9UpxYduZqweN/YA2rC9FQlX6UslvVcDRurHZUeLadtqM=
X-Gm-Gg: ASbGncun2zhQbBsjJLone2T0XNQL5bb28k9gvcEDLsfOPUjlRigHVNy0LRxDtdl6ara
	GeKiuvcUfRrYPCY7v0Bp0hGo3PlWtkML6/F41569bV+HLQPJaiFg+s7bY+BXtej/GbzEJu9ykEb
	xhkUiVoXCFxj7JTBjevFndPFi70L2UVPILkP/YlkxUK7WPJjW69fhYcNVTvHwI98gbZ258XqELP
	3aDwzkEM8CF+ibH7BjPCwBNkYBMcrccvkN36FS6Qbopo/LvfA9bOVhAgVHoRwo2xBtzXrfZn1kq
	AnxP1ABxNquKoRfp61UFamw1xEdlT+JvQPUEgaHX+fHR2YSkM+RQ06zrAUGAsGoZnmf9IEXugrX
	v0GmJ5L1ABnLK+Dyu1qlg
X-Google-Smtp-Source: AGHT+IF98k8Va16MpWzLp3ZggTUXIe4e54bFUIoKsXM557PE3M1cHZME6evE4tizbxZ5oXDsMeINTQ==
X-Received: by 2002:a05:6a00:181e:b0:774:1be4:dced with SMTP id d2e1a72fcca58-7742dccafdbmr309740b3a.9.1757108045347;
        Fri, 05 Sep 2025 14:34:05 -0700 (PDT)
Received: from localhost ([71.212.208.158])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7722a4e1b21sm23273993b3a.69.2025.09.05.14.34.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Sep 2025 14:34:04 -0700 (PDT)
From: Kevin Hilman <khilman@kernel.org>
To: Jihed Chaibi <jihed.chaibi.dev@gmail.com>, tony@atomide.com
Cc: krzk+dt@kernel.org, robh@kernel.org, conor+dt@kernel.org,
 linux-omap@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, shuah@kernel.org, jihed.chaibi.dev@gmail.com
Subject: Re: [PATCH] ARM: dts: ti: omap: am335x-baltos: Fix ti,en-ck32k-xtal
 property in DTS to use correct boolean syntax
In-Reply-To: <20250822222530.113520-1-jihed.chaibi.dev@gmail.com>
References: <20250822222530.113520-1-jihed.chaibi.dev@gmail.com>
Date: Fri, 05 Sep 2025 14:34:04 -0700
Message-ID: <7hplc4a8j7.fsf@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Jihed Chaibi <jihed.chaibi.dev@gmail.com> writes:

> The ti,en-ck32k-xtal property, defined as a boolean in the Device Tree
> schema, was incorrectly assigned a value (<1>) in the DTS file, causing
> a validation error: "size (4) error for type flag". The driver uses
> of_property_read_bool(), expecting a boolean. Remove the value to fix
> the dtbs_check error.
>
> Fixes: 262178b6b8e5
> Signed-off-by: Jihed Chaibi <jihed.chaibi.dev@gmail.com>

Nit: fixes tag should include short log like:

Fixes: 262178b6b8e5 ("ARM: dts: split am335x-baltos-ir5221 into dts and dtsi files")

I'll fix this up when applying.

Thanks for the fix!

Kevin

