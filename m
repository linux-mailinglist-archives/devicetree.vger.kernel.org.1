Return-Path: <devicetree+bounces-141842-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B8D9A22CBA
	for <lists+devicetree@lfdr.de>; Thu, 30 Jan 2025 12:53:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7E4FA1887484
	for <lists+devicetree@lfdr.de>; Thu, 30 Jan 2025 11:53:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21FC41E0DDC;
	Thu, 30 Jan 2025 11:53:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=patrick-wildt-de.20230601.gappssmtp.com header.i=@patrick-wildt-de.20230601.gappssmtp.com header.b="xvCJmuGe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f100.google.com (mail-wr1-f100.google.com [209.85.221.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5976A194C86
	for <devicetree@vger.kernel.org>; Thu, 30 Jan 2025 11:53:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.100
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738238016; cv=none; b=JPYEpqMWcAiLyRqb2o31RG5odIXHcE5zo2kHzegkcU7p3Ew+k1NUOAi1cDIAAotBziRK2wY0LXDmrwm1hXBJkiTqU9/8AWdU4MIJDt4tSN8KhjZdDosUAlCSQUHMPIkBv4ei5rP/SLBIeZppDewSp7iIk84fvkcrI/AC93oA8jM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738238016; c=relaxed/simple;
	bh=UnNRPy5TCFRYdUcRSrlfO/PR7mrCQCxVQjKppDvuQik=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=Yds6L4bjw31BNk7d+UTOU9mSU6QC4L/JKEymOLNO3QqE2TYl7JixnLfudsxTxQ3H25T2hfL8lhj7FduCcv628hy3fzhb/XfymCgoWGMsmU+TtQvpERpwIQ+i2cjP/UZZwhB+3ZnoF38jF/ZdyMEVODuseRDkFLrBDkdDpo/2hSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=blueri.se; spf=pass smtp.mailfrom=blueri.se; dkim=pass (2048-bit key) header.d=patrick-wildt-de.20230601.gappssmtp.com header.i=@patrick-wildt-de.20230601.gappssmtp.com header.b=xvCJmuGe; arc=none smtp.client-ip=209.85.221.100
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=blueri.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=blueri.se
Received: by mail-wr1-f100.google.com with SMTP id ffacd0b85a97d-3862a921123so533992f8f.3
        for <devicetree@vger.kernel.org>; Thu, 30 Jan 2025 03:53:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=patrick-wildt-de.20230601.gappssmtp.com; s=20230601; t=1738238012; x=1738842812; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CuBCputXLU2pypUU/cEHWnT9TxtQ+bGj8yBwSpNY/DY=;
        b=xvCJmuGe3DYABHlEcnEE0e2ddk6fcdQC9CPiL3/QCzEwSlvTLNJtjXtWW4CpZ+MnYm
         lFmX8QwjdjBBbrZJFviT4DaKKLsA4UfrAlG8jmM81sXajMEzao3qknIoCwH53wjgJz/P
         u6b61DMfj+Xtb6QSLDgjnI8/Lkuc2hg2u0u4Ww+qHmpSfaNPas+0WXhyTNuGMtTqrhbU
         /2uopBr78kGe0/0FYuGUe6nzgfBy7G12y0wXe015b89IgMfyPwfvWN8tLVOhuCvpMW4D
         glyeASEc/krBPFPyL8OS4kpzOpqTUElLFuNe1n6AQvqzRyTx59BDxIeIYvrkAGfYudzg
         QHgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738238012; x=1738842812;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CuBCputXLU2pypUU/cEHWnT9TxtQ+bGj8yBwSpNY/DY=;
        b=J1zYw5rQV8nqysUQO4CMZh9RAMD7LxwF6AAMysHIQxAdyVhGdsH5EtpERHbx3icgrk
         9ihbFDUZ2HsX/3945GTcjKs2GXDqcXgZMefIkHb/3wzxeMzK/jUL2syD1g2n6MT8ADuO
         fEqoCztZ/4O/zdRt2Tef45HXMnDmWhHOO5qTEjjUQF+DCwEoaDIl9bCh22Gw9lRvh+h4
         586ZeRHtsgpOOsDOecd0hIPC2UDKfoDXISgMOm/pgj9f6wp5C2HzzMFkS3bj0za77fS7
         b73eTpsC54jQrFdNWxTav6Rl8Qhge6wkADpBJQPcnBWQ+wsjDilauxLUZ2XsygjmPCHN
         TLsQ==
X-Forwarded-Encrypted: i=1; AJvYcCV2Tkf+VUBuf3LQ3xQ3A3UPN0Ywbq0p5CGfRBQJ6HE5eU3jdNde3Ibfq5fBP1DMQ5idxuwBxvkJCBdT@vger.kernel.org
X-Gm-Message-State: AOJu0Yyl+Zzn577O1IF1zdsoal9MBibzV7e+P6SvWwFbZV2aNFjhpOAF
	Anj6fn8zxfL9+H8keaChK/aXNPgIFpwk5JmfEm5YukipR5wc7nzDiRA5lbPSd80DldVwN95vNxR
	XogD2bvimG/cbf9WdWD2PhUKl4dJz6kRo
X-Gm-Gg: ASbGnctd9RaRlB/az2k20Vw8gwozJ8c3UAuENN20o1istlYYz2D/BeQozqwFXTulaNw
	oOeCjRH8pzMl0N6vRrH7P5aSnokpFe+lKesuQYKflGgxOyZCK1SqygU7pafJxXTzz460ZN/GRf+
	LiwyioghFbhcLHU75RiKei9MrUOH39XXdMAly3yZswV9Ne0BiKeyjLPvgoSZsZ9x9hTdjfZbPcP
	9U8/skuaX5EjN5p+iPQ/21w7L6nPeNHNwMmzakRBm/wHgMBmYn4YYpYfW3W9cRzEBNT5zjbKWWm
	rvTwD5c2BlGRbPKQ6ow+rZtvGng/JyGP
X-Google-Smtp-Source: AGHT+IH9MZSA5hC3H8pO6YOmlz/fBwHCszfrX4ssHJaZQj2Tf715OBtQ0JS+NzH/6ILqJwBnKjfqVvKQfLQT
X-Received: by 2002:a05:6000:2c8:b0:38a:88f8:aac8 with SMTP id ffacd0b85a97d-38c52096289mr5391502f8f.54.1738238012345;
        Thu, 30 Jan 2025 03:53:32 -0800 (PST)
Received: from windev.fritz.box (pc19f8e2d.dip0.t-ipconnect.de. [193.159.142.45])
        by smtp-relay.gmail.com with ESMTPS id 5b1f17b1804b1-438dcc12df0sm3750845e9.11.2025.01.30.03.53.31
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Thu, 30 Jan 2025 03:53:32 -0800 (PST)
X-Relaying-Domain: blueri.se
Date: Thu, 30 Jan 2025 12:53:29 +0100
From: Patrick Wildt <patrick@blueri.se>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	Kever Yang <kever.yang@rock-chips.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 1/2] dt-bindings: arm: rockchip: Add MNT Reform 2 (RCORE)
Message-ID: <Z5toOecuMiBXM6aF@windev.fritz.box>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Document board compatible bindings.

Signed-off-by: Patrick Wildt <patrick@blueri.se>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 522a6f0450ea..bc995db8cbfe 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -710,6 +710,11 @@ properties:
           - const: mqmaker,miqi
           - const: rockchip,rk3288
 
+      - description: MNT Reform2 (RCORE)
+        items:
+          - const: mntre,reform2-rcore
+          - const: rockchip,rk3588
+
       - description: Neardi LBA3368
         items:
           - const: neardi,lba3368
-- 
2.48.1


