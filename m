Return-Path: <devicetree+bounces-88417-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CEB493D79F
	for <lists+devicetree@lfdr.de>; Fri, 26 Jul 2024 19:31:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1868D283DBF
	for <lists+devicetree@lfdr.de>; Fri, 26 Jul 2024 17:31:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EDAFA17C9EA;
	Fri, 26 Jul 2024 17:31:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="MG6JQur6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F633282EA
	for <devicetree@vger.kernel.org>; Fri, 26 Jul 2024 17:31:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722015077; cv=none; b=rjfSYHjGc+yVNl/cvE3ErGhcsRoh1suGdqEQq8uADH1yWEopAhjBEkwjUBzVQ6ibtm5jLKBqvsbTOfjvkvXeqwojFD8HAvrYt8ixSHGDPoOBeO9o7wRbZkJn5FBKqnIyOJxnLzeiPW2oP6gikTy8wvcyvfBOT+IJ+bp9xYQ8Jzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722015077; c=relaxed/simple;
	bh=xl5MBziS7MMtJNQ+8lr6PG6+ExQShs8U6WB+5kJjGVI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZzA6LyLMSiLI8fQC5Jc2qFLGFaYekIgOVKPdWi97B3iR9yy0xEc4lCf9R/XTR4PaKreZc55L2G7OzD05kdJihDCrwJG/H8iaflssIij9tRW9dfmWE33IkdN/4VI6zeprtpAeK4g37rJkAe1cRNAYvdRh94Vn3HpdAWivKf67XfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=MG6JQur6; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-52f01ec08d6so2306291e87.2
        for <devicetree@vger.kernel.org>; Fri, 26 Jul 2024 10:31:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1722015074; x=1722619874; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xl5MBziS7MMtJNQ+8lr6PG6+ExQShs8U6WB+5kJjGVI=;
        b=MG6JQur6bZDXKhuCUGDN4RLkZvGIPcBlmxMWpBDUSmAB73qkwz+r0F7kqvbRY54WqH
         iOA0m+A4FdkBFSHqR9FTrDpkUHWCciGMjal9Gi+HMCWJASQPFZxDXC/5tDSDweefU9Yn
         O/UyvtbaTaFgDYgYLEtIaaQ35nsoPnbSHg8Ou1DEsTjJGhBLqrVjHo1Z9G0jyDwe0VUA
         2nR4REq5MPWD7UJbBK9k+3/qR6BKaE0WKYMlUllvT19A7HlRSunZNs5eO/R9ssAdZUN1
         pO9662GPHi4ecINjaAblK+GTW4Kd1Rf07ea5lkUn+kbfrRMnb52NqSZIKPxKjBVyKvth
         ghUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722015074; x=1722619874;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xl5MBziS7MMtJNQ+8lr6PG6+ExQShs8U6WB+5kJjGVI=;
        b=lUFiJ2BV7SzwpVWSocOssyntfWg+jVETpHVHwFP60fKj1JET5KcIqKx4VnEdIY9Sb6
         hQcCGfA5jhpOl3966oGbf7/7Ti/Gkp8yQfiiN/uSzuHMgB3K0FU48iBp2sESKwkujM9m
         5scWH+1GkP/xHM6DDULtl1pwHhVS1BuoRbqizt185Hv+55vGusL2AHVnzEQnfEa70MPb
         aZGOILIpI7bR5oZqaPiYTIAOwz7youHP4iPkhrjHUyEn9R5wU+wtYU384e0+epEhOuXk
         +duKTPgXX97PmadCO1ZAbGO9DNc7L0i29dNERK7HdmxmcJltlFTiQlh4rwscoeq9VSUx
         3yOA==
X-Forwarded-Encrypted: i=1; AJvYcCUBe3XErpZVxNtLIWAQC8qlBBDtzOKtPblC3glvR/NfLp/pwks0RLjZR+CN+zJDql/K/WOQzJqikvFSjqecyfO+dBD0VP3PtJNPpw==
X-Gm-Message-State: AOJu0YwLxj1UWjySpVTPP/5s4iHKj2/NhWbQ8FX8P259yQXGesGysl9j
	vm25GOMmUt1NcUPz71Vq3OAWh2cfIXL2k4Om7rUfNm9JOFyKUww59Oc9cQcvsCtpPxqF4zjjd0t
	yoBt6wHqHjMxAhOaD2zpNmW2aCusbXB8yr8KShw==
X-Google-Smtp-Source: AGHT+IHl0keqbTpli0qtFCDOs9KQPvh5FiTCtZnHeHGftMUia5rWkyP0BFbDvmTVhCAd2RbboRnEBTXgj6gIcpDtNJw=
X-Received: by 2002:ac2:518e:0:b0:52f:2ea:499f with SMTP id
 2adb3069b0e04-5309b2803efmr341676e87.24.1722015074240; Fri, 26 Jul 2024
 10:31:14 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240726163719.1667923-1-jesse@rivosinc.com> <20240726163719.1667923-7-jesse@rivosinc.com>
In-Reply-To: <20240726163719.1667923-7-jesse@rivosinc.com>
From: Evan Green <evan@rivosinc.com>
Date: Fri, 26 Jul 2024 10:30:38 -0700
Message-ID: <CALs-HsubnuBw_jTfx+fcD0s=9KEmZ4zFauzyTTnUCpJxYq9Djg@mail.gmail.com>
Subject: Re: [PATCH v7 6/8] RISC-V: Detect unaligned vector accesses supported
To: Jesse Taube <jesse@rivosinc.com>
Cc: linux-riscv@lists.infradead.org, Jonathan Corbet <corbet@lwn.net>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, =?UTF-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <cleger@rivosinc.com>, 
	Andrew Jones <ajones@ventanamicro.com>, Charlie Jenkins <charlie@rivosinc.com>, 
	Xiao Wang <xiao.w.wang@intel.com>, Andy Chiu <andy.chiu@sifive.com>, 
	Eric Biggers <ebiggers@google.com>, Greentime Hu <greentime.hu@sifive.com>, 
	=?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@rivosinc.com>, 
	Heiko Stuebner <heiko@sntech.de>, Costa Shulyupin <costa.shul@redhat.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Baoquan He <bhe@redhat.com>, 
	Anup Patel <apatel@ventanamicro.com>, Zong Li <zong.li@sifive.com>, 
	Sami Tolvanen <samitolvanen@google.com>, Ben Dooks <ben.dooks@codethink.co.uk>, 
	Alexandre Ghiti <alexghiti@rivosinc.com>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, 
	Erick Archer <erick.archer@gmx.com>, Joel Granados <j.granados@samsung.com>, linux-doc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jul 26, 2024 at 9:37=E2=80=AFAM Jesse Taube <jesse@rivosinc.com> wr=
ote:
>
> Run a unaligned vector access to test if the system supports
> vector unaligned access. Add the result to a new key in hwprobe.
> This is useful for usermode to know if vector misaligned accesses are
> supported and if they are faster or slower than equivalent byte accesses.
>
> Signed-off-by: Jesse Taube <jesse@rivosinc.com>
> Reviewed-by: Charlie Jenkins <charlie@rivosinc.com>

Reviewed-by: Evan Green <evan@rivosinc.com>

