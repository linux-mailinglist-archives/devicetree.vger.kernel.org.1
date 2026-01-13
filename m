Return-Path: <devicetree+bounces-254710-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E73BD1B209
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 21:00:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 13A1D3025154
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 19:59:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0F153793B4;
	Tue, 13 Jan 2026 19:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cbmwkWLn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com [209.85.210.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5310636E468
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768334394; cv=none; b=PkLl/GXm4lj6KQJpUuRkd1bS8le6e2RJHyDMNdiKDv4717V+zV4RKCNYxjvIplBRpWzYA1FP7xB1Oi96YieHjEmMK3a7samoQ1c0E03NuF7cv46uSh8AqrEu5c4nPUAbmiQ2j1CTp5GK4t6wy8XHImW748C2gDh45UGNKiR+j4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768334394; c=relaxed/simple;
	bh=LU/d6RmAZ5dG5HQ3FV4Y4Uf7/BaF22iTLsEwRl2jLXo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ioEql/7iX2C/VsgZUPM6QUbi+xNedIQLbKwlluy+DobMLzBX+fWvU4seNuxA68l2sb46f06Avm/AeTcb+RzSSrEGxCmiw/9VWvV5I/htnh5tEW5PgLmIsauYbnRqj+dEceRkBBKTbJhlnOGR3BWqRsqFsGoUC3Y33SFU70yZDtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cbmwkWLn; arc=none smtp.client-ip=209.85.210.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f51.google.com with SMTP id 46e09a7af769-7c6d13986f8so162686a34.0
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 11:59:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768334392; x=1768939192; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M8NK3Ykk7hfqolFaWL1u6Km9KABPeFUAOu8kCyf074c=;
        b=cbmwkWLnNA3lmNLJSlqrW32Y4Amf9+Uvx+Gor/IJ6Jsz7jjONAZsanccQNBJXgk6Pk
         z+zq8ksJDjS6cuwJcHybpEYclyMKkNKTsM77PfDanz2HqSPh2WN+hms7XGwGbgdapXOM
         pPEAyfZpR4LzRkunsJNfuJhsmWByTx4CXCe5cdT5WoJREHf4olagKeLWDd/hEAC2khRd
         +gBZ9dM7AB9XYYsttUq5dZlNwCQkLyol9xGiOrLfN89qcAzRqZiwOLvUMaLU7rVR2wYv
         QBKWPYWVTNR3R8EcAelJ3m8mAropkH1kITJt+FPUJy1ldGQlo52DYiVcjli8L9Z3uOWM
         LY2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768334392; x=1768939192;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=M8NK3Ykk7hfqolFaWL1u6Km9KABPeFUAOu8kCyf074c=;
        b=ipL6z0N/+FqXYXge30IwW7vXpr4KFzUjxsZmdoxoiyD8rVXQ1+29OWzzxGB1D0x0us
         VypskpXm1W9yu5MKzWmHlIQZWwERhc/NpxXv6ICiT/oDkTyTPz9WF1rfdw+ObSBKN2/u
         BIk6tYsv/PvpnpVxcilWg7Mgfm+6nqEwD49e+PaMl+cVYLREfcKB/J6KsAHmTiZ9EAkU
         SZfOoM9or5ObCJSAXK/waLVZICUscN69MOIudXusyN6rv1IUk1byOcE5XUIdi1eQK+d6
         UToGXC9jE14nqusyEeNBbWNdC8Nodr1EKGFi2GXMfxsiYR837mr5MsRsPK2JzxvFX3OX
         Mzow==
X-Forwarded-Encrypted: i=1; AJvYcCUm8RwExZY/pj8JvQka07686t5kokVxLQsQLAEiePK+7xELnuu+R2btnyRE/yg/r4aBigA2tQgB5XLO@vger.kernel.org
X-Gm-Message-State: AOJu0YwX8d62jQyvwjlEEPdZEacjK4upImfrg1yTDkJ2d7H8GAt2xKLQ
	MNu4jmvOocw7/caAIN+Fvroen1ELYxoruuYn97uSfROMcRvXYcHCKQOw
X-Gm-Gg: AY/fxX51zZdv8KKgyot2y1plcCqYmQwQpCtgatUeRJQdlzyv85Q0d0Dnpnw3+Zbkh8U
	pALSdHTC7XD/F18wo44ZjC2G7vLMCNcVjjcYXbTvXkdxvXpbsxJ3PdSFaXs9u44Uq0khtoRK/f0
	2WngFW3FBUCVMxnzC1tVEzcw3WERrNCGjBhu84iRDBPhyXnF8oFtduOEn+WDCVK1pV+k9b9FdQQ
	+DgpvFPtooC6slMJF5yBjp2+5cJCkUuuhZgzDP3jQwOI19vTpTD6xe4gac+cxweOBCIz54Xdqhz
	MH66VQWBwUNXgpBfanxayBGGaA5RrhuijiapnlaWMRETh5qzuhwYZCsxX4Oyg+FZPo4KMOGroAs
	sKR8InxMhqIH8pv6L0IQ168awWC2GnqlT0QKrdA/69eq4CLmVyAlsePTtLIfeXxc3khSxwPbtdL
	vfw4A5d+R+
X-Received: by 2002:a05:6830:2b07:b0:7c7:e3b:4860 with SMTP id 46e09a7af769-7cfc91608camr140237a34.10.1768334392359;
        Tue, 13 Jan 2026 11:59:52 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7ce47801d4dsm16221119a34.5.2026.01.13.11.59.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 11:59:51 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	dmitry.torokhov@gmail.com,
	simona@ffwll.ch,
	airlied@gmail.com,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	jesszhan0024@gmail.com,
	neil.armstrong@linaro.org,
	jagan@edgeble.ai,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	aweinzerl13@yahoo.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 5/6] dt-bindings: input: touchscreen: goodix: Add "panel" property
Date: Tue, 13 Jan 2026 13:57:20 -0600
Message-ID: <20260113195721.151205-6-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260113195721.151205-1-macroalpha82@gmail.com>
References: <20260113195721.151205-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Add a "panel" property to define a relationship between a touchscreen
and an associated panel when more than one of each exist in a device.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 Documentation/devicetree/bindings/input/touchscreen/goodix.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/input/touchscreen/goodix.yaml b/Documentation/devicetree/bindings/input/touchscreen/goodix.yaml
index a96137c6f063..a26a54d63a1c 100644
--- a/Documentation/devicetree/bindings/input/touchscreen/goodix.yaml
+++ b/Documentation/devicetree/bindings/input/touchscreen/goodix.yaml
@@ -42,6 +42,8 @@ properties:
       address, thus it can be driven by the host during the reset sequence.
     maxItems: 1
 
+  panel: true
+
   reset-gpios:
     maxItems: 1
 
-- 
2.43.0


