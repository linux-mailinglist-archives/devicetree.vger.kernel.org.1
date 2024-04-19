Return-Path: <devicetree+bounces-61043-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 57A338AB70B
	for <lists+devicetree@lfdr.de>; Sat, 20 Apr 2024 00:05:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0D21B1F21834
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 22:05:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E40813D271;
	Fri, 19 Apr 2024 22:05:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="HFMjNHqJ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2074713C91F
	for <devicetree@vger.kernel.org>; Fri, 19 Apr 2024 22:05:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713564321; cv=none; b=jCK5+z2qGPKqFMXAXYeppymJI0ES4fI/BNGOePmHZ+OL/7vu5JklMcC0T37GmpLrdx1QFELvPV5mqFNteMvRWz3bdrGe7px3loa6tReiB3bSR+L8ecxM0XhZfI+vHUek/VLBSKZDmGNFcV5FTXVgMLzywrBau+HkX1nhU81Br9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713564321; c=relaxed/simple;
	bh=96ww+1eg6Mocde2XsvwCltzM9kg8YXha7d3RQyiV9kI=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=M+tAKUqentR88se+D6xytHJOCDJtMnAEOarh4jIrFRQMGmEfMLrMVhEh79HbYOvcaHMmZEWkO4jZpSu2lCEJqxV/b544j4qLF0vbpNuO9mT1998AHOawHrDZck4eToCBSp37Kr1Di+HviKJXq1agGuV4S09yePJJtY/TmXKvOwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=HFMjNHqJ; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id A3D5B3F182
	for <devicetree@vger.kernel.org>; Fri, 19 Apr 2024 22:05:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1713564318;
	bh=96ww+1eg6Mocde2XsvwCltzM9kg8YXha7d3RQyiV9kI=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=HFMjNHqJvSMXU9Sdg4DCViY1CBMM+wJNUCes2wNNGKuRf8CLVcAU2yzmKkd31uXt2
	 5kgZQmGJ7ttPgAjETE8BrA3Ckso6F2uC4dXgQsr6oDLoP3IKQ60XYnEXsZkXOKv0Od
	 dquXZU2/uQ3jjB8FXpKBkY5NIxwXZfocK5Klnq6CWDVal23aIYxEy6A+2N6Ylb9X5K
	 B9jwuJNDSckStKCIc/Jwgwm2g7Xh4Mleuk9gvrCbaTEnX57eOi1sHp/UcU5dxZBREw
	 K0woRnIh9aiLWSWcg0tXASWi2HN1R9nMOuM/i5mZ+zSypXX+dvcXS5p6X9SlLsEh4V
	 Ep0wX64s/QylA==
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4386bcfd788so14116761cf.2
        for <devicetree@vger.kernel.org>; Fri, 19 Apr 2024 15:05:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713564317; x=1714169117;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=96ww+1eg6Mocde2XsvwCltzM9kg8YXha7d3RQyiV9kI=;
        b=EGKotWJuYQFmTO/Gi7h9N67ausnvzQ/df/zg3Og4268HGad1wd+D6GsJFL6HaLjTS1
         noN5rfNooZNUtb4PxkHLlJKXqDiuunW86Pxt6v/mmNOiCA+5HGnlNAcuGiCVvHYPlRh6
         XCLl5e9brh61nMGTYbywIyrw9DFeVvn9DCv/3cofD89wSCqU1M+4CqYg188Gz4rFR3Rb
         uIptR9Zixj5xWtWqNW65MrE1FmxHjgNxN8e2y5zxr3IAZHz16dB4lXu8Hunyt4fcPISL
         efp+kOvHALXbGrpt/+F4W9Z37b6yRVUySphZG4x/lTssOkUunkYSkyUFKj0mDosgGcca
         5B3A==
X-Forwarded-Encrypted: i=1; AJvYcCWxzft8hfTs0OPhir+IYlmwVrfpjTdA8KGgGzjHvHfYT1PGaLsNjolKrJKXI3v+MN+nyQwVnR3u+peiEKpFP7s9fK9OGMg9QfaKMg==
X-Gm-Message-State: AOJu0Yz2GLSrAJ8ZzjiD5LZsPUAqvOxlFM9ghK3T4UVShRScblxwTKiA
	+lGNfA1Z+rkOg8IGRzr6E8nzBKYGq+iWXW4SxoxSz8fehPpDLp8LEZDJSx+wqsl3eRlRHcdhoJy
	o/HGCRNtk2w8EVSMfrS5Glw+gz0DOvY/cz3OR5+74CTxSgmcu7imkMoLcswu1a1I7t6cXoW4ipB
	Jxfcrpj/1ChbUyVrHpQjHxrGC/2qOIlnHAuvLzw3CDqFVDlwrTsA==
X-Received: by 2002:ac8:5f0a:0:b0:436:b948:7e6f with SMTP id x10-20020ac85f0a000000b00436b9487e6fmr3530263qta.17.1713564317702;
        Fri, 19 Apr 2024 15:05:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFzf6EeFMjLFuwkceej16oYU6yBNN8gBYeTtzna5Skfq40Dl3SYzgE3yG5YPh2n/K1Biu2V9RqhlB/kUHxNFH4=
X-Received: by 2002:ac8:5f0a:0:b0:436:b948:7e6f with SMTP id
 x10-20020ac85f0a000000b00436b9487e6fmr3530240qta.17.1713564317355; Fri, 19
 Apr 2024 15:05:17 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 19 Apr 2024 15:05:17 -0700
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20240131132600.4067-4-jszhang@kernel.org>
References: <20240131132600.4067-1-jszhang@kernel.org> <20240131132600.4067-4-jszhang@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Fri, 19 Apr 2024 15:05:17 -0700
Message-ID: <CAJM55Z-nnJkvJ49hyz45+eqMGNSjR+adA8345oVO2uHvgqZsxQ@mail.gmail.com>
Subject: Re: [PATCH v3 3/6] riscv: dts: starfive: visionfive 2: update sound
 and codec dt node name
To: Jisheng Zhang <jszhang@kernel.org>, Conor Dooley <conor@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Emil Renner Berthing <kernel@esmil.dk>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"

Jisheng Zhang wrote:
> Use "audio-codec" as the codec dt node name, and "sound" as the simple
> audio card dt name.
>
> Suggested-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Jisheng Zhang <jszhang@kernel.org>

Reviewed-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>

