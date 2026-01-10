Return-Path: <devicetree+bounces-253447-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 57197D0CF7F
	for <lists+devicetree@lfdr.de>; Sat, 10 Jan 2026 06:19:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E919E300E4EE
	for <lists+devicetree@lfdr.de>; Sat, 10 Jan 2026 05:19:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1101F335BDB;
	Sat, 10 Jan 2026 05:19:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="PrXyHaQe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBAAF30E0F6
	for <devicetree@vger.kernel.org>; Sat, 10 Jan 2026 05:19:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768022381; cv=none; b=Ryy3Biy+jAVJcQtmdHUF0bt2tzO95p3QagTaJrSFvfFUR+Cjl7ykASRV7BhAVfPU4q9cFJ70IWSXG/CzbbIfu1UpWx3YuwH0TK2EmVeOq1lLcqn0Nk3nBRq6iryz89mnwLTvo1WMdmEG9DUK+nIWkYcEyygjAaEcIKwHPncPHhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768022381; c=relaxed/simple;
	bh=JVOErVuwqnxyZxfJUVNdtb8rdirOsuMdezkExIjs9So=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Y1r2M/RT7Qn8wdv1v9uFua/2c+1CtH3lWGJHehjCjJ13KbMpGWdbFyk0iCv+XAZX6K13NlJsKdKbh3iBwAZ3d+bo97wNqqcY18ywiy7D26sEUmmNrFN74zpS1eNd5HJSea4yogrEPJQAhCnOSBgO1Th/myYpiKWjf/JrBpZH7ns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=PrXyHaQe; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-2a3e89aa5d0so36278175ad.1
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 21:19:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1768022379; x=1768627179; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RB1julTcwsVwIqkOMTaY5tjMY89z5qQTP6TBk69d44k=;
        b=PrXyHaQeklbsQbOASvzodA9u832c02wbk/sjzyOcHgeAPVOwtepkDYoUQIznK0+q8U
         CAoLenqybDzRhSOTHnDtBP90uvbQCRYrEDhb6CF/Vqr0JP3fFwb0j2Djz8vn+klH9bwy
         qoZVjusOEY8ffu/jrSEKDHHaXnnkx7nG6Tu0ER6XTH3IWiYb8+NrpcJqUzxnr2DpES14
         k2cZj6e0JcV1TmrvsHmIrUYp2ioDCtMQbHW47gfJT10iFHmlLZ3PNEKKIvRSgond+Fs1
         9MDdVdQY6gF9x2Q9Dumcwpxm6hmTXMh6LenVanXkEFDV2VKWSd4jG/JrnZIsA1lgmWvx
         BPlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768022379; x=1768627179;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=RB1julTcwsVwIqkOMTaY5tjMY89z5qQTP6TBk69d44k=;
        b=IR9guF4F8cBca44arvPB7QB+UVbpm9RVxY91GWzzz6/AmfWC6glMNUaRT5Xj0Ke5gV
         eZXta3wQDinH1J/98KRa492EI4mZI3chqa/hzoqkCxG4dd37DaLHgFdpyPrx5Sjb+5pB
         aneekK14OU2E2SmtHS7T9Hb9QKsS71pwANa3p9uBfdwDVr+UiA/7edDhcAjoLZcSNko2
         A8gkv6IoIJtWbObLnTZdn9MGIT6t6b7uwq2dCAE45v5WvLt+qNAp9rOQcXTuMNKnSg42
         S1TovlOKc27U1rZ06rPMbqz1Z1G9yUmmD8sKmybUuIHwVHBKKUKJhR+BLWEvMdl7U2us
         pMzA==
X-Forwarded-Encrypted: i=1; AJvYcCUbz3fuWVtaInN6kuoS1M4fEskZgVVjoN2MftEjd/g2XMgFXNkajHpX3/kNUPiahlQ6E0463n7PDliF@vger.kernel.org
X-Gm-Message-State: AOJu0YyxJebJU5vN+nJR/7HthSa2YyejJR83ZY602vxHn+I/k/JMoNAf
	qS8ZHlQUmeAtvX76MNzPMlLUvbtHZKbJflnCIZP+2s23huOEnzMPW8jRGdpSfjqffvs=
X-Gm-Gg: AY/fxX7Rt9e8VE4WLfjXj/3iythm7Ed3cVTD1hZ17bJ/iT8eeeOgkb+fPSKx9JMElDh
	YMI5T+X3pO8YbZd/3VJ2g/xOrX0VFvaCoUhHRMhxoLxap+ITir9mWQvp0OwfNGvkHGeFxXfQTPb
	ZBfeiITgt9Ve8CAU2/ksbs2Kwpie1uf4jW+0WA+Z1+v6a1h04umcTsPXVm+0Bp4jEokdslUUoyO
	rPBJ8wWobJd6tOUeBhkQxjor8lHLgroANp9pCvWUppZC+wgF6tyhQsZ8HuEgu7EyPgNc6YsOfRQ
	cDpjUan4a/SXnmnETVHLM14YlnDpHeRflFKOQUggxQ/cRx9jzfn50lsDzBWDZ6gYa1IVISvbI83
	EYH3eckZR1yscNtJjwTgGiNdUopgPmmypXAd3wLRFybY7lVlnNOJ7yXQZ45xfHZf45o0u196Tu2
	KlzY2g/thi6D5o+S2e64QH/7OHSzrBy/yMNitvdLIBwsZtKQamsmSqDA==
X-Google-Smtp-Source: AGHT+IEbLN+ufDRbhXFu7As22NIuOsgWDNIIPN8ZaXZZdRrHya+Ppa2gw7UP6RqhkdSdQ7NFe5NtJg==
X-Received: by 2002:a17:903:1a6b:b0:2a0:a484:6b87 with SMTP id d9443c01a7336-2a3ee49c6dbmr128077985ad.47.1768022378403;
        Fri, 09 Jan 2026 21:19:38 -0800 (PST)
Received: from [127.0.1.1] ([45.8.220.108])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cc88cdsm118208265ad.73.2026.01.09.21.19.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 21:19:38 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Date: Sat, 10 Jan 2026 13:18:16 +0800
Subject: [PATCH v4 04/11] dt-bindings: interrupt-controller: add SpacemiT
 K3 IMSIC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260110-k3-basic-dt-v4-4-d492f3a30ffa@riscstar.com>
References: <20260110-k3-basic-dt-v4-0-d492f3a30ffa@riscstar.com>
In-Reply-To: <20260110-k3-basic-dt-v4-0-d492f3a30ffa@riscstar.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>, Yixun Lan <dlan@gentoo.org>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Thomas Gleixner <tglx@linutronix.de>, 
 Samuel Holland <samuel.holland@sifive.com>, 
 Anup Patel <anup@brainfault.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Jiri Slaby <jirislaby@kernel.org>, Lubomir Rintel <lkundrak@v3.sk>, 
 Yangyu Chen <cyy@cyyself.name>
Cc: Paul Walmsley <paul.walmsley@sifive.com>, 
 Conor Dooley <conor@kernel.org>, Heinrich Schuchardt <xypron.glpk@gmx.de>, 
 Kevin Meng Zhang <zhangmeng.kevin@linux.spacemit.com>, 
 Anup Patel <anup@brainfault.org>, Andrew Jones <ajones@ventanamicro.com>, 
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 linux-kernel@vger.kernel.org, spacemit@lists.linux.dev, 
 linux-serial@vger.kernel.org, Guodong Xu <guodong@riscstar.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3

Add compatible string for SpacemiT K3 IMSIC.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
v4: No change.
v3: Add Acked-by from Krzysztof.
v2: Fix the order to keep things alphabetically.
---
 Documentation/devicetree/bindings/interrupt-controller/riscv,imsics.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/riscv,imsics.yaml b/Documentation/devicetree/bindings/interrupt-controller/riscv,imsics.yaml
index c23b5c09fdb9..feec122bddde 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/riscv,imsics.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/riscv,imsics.yaml
@@ -48,6 +48,7 @@ properties:
     items:
       - enum:
           - qemu,imsics
+          - spacemit,k3-imsics
       - const: riscv,imsics
 
   reg:

-- 
2.43.0


