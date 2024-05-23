Return-Path: <devicetree+bounces-68731-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9073C8CD2C1
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2024 14:52:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 45CAD281D8F
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2024 12:52:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C74814F9DF;
	Thu, 23 May 2024 12:49:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="b6rNvJsU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3760514F10D
	for <devicetree@vger.kernel.org>; Thu, 23 May 2024 12:49:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716468584; cv=none; b=iBhroq8Gn7QO3G5Fe6pc57dj1SoyQFa7BiufIB0K+qsDDomZhk6G0ObKg82I0Y0mGvAbr6ZnMGozmzL4j2BW57ym2RZzVC7yGuOCotmA/gRWF4vGVLs08b1ZVocFlTSKL4EAoCxLobPlGqjKe+7ctVhzjHYlV91yzEooy2Zfk+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716468584; c=relaxed/simple;
	bh=9RgySSODKXDFtNBIppDoD83d/BgQN7IfDe8Mj9kVPEc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mnadAlFy8YZMYq3+OtAFKXN42+yf2X5hlgt0sl2ND2kPZL1Q0t3dpNlY90K29KbTugll7fohQBfdhLUL/J5EGNnqxPGgj0y+hd0035/gL3fXMx32MM4ptKAi8lC1ZbKkcEveA0ODKUFweRvcZtrZFhQQswP6OG+1jCMjZfyhJh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=b6rNvJsU; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-354fb2d8f51so464370f8f.3
        for <devicetree@vger.kernel.org>; Thu, 23 May 2024 05:49:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1716468580; x=1717073380; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0hq7fu9lKeXTgrshzdpFsaVgKo6fIiiCmJ+5OHF+gZs=;
        b=b6rNvJsUEoDucLwd82BSSUskgq3/jx/lmJ1nq4X402KQKg39/0TJD3mVt0f1cZMiZ2
         eWY6cKUznGdc2BfWez41DudoGrnsXJz9MDCPRm447imeyc+vfTVGE4audsfC1ygLikQm
         hFXScMI7nCzk30wIJGqGLtJSIqDFvGAP2A0KgPLKz1LPqTUdR5n6sboZGhxdFqYcwVYG
         jkBttJIvkkN0sWbbH8zPHDDUjKbOh7wOLgtGZj+c+nIdbhmDt2G2wgCRxLSR6EPKdfcM
         3nQhpAuqFPcq7gRBOQ7jwGv6M93W2T8hBz3j74PMeAp97OK6q6XXiMdk+Y7NwKmuwGrR
         GiFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716468580; x=1717073380;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0hq7fu9lKeXTgrshzdpFsaVgKo6fIiiCmJ+5OHF+gZs=;
        b=LG7AromDAz5gLv46Vi5VwMC9HcMUZP7D43DGGvSSWM/whIJ6dEjGn853KHjC2WXZyO
         w0f/lQA5hhHsjeyQzG19w1fUqiJqr4xpdWyFVTctWByzV6VlZUyPYv+BkQf+aZzoQYS6
         9Boq5bkPQmMVOEJvh8/Mi93feqrok/SYeKjpLAEWIuuw+uhtD18HCUvvsUuIZGbknjP/
         9vfyfnYXXI8lWiz9JyFBhZxU8orNeRqHFh3hIxP8zPMf8x0At+ma+I3+yjsG2rrU0ckg
         0ytCU4jAnqeFM8rj1yEwijHTzQsUkD7QCZstybxbfPwtD2Epq1JfE1iCjHLLB5fdPsdg
         KVUw==
X-Forwarded-Encrypted: i=1; AJvYcCVB7rsnid+pL4/Mf0vq+JUWMSA+hWGpRX6eIbDyglbvxuYZWA6OlLW9uMERMVLsyCOK9d6FgFM+X8xkjRijLAcHXJZpKtSXk5FdNQ==
X-Gm-Message-State: AOJu0Yw8xvskqfIVVDMAZJUYNmH3FfRm2eG9iYN74n/MOJDi4AWSc4X/
	J483lwJVkRHEYKNr2v/RT78E27ITrTHh7U0Cbtzg8k2KkCXTFS9mkW2R4HkuXJjKUsNDAagkCAX
	BoNA=
X-Google-Smtp-Source: AGHT+IHtfgcFAHCNKc1JJLUdRiLvcwprOJFdCfAdBFglIGxFEJ4vrqXkikSCSJEtDhSqbfnzmVOiFw==
X-Received: by 2002:adf:ab18:0:b0:354:de96:d26a with SMTP id ffacd0b85a97d-354de96d776mr2915534f8f.17.1716468579794;
        Thu, 23 May 2024 05:49:39 -0700 (PDT)
Received: from [127.0.1.1] ([93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-354faf3fa68sm1259611f8f.116.2024.05.23.05.49.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 May 2024 05:49:39 -0700 (PDT)
From: Alexandre Mergnat <amergnat@baylibre.com>
Date: Thu, 23 May 2024 14:49:23 +0200
Subject: [PATCH v4 10/15] dt-bindings: display: mediatek: rdma: add
 compatible for MT8365 SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231023-display-support-v4-10-ed82eb168fb1@baylibre.com>
References: <20231023-display-support-v4-0-ed82eb168fb1@baylibre.com>
In-Reply-To: <20231023-display-support-v4-0-ed82eb168fb1@baylibre.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Jitao Shi <jitao.shi@mediatek.com>, CK Hu <ck.hu@mediatek.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Alexandre Mergnat <amergnat@baylibre.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1014; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=9RgySSODKXDFtNBIppDoD83d/BgQN7IfDe8Mj9kVPEc=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBmTztTqPg+oDl98yeTzoXSSrSOvhaYdFezpli0P5FR
 JKM6KpCJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZk87UwAKCRArRkmdfjHURcEQD/
 9EtbGsiu3ulrzzGjMJ5wGDXHsuyanF+WSqI4Z5YunbLAde+LdkO85gVphFDcYO0YIWuC9O42glwNHG
 y/TXwlPvfq9vD06dRmVngxd2P9BxMQQe4Ewsu0Tx/pXqaQZlJuO6xFXSLi73EjcfrACF+LXwFFSo3s
 /yvIZbuFDuqPO4l+fISmSq26J1z3rqPPVvdD1ZgKyjvEWg7MGsQ+RaHPhhuet4vU+S+SNjojFMQpJA
 YjCctmauXTlMyYkt16f41ffwOadhdgF0dPMJYGr2jLMN77d74XDGQ2ZrGqqeTgJ5ReMSls215GFtgR
 nWcLvLbv7dvRQ7DAM0Ie0XpXxkQqowIe3sz8SwpGkutorS28xGe2lYy3s3+FuKi03neXlPmnKO40UE
 vYCZtzy0NEziDBPwTDwiI4z7Pe/Xivpm6eonaEcI5x3bFIndvdP44rjNl97teO6vcfjCP5QRDiNGGU
 WHJwbRtl8ZZyfXp1FZFnNWzUfcsM/DyHtnBqpCorGoz3sgoS/InosNtERdgZKdBwaSFBrzcOrKyg9b
 9FpcYphA399Icm1nHIDqKnFvWrCps0aBliBj82wUnp1mbiHSQIAISFpd1/L9DYlqI+x9vbxhHjNTqU
 u9LXP46Bh5oZGiXUKLnnpKoflsjNGN0pMoml7UHpEXqjGyHR7v8lphTIRbOA==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445

Document the display Data Path Read DMA on MT8365, which is compatible
with that of the MT8183.

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 Documentation/devicetree/bindings/display/mediatek/mediatek,rdma.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,rdma.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,rdma.yaml
index edb8d3b67025..878f676b581f 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,rdma.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,rdma.yaml
@@ -45,6 +45,7 @@ properties:
           - enum:
               - mediatek,mt8186-disp-rdma
               - mediatek,mt8192-disp-rdma
+              - mediatek,mt8365-disp-rdma
           - const: mediatek,mt8183-disp-rdma
 
   reg:

-- 
2.25.1


