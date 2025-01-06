Return-Path: <devicetree+bounces-135811-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 662E7A02572
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 13:28:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AFEA93A1879
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 12:28:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF2621DE2BF;
	Mon,  6 Jan 2025 12:28:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AHzRql0B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A5D71DDC3C;
	Mon,  6 Jan 2025 12:28:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736166510; cv=none; b=bIXNch4t1JeBTeE1u2DGtf6z2xFlrKVHh3DqoWuGVxWfN7d45U6x/bT+/utRUS3E/ovoczuSwUkVRiCOgqbcOrsnMN57AloJ8I0toNQW4h08SLxFfTop4eRsuV0P14gqXRnrYWSkvSAho/YGSwNlRLQe8S9GfKuFIROZKAAtU7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736166510; c=relaxed/simple;
	bh=6pZiuvJaNtb/CqZdgPcO1kRdrv9vQuk8hv7BwCYOsp0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Bn/DO8pI0GpX5CzvpHEdLAR+fZLxwruLuOqX0/5bw4nQuRdvChLKe1WF3fMH66hL6I0nNryDXn4Gc3OOd10vdWh5GZNnosXGGdfpgrbe1qFm+8pSkIjGcHtA7PqWCcLcPG8l5DGMeplw2MqJ/5bMz7t50SyHa3gxTn8lF5e4OLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AHzRql0B; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-21634338cfdso4661215ad.2;
        Mon, 06 Jan 2025 04:28:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736166509; x=1736771309; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hebD8ipCbzY7nEzua8g0Qgmxl+l/xC/PNKeirRiQP54=;
        b=AHzRql0Bmw1ykGVjNBEBQPL0S/CU+adYxku191vRMHRk0UjTyoFKI13a1aflKYo77g
         8QZu06/3UveIk+Q+dHW9/4HOKQPdnrb+yJ2R3n0RwmWydJvoQX9VtOyINkJbpgqEKzTH
         8CRhD/v8B9/JJPUI+1lKY8DBegMjgVfF92t5m8cIg4y7cpdPOMcWJnGSse4Zrp8a85mM
         QdzuM6L3Kdes4/fM3F5Ihg+7IYEKH37b+xSGuPHaKJGrDKc7cW6AoA+oAiWsxVyd0OSD
         v/g0glevbiZN7HeLumX5XKNejUv6TEeI6JicdU25ar4DkwsVQvMEzRDTSGyVpuopJA0S
         /DgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736166509; x=1736771309;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hebD8ipCbzY7nEzua8g0Qgmxl+l/xC/PNKeirRiQP54=;
        b=ZBlyA2ypAzNFgycpQCe1yGqF/7hUcvOzS6jHF/Or2ZQIDhbRmJNf+kl4f3/xGzCx1p
         hZ7jFFUNtFcF4b97+Q5GB9CN4YSOUKUVgFfVoKJ/Zr9bVNu6Xl2OReFm159twSTRwlND
         8a9AEZYZGeTum6AZ4QlCmYtrZW5mv36gtl4qY5wA8pYmkB+WStU+LumZriZ0tahyapc9
         5uKtJXeYg72duBQJXZsYoQ3kl2DVS6ODsPM9KOHtEx2+eKn0qj4ef8Zz3cAxsdPPJ9AY
         Bw62TRWkOJSOrv81gel92b1TFSlpYkCdnb54PJEOqRSlQlC+4KlMhYtPSOl/GnWTHjJU
         lrWQ==
X-Forwarded-Encrypted: i=1; AJvYcCUAW9vG5WHco8zmdbLdBFsH7xwgtfblM3Neb8hecJURjrVtX4ytSXqMhFJjZICYF5Af7n4euW8LtXKq@vger.kernel.org, AJvYcCW5qu3Nl56maFvJWAauQ4j4y9pAtk7qo3YVCF47qr4K6EC6IBKEzifA7XDv6zWrui9OWEqi5FsmLXjQpmOM@vger.kernel.org
X-Gm-Message-State: AOJu0YxCf53Kk4hYos9GNumduVmlpVj4OU1XFgzEE9ipD7IXQwuEeri/
	NHv4w4Py7gpXGNC8nciplcRE40NUn2R43xEFrx86ykCXbZ73w8iY
X-Gm-Gg: ASbGnctZYSku10A8om4xtMr1B77Daue9YYgzq2N7Rvt9B5piI7sm/nFMRjPycmJ0bfi
	lD2j207fU8c1N2HjGEm9dC6oWzZUgG62wRHWMrWjdKmn2JPseqXu8GFbN1irLHNWZcdKTRYs+Tv
	PeI7tBO9MUDrccCB9H/iC6d02onVotUEjl3anVg/rs+MdxAMIR2bNqRMvGKQpvjP5X+CnVJrzuQ
	yT+12rOkuRGQ2VcJFQ0ZVjAC2hOCX4WuwaTpsMrrZQBINOyt9yz8G7g/g==
X-Google-Smtp-Source: AGHT+IGK/a2otNoJBSUFPmEsal05bTWWTM0YgOYKrBNNi4sCLMU+2e6MoH9+e2N2Iz9mR02EfXWhYw==
X-Received: by 2002:a17:902:da8e:b0:215:b058:28a5 with SMTP id d9443c01a7336-219e6ea2855mr779330195ad.18.1736166508697;
        Mon, 06 Jan 2025 04:28:28 -0800 (PST)
Received: from nick-mbp.. ([59.188.211.160])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-219dc9650bcsm292678655ad.39.2025.01.06.04.28.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jan 2025 04:28:28 -0800 (PST)
From: Nick Chan <towinchenmi@gmail.com>
To: Hector Martin <marcan@marcan.st>,
	Sven Peter <sven@svenpeter.dev>,
	Alyssa Rosenzweig <alyssa@rosenzweig.io>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	asahi@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Nick Chan <towinchenmi@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Neal Gompa <neal@gompa.dev>
Subject: [PATCH v7 02/11] dt-bindings: arm: apple: apple,pmgr-pwrstate: Add A7-A11, T2 compatibles
Date: Mon,  6 Jan 2025 20:26:19 +0800
Message-ID: <20250106122805.31688-3-towinchenmi@gmail.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20250106122805.31688-1-towinchenmi@gmail.com>
References: <20250106122805.31688-1-towinchenmi@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The blocks found on Apple A7-A11 SoCs are compatible with the existing
driver so add their per-SoC compatible.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Acked-by: Hector Martin <marcan@marcan.st>
Acked-by: Neal Gompa <neal@gompa.dev>
Signed-off-by: Nick Chan <towinchenmi@gmail.com>
---
 .../devicetree/bindings/power/apple,pmgr-pwrstate.yaml       | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/power/apple,pmgr-pwrstate.yaml b/Documentation/devicetree/bindings/power/apple,pmgr-pwrstate.yaml
index 59a6af735a21..6e9a670eaf56 100644
--- a/Documentation/devicetree/bindings/power/apple,pmgr-pwrstate.yaml
+++ b/Documentation/devicetree/bindings/power/apple,pmgr-pwrstate.yaml
@@ -31,6 +31,11 @@ properties:
   compatible:
     items:
       - enum:
+          - apple,s5l8960x-pmgr-pwrstate
+          - apple,t7000-pmgr-pwrstate
+          - apple,s8000-pmgr-pwrstate
+          - apple,t8010-pmgr-pwrstate
+          - apple,t8015-pmgr-pwrstate
           - apple,t8103-pmgr-pwrstate
           - apple,t8112-pmgr-pwrstate
           - apple,t6000-pmgr-pwrstate
-- 
2.47.1


