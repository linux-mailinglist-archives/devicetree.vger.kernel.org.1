Return-Path: <devicetree+bounces-61042-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C4E68AB709
	for <lists+devicetree@lfdr.de>; Sat, 20 Apr 2024 00:05:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3DBCE1C20F26
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 22:04:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2056713D26E;
	Fri, 19 Apr 2024 22:04:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="qCJAg+8E"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A3C413C91F
	for <devicetree@vger.kernel.org>; Fri, 19 Apr 2024 22:04:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713564297; cv=none; b=LCrbbpGh5hSAEdw6i1EUCEWo8bxf2+MSRFNKUihx3k0XYzmu2YjGvJc76thpj/bVi+XK7aNBe5W7gGsLMrOIqZMdEUxBB9HC94nHnzyhuZ39izLPcaWi8SW14liLRuHP0YcurpPGoMoXNsVH2tyJUaZ7Lg9SRx/low6hSXEWiM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713564297; c=relaxed/simple;
	bh=59fbk9mdCDiZMMkdMPp9YypNs4kQzE7DiAt8CISNemI=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=YQufMoYl7KGsW0csEXbqxFAnMal8vBXDKXfgQ4bUYrpA/13WdWOc9w5yzMIcPH7sxVzG65czWZfbiMs5f0JJG3aKDVcxQrI7IC94UHBDjQM8YxAOe4GG1Z3EQRd6tfmuo+ULWZCQPWimFyDHU0aWIxS6617pi54O0FJ7Ds7Pqyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=qCJAg+8E; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 00FFF3F16A
	for <devicetree@vger.kernel.org>; Fri, 19 Apr 2024 22:04:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1713564294;
	bh=59fbk9mdCDiZMMkdMPp9YypNs4kQzE7DiAt8CISNemI=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=qCJAg+8Etkoy6vmMRivxlaiXKKETVib6sq29VUUmX7GlCQ3+Og5iqesY94w+flals
	 h8v4kXwMmVVzDHwal45sgD6v9UXBScRMJE6Y9gBYorJdcGhmrnsgHNlcPnsxgzf7QC
	 5zms4ChiRRCjg7ujPclj74PR3HtASp83Ubpcy6A00OepA4+ZrtbD2NAp2AwwiFy2DU
	 yWdmNiySi+CSv/fSRykyemLWf3c3aRHLwU0z3xqEnb27zSkrutOpQHXltc6bhgI/V/
	 owZYrKK7DrwH4kCvQTDcB35fGmjXiJyrNQaW0Pp7G+na0up/E7vWEyfN9haMh6uwat
	 e2NRwMAbNkU1w==
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-437090005bbso23045761cf.1
        for <devicetree@vger.kernel.org>; Fri, 19 Apr 2024 15:04:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713564293; x=1714169093;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=59fbk9mdCDiZMMkdMPp9YypNs4kQzE7DiAt8CISNemI=;
        b=B7VoTNquQouE/8Urpqyqjm0BP9qPg2YqjAOGW9h+iM+pssBv36Le2Pp/FQL560Mr+Y
         /fI7di1lOiUEST4rwDLV8Wb1EYHjt2pQ9MgNIx82byAK9DlCNnA58v+9sFrlObkFbEpd
         HKy+QaJxIuZL+hb2SxEA6DjOJjkjtff77qlIgYN2Rz+lte2QoYEYIWlDjmuZBA15rqjj
         ADgY6a/SEyQQQ3heeSm/iV6KIhtdxpMZEv3JKfj96TomPrDmk6gWyY7VxCa4WfbuDShL
         03qZTrQGao9he88+pJLZea0NUlXhgd23kmgrOoW/AEzKAzjMKu2bw13exd6Cp8Z8D9+k
         tmXg==
X-Forwarded-Encrypted: i=1; AJvYcCVqyJUBNcZVdKIdBppaJuroG6H8XfctokI8O3lvyr66QdqXIKnxbZOCFU7eTohPHtpqqcsNHzZs7/EEf+wKSIaNTyMYAtNugqCwlA==
X-Gm-Message-State: AOJu0YyzGjljMYQeVPa+CU/+Jvv8Fae9UiJbOYSy29v4T5hYCEwIcpdy
	QRLE15g9fuOz6vEBzZvD3uuwgKeEc/xTlrxd2G/R0Q9WyFYJhhxntdl5pyzDrfrrmzBaZwh4wml
	i4y8xovSYDL9QS3KZkqkl84tIk5BFjYwbYy5B1mM+wUjFKWT/oYyih8HqCgdl6lglIG7Kx+D3tn
	41mNkjqYucqEO5SRwejNvo1epIxNyxY1y1H53GNMSDoJ+WvA7AUw==
X-Received: by 2002:ac8:7dca:0:b0:434:fea0:656b with SMTP id c10-20020ac87dca000000b00434fea0656bmr3860600qte.12.1713564293109;
        Fri, 19 Apr 2024 15:04:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGi3nRK9n4HZbD6JyrijRrJFNNUSTVrZHpqTxSgnaAa2BwTXIiXei42zsuP2X92+g6FGGYKm/L/I58UAPVbBx4=
X-Received: by 2002:ac8:7dca:0:b0:434:fea0:656b with SMTP id
 c10-20020ac87dca000000b00434fea0656bmr3860580qte.12.1713564292792; Fri, 19
 Apr 2024 15:04:52 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 19 Apr 2024 15:04:52 -0700
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20240131132600.4067-3-jszhang@kernel.org>
References: <20240131132600.4067-1-jszhang@kernel.org> <20240131132600.4067-3-jszhang@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Fri, 19 Apr 2024 15:04:52 -0700
Message-ID: <CAJM55Z-n4N1Mm_iiYngaJ3jrb2eoXTirH0qDXMV=R=QTH-d9_A@mail.gmail.com>
Subject: Re: [PATCH v3 2/6] dt-bindings: riscv: starfive: add Milkv Mars board
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
> Add device tree bindings for the Milkv Mars board which is
> equipped with StarFive JH7110 SoC.
>
> Signed-off-by: Jisheng Zhang <jszhang@kernel.org>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Reviewed-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>

