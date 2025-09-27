Return-Path: <devicetree+bounces-222120-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C1A7BA6008
	for <lists+devicetree@lfdr.de>; Sat, 27 Sep 2025 15:59:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B09111B23999
	for <lists+devicetree@lfdr.de>; Sat, 27 Sep 2025 13:59:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE7FC2DF13B;
	Sat, 27 Sep 2025 13:59:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nH10xkyc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C2C1A3166
	for <devicetree@vger.kernel.org>; Sat, 27 Sep 2025 13:59:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758981566; cv=none; b=ampdjKFDPnngRkwVnjRGr9DzwPZmZsQ9O1zDoDZlzIrMIwVBU1iXeYW63zhLypH00ogHV2p56pWnQcGOUd9uHnHi72MFPvmYJhyQ5mJXpYyQxc1YuDDxpNOVOggvdt33ckT6Qz7wl1/caodD4iABKmckZzR5dcOdtLoLcj3d/Ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758981566; c=relaxed/simple;
	bh=fcHiWyXrlFKXvBYGJ+K3ybehrxbtVs47y8UOfxcApoM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=fG0nFMxqShdr8yZtdETgrScSaq/GfS/+vWwrC5tPCvaix8Xcq22fxr9K64FMLc5KZKZgENNMmm9h7HNilypPcTtGokTr9cepbYFC6qc87MboxBp+Ra7iqYqTf+f9eK6gA3g75Lsg5wKRefR+/Y4yimMLWZj1nSnA+EKGWgk0r9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nH10xkyc; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-27edcbcd158so28900445ad.3
        for <devicetree@vger.kernel.org>; Sat, 27 Sep 2025 06:59:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758981564; x=1759586364; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AJ2zurBZlXyqU6xN/6EaGXAHpVHgluSazTPc6JBBq6Y=;
        b=nH10xkyc9cde1tERg2coU9NQpiXEEfU2/xui9bdVZYz8Vr/B1PDFeYxMwkO52MJRPj
         9blcA1NKKi6o0CaAWsP0DJKelAGW/4osgS5A5kKXVKGRIF9fvHziQ8Fck9cSGr90Njda
         lCT3Qsq3/Is9L5Q2jsGEHb8koSU2akPc5xiwTjhMpUEadqxcG6l9w7Ia5iF9lFcKQMte
         hd8B1xQLTgOFpYDqv4iS/bpgN0srNSvca0XkIvc632WrXrszQysFWS8Dgp7v4sc+GPxx
         CiWVtOP3zzqsCSWLg4eskp46DRmgW3w8OsRHRJzHml8XUNrOEurmnPdKEdvBeBnAXk4q
         g+kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758981564; x=1759586364;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AJ2zurBZlXyqU6xN/6EaGXAHpVHgluSazTPc6JBBq6Y=;
        b=n6JonBi1BUnM90OaqVbfKIGsGTCZJMuxEyvqbk1t2QPowYauqTjYHMCRvYHprRfecc
         uC+ikI+bcEGpvHJLtCoGf98X5PwD/mp1fEVEY8ByVYfzTZGWB0dEIPuPXZfI+vUm/ajZ
         RSuv8xnnwSZXtBKY4wAJmYQZZidSrKLcQZZd95pnBJL2r7kVeRPRNB/Djb00uSq69efO
         MxiiZ/EWvu/KoB5bX1ewQqzj8lvx8tS6RxQjiOm9X1THCOF+A2BrFnw4FKfrvQ58tcmU
         7Fp2yubxnfgOgBChIPAU7GTHdVFxIUNAwWKB7dAPqR87n/kJ7EAczDh+W8YwPbJ+ATR2
         0Png==
X-Forwarded-Encrypted: i=1; AJvYcCXf/q57RbzGG1nZyGmlml+EmJqVg660gHn3JHIeNQr23rSOT8Xanl7ABHNqxGwIKJPNhroOT8A8lIsj@vger.kernel.org
X-Gm-Message-State: AOJu0YwGwilnIkJeW0K1ecFwULye8gA32v5aMOKP++On9c7MhhHDDrIS
	H0Ysiht4E59jJNRdX2uyX985tWQZ+t3n6+GkLVM933SALvR0a5w0Pfc1
X-Gm-Gg: ASbGncupMzNNHA8mWX/XUXps+IddG1gFCWieAhx28kKAaHfmh62bT9IzMI2bH3+8aQt
	FiOWOAixhX29PXirk4QyUHzpuN0n6oI9y2w4PVxXC3Ei0dd/PlIuB3NyqA5FQhinBXrj9l8rym0
	C0rpg8+DX82a+rAaPNIvdPUHzxE3obMRIsWZpccMVw10IwH9FEVskqUfGRNUM1c17aAkOfQBoKB
	Ik8MVWDJAhQ/OhNgAnXo/jivf/r8lQAn8iHAc4B+wxHStpBqGCEp35dcxnFzPD/HetF5yDlLfuy
	whWx2uCYBBaAk/ALY/o4WbUjUFqikBKdsUmka46h/yFkpjNaiJtgiT7G50jTFeIWiB4N1JLiely
	E4N/ZSIdWSnT0dPR7DCnY1TyO
X-Google-Smtp-Source: AGHT+IEf78Oq9CDF3Gdqzh+zztJ/1K0sMtW4DnsPMDn/dIyyhBV9SYuiQfoD+F6FHky70q2kK7m2SA==
X-Received: by 2002:a17:903:2f8c:b0:27e:c27f:b834 with SMTP id d9443c01a7336-27ed4a6dc52mr119233195ad.56.1758981564487;
        Sat, 27 Sep 2025 06:59:24 -0700 (PDT)
Received: from gmail.com ([2a09:bac5:1f0b:281e::3ff:4e])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed66cf181sm82444095ad.28.2025.09.27.06.59.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Sep 2025 06:59:24 -0700 (PDT)
From: Qingfang Deng <dqfext@gmail.com>
To: Junhui Liu <junhui.liu@pigmoral.tech>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Samuel Holland <samuel.holland@sifive.com>,
	Anup Patel <anup@brainfault.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Palmer Dabbelt <palmer@sifive.com>,
	Conor Dooley <conor@kernel.org>,
	linux-riscv@lists.infradead.org,
	linux-serial@vger.kernel.org
Subject: Re: [PATCH v2 04/11] dt-bindings: timer: Add Anlogic DR1V90 CLINT
Date: Sat, 27 Sep 2025 21:59:12 +0800
Message-Id: <20250927135912.3327-1-dqfext@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250922-dr1v90-basic-dt-v2-4-64d28500cb37@pigmoral.tech>
References: <20250922-dr1v90-basic-dt-v2-0-64d28500cb37@pigmoral.tech> <20250922-dr1v90-basic-dt-v2-4-64d28500cb37@pigmoral.tech>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi, Junhui,
On Mon, 22 Sep 2025 20:46:34 +0800, Junhui Liu <junhui.liu@pigmoral.tech> wrote:
> --- a/Documentation/devicetree/bindings/timer/sifive,clint.yaml
> +++ b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
> @@ -29,6 +29,7 @@ properties:
>      oneOf:
>        - items:
>            - enum:
> +              - anlogic,dr1v90-clint    # Anlogic DR1V90

UX900 uses the ACLINT with SSWI. Please use the new ACLINT binding.

Link: https://www.nucleisys.com/upload/files/doc/Nuclei_RISC-V_ISA_Spec.pdf

>                - canaan,k210-clint       # Canaan Kendryte K210
>                - eswin,eic7700-clint     # ESWIN EIC7700
>                - sifive,fu540-c000-clint # SiFive FU540
> 
> -- 
> 2.51.0

Regards,
Qingfang

