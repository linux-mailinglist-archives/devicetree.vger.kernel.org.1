Return-Path: <devicetree+bounces-66198-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EEFA8C2028
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 11:03:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1841A281ACF
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 09:03:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC0E21607A0;
	Fri, 10 May 2024 09:03:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="TX5+xMsv"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38CA71509B9
	for <devicetree@vger.kernel.org>; Fri, 10 May 2024 09:03:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715331795; cv=none; b=Pzfk4IutdbCLgJHF0C03UXuEZng0trQ6K6amokiEsD6qiZHWp5tuox3LIhjQg3cpJ87NJyH0zXa/4eqfIkps0wsonYsesPc2n5KBSjamvm6ij3uU7tOfprkD0/TOadC8tLqh+/RdNL+77AKCsgDjcEPV669L5+ALpmL81KNI1pw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715331795; c=relaxed/simple;
	bh=k1gtokQ4byZJTsBGp5EqYH6DueuKF5nY32DWjEDtT/I=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=h7TdRwPEUNX2gQkY2sApt2Bnp1246LouDbfOosD1kpOd190O+T1JgwAZLBIJtxu5p2l9TPYeNgoJEED9mIw+XsogpO6vaZkVSJ9PReMinJgL+JhCuLjtd+cK15ewNHsIOZ0RG9GIFQx+ZRlq5Awyk/dwlx2gVM3KL8bAQjrRtWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=TX5+xMsv; arc=none smtp.client-ip=185.125.188.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 8D3BA3F371
	for <devicetree@vger.kernel.org>; Fri, 10 May 2024 09:03:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1715331783;
	bh=EZg3bZExhlWVK50gpSicBrX5JPsAAk8r1XrLNevR8+8=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=TX5+xMsvsbxEUoSMimMTBo2mmwWV4mRa3e3pO4AQoCFbI4w10pgRpp9Mx98CpRH1s
	 h+FRO8THwSY8QnEi6s/YKbGXHsk5wuJsgCYRXC3nv+oIlwSxY3Ft6OCQWpulmdc4Ok
	 YmHgP0n40zhWOnJAjdhRZVQC2Pz8VNmWMEZNNyOlwK+g9RlJZHZvXDi/vzU6WSmn7E
	 1r6trSYkcRZyfNlGFcCqBQKDFm60IzF5XWJTZVKDfDK7hbBOplc65fgEdblxHxfbR6
	 9AslhanLZHyWo1O6ERoUrrNQwX1rOph/9RYoOTEs2Coa9EoQxFhTF96a44LY+OiIJm
	 wQKEwuU2QqOAg==
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-43dacacbd14so19835141cf.0
        for <devicetree@vger.kernel.org>; Fri, 10 May 2024 02:03:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715331780; x=1715936580;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EZg3bZExhlWVK50gpSicBrX5JPsAAk8r1XrLNevR8+8=;
        b=i5lFNo5faCns0HOvXeghwc39RoEofKqMYAd6xgmMb25Ymm/HnUd2bdogyCz4/EAjVT
         sDOSWY55Xfx3RzW2wyYuLZc38NWgHSvdA3YrDwGwt0G0oDc8CiIuiJYE8F6NGOsSGK2l
         VkT8RZbgegBlSa48R8uVX+fb5HFD+JGX9tepXFpm3e4QRlCuRoSJFoatKilhMV95PkYj
         FhZdES0yYnqa5xn53pyjWbRefqU7bJwXysoEDbmK5B/2WE9+TwYLJEyJZXazi8OIlqJ+
         Fjfjmy0dPrrouDkwL/1ctaa86E1cLelRMs70y8TH044hCULwinVXQdxw/3RXWQc8h7nH
         u/fA==
X-Gm-Message-State: AOJu0YwoZ0+icIkM+6sP0XbKNqZDzVF3pQAqVLF7rqz5Kgl0YAP4nz8C
	/C9/MkAxKZrMwDCJ5dQsA6c8miC2I7bi9YbLB7edWna5RzrE07TTKyIXr7HhA07i87K3ayZyUNx
	pTKiZMR/XgYx16QjvyH+gyY0Dn+KeNBoC7uu7mLIDtY9qR7ryynFb4wpBkX2d5CaQ0NB50wJNWh
	7L50n+mPmjGpylm1rxWCgP4mmIwgyfD9oYFEeJnIvnzF+ncyYvHw==
X-Received: by 2002:ac8:570a:0:b0:43a:fc66:35d8 with SMTP id d75a77b69052e-43dfdb06fccmr22804991cf.7.1715331779849;
        Fri, 10 May 2024 02:02:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHm3BolVFsu22mYiTmhPkAgiTCxY6SWjICQtL4EpS7KCkeY9VWrwi7XisKP2lAOKpom9apfc0uDgJLCEOJTYis=
X-Received: by 2002:ac8:570a:0:b0:43a:fc66:35d8 with SMTP id
 d75a77b69052e-43dfdb06fccmr22804731cf.7.1715331779539; Fri, 10 May 2024
 02:02:59 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 10 May 2024 04:02:59 -0500
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <87wmo2nmee.fsf@linux-m68k.org>
References: <20240508111604.887466-1-emil.renner.berthing@canonical.com> <87wmo2nmee.fsf@linux-m68k.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Fri, 10 May 2024 04:02:58 -0500
Message-ID: <CAJM55Z-F6N6ua5LoqyMFogDtLp=FaRPoDv4osXFDMjR1b8r9nw@mail.gmail.com>
Subject: Re: [PATCH v1 0/2] riscv: dts: starfive: Enable Bluetooth on JH7100 boards
To: Andreas Schwab <schwab@linux-m68k.org>, 
	Emil Renner Berthing <emil.renner.berthing@canonical.com>
Cc: devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Emil Renner Berthing <kernel@esmil.dk>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>
Content-Type: text/plain; charset="UTF-8"

Andreas Schwab wrote:
> On Mai 08 2024, Emil Renner Berthing wrote:
>
> > This series enables the in-kernel Bluetooth driver to work with the
> > Broadcom Wifi/Bluetooth module on the BeagleV Starlight and StarFive
> > VisionFive V1 boards.
>
> That does not work for me:
>
> [  +0.369276] Bluetooth: hci0: command 0x1001 tx timeout
> [  +0.025545] Bluetooth: hci0: BCM: Reading local version info failed (-110)

Hi Andreas,

You don't include any information useful for debugging this, but if it get's
far enough to load the firmware could you at least make sure you run the
version below, so that's at least the same.

https://github.com/esmil/linux/blob/visionfive/firmware/brcm/BCM43430A1.hcd

/Emil

