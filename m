Return-Path: <devicetree+bounces-153116-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CFC80A4B49B
	for <lists+devicetree@lfdr.de>; Sun,  2 Mar 2025 21:02:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AFBAE3AFC7F
	for <lists+devicetree@lfdr.de>; Sun,  2 Mar 2025 20:02:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A143E1DF27C;
	Sun,  2 Mar 2025 20:02:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=patrick-wildt-de.20230601.gappssmtp.com header.i=@patrick-wildt-de.20230601.gappssmtp.com header.b="oiluXkZo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f97.google.com (mail-lf1-f97.google.com [209.85.167.97])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3F42EEB3
	for <devicetree@vger.kernel.org>; Sun,  2 Mar 2025 20:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.97
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740945744; cv=none; b=oCpEY98xywJ/ud7YHgZfM07QSqF8Gnsh7H6pexmk32lXlSFiEmrMvb1MUxLEhPhyq35/eCVX/Fow5irGgHUYFDd2FCdoy65iZMaaHO72k6xOGbutY79yjaxc7FPgMD02AI88bsYsYj7siDb3TVjVuzcq6Rfd29v3IDX4nB0FRhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740945744; c=relaxed/simple;
	bh=ycWZFjDwUWDTC7UePhckAGGu+d29weMfb3SYGhumi5Q=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=eM3InSUoR83Dt9+Qf2EtEtfvGFm757Jk28WgkfukStZA8n9qaZp4iG1VIbb+GLwe6cmyB9OEp/LtbvGHL/A/yzeuebqrw518zxk6SwU3tsQq/4Fx39Cx1hf4dTEb2p5W4tqk/OSp+676CQuC9EDy4qFz+M93cedJ5fBTa+zWdeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=blueri.se; spf=pass smtp.mailfrom=blueri.se; dkim=pass (2048-bit key) header.d=patrick-wildt-de.20230601.gappssmtp.com header.i=@patrick-wildt-de.20230601.gappssmtp.com header.b=oiluXkZo; arc=none smtp.client-ip=209.85.167.97
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=blueri.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=blueri.se
Received: by mail-lf1-f97.google.com with SMTP id 2adb3069b0e04-54965898051so473375e87.2
        for <devicetree@vger.kernel.org>; Sun, 02 Mar 2025 12:02:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=patrick-wildt-de.20230601.gappssmtp.com; s=20230601; t=1740945741; x=1741550541; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0ktqAo906g1TKt406wyEYKOmiF5CVJ1rF2+5tYAkr74=;
        b=oiluXkZomEXxGh+J1o4Hw8fsXVPtLp1EJ5/sgFdRbWumv3oKfLF8eQBnEjaRoiTKKc
         R94LWFX0dcEBj3rMdH2w2+1Yq+b1s8BSZKWPNCyMpc7DHsmh+ZqZTyOlVcsVWqOkaE1j
         50CwA5x2QvRfNXoOPPwlglkxTySG0tUzr0GidWP74FugDbIsrXj+evt8n1r/iLbaYCFG
         CF9IQ1Iv1dDVsVFeOM0cRigWK3S7YTh8X+ZoFKJH515ZIQYAC/6UhcfXAcY+at/5kUi9
         0plhZla4eJjkDmmioTOnE4bW+xDILmSmpEBWbdRSyh4LBFBktSBUuv/5R/waUQmCxJ/A
         eRsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740945741; x=1741550541;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0ktqAo906g1TKt406wyEYKOmiF5CVJ1rF2+5tYAkr74=;
        b=gBJBWSCu+opjsZvIZMc9lL9qLUuWAddGSscaxOXoC6FVwEAdqegotV/c7Oc9PnN6I8
         X1pHUgJNnmcLA7xfQJ1ltENnQ7Mku+RzYvzbRTp6DWONLd1ae+R3pl7vTidbvCGGYNcD
         P6yef32lKY1COvKo7qI+77nnm4t702SpOL5fzLSK8HIFj+kjItiCE129Ack+FFX/D9VX
         UHqAUH42lONqD83mdFWdOXsXDtCqaSCH61paijKGFRUtwn1pcNqn0QqaQpwd+PkRQwDa
         X3g++iZswtJihaopNdtJtV5Kmn09qZgCC/ruDPaBFjNebO1ucHWhkcdtxKG0kB+nu+/f
         v+Mg==
X-Forwarded-Encrypted: i=1; AJvYcCUs/3N13EbOZ5XgPD9zQdwxt+sfwRnAauGTsTMkWnH3VgZD/saKHjJ7MkSUfDAZRAGR0Pp9hAp0XkcG@vger.kernel.org
X-Gm-Message-State: AOJu0YxYS8ulLjaFWNCFsNd8pC48zyNAKVwuwkjPbm7Ji3EPIi18aVtD
	MPg6pckRIpz6dZ70tg8tayp0Mg9wTnEUsDNyfavbRemahsSmCf+z2Hdu5dhHozwBvTojbdBfjrZ
	cLFo2+vKbci+s0UaXNkD0xf0tV1F7gs4y
X-Gm-Gg: ASbGnctxmWqsvVIZ11nUwTTDo1kWSCsf3R7iJI3dzs7f+V77TaJzBl8afWJiE0Kb+t6
	5iDnqHnxFsZeIMUzGJMfUz/ssJV9iZdO98d4yp7p7/h/J0yt83FJUKqcFCXjg5UlD5yVFjCdQKC
	wo02bES+Bpfo8ILDGHYSCtJVzBQgweSS6DXWmUzKH9DSyUCyDAYJwsSFpLDK1BU3gXCP5IPEh4A
	TqI8WZokjF6YnwPn21iyxp7h/cuBcQxBVkacP3/+d9bulWzoFspoDvSHaEno0iTNpEaXj8/BB62
	3BzAsJNSV1XGi2vvBF1Zsopv0AyQxH6FYbuWOdSoWvM=
X-Google-Smtp-Source: AGHT+IEoW2SHIDDk1aLDFV+GZp9bKgEaP+RRL4SkeATZfvS4Scg3SkpbOr9RjR6zN8pzWGl4nlfKBtFrcL0t
X-Received: by 2002:a05:6512:3f02:b0:545:e2e:8425 with SMTP id 2adb3069b0e04-5494c32f8dcmr4146730e87.39.1740945740250;
        Sun, 02 Mar 2025 12:02:20 -0800 (PST)
Received: from windev.fritz.box (pc19f8e2d.dip0.t-ipconnect.de. [193.159.142.45])
        by smtp-relay.gmail.com with ESMTPS id 2adb3069b0e04-54961daf36csm53433e87.112.2025.03.02.12.02.19
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Sun, 02 Mar 2025 12:02:20 -0800 (PST)
X-Relaying-Domain: blueri.se
Date: Sun, 2 Mar 2025 21:02:16 +0100
From: Patrick Wildt <patrick@blueri.se>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	Kever Yang <kever.yang@rock-chips.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Jimmy Hon <honyuenkwun@gmail.com>
Subject: [PATCH v5 1/2] dt-bindings: arm: rockchip: Add MNT Reform 2 (RCORE)
Message-ID: <Z8S5SHqUqKYiT6Wd@windev.fritz.box>
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
Changes for v5:
- No changes
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


