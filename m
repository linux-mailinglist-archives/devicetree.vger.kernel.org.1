Return-Path: <devicetree+bounces-249571-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DFCBCDCEF6
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 18:33:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7393F301AB0A
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 17:33:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C35E322A1D;
	Wed, 24 Dec 2025 17:33:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="j9lJFDRY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92CF12F0C48
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 17:33:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766597614; cv=none; b=A/JBIX0U5w2lbci5oZ7ALodJ99f/z8HUTgGUlAzX5QgtuGTm0giubHP6RK/ucWIOz9gl3MKzApk9vr9x/KfLKYyq3As8+PSyR/vBErRgDAGSpNM2JLCzrSoDAMTd5RuxORsfwnhAFMMnPfSZmtpedmS8d7SAka/ywMHHtizgtWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766597614; c=relaxed/simple;
	bh=2cCd22upSW/KmRBE8hQQ25UsubWS3S0H6lX6K/nhVNs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=SdgHly5P4FbVnLg3jwHeFC0i45Um9MNFh8bHcn6mWJXSYcs6FugDw6IJDlFRP3L8s4xnmL03nqvG11gCUptjms2T4P0SPf6fJMr/+chBdkvn0vGI8XRrlSO0GxwVIumixCIuzp8AH3E1fqJmYKMfAPRm6lG176L9OJj8rvUbhTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=j9lJFDRY; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-43277900fb4so133799f8f.1
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 09:33:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766597610; x=1767202410; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jL+U/H2FA4I8JmtU1VFqn2gDXH0xURV9q9TTs1K583U=;
        b=j9lJFDRY6WGfpzoSn1J4eTq8BmqupqbseSS3cq7um55JG00P+F4xAMpwyUpuGZTbHW
         CQUcEcrFiGmSKMzll88YngHR4dAelxF7/Wvoamr5l1LC1mAVjHo7TpyvLwGJk9yu5oZE
         UrWpCv+wo2mWSVqAHxtplisTTtJo68Tp4wVz03vQ2+euyBxRo2HsAS/tFmU6dHm+hYp0
         wFcvPkXz18XgvQaj+IrrKuhaZpaD/pJt5JjK/I3pff6e6L6Eld1lY7L3Mk4O/lCEhu1E
         MF2BxkMBdXTBA7B91U7JzhWjswYmBRlECcuwsIDW2YZt5T8SDz/CVlzCT2/KLdVzA4c1
         Mt0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766597610; x=1767202410;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=jL+U/H2FA4I8JmtU1VFqn2gDXH0xURV9q9TTs1K583U=;
        b=hp8W19KWH72UnRGtvBolvU6sALs8VTvRikgzqwSgolu4HJMghcy+aogr16u+9N1ZmG
         ZoEuAcGrWD4b18hvLaFeSAXodUmYpWao5+tNsHJNcI7l5U24MZNW2MNR2gR/UlJXmWji
         Iw1jcx7QrQui2xqzcRFNJwKyuY8w9TcG4X9KYJgNLSNglXqQwZ7VrYYafFq+oJWfEhGH
         7NmSyU1wZl08YBZEaFq1oFnRbZ4bvoiztapP7z5TCRAbe/9uly3KKRTvUOR1r0dOWGZ7
         wquBowR32YTUYSNoTg/bT1rM3vIHoK6FJ5Cg2FTb5FTtKy6sSz6BL9YzhLk9yyMmM6/O
         ujsw==
X-Forwarded-Encrypted: i=1; AJvYcCVQRmpPdseDgqfXRmEXrD4NTg2702bH7UozN3LzDS5lUXnrw3yJd5IZNtpAq4dbil9qjKOu4QeD9kNG@vger.kernel.org
X-Gm-Message-State: AOJu0YyY4W2JfzlQsBSxCzFj2DM187wvrsWnAh8RL8U2P2735ls3qzTR
	2q0z+bWOCTy6kai3X26r03y7Q3lcj9wk+mVc3GRYYZy2oq4eBaoCB4yp
X-Gm-Gg: AY/fxX7UVQfErNv8EJHFb9W2P2Yolx/5VQH08HMfg9wOuvq/1Of9f62wO+ZIP6eX3Jw
	Tb5bkZtFn/vUUZLy2hf9eqSPWsJwohY3W6KIoBCEpT1RYnnuNALoc8bfJmXP1z6yLqqGy/0tXAf
	52Hxn6GC+mk715jO/06RpsdaJ2OWi9SigIvZEL2RiASL9Mb2RHSi+rL06sO9K8+m1GIlCsMWHfd
	YPpKswHA01Tbjeh20ZL0yqslB/NVtNAeinrC8PmDRV/AFlYW9kk9P9smgH3dq4tkYjw5Id8Yxos
	SJOpN6a4mf+eFiMsXK/pzcYeelASpkxm0jXOH/a7aNO0pE5lX6gMKhsMto+SDMFonXXO8ZBwXjZ
	BNmJ2LFDj6RdAe6t6SQSbb5LD5w4Ue2go3739PUjrhjhO4aifOHZKDsCXtZSvOJiFGrORkBUAyy
	42ugUJmbACeA+jh57wblju8wHmSZkChgndwzbwSLAnR2nFlW5Beuwf+1v4ywD6GVR9n5x5HSwRZ
	3vmtJ573iLDosSfVZ93gHLj
X-Google-Smtp-Source: AGHT+IGtuKI5qFtb6bVvEi5z5XQ8k2RY7CgH49pTzGJ37hLsQLej8EohaIgmffXocttMVOc2pcKR5g==
X-Received: by 2002:a05:6000:400b:b0:425:7e33:b4a9 with SMTP id ffacd0b85a97d-4324e370c67mr23635694f8f.0.1766597609763;
        Wed, 24 Dec 2025 09:33:29 -0800 (PST)
Received: from iku.Home ([2a06:5906:61b:2d00:3371:7b65:aaf4:d2e4])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4324ea1af20sm33237553f8f.2.2025.12.24.09.33.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 09:33:28 -0800 (PST)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>
Cc: linux-can@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH 1/4] dt-bindings: can: renesas,rcar-canfd: Specify reset-names
Date: Wed, 24 Dec 2025 17:33:21 +0000
Message-ID: <20251224173324.3393675-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251224173324.3393675-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20251224173324.3393675-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Specify the expected reset-names for the Renesas CAN-FD controller on
RZ/G2L and RZ/G3E SoCs.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 .../bindings/net/can/renesas,rcar-canfd.yaml           | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/can/renesas,rcar-canfd.yaml b/Documentation/devicetree/bindings/net/can/renesas,rcar-canfd.yaml
index f4ac21c68427..dab79dffef4b 100644
--- a/Documentation/devicetree/bindings/net/can/renesas,rcar-canfd.yaml
+++ b/Documentation/devicetree/bindings/net/can/renesas,rcar-canfd.yaml
@@ -188,8 +188,9 @@ allOf:
           maxItems: 2
 
         reset-names:
-          minItems: 2
-          maxItems: 2
+          items:
+            - const: rstp_n
+            - const: rstc_n
 
       required:
         - reset-names
@@ -232,8 +233,9 @@ allOf:
           maxItems: 2
 
         reset-names:
-          minItems: 2
-          maxItems: 2
+          items:
+            - const: rstp_n
+            - const: rstc_n
 
       required:
         - reset-names
-- 
2.52.0


