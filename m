Return-Path: <devicetree+bounces-255395-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E37AAD22AAE
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 07:54:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8E764308DEA5
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 06:52:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E67C2F5A2D;
	Thu, 15 Jan 2026 06:52:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="Nh5J7tYJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C32930BB9B
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 06:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768459948; cv=none; b=EmK57ZwFZ35pAmwMwYw//86VL7WqSJ2hLHpGGPxCB+Wx0eUEPnJkPt938X4bmwWyK7pgIP7wXXmQPmsyorpVikyafPuFjocQnydoNNmMke9Ck7mlD2xNHUePheJFGlXksbbOgTafKI4l+27Y5BxK8eYATzggNm/ZBbSc1sjSrug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768459948; c=relaxed/simple;
	bh=PbW1Vj0QGf/yy5Fg9JXBDXLV0q15HSZaWzIB4j92DR0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=V6qdofYnarrAs10j5j2lIFGXO/72R/urlpj55OiYXfMzaFD7lkSR38TDRU9tbePokIeN0uQNZFJeh8sYr8+/0a+20/vgNaWh+MXjfBsPnHs/sj2ggk/khhtpvNiHQW37CwjSnO39czt7AUAmkLNw4hOgSSavPMmyOkgBVIhKUOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=Nh5J7tYJ; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-2a1388cdac3so3597625ad.0
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 22:52:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1768459941; x=1769064741; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xYYXZRYIOku7Vb4B3mqsPICr98BDRNcpwBcyivdVSks=;
        b=Nh5J7tYJuaO4DpnZG+YULAx87/d4247jIY5QKiIAt+mlxd31jZ5w0TrcbSqSDbviRx
         dE506z6R45B07KeAaEBYcHc/3xn/ljXtZJVpWoSOE6v2t/nya2680LLkMnB20VGgBeMS
         biz6dQSZzbqFVQ3HqjrUzSoDnNE3o91zf5WeZtNkFigt2LbpM1XLVgZvtb6RioOvyhAL
         YkJS1sPE22BP8Zdy52q5GOE4UJJw5pUmj2Ka3T7GFUD2K2osL9Yq3lOakJpA7/Eb7m7W
         eCYZFo//wIO7aoWRAyERhkzBIuEaLrAEIaiM1+zlhwmtNA5VnWVoFCty9camQSZFvt3V
         3PRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768459941; x=1769064741;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=xYYXZRYIOku7Vb4B3mqsPICr98BDRNcpwBcyivdVSks=;
        b=d5fR8aTuOsjcVyYtArUm+8VIg+cQJJeSZR+bxQr5LWTU2aTSVgq51LAHLnNMBD/oGH
         wDyesrpXQkDT+OzN6r+BVkeJj2ZwKxGMyFjz2UYF66b11Lpni9it8LDAEcY2LkJMmdKn
         69pT26s1FLkkJn3SjIEJFrSFHjBT6uR4bkvaneHyGaSLUSoXoRA8V7pqvsXtkKxgv9Ny
         d0IPCDI0e7qew68BgPdP3NcSefQ+S7AeTTIf1kKZ34djolhtlYLBRfAFCKUlL4coid5C
         cF4bzNf7YwKquWVkbcawRn6lKrGLeubJj7EH0k4qa4WwAILG/bvIKQVURZPEd3iaXUQx
         fzFg==
X-Forwarded-Encrypted: i=1; AJvYcCUaMAmmZT7rHeK/2NaRpG/mS5bGctddIvLE+cvv2mywm7dxkAPpKR8KyOfkACTesWRq8db6kKAsaVuF@vger.kernel.org
X-Gm-Message-State: AOJu0YzOMZQeTAtJMUFsN3LMui4c75iz7qlBj4osDvuY47HNWOJgXnyZ
	YJndPAzq4n8gPQytzUiCr0LMy9cEMx35oHX8SB7nqhenJuoU31ighucHPWsF04kIDeg=
X-Gm-Gg: AY/fxX4/oDRXAb5ZvahJWU1sMyj/2hMNmnqASMRfWac6oIHxfsW4g76KAv6LwoDYVkB
	Ge7iLQH37zgBq5ja8Jx2WKEnAg/MI+8fC3czCPvRDeXTREB8I50m4aAzM0kjC6XB7K7Z0CxOhN/
	0QkF7XKyQiLE2AwFtSq89Jv4nlpvRHA1imAuVp/eXlBb8lIyeOu5zvt2o+22PyMk32S+rAvMtK8
	XXqquwKUbnZn6e/zdcBhOVknPPf11KZhqBMZBVoy9cX6Nw3H8BXmz68ROnbmPjNODV7tNHKo98A
	MtlvlkxgpZZyNBX9SpycZw/IeNRaiRBljsdWXJdB17TAjvXmhLLDDX5zDjb9nIjMF2dNdrdncRN
	i2YSGPZIhB+dicsPn2qT8Zs/xHo7j+vFZQvhVYpa+JiXZyXgGIrVthW459YO9D6xCNUxWiVrX+/
	IwhijpoH3KRAHsYVmKR0zUGTHhoZr7f/PJDGRMsA5MsyYOWPWOQTfyVw==
X-Received: by 2002:a17:902:e551:b0:29f:29ae:8733 with SMTP id d9443c01a7336-2a59bc6819fmr46124625ad.53.1768459941521;
        Wed, 14 Jan 2026 22:52:21 -0800 (PST)
Received: from [127.0.1.1] ([45.8.220.151])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e7a3c6fdsm235081015ad.15.2026.01.14.22.52.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 22:52:21 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Date: Thu, 15 Jan 2026 14:51:41 +0800
Subject: [PATCH v5 2/7] dt-bindings: timer: add SpacemiT K3 CLINT
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260115-k3-basic-dt-v5-2-6990ac9f4308@riscstar.com>
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
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.14.3

Add compatible string for SpacemiT K3 CLINT.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
v5: No change.
v4: No change.
v3: No change.
v2: Add Conor's Acked-by.
---
 Documentation/devicetree/bindings/timer/sifive,clint.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/timer/sifive,clint.yaml b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
index 0d3b8dc362ba..3bab40500df9 100644
--- a/Documentation/devicetree/bindings/timer/sifive,clint.yaml
+++ b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
@@ -33,6 +33,7 @@ properties:
               - eswin,eic7700-clint     # ESWIN EIC7700
               - sifive,fu540-c000-clint # SiFive FU540
               - spacemit,k1-clint       # SpacemiT K1
+              - spacemit,k3-clint       # SpacemiT K3
               - starfive,jh7100-clint   # StarFive JH7100
               - starfive,jh7110-clint   # StarFive JH7110
               - starfive,jh8100-clint   # StarFive JH8100

-- 
2.43.0


