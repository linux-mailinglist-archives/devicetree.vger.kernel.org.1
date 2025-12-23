Return-Path: <devicetree+bounces-249315-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 17D95CDABDC
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 23:14:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 827C2303302B
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 22:13:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19DDB327C1E;
	Tue, 23 Dec 2025 22:13:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ARsk4y2L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 622F23271F2
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 22:13:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766528013; cv=none; b=Eqk4eCbBlUDmSAKucEk33NzxW2OfJaRTOsBPiR6PlOaWZmUnVvCeIZ+Q9+v+xlgHkguXcZSYz3lSWKsLWW7j5Wn/BnyuXEVBo9SZ47dPmfX3tp7VsZtM/cGNw39GkXcUcwNF4vEuuEbxn90sd5zcawRGSU8kuypPFKbFM05rqYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766528013; c=relaxed/simple;
	bh=sMUBMbrK7/ZzTN2ifHo0idjCHc3u2IqyKo1PdHLi5oA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Z3tbJ3hfNc90hVxOlMNBwrcsd7ggpLejZ0TBZ1kO7PUDOLAJokXlqZj8BQOJs6uXfyvlJYuuRAc8ppc19B9/phoT516SZoPq2K80uDh7C8DGam5d9IStO4QCSYqhE1ypZyE5HcV9h8dxChPynbfbx54xCYvzyI3cTVuUhHHLMws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ARsk4y2L; arc=none smtp.client-ip=209.85.216.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f44.google.com with SMTP id 98e67ed59e1d1-34c868b197eso5698451a91.2
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 14:13:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766528011; x=1767132811; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qbMxF+gY7bPHqJ8ldPkOL73xrNsVRUkggRkHgQFozfo=;
        b=ARsk4y2L9vKJ/C6xcHRJVa1W35aenPVGMU5cLNJO4hcrtFuL6Mfx7IWoynZyG66G1N
         VK7IAWxGn0+9WG9pxWE9blQijIKVUUjPlBpB2EvXwMoc+3TZbAu6JRLzUyL6CfWbeJb5
         PCRBZmutep+HFqlZ6UYxHgTp1E4fF2evtDOmHm9pb3vf27iagEIZ6L2S3IarHbiBmzCe
         Nh3n3ZXYytZa40+0wN867AaVxVZl3nHSg2qHZ8PTi3pqge0WPiiJClIRAzDLpTBm5XMU
         yfUaYFJef8Q9dxCfrdUhac8aPwUNTOch97nrEuOGu/cimp95exUn/SCBVtFP0MIlYc4I
         RONA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766528011; x=1767132811;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qbMxF+gY7bPHqJ8ldPkOL73xrNsVRUkggRkHgQFozfo=;
        b=FnkynXjF5r2oVktahIU/JvZ706kK7Oms+sA8EbLaixtOS5hdak8DLv25N3a+epxrd+
         c80d5KJ+tAmMpstgJqqY4WulfYotwI9fdZxh2KOZjed5/wLQdlSl6A9h77KzP6M0QkTu
         UOoY+qCj5BBGwiOQQLTRqCd6JkGRdbENuIolttct9fMVqh3lBa/76rbODENCLNF0gcgw
         vjydQZ6bQf4b//mbnETNQmmrGKv4Kd6anCQRkBn3nFG4ClKg5W0O+i3rjX+QaIfkEOQn
         EI8/NorpU3uH7X9CiMt+PaTh4EZ08QBO9SDUT9JoqG5NxYpArcT9CUTTQM2FZUpUmrA+
         yeIA==
X-Forwarded-Encrypted: i=1; AJvYcCWBAj3p9vmlHkoxXaI57MV+bgSV1DfcZM/NgWkKMzNz9rLS7WcK/KpYmnPMT61tIBWLSf7t3tEBBvAM@vger.kernel.org
X-Gm-Message-State: AOJu0YzQQR60XbHjr+jHILtq6DPHGcRDADgt6Oxp4XrKjy2qmRJDfzoh
	bHe10mZbJFUAz/Pa9yuBgS5lBih5uFX7f0hUrIwGbmVCfq70CqKYcuIo
X-Gm-Gg: AY/fxX40GPbIJ9wpbZO9EXS8lXq+DwLBxLqF9VSjMAI6GhysNEebgLE6d7RhUbaTC+5
	YlgGZTx3Sj7HVaMwapDaDF+exJUVqsTNKeEG7ylPqtY8N8O6Ikdwk89+OfBTBg77uPXqSSINfwy
	X2wfgacT8mzeb36VCFw1oP/8KywFrCCswYvReMzXpBXBWxX/gwPwSFZnS5drAUFDhQd82csMDZU
	Xcvuml2Uh/xypwqkKxQcP+zxv/YnKqbicGcG3xpajJLs5gsuPMy8jglokn3EJaN7GGARkTh608c
	fEQGbnGMNOe9UdOthi+BssFycLirUdn+6FKaFQksDYrgy9tHpJM69Uxt/srUTPFaY5X8V3bGDvx
	/E2KAulZ/Z5uzLOEoGI3IJsGoP+UIXGhB+MaDF0N1pgwG5r7V4mU+ZqXhwBXbPaNH6q5Pb4BB1u
	C4chF02jlBGLQlzSgcdVsHs32/GqOGBlxwY2dILSeuug==
X-Google-Smtp-Source: AGHT+IGikOIURWcD46OTUx3VcgjIsTTbayXLK7FFPsek16ZYnMoDIlgfP2L9P5rmA4oZ7WKOU3FoVg==
X-Received: by 2002:a17:90b:1f82:b0:340:ff7d:c26 with SMTP id 98e67ed59e1d1-34e921557bamr14728161a91.16.1766528010571;
        Tue, 23 Dec 2025 14:13:30 -0800 (PST)
Received: from localhost.localdomain ([2401:4900:8838:aa50:ded0:d1bf:9b7c:5ce5])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e70d65653sm16742889a91.5.2025.12.23.14.13.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 14:13:30 -0800 (PST)
Received: (nullmailer pid 28846 invoked by uid 1000);
	Tue, 23 Dec 2025 22:10:36 -0000
From: Kathara Sasikumar <katharasasikumar007@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>, Mathieu Poirier <mathieu.poirier@linaro.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, shuah@kernel.org, skhan@linuxfoundation.org, david.hunter.linux@gmail.com, Kathara Sasikumar <katharasasikumar007@gmail.com>
Subject: [PATCH] docs: dt-bindings: remoteproc: fix Keystone DSP GPIO binding link
Date: Tue, 23 Dec 2025 22:10:20 +0000
Message-ID: <20251223221019.28823-2-katharasasikumar007@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

make refcheckdocs reports a broken link in the Keystone remoteproc
binding documentation.

Update the reference to point to the current YAML schema.

Signed-off-by: Kathara Sasikumar <katharasasikumar007@gmail.com>
---
 .../devicetree/bindings/remoteproc/ti,keystone-rproc.txt        | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/remoteproc/ti,keystone-rproc.txt b/Documentation/devicetree/bindings/remoteproc/ti,keystone-rproc.txt
index 463a97c11eff..91f0a3b0c0b2 100644
--- a/Documentation/devicetree/bindings/remoteproc/ti,keystone-rproc.txt
+++ b/Documentation/devicetree/bindings/remoteproc/ti,keystone-rproc.txt
@@ -66,7 +66,7 @@ The following are the mandatory properties:
 - kick-gpios: 		Should specify the gpio device needed for the virtio IPC
 			stack. This will be used to interrupt the remote processor.
 			The gpio device to be used is as per the bindings in,
-			Documentation/devicetree/bindings/gpio/gpio-dsp-keystone.txt
+			Documentation/devicetree/bindings/gpio/ti,keystone-dsp-gpio.yaml
 
 SoC-specific Required properties:
 ---------------------------------
-- 
2.51.0


