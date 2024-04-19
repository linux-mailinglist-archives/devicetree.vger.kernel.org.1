Return-Path: <devicetree+bounces-61044-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A8EA8AB70F
	for <lists+devicetree@lfdr.de>; Sat, 20 Apr 2024 00:05:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 38C291C21181
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 22:05:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A29013D281;
	Fri, 19 Apr 2024 22:05:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="gcbcIqn4"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B03D13D25B
	for <devicetree@vger.kernel.org>; Fri, 19 Apr 2024 22:05:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713564345; cv=none; b=OMy8cwWBVeSGgmd3abWIX9SR5UXWNeo8etfxCX8WWxPnD5kv7ygrh0FnY1yRxjrc1YvTA1eSq9+wPwJSpo7Fkr23Y7TbhvB7lGQdv9iLUI0v+hl/HqVtzrrI7fu6uN+GuW98me9mlqB+QzGrghDjz5/XiSt7F+o2EDG0czzOYFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713564345; c=relaxed/simple;
	bh=iwngIHVe/4WMng29YbmuBW3l10hwsKwRmw0uFrHNG3g=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=eikvQU4Gvb6H6jbAG+Ge/LCD+R/zr9QfuA/0mnQgTvXbhH1WW0mgWkhn6P3wpuEZYC4Cg9LeDIPUXQGmFh1rsVdQBSavVjaLLH8yd0kLIjvqinTTTFkfgm/qDTyqE5ORQfGyBpntXrBTECxL+/fGnEOpgVHkF6Y/NCAqaTEJ1/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=gcbcIqn4; arc=none smtp.client-ip=185.125.188.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 6E2C83F1B4
	for <devicetree@vger.kernel.org>; Fri, 19 Apr 2024 22:05:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1713564341;
	bh=iwngIHVe/4WMng29YbmuBW3l10hwsKwRmw0uFrHNG3g=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=gcbcIqn46I9Ifp2C20JlLfkg9yD1agLD2qFYOfjgOWbYFabCUkr+BJth/xJyMTzRQ
	 QBMapU23t3ScyTTKfGCAveM1bj1r9B1HxZwuyTB7r53PmcQKTDxryh8l6URZpgPl7l
	 ey2Q5ign10t6RdzsBNa5jnWmIhocFSMtKBCeHpD+wESgATH4XzgeGrmIBTnMyHuBK4
	 sjDWzXnRHzr3H8aGlrauvUJZOCwcYztnqCSRCBQ7Omq0g3sAd2M4zp0U7AO6cW1arD
	 wEXkqo3WofDfZqPERR+5FEAiMwONg8TNUruf5W2mSccyuG02htFE5pGxhzlbqRP+1a
	 abjbvplhUhHeA==
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-434eb00e185so39063121cf.1
        for <devicetree@vger.kernel.org>; Fri, 19 Apr 2024 15:05:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713564340; x=1714169140;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iwngIHVe/4WMng29YbmuBW3l10hwsKwRmw0uFrHNG3g=;
        b=Qv1PSQ0DNWxQ7Yl2xtNVwgGruv4ne5OzTHDWL0/Q9KISLx2ke6HxDqgIXG7IkKXhld
         c2RyXRgvvvl+Hr+TOvC4Ka1gAossLW+Nw9iUN0tHY4bXgP/QY4TjN0SmAANCmEL5nbGI
         Sf2tp0iYWpFJ6VrqMPdkTxUqDVTSYIbV/J53VPtTC67PU9GwGuaT3s8pDIXMMqNEa7tJ
         ypLoTpbB/+ckZuXz1cittCqwgvlZIJ3S9zV/BYq7qS0MZ/ylgMeh/MfQzgypJKoTP74P
         HDo0enmwDZkxJV0MQ4mtdgOiXBkHErP46gCz4Yy+vTd8T4MwlV/BBPqc1Viyr+WzO1d8
         ad9w==
X-Forwarded-Encrypted: i=1; AJvYcCVSboedzuQbq/kN5npJO+qa+4WUYGkZNxgX+26koiTRLP2carJcQx7UfST8jhr+zsSG4mL04XN8NjXaX0lmFN3VEy8CZFJ2445P9Q==
X-Gm-Message-State: AOJu0YzfxOF0bquuS4pXoRsCfi8ELeMXEGMTyohfp8DmcbhNJ5uqvbkr
	YS6vpW8KixQHOHKVLG3Zt6i3bVWfVxC/3hKSXRRT5zixrjEaDp1ki6UswiGowx6V55ELa3JBiOW
	65C7mUZoRrjVFBd3wtOtPXlQiom9kF/Cevd2sK+WC7/IUK+hRwv4idyZup9YFZbPJmbdoAp5OiF
	e/Bbflru+qwy7nWpUjgUe7a2YuMNd3YvPXNiw9wCQPfPRnmEPooQ==
X-Received: by 2002:ac8:7f49:0:b0:437:9bd0:238d with SMTP id g9-20020ac87f49000000b004379bd0238dmr4129619qtk.22.1713564340582;
        Fri, 19 Apr 2024 15:05:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGmEg+HVg+ogQjxyJhDeGsv+9YsDoiouQKoYCIz1StpTBZ3JL+7PlHMw1o8Asrj+tWGcBMAdZHSHh3NcsI9BuU=
X-Received: by 2002:ac8:7f49:0:b0:437:9bd0:238d with SMTP id
 g9-20020ac87f49000000b004379bd0238dmr4129599qtk.22.1713564340345; Fri, 19 Apr
 2024 15:05:40 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 19 Apr 2024 15:05:40 -0700
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20240131132600.4067-5-jszhang@kernel.org>
References: <20240131132600.4067-1-jszhang@kernel.org> <20240131132600.4067-5-jszhang@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Fri, 19 Apr 2024 15:05:40 -0700
Message-ID: <CAJM55Z96TnvHNwN5JPKLYywO7eiRh54dJSaFD6Avsy3nmM0bjA@mail.gmail.com>
Subject: Re: [PATCH v3 4/6] riscv: dts: starfive: visionfive 2: use cpus label
 for timebase freq
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
> As pointed out by Krzysztof "Board should not bring new CPU nodes.
> Override by label instead."
>
> Suggested-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Jisheng Zhang <jszhang@kernel.org>

Reviewed-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>

