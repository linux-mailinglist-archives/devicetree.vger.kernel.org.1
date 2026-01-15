Return-Path: <devicetree+bounces-255394-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 169D1D22A87
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 07:52:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id BE5F83018C93
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 06:52:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D936D30C37E;
	Thu, 15 Jan 2026 06:52:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="RNZkb49g"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com [209.85.214.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B500930BF72
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 06:52:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768459941; cv=none; b=TNDfnios8dpGx8L5kOhh5QbdAuPlJOsrrt4WN0sgpozjWqEYeRoNiCBa7pdzM0w8/u5TBERp7op8L74KptsLPscuD6SAdqV9q82jEhL6pQaZyAlPyAmQeZ9yP8TrUtVd/FYsXNwXqmbj+izR0RE31aqOhTwQJtUQ+2vfetU0Bkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768459941; c=relaxed/simple;
	bh=ndCk7OisaRpWQIEmEK6Y89WQLECntbmXGUxlUurEFAw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hqA9jBK2DwOk5ILdhMLp+zF7RDBCTDhryROrgEMehiRSDcK9BS2g7+HoVhLPA+vZb4PFLxp7Pg1ZIdReOaJW9SQh/Iy0jPQ2unZOrzxF4PEYDOZ9ezyh24xULCUBIp51PhBNMcEqO9Hy3zkQpPLFtKFMrHJlQ/OwvC5UT1aGek4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=RNZkb49g; arc=none smtp.client-ip=209.85.214.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pl1-f193.google.com with SMTP id d9443c01a7336-2a3e89aa5d0so4947535ad.1
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 22:52:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1768459933; x=1769064733; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yBZ/ScCVDVjRB+myzZeML8bLD+7O2F+m5AwnN8MdY5M=;
        b=RNZkb49gVEqYSVE1PjPeiEET4uWZ0zNPbHDh2xpcu4FbMAqzjghhdG6gUs/sl1TegS
         9hPNXkdwD+xNiz2aHmJn7EUwJtqgX/SpgOOZmVya8F9CGIM0cFnVbyVI6N8GSAs03/8A
         lvjMAicOqUmJHZSc/RgMIJN+aYmt6I5UQ4ox6sFlRGi9f/3hdfkZ/WXkPE8EwOk8JEiP
         RZzBSZcbcfv+3SPRfLIeUWrx8yKv0+xeFHRka6f+6JhPHl/1blmY29SYXG/GTq9iBEw6
         uC0pksC8e913/CvZMuNR8nIfb4CY3RhcPN3K1yJBQIlZzVdwg/OjzLQsGe1VyPAJXX2z
         awOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768459933; x=1769064733;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yBZ/ScCVDVjRB+myzZeML8bLD+7O2F+m5AwnN8MdY5M=;
        b=RBt5GrbORjgOMErr36fVR2Vpb1Nr3JgNDKMlvGAm+BXUhcyLgbduVgn/crA1tWU4ea
         9jtgI5IIQIjXf2VT6szrRlzrrwtsgTOuxZpI6X0rfFEcXHTuonRn3EtXftEodjgakXky
         LxgA8SMOq7XGjiffxZeVmvt0WHtN/Knvg43Rcf+Op7PUKFt4eu/Y3hd5Noa9D9V0lvO6
         apQmvpy0XAOh/A8wtDaFtIoWfyGzX9fwNpBSwH5o63fwmENSvPh9slvj11S44Z9LZkc+
         W89GRgfDUI/Xnvd/ZlKuAhLLU2Sqb4pxbsUBVQRmfdC+T6ciA3TtuPJc2S3Op33DqLAk
         JNiQ==
X-Forwarded-Encrypted: i=1; AJvYcCWLVX1vTPxZPlX3DeJdMi1sQAQHuALx9hrQi36OysbafilAR3nn1vsBtRshjgK7ReXExiO1oXCi9oWp@vger.kernel.org
X-Gm-Message-State: AOJu0YxR3pBMDH1/AgOxMKlAwZTZeThqEkoeW72s9K07DFvvqBjSyADK
	Vx1t758hYrAjFtBZhobtr2Q/zJhO7IfG/3qmIyMwZjP+OrsWdcbMWgenuUSfhOleUm4=
X-Gm-Gg: AY/fxX6GcXHV2epIdCKbX6JWMIDI7UkRVIgcg14H5bAOLVBVLle2Ant699SvH+SD08M
	N5IHkmq/x8f+LDkhAAJRioXdOrrj/qcRaHfVsXw1cYBt+YZsApsGvzXkbzY2y8GNIY9WNmlvgOo
	SRZq4/pnYjwThRYNxYuEfMmWiVkggFvrbLeqXgCFh+DtsucX3V9MpCRKqDlNRPUM/11XjQOhKrt
	OjpWjOG1dVkglp676vTZ2GKaO9MxSFYy4GYzPowcPL67YqPDdDy7mxIUImQVOtzKe9nK61p+gFB
	xTfXhDYm6WqKgT23wge4jrfCvcJBqEJSFJT/f+8CDk/+vxXT6fIqt3Cl3ks7nzqZuocp/j0430A
	UQ6RHtN4rLSB2aJ+cO7erj6xWNCsnVWgTd2eBE78QwIzwZoeutol1jOYRlYfTWvXr4OM3WykhIH
	QgPhcBNIVUTH2ZHKNoQcjM71w29Cq3VZv/k9H4alsoa9/rGDhlWRcPUw==
X-Received: by 2002:a17:902:f683:b0:2a1:3ade:c351 with SMTP id d9443c01a7336-2a59bb1748emr52234975ad.2.1768459932812;
        Wed, 14 Jan 2026 22:52:12 -0800 (PST)
Received: from [127.0.1.1] ([45.8.220.151])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e7a3c6fdsm235081015ad.15.2026.01.14.22.52.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 22:52:12 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Date: Thu, 15 Jan 2026 14:51:40 +0800
Subject: [PATCH v5 1/7] dt-bindings: riscv: add SpacemiT X100 CPU
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260115-k3-basic-dt-v5-1-6990ac9f4308@riscstar.com>
References: <20260115-k3-basic-dt-v5-0-6990ac9f4308@riscstar.com>
In-Reply-To: <20260115-k3-basic-dt-v5-0-6990ac9f4308@riscstar.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>, Yixun Lan <dlan@gentoo.org>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Samuel Holland <samuel.holland@sifive.com>, 
 Anup Patel <anup@brainfault.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Jiri Slaby <jirislaby@kernel.org>, Lubomir Rintel <lkundrak@v3.sk>, 
 Yangyu Chen <cyy@cyyself.name>, Thomas Gleixner <tglx@kernel.org>, 
 Thomas Gleixner <tglx@kernel.org>
Cc: Paul Walmsley <paul.walmsley@sifive.com>, 
 Conor Dooley <conor@kernel.org>, Heinrich Schuchardt <xypron.glpk@gmx.de>, 
 Kevin Meng Zhang <zhangmeng.kevin@linux.spacemit.com>, 
 Anup Patel <anup@brainfault.org>, Andrew Jones <ajones@ventanamicro.com>, 
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 linux-kernel@vger.kernel.org, spacemit@lists.linux.dev, 
 linux-serial@vger.kernel.org, Guodong Xu <guodong@riscstar.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Heinrich Schuchardt <heinrich.schuchardt@canonical.com>
X-Mailer: b4 0.14.3

Add compatible string for the SpacemiT X100 core. [1]

The X100 is a 64-bit RVA23-compliant RISC-V core from SpacemiT. X100
supports the RISC-V vector and hypervisor extensions and all mandatory
extersions as required by the RVA23U64 and RVA23S64 profiles, per the
definition in 'RVA23 Profile, Version 1.0'. [2]

From a microarchieture viewpoint, the X100 features a 4-issue
out-of-order pipeline.

X100 is used in SpacemiT K3 SoC.

Acked-by: Paul Walmsley <pjw@kernel.org>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Link: https://www.spacemit.com/en/spacemit-x100-core/ [1]
Link: https://docs.riscv.org/reference/profiles/rva23/_attachments/rva23-profile.pdf [2]
Reviewed-by: Yixun Lan <dlan@gentoo.org>
Reviewed-by: Heinrich Schuchardt <heinrich.schuchardt@canonical.com>
Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
v5: Added Acked-by from Paul.
v4: No change.
v3: Added Acked-by from Krzysztof.
v2: Fixed alphanumeric sorting of compatible strings, put x100 before x60,
     as per Krzysztof's feedback.
    Added reviewed-by from Yixun and Heinrich.
    Updated the commit message to provide more information about X100.
---
 Documentation/devicetree/bindings/riscv/cpus.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
index d733c0bd534f..5feeb2203050 100644
--- a/Documentation/devicetree/bindings/riscv/cpus.yaml
+++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
@@ -61,6 +61,7 @@ properties:
               - sifive,u7
               - sifive,u74
               - sifive,u74-mc
+              - spacemit,x100
               - spacemit,x60
               - thead,c906
               - thead,c908

-- 
2.43.0


