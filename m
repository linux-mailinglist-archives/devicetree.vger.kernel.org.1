Return-Path: <devicetree+bounces-61041-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A69F8AB707
	for <lists+devicetree@lfdr.de>; Sat, 20 Apr 2024 00:04:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B581A1F21C1D
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 22:04:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85A7713D272;
	Fri, 19 Apr 2024 22:04:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="YDtDqbq5"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0738313C91F
	for <devicetree@vger.kernel.org>; Fri, 19 Apr 2024 22:04:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713564278; cv=none; b=iSwyAbgzem3oOWzhhIboh8qZpX7tOWVZb1w1dWkSN8FtEULYRR86inLhUrpIu5O+HR/FyQH718jjF5QbM8HeaqdPgrXDEIaykPRJ/5T4QYR198PMEwkIoXYvDuokfplLSJgiXcB/y9JdnpnOgVpqxlmL8RnEaeAJsW5GbnhCKcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713564278; c=relaxed/simple;
	bh=EyxFb8C2nMPXsJxRVXr8QOZVkvCYbC8xVHt8zrs9UZA=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SIxFIyrKREEdB8u7ZpK1pm5aC0L5Dvo15CSm6P9H8HGk53UsfORNPXaBsaHzfyW+skQ0dmEK6MqZXL3J+RJ/MS7EHP8XS5SoTLh7hhXdl2U7d2C8PVE5CS095aWWmppCpUGmpWA4A6fyKOgiIcrWSh75AcpL2iXPVRePL+7MWuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=YDtDqbq5; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 3AF37413F5
	for <devicetree@vger.kernel.org>; Fri, 19 Apr 2024 22:04:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1713564268;
	bh=EyxFb8C2nMPXsJxRVXr8QOZVkvCYbC8xVHt8zrs9UZA=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=YDtDqbq5zmnhnCpQJhBWbnHViy76uk2yQsYrIbh/U7+l84l5ss6tDuNVXp1UfQhP0
	 mCvh7R77EQmN0J6I1HtPx9wgV2nyE4MH9lVn5w514FESnAdIsugwr9jOeEDY5MJ+I/
	 UHjSOMi5CmW1veeRnTiDOuTysRTn6Camn/vNgokOKlHe/Po7apNW9DXM+0i0mjtJxl
	 wgZlnQBwglvG1343pnB52x7PgB/gm9RtOo17vMJZcd0qwLq5co8B8HUz9wOWjpOLrS
	 vz+qzk/+HTWbE6+FVfX0JNC71fE1XumEKYcDIaymiZ4HBYL+jQ18G/a/iRc7itRa28
	 fqMmtpfYEc4nQ==
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-43479131062so32546841cf.3
        for <devicetree@vger.kernel.org>; Fri, 19 Apr 2024 15:04:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713564267; x=1714169067;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EyxFb8C2nMPXsJxRVXr8QOZVkvCYbC8xVHt8zrs9UZA=;
        b=Hq01RGjxkZnULeIxoJtxCEbaLhn6nzFtDo7rEB1WDyWkvpiIQD+VArzUJS56Emkvkx
         I5VyogQKgj++MZ9jz4G+6fv2OUJln+MIdVASdEGzqoT6nyE0VoI+tIV7WJA+RXdMpgbE
         0oDVMI0RwIZSHIRRN/1xu48J79KoTzYhIQiMoFK9Fxm6JryamlNe6HeQZAEsfO0hp11r
         sBOfqQ9qJrwCcDodGfUKrioJ4v9g3TM6Y2/tHC5U8nXkXJ+xmC8zFS7jGGfDRlM2G2JK
         1IXzXCcxjIdxjqcAe34GpI/G7PjgMb7rUNS7gRdE93JiAxmyirYX0x2lfkLOjtJ3fkHL
         e64g==
X-Forwarded-Encrypted: i=1; AJvYcCUUhmNFVdNEugmNcbZp2lXv97cq4OaLS5x/ZsBPMVlj51rjUBdPlA40jmPqddgglwRSn/CJ1F4B7lT6lcZgUnIyuhacrq56aAv/YQ==
X-Gm-Message-State: AOJu0YykJLV+L658GYc/5Irzapf6U30OmnjLllwt8cZ8y8oVXmTGnLH8
	EB6ztRt0yzJzyHn1G12FZ7jRqhSfpWixnFUAPqgZy5TMgYUlPIsGCunL8g92GJ99gRAcyT1lvWl
	rWOFUh8C7jHmRsUXRlWfUAqqv3VazlKqjpKDpaTyordpVCn7hT/Y+B/SYSD008gxzhnooKFlnAQ
	oQDjj/bsEDm5VCQ3NnbFgFKAK3NxCAM/bOwGI6HaMtvErWNzE9Eg==
X-Received: by 2002:ac8:5fd2:0:b0:436:5107:d358 with SMTP id k18-20020ac85fd2000000b004365107d358mr3587633qta.63.1713564267040;
        Fri, 19 Apr 2024 15:04:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHRXMVT8kEhNNrR5sTjDPD3IBV2C1MpWA60uIyzYlOJKirdgWffaPQMKlaHbw73PAg5rN0enmvsbfQurBKGXuI=
X-Received: by 2002:ac8:5fd2:0:b0:436:5107:d358 with SMTP id
 k18-20020ac85fd2000000b004365107d358mr3587616qta.63.1713564266754; Fri, 19
 Apr 2024 15:04:26 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 19 Apr 2024 15:04:26 -0700
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20240131132600.4067-2-jszhang@kernel.org>
References: <20240131132600.4067-1-jszhang@kernel.org> <20240131132600.4067-2-jszhang@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Fri, 19 Apr 2024 15:04:26 -0700
Message-ID: <CAJM55Z-i=JUavZ=GtY+c3ZfDQWChckCWXa8i_6zgmW9S9Ey7xQ@mail.gmail.com>
Subject: Re: [PATCH v3 1/6] riscv: dts: starfive: add 'cpus' label to jh7110
 and jh7100 soc dtsi
To: Jisheng Zhang <jszhang@kernel.org>, Conor Dooley <conor@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Emil Renner Berthing <kernel@esmil.dk>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Jisheng Zhang wrote:
> Add the 'cpus' label so that we can reference it in board dts files.
>
> Signed-off-by: Jisheng Zhang <jszhang@kernel.org>

Reviewed-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>

