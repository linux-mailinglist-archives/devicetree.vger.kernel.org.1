Return-Path: <devicetree+bounces-147625-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B133CA38D31
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 21:21:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 422D6188F886
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 20:21:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A26A52376EB;
	Mon, 17 Feb 2025 20:21:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=patrick-wildt-de.20230601.gappssmtp.com header.i=@patrick-wildt-de.20230601.gappssmtp.com header.b="s4zu0wbP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f225.google.com (mail-lj1-f225.google.com [209.85.208.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74D97238D33
	for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 20:21:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.225
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739823704; cv=none; b=ZB+BqPPlM7Zj4P7TSn61UpVrE6Meh0DMtx5OG531ZsH9g4N/xttsu+7gel3nW42Su5JnIyTvvDo5KiOOVqqlbYzoqCkXR1W/ANhrxXzznSIfL6H0AgnmviZIPTYxPBI4xRhPFhrnAdUkSYqFYg9DQ1J/NJ/TreCAfKyJNAwmC+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739823704; c=relaxed/simple;
	bh=QkrqEbrF/tzEVP8x80iBMgaNzqnhVuF6b46f3Ht42Pc=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=B9IgVClAc+VXDzE0d5/gzRS6Nr2NQqUOHaLJn+wlys4NZsdFlzXcFKlbzx3hc8vMz3Vc2pxYgT/6H/BFZ39Otupw+5/WOXkmdtyYGRUacYeyustftjfNQTdBnAid/Z/nE6GOarltqL+2LondBHTERqjD83UYcvMt86vNOLj5I/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=blueri.se; spf=pass smtp.mailfrom=blueri.se; dkim=pass (2048-bit key) header.d=patrick-wildt-de.20230601.gappssmtp.com header.i=@patrick-wildt-de.20230601.gappssmtp.com header.b=s4zu0wbP; arc=none smtp.client-ip=209.85.208.225
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=blueri.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=blueri.se
Received: by mail-lj1-f225.google.com with SMTP id 38308e7fff4ca-30a36eecb9dso9974481fa.2
        for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 12:21:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=patrick-wildt-de.20230601.gappssmtp.com; s=20230601; t=1739823700; x=1740428500; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YVr1hV2iB6PfGNoj61PMcywr1x0JJZuf5oSH4KXCTLQ=;
        b=s4zu0wbPgdOelWOk9cj0MYtpUew+zS9T8mb7fvCxCB15gemehrj8Y+FPhFeqSsaZBq
         azJHGuIg/FhEYUvPh9CSBKzNHyiiDDWrJCXyg45/ErCCpi9G6vO/Ampfp+QB2nUbKfgb
         +rKYfUaWejxUspzhQb5qToPzkwFQ+Bl3E3DBt6/zznNV115O8BjzQcyN+6J5D2O36ng0
         mrYcZTgZscUzoZKPU0HVTmdfSDeZ2YGjBSykflA5EWfpzrCX4ecTcIye/BWzFoov8kqL
         zkmpJn/4QaoiTqfNFIHu1SVDLuMghUcoGoaK4ZxcRRg1ELmF/7iRC4v1nl0mzJi7Ptxt
         /FfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739823700; x=1740428500;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YVr1hV2iB6PfGNoj61PMcywr1x0JJZuf5oSH4KXCTLQ=;
        b=Vw/0xvlsbsA4HHdidCs3h5S76uTJsrISt25QJRKg1r9ZBYArSVRJb85CUGKl8yogru
         sIlBdvkaknqs7mmuroMW4731EoKYTRddBLd3pk5HqWpybaa0DzR1PL1vFEL2Ty5utpr7
         bCc8dJLnSY+2K8V71Dh5uqnje1MlsGNo5+WBakiAq2UQCcaBlcd+cHkWtqFzbCiFMCbV
         TuHu7ILMdtlUL02ws6VqpGvwvjqpUJzMNbjivo3v0h1MjmKYsXEqTlchBLYbG9ARCM+d
         7lwr9iJZqK5IG4v0aQmOUw/qIV/P+aGG6ssSFt22E1y1BldDaHdn4fGYZE2NTkhCxm8x
         HJUg==
X-Forwarded-Encrypted: i=1; AJvYcCX+cuZ5v0VDpuJql58Of7qSn7QaVytiF95nXd+aITpngwU4SCBNswKr+bvp5tXrh6S3hvCPoQpA+/HQ@vger.kernel.org
X-Gm-Message-State: AOJu0Ywo5vCkrK/UBGBF/3jl6cWaxSE1/77ZOswaL0QVBBuisagYi3Q1
	Mp+GoyPa0neUG03pugKOax4ynVcxKP+sFTvXO3/MDky1eaD0cVcUsUTqN5xuQdeb0EPxljftHTT
	8tAHCRCeugOMJX0E/dwOtnlgMowoYBO2G
X-Gm-Gg: ASbGnctQrAB6mroqlMOIzOr4nsVmcPCwKHfPObarHfnzuxDTaXtJ+6ht1QtEE0LeC6U
	rDz4gmZqFLTucBS8uHqJ/c19WSP+vmMOyHqhvmKo673bO2nRaZo/l9F86OeAqPqmb3BBSiZfRWn
	i99RR37t6H2EBnKd4FyFraM7uJO7TITidzYdfyzAWc935jzLP6g9lSOzFasycxztwULV9Cn9Y/G
	4RibHQG5bfLL5q0iTrxKOURrmgyE+7WVNhdnzR9ts887Z2nRIf4cH8DXwTcjhTsYW1x8bKb/fpV
	06F2n1QmPIWS/5ncCWkW4lRUpHSyaQQC
X-Google-Smtp-Source: AGHT+IG1KbT9YXMVLvcLXnzqaNmMCKEzhOQTa2fDguunLh0CvEnteT/83KIuEJOKJgj1nh+n/Fr6t8d1LXAE
X-Received: by 2002:a05:6512:3b08:b0:545:1049:eb44 with SMTP id 2adb3069b0e04-5452fe8bef2mr2746361e87.36.1739823700140;
        Mon, 17 Feb 2025 12:21:40 -0800 (PST)
Received: from windev.fritz.box (pc19f8e2d.dip0.t-ipconnect.de. [193.159.142.45])
        by smtp-relay.gmail.com with ESMTPS id 38308e7fff4ca-3091ffa5b3asm1234801fa.21.2025.02.17.12.21.38
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Mon, 17 Feb 2025 12:21:40 -0800 (PST)
X-Relaying-Domain: blueri.se
Date: Mon, 17 Feb 2025 21:21:35 +0100
From: Patrick Wildt <patrick@blueri.se>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	Kever Yang <kever.yang@rock-chips.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Jimmy Hon <honyuenkwun@gmail.com>
Subject: [PATCH v4 1/2] dt-bindings: arm: rockchip: Add MNT Reform 2 (RCORE)
Message-ID: <Z7OaTzIpeJ-IACrl@windev.fritz.box>
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
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
Changes for v4:
- Added acked-by
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


