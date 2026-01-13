Return-Path: <devicetree+bounces-254306-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5784BD1714E
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 08:48:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1E32E304C935
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 07:46:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BEAB30F946;
	Tue, 13 Jan 2026 07:46:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="ebz1+qmJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com [209.85.214.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AC102E091B
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 07:46:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768290381; cv=none; b=UHCmX0QTCxetrE18HpzcvgwVaIeGb/C5fyVWdLO8Agx7FlbXz+hF9/6ybPNLg6/0yRD1N+DG4D29gnxezx482h5CXpZMNJraSmJT0/eNPYoRROtTJPZGk+GwkfObTtT085Ue2ipV3xV9yOXDSEV6tijgjlQILfL15XzPfCuoyS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768290381; c=relaxed/simple;
	bh=wimpNbGQyk9u8e5Qt5gFXUuJ3GuTlbtVqW9EiDOWvHc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kpDhDxGhOh1CSKax5kenLLURZ/uAFXKgtI9uPoZdkZTz3aVxHX7pHP/E5lTAwvslwn/Q47JPnprzABSoyd3vMkVk64Hr+rZUOQH2wGPCpF3wuY5OA0C4o8Z5BwaIOYya/l196cG6waPZpdZXK/pvKl0UMnf+hk+pLh7F/BNlC2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=ebz1+qmJ; arc=none smtp.client-ip=209.85.214.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pl1-f194.google.com with SMTP id d9443c01a7336-2a0a33d0585so45300805ad.1
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 23:46:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1768290379; x=1768895179; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fNeknCfa8wEEbV/WEcBxY/dqGiWsyOavd00Bwdi/7Iw=;
        b=ebz1+qmJJBIvCQAtnIlFOIxoNHUyOJzcoH4X14plXxR3AkR5toR5faYVU6vUH8auKM
         X6/531TOugtU+n7zGJYLCHkBPpVydFwoOwwlioC8GW4nATMwIIzPaHTjf9Cka38Rwk3o
         5O96mWCn1BE0EDXSXIJc3bw0ab5tie9R9GgtvkjPxcakf2p5poglYDtrhRHUpm2THgEU
         +UPPBSByCAvtUQv6yFpNqWZfkbXyI9aeOEXrgji8U4YU/6ZnYBV3krGHJ53RVJMvhMNT
         9iyWSAhwgkaPh/SXWsbzWIefF6SOz9erqlAb0UthK8SH20UR9y6VzR7imByPhZANAB/d
         QkUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768290379; x=1768895179;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fNeknCfa8wEEbV/WEcBxY/dqGiWsyOavd00Bwdi/7Iw=;
        b=wEiUEieuiNmIxCXnLNIy8iOBN4ZLTc8JvRos/nH7tPFAbw4Ns7Sy2RudQr+oexMp4W
         5T323dyWOOGJpeVVlbWBU4R+17HF4wgaF4hCWZqG724INxpCgo1HRYgodldh3EFAW5lI
         Pa90vBJkYzzzupqbm8wjYsHftXbhi9XWWHYEMWhvhP7ajClpnE0bwhWuXGQ2UCpJrdrD
         eQLTolxAE0LDbYITqrJP7SytpKyymPyf4NFxrd+OuoOquvthJk/lW/HadXaJF/82fC3+
         zSH42tsNwZSZ3UzITH+/ApkxKntdK+oL5soqQE2ZhevbGtoHjneRn8qmVnYHmwANQDnt
         ytNQ==
X-Forwarded-Encrypted: i=1; AJvYcCXwmfiU3dFMKm1xsBsrCK0o9fEZ5rlW8R+z14cVRUyXpNU0V2IDMFNdydYsbo4URC3OzNWm5xECGVTb@vger.kernel.org
X-Gm-Message-State: AOJu0YwsNVqrtgLDdcbAwDH7xage9kqNorOBeZ/M9nwH9v1QN+kVSbgz
	PLte8y4RUuP0QQfj8zPCdOMitDN3NzDQFEfgfyENi3upLsDqCES4wJ6V4ZJevJuZZ90=
X-Gm-Gg: AY/fxX5TNgEFGVzJOH+JlLeUu5sGhn0Cb3xHm/4Z6VdUjA1897DvPcrbZYKBZAwaK/t
	0aipAiDrxZvI3J8VkEYtTPjulFQ7BC0mAFwzN0HYnASd7YGmS9PyZIfLNSYyu7FRd5MPNF16AKa
	TheNG5HqFUogPs/JSahQpLAnYxtvDd83Ut9LYCH4u0xPWB9EqX/h+OgXYMx3OK9+mAU8yEvAkkS
	DPH1QGD1rSSg5D4iTd7+CoJoHEqQ+S20D3ZEaL/E6r0MmDTtOx+v3AmWyfKQBqmOEUdk3PAkvW0
	EysSkwBPpZ0QZWiSeuo0GSWCrxba6UGfnOqN1zD9YEEfnTbnynd9BStBh0biM6RAscdGtQg9Lek
	c+isumuYlkewuCYMiTPnqWxQ+QPkZtpilKLiIrXSlPsnvdhkK027grj47jYRJWaTxHldppIaEm3
	TvgZh139uWz/9LSvO9wf4bW5DsLnNJhnl9614IlSroyMc65MWy082OdPkl1oPUj1bw
X-Google-Smtp-Source: AGHT+IGrssuTQycrsW+2hCknhmQdMnpg0esEoKPvLFi/81f/ttHiYeTe2gILmVWkDFy41Vy2Qxe06w==
X-Received: by 2002:a17:902:f547:b0:295:8a21:155a with SMTP id d9443c01a7336-2a3ee48ff6cmr185468915ad.35.1768290378939;
        Mon, 12 Jan 2026 23:46:18 -0800 (PST)
Received: from [127.0.1.1] ([45.8.220.151])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cd4bd8sm190956165ad.102.2026.01.12.23.46.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 23:46:18 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Date: Tue, 13 Jan 2026 15:45:53 +0800
Subject: [PATCH 1/2] Documentation: riscv: uabi: Clarify ISA spec version
 for canonical order
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260113-adding-b-dtsi-v1-1-22d6e55d19df@riscstar.com>
References: <20260113-adding-b-dtsi-v1-0-22d6e55d19df@riscstar.com>
In-Reply-To: <20260113-adding-b-dtsi-v1-0-22d6e55d19df@riscstar.com>
To: Jonathan Corbet <corbet@lwn.net>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>, Conor Dooley <conor.dooley@microchip.com>, 
 Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Chen Wang <unicorn_wang@outlook.com>, Inochi Amaoto <inochiama@gmail.com>, 
 Yixun Lan <dlan@gentoo.org>
Cc: Palmer Dabbelt <palmer@rivosinc.com>, 
 Junhui Liu <junhui.liu@pigmoral.tech>, linux-doc@vger.kernel.org, 
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, sophgo@lists.linux.dev, 
 spacemit@lists.linux.dev, Guodong Xu <guodong@riscstar.com>
X-Mailer: b4 0.14.2

Specify that chapter 27 refers to version 20191213 of the RISC-V ISA
Unprivileged Architecture. The chapter numbering differs across
specification versions - for example, in version 20250508, the ISA
Extension Naming Conventions is chapter 36, not chapter 27.

Historical versions of the RISC-V specification can be found via Link [1].

Link: https://riscv.org/specifications/ratified/ [1]
Fixes: f07b2b3f9d47 ("Documentation: riscv: add a section about ISA string ordering in /proc/cpuinfo")
Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
 Documentation/arch/riscv/uabi.rst | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/arch/riscv/uabi.rst b/Documentation/arch/riscv/uabi.rst
index 243e40062e34ed5057e3e79ad61311f94b7dd404..0c5299e007622a123d64cfd36ac1491b22d4255b 100644
--- a/Documentation/arch/riscv/uabi.rst
+++ b/Documentation/arch/riscv/uabi.rst
@@ -7,7 +7,9 @@ ISA string ordering in /proc/cpuinfo
 ------------------------------------
 
 The canonical order of ISA extension names in the ISA string is defined in
-chapter 27 of the unprivileged specification.
+Chapter 27 of the RISC-V Instruction Set Manual Volume I Unprivileged ISA
+(Document Version 20191213).
+
 The specification uses vague wording, such as should, when it comes to ordering,
 so for our purposes the following rules apply:
 

-- 
2.43.0


