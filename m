Return-Path: <devicetree+bounces-11965-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B7F747D73E1
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 21:07:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DB6F31C20D6A
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 19:07:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E01C830FAF;
	Wed, 25 Oct 2023 19:06:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="uNbXH771"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7546F10FB
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 19:06:55 +0000 (UTC)
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB30C10E
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 12:06:53 -0700 (PDT)
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 502D341356
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 19:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1698260812;
	bh=BdwZ3eVaAqHpyQJjNHLInPz7RJuDJsJpeXFXoSIUzNI=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=uNbXH771OZOhHT1ubpoCjLZZCftiQMexpC2ngLuyD8gtJnVMccwgE/KBZ8AoDUXkg
	 R5stl4haaUS+ZAxvwUHr5gRSuaC0hm+VU1QvAm1RmAl6vNzxpJT+EpYz2Glg4xPVNk
	 dK/2PkjlcLKhp10dpUv2Bv8rKyLvFSDEv0YwZBHh+B7JIBVCtIQF6SsQvLnekll57r
	 VCCglNaW12C+tiPzTRm1rzo9vUTTqlNyBqVBJnSQG/JHso39K/z6/5GgXgyZ7D/S2Q
	 Reu9pumVIxaIoXIG5Tdp2RKtPoD6yQwVuZ2jERPyUMd6wAZ6VtVds4LfYen7obeNB0
	 Aq33lpjxurKvw==
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-66cf1e35fe8so1081896d6.3
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 12:06:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698260811; x=1698865611;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BdwZ3eVaAqHpyQJjNHLInPz7RJuDJsJpeXFXoSIUzNI=;
        b=egbmjjLI6/HS9uwZHN9dxX1q62qO1IEeGR4fTDU1Pnx8Cr8o7Mxb6nSukR9DmV/fJM
         FtHRrNZcE3fHZOe6Kwey7UHoOXkUBP2Aq4GOM+uD4YwKOOGdCbNvRir1j6eMpHLC9qNC
         8+5bxU28p8EoRJi4qSJqo3Glhkwo+jnrbZBTzoZX/MwtPwlmiL6TMKWwrQ6ygFsOu/R8
         oz68Bx4p8I/RBnNJ/XyiVkgVSUtowPZ/TizabQ9tUUAYZkbi9txETS5C8kHhgaQ2C9ee
         Ht6uXRUrK5G3MPa/3AbUfVLIqNeQRuw5CX3f8mTXW/DdlcbA86ckN438GwBFNGwTT0pX
         TG/A==
X-Gm-Message-State: AOJu0Yziqsehtf2zToVlh7XdXs7zT+pKHv8REvSS2Y6hCKRmAtRjMyOG
	/kO4rCGxTLDKacL4ynqI/Huv8w9uRIxWnkyogvpHMotk5cwU2R5SzPgsOlhjg+y2aJInqZf7VFo
	ZNAC4nforNXaoONVtKAhFEFtTSJI1K97oDKLerfJTTULwXrZ9IGeQVvY=
X-Received: by 2002:a05:6214:ccd:b0:66d:33d2:4ffd with SMTP id 13-20020a0562140ccd00b0066d33d24ffdmr17139787qvx.59.1698260811372;
        Wed, 25 Oct 2023 12:06:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFLO2gfkUwl69w4gSQFYMDMCqyB9EPF4PqKeayY3C56ZJH5AQz9536l4Lwjl6PXc74ecKD4x2ISGpNHCPe8LNQ=
X-Received: by 2002:a05:6214:ccd:b0:66d:33d2:4ffd with SMTP id
 13-20020a0562140ccd00b0066d33d24ffdmr17139769qvx.59.1698260811144; Wed, 25
 Oct 2023 12:06:51 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 25 Oct 2023 12:06:50 -0700
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <CAJM55Z_pdoGxRXbmBgJ5GbVWyeM1N6+LHihbNdT26Oo_qA5VYA@mail.gmail.com>
References: <CAJM55Z_pdoGxRXbmBgJ5GbVWyeM1N6+LHihbNdT26Oo_qA5VYA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Wed, 25 Oct 2023 12:06:50 -0700
Message-ID: <CAJM55Z9gy4RFXqu8n5jtW4k2gwDtpJDkevdLht9rMyL=464AMg@mail.gmail.com>
Subject: Re: [PATCH 0/4] soc: sifive: ccache: Add StarFive JH7100 support
To: Emil Renner Berthing <emil.renner.berthing@canonical.com>, linux-riscv@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Conor Dooley <conor@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="UTF-8"

Emil Renner Berthing wrote:
> This series adds support for the StarFive JH7100 SoC to the SiFive cache
> controller driver. The JH7100 was a "development version" of the JH7110
> used on the BeagleV Starlight and VisionFive V1 boards.  It has
> non-coherent peripheral DMAs but was designed before the standard RISC-V
> Zicbom extension, so it neeeds support in this driver for non-standard
> cache management.

Ugh, sorry about the broken threading and From vs. Signed-off-by's.
Will fix in v2.

/Emil

