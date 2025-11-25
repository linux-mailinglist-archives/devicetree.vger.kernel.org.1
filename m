Return-Path: <devicetree+bounces-242012-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F5BEC854C4
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 15:01:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id EA3F64EB3B6
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 13:59:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BA293242CD;
	Tue, 25 Nov 2025 13:59:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="By3bwnuJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E1FC275AE8
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 13:59:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764079180; cv=none; b=rEGAw9PNpsiA52Pe3XsFBZ7kXZiYnXcGcEu2PJKiTLYzbK1sHQU+ALVQlXvf+bQHLBYGBuCIJAAR2wxwvqpBv3xOhagifT/gOjPXjX6dhIwKuePuZb8ZXw5ADqBuP1KvQ1Vfix8Be7gCKGIKVADgplSEF4CLcrlzMypIFNkCMZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764079180; c=relaxed/simple;
	bh=5HmpD47xlAjXbfg1NGFkN25GqjW1f5eYX/lAsQrFi00=;
	h=From:To:Subject:Date:Message-ID:MIME-Version; b=doUsPXUzmv+vp/LaOFMrR82sGFqQxbe5U2veMah8dM4UECTkRFDcmmGpIOTEdJ8N8TQwsWw9xwpU6vj35nOkdv0PWjCkJBqem/CRIjLdJ2X2mbffaY75WMbUgIDTmzv3anJD9m+B7NJK7JZCCHEPWH1DV8stWy5zpvMBccthjl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=By3bwnuJ; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-7aad4823079so4870523b3a.0
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 05:59:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764079178; x=1764683978; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=erz1zwGa7q1QFJ0zfxBY/HluYgM2d2IJi2gpOkUhWGg=;
        b=By3bwnuJC1TZpXeDd6EHPLEUHACNFg/mpKxKJQzobRyzqQGCLb2rCkc8esgwYFAwuA
         /JkeCcsosV2t42uQCbiWNYvBiG9WLXiQnFwoOZN9PkhvtMD8NHnSlSpOrgxv4P4ZGxBW
         AqXUe+1+29s+pykpk60LaziLAN/kJZmKe3osnQjnIfMvmhgSm3p/wxrgCEduZJaIiAM9
         SkwfHLZjq4GTayaoec6DZ3AU8+zWKhTprAW6sv1QvOl0oXss4QSQpoIFsjvO9+GMf/K+
         19uDx4/R0yrwfpkA66Xe9LrPP7/kHq0wQVsPiU5iR3zPG2PI8JQOIUkzC/eIqWrQZoD1
         Wasw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764079178; x=1764683978;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=erz1zwGa7q1QFJ0zfxBY/HluYgM2d2IJi2gpOkUhWGg=;
        b=G+Rwxv1mfVWidU2FW94/ElKD9rrnAefVcYmlMejSNAZhxqpFu4mtfi8tmYTct4ZlT0
         W+K0XQqD8IV6W1+oCJDl5uXEaXRX7AxxVz4PpmWZrD/O/IvxA/fHUGvU4f8lep36/gN1
         DrHYAn3xngmdCVZri9RfDt86sMrbY+1ViFFUs5HKZnbSiN9R6PiURqp/DDuNsTDiwwk+
         K7R0gRKfPTKWFmJFnoNQJflvN3dHUSYmDPJUzLsat480n2k/34k1jALmQ4yHEtmNMMIA
         eD9UruzCLDzaTf4SGcFrz12v0mhnpFUyeOQPpnG084kpig8DEtJ8mb0PeDUlptlI2okL
         j2BQ==
X-Forwarded-Encrypted: i=1; AJvYcCWoPYt1yl8BFo6AW9OueKaQtBv+ZHVbwp2JUtgO3+kcAtY3uOn0PY50e0joEXeCQ40ZlHxJ0iVns7W3@vger.kernel.org
X-Gm-Message-State: AOJu0YzQxzvCFiZXjeudAT2aydoXuDNpHn9ekgrpxHBLZVdfr7H7vg6j
	xeAg55ZgCi2R9akZylObK7GatdHn3V28hVGeZ5FUpDkkcsSdmSdLOw/k
X-Gm-Gg: ASbGnctgFtSbqIrcx7lNSCD62AoLJLRpbmqLfqnMc/Qbbwz6gBcSGrFUePpgZ5GH0u3
	WWDVeWalqQz2wSOcN7DndiKJj6u5U2myu6/OMxS1DgoDNd+XpBRI+2SPPYDdZPpyEDHyPS97sd6
	MQU+vQbsFNa7uhvCgBgW3PlbUD7rOK5n4ZQpdNtGDYzofbsGDMZG5PDW8EkisLaHu10ps3qYAUF
	W01dVmuokoSTYebbmFAPgi0UUlV5ohiNVT4EppDuvJIPtl2z9MF+cX2yGe7n9Q2XOA6Z4y9INhe
	BDuzOKJVaBViOfbwXR92bIPPV3F9EwqG2w8xpLfDu5PItwxvRt6Ol993UFZE5M4E72LIUXTwPSc
	1xK/pHC3EdD9z2DAxegLrMuDmYHspEdThVzJrIfsIvBwbJ+WJnPRbJH2iuWO6oM738OaYCMPPar
	KMCLf5LXcawZFmdLmVbKomw4lLpOhcw6IHsB6iUsp1t1KYp1Cz7kgVjsz8uW8pOrjnRcA56oUwe
	aI=
X-Google-Smtp-Source: AGHT+IFVBajfyb+jYLNhskTrqSPpLmpzWD4wi9ojL6pd3vnt1+ELM9ZLZ7EskwccDjqdCqnuHCwSjQ==
X-Received: by 2002:a05:6a00:2e9e:b0:7b2:1fb0:6da0 with SMTP id d2e1a72fcca58-7c58e602d9dmr18324022b3a.28.1764079178410;
        Tue, 25 Nov 2025 05:59:38 -0800 (PST)
Received: from fred-System-Product-Name.. (61-220-246-151.hinet-ip.hinet.net. [61.220.246.151])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7c3f0b63dbcsm18216028b3a.50.2025.11.25.05.59.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Nov 2025 05:59:38 -0800 (PST)
From: Fred Chen <fredchen.openbmc@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 0/2] Revise Meta Santabarbara devicetree
Date: Tue, 25 Nov 2025 21:59:29 +0800
Message-ID: <20251125135934.3138781-1-fredchen.openbmc@gmail.com>
X-Mailer: git-send-email 2.49.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Summary:
Revise linux device tree entry related to Meta (Facebook) Santabarbara.
- Add IO expander node on the switch board  
- Add SGPIO line names to control ASIC module power  
- Add IPMB node for OCP debug card
Fred Chen (2):
  ARM: dts: aspeed: santabarbara: Add swb IO expander and gpio line
    names
  ARM: dts: aspeed: santabarbara: Enable ipmb device for OCP debug card

 .../aspeed-bmc-facebook-santabarbara.dts      | 29 ++++++++++++++++---
 1 file changed, 25 insertions(+), 4 deletions(-)

-- 
2.49.0


