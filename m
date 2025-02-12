Return-Path: <devicetree+bounces-146042-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AA7BDA33135
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 22:02:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3891E18867C2
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 21:02:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBA3920103D;
	Wed, 12 Feb 2025 21:02:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=patrick-wildt-de.20230601.gappssmtp.com header.i=@patrick-wildt-de.20230601.gappssmtp.com header.b="VybtxNKM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f98.google.com (mail-ej1-f98.google.com [209.85.218.98])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1AD91FF5EA
	for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 21:02:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.98
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739394139; cv=none; b=NpoCukcNR7o8QKB2szAipT81i+YFA5TlYlQ3Zx6NuTCTWYgwaHv0eh99mP3seG0JWTvym6kRrriAQWwGmp+kfFkW30fhzxhfNSZvYyZouJKltkQgEBOSF8iSZXH2dNjbFvSz28ARAA6IzYU09loLd1oaCpxjS03Nll8DZvr0EqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739394139; c=relaxed/simple;
	bh=eQOGDvR/1bUCGkIcXJ5fCR3GRVgqy8MbIQqYxmVx124=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=OIu9sND1nJjWqzNr6ELKFyStU8LZLcGA5QxwbQerMkDvJdH/ld4jQGYyrGwWG8BERtYPj2xImAqshRVKMTH8MDBTM+xnKWCGx4vlmTa9KJ5cpz10p5oO+evwr5KvLKUJsGf96bHT3rGAJCLcYO46+opbturE2PmQGk5DcQdr3sk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=blueri.se; spf=pass smtp.mailfrom=blueri.se; dkim=pass (2048-bit key) header.d=patrick-wildt-de.20230601.gappssmtp.com header.i=@patrick-wildt-de.20230601.gappssmtp.com header.b=VybtxNKM; arc=none smtp.client-ip=209.85.218.98
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=blueri.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=blueri.se
Received: by mail-ej1-f98.google.com with SMTP id a640c23a62f3a-ab7c07e8b9bso40512366b.1
        for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 13:02:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=patrick-wildt-de.20230601.gappssmtp.com; s=20230601; t=1739394135; x=1739998935; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Wg1lA3IZ3q4wxQ5pM0sN/8lXutNm00FGJuuGk/CKpII=;
        b=VybtxNKMIxuFtoE5r/SunRKpjP+MivckhYmoEX2EaGtGH/KkRYAucz6ZidWMsKbwXf
         RYA9l5PrtiPzGWN32ZNBz2Lde4QJyjHz8/ULavqtDx0FI7VmtSm1VeFNUO3unGGOvZyp
         OmPcd23YVdvI5MtPewKsTDvAnKIDgb855trqF1U1PboIGsgFY4YZdM6P7ZClJvUXVbX8
         XwsPjxDBQ9OC5sNB3VUn6RNmZJY1ezqk60HqH1rfCCtlX7K7cnVuXJ7mpBrVUufhIhNA
         NWnq4QVRWf6awfwjyE1Vh4cfVTzmI1XPOIe5Um889nOMiBCrXTY1sGLr8ljePkUiA+F3
         2S/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739394135; x=1739998935;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Wg1lA3IZ3q4wxQ5pM0sN/8lXutNm00FGJuuGk/CKpII=;
        b=VcSgzAhg1WHhSVyR6vhk8BqmL0oYZObcAdHR9mEISmq/Dh6Z0i3dK4Z0yzrsDIoCVY
         pdRQ5S5BIzzl3v7J1E4LYRBWqVPa1yHxfT7RWzc4/il+vlka3b9N45inUy3Vm6imZq0H
         w16Lpqu2BkfCNkb386NnYQ7A34EkELBcHxno/Z66CaMrS3BCim43oqBZ6D3MDavtxbym
         DtrHAeY2ZlXhVOScoaCEiSOXTJoxGqfUGuRaVziA4PfE0xO8qHT7izJRFHETjPQNmS9F
         dQRXBtzvWGB+bnPA8sIYnLS9EyfFuIEH6adUd5WYQglYcYxc2GF0DvF8MoYq/km2c643
         T/kw==
X-Forwarded-Encrypted: i=1; AJvYcCU5kJsRLwrho87vJpM7Qo7BRMA7v+AfvzdQWyyfsG3dvcTNFvuJE/0rDtR9ALD3YMZSx+bh3YkpCF8f@vger.kernel.org
X-Gm-Message-State: AOJu0YxoIQ5TnaQNLY9jk4O9vVwo/tod0eQR4j1kMNQHgiQ2bZV6H4bD
	Y6LTjqSRo77rNK2CTHFzqgDZylDsfbz2dkfofIfk4weSp+l+cf62f9YVm0QV9PC5Rc4pld8ZoO2
	GAG+cmZf5UBwxc2B06XGZEf/sgeOrkCHy
X-Gm-Gg: ASbGnctqRA7TgXVDAY9dVyGY7nztJsYdpCmj8uJU+t0HfPx4JJB7rus/YzhzS06OWhz
	BFR2+qHHdIZ8rxY/a5dehmvE/TduRG4K9exDVI1YhCFNXqWqEBjnTSp1zYxleW6n0i+vJ7c51gw
	XQcfMHdHYEWnKIZBhAz4t2HMmi7JtifsjC3nT4Vv7aAGlzxTOisnz2lADItNGx0bkqtDKSJo0an
	432o1PNisxsxDGdypk64nToZMO6UykmbFoY+pMNsadN7iAQ0eNMz3Xfl8P440Qv+d/+SwDbIWlS
	8Hf9nz5nY6YJMdfrHPstoELeyHLQZ7Of
X-Google-Smtp-Source: AGHT+IHqpvPQzdr9MAcycXbgI5nsdbZRNkyWMAN8JIQg9N+hkFcqx1Z+xzJ39++U7UI2g43v+TQUi47WEl0G
X-Received: by 2002:a17:907:94c5:b0:ab7:c6f4:9529 with SMTP id a640c23a62f3a-ab7f33781f4mr515355266b.7.1739394134643;
        Wed, 12 Feb 2025 13:02:14 -0800 (PST)
Received: from windev.fritz.box (pc19f8e2d.dip0.t-ipconnect.de. [193.159.142.45])
        by smtp-relay.gmail.com with ESMTPS id a640c23a62f3a-ab7e3ec7281sm23009066b.92.2025.02.12.13.02.13
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Wed, 12 Feb 2025 13:02:14 -0800 (PST)
X-Relaying-Domain: blueri.se
Date: Wed, 12 Feb 2025 22:02:11 +0100
From: Patrick Wildt <patrick@blueri.se>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	Kever Yang <kever.yang@rock-chips.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Jimmy Hon <honyuenkwun@gmail.com>
Subject: [PATCH v3 1/2] dt-bindings: arm: rockchip: Add MNT Reform 2 (RCORE)
Message-ID: <Z60MU05JLtI9VzuU@windev.fritz.box>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Document board compatible bindings for the MNT Reform 2 with it's RCORE
SoM, which is based on Firefly's iCore-3588Q.

Signed-off-by: Patrick Wildt <patrick@blueri.se>
---
Changes for v3:
- Split DT as it's based on a Firefly iCore-3588Q SoM
Changes for v2:
- No changes

 Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 522a6f0450ea..e21c5c8fc2a3 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -178,6 +178,13 @@ properties:
           - const: engicam,px30-core
           - const: rockchip,px30
 
+      - description: Firefly iCore-3588Q-based boards
+        items:
+          - enum:
+              - mntre,reform2-rcore
+          - const: firefly,icore-3588q
+          - const: rockchip,rk3588
+
       - description: Firefly Core-3588J-based boards
         items:
           - enum:
-- 
2.48.1


