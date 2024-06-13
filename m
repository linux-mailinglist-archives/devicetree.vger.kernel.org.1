Return-Path: <devicetree+bounces-75588-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9669D907D08
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 21:59:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4CDC81F260BB
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 19:59:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB50D78C90;
	Thu, 13 Jun 2024 19:59:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lQUc8unz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F28E757E0
	for <devicetree@vger.kernel.org>; Thu, 13 Jun 2024 19:59:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718308785; cv=none; b=fjR2ANqV2A3xteLJ3TBYkTGWHEkNRpcD/AJupgksnNp8yPyAWmM9Oihf7u7gqwvHM2RhDlGnnJz+YJn0x1Y6myMqnXPT7Ef4DAySSqv6BHQWof33mZK4L4bd6zft+6lyJ7iPya1JdcZthSFYZmVMKFB9enFjDXY4PpXwyEOMOfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718308785; c=relaxed/simple;
	bh=Jge23QH3bHmWTLG1XiUPNWwwwCC2f5vXZnOYx9fuC5g=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=lLz7x4mbAk4qtGUpvCOpyp+hQMnYrVrkKvqdEzeYSCayiP/Hrs4iJehwWS3VU+V1tZ9EIRFKt4YPBPe1MmutypyRBuhccqvTkRus+KtTW8fEX3V3l3ujFlgOp+H+i4SDpTgLlITCnoLU2UaU9j2oxeI2wkv1VemHNIi6rMoKp34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lQUc8unz; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-a6ef793f4b8so168865966b.1
        for <devicetree@vger.kernel.org>; Thu, 13 Jun 2024 12:59:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718308782; x=1718913582; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wXQkcMf7K3vGWL79rv8fwtNhHLraJL7yxtnHKTEIGkc=;
        b=lQUc8unzA1rRPupfnsjZKZLz8ud+vxvmKznc9MhBjbWFFdGNcIRBAld1mb6l9OwGv1
         oqPeEmMWXEdaCP8wjih6A8pGxut4HRHiHncT2fpFXdPSKa3OjmAXFepvtNHlHwEQDd83
         cCjnlPnx9zTyeOSUgxLE/vBzUpgRE72kI2yyBOBdtrBw2jtOr/0ZZuWS/y/Zobu7/9vt
         r0xWDeWM8gDtz+pl0oLadOKVgBkKy0gj7Fg6/45P/+63Byj5tBhgL48+ZQ2qf1SGrY+k
         CvaIApD9ge19rzW7mbhWwCytZdoOg9HJTT4EE+olXk+r6JOlAYFak3vkOgHlGE5h+fVb
         /PeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718308782; x=1718913582;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wXQkcMf7K3vGWL79rv8fwtNhHLraJL7yxtnHKTEIGkc=;
        b=QCkPEeQRzjSUDvyMNJWDW0B3wySQaomdL+2EaKcGl1cCYKW6dZiKnJ48ay/A6HcE0h
         faVvSagNALIv/kzJNVHVEjLM+6jK9XPWUY3B4uVDpjsVvW9dm3eRtWzdeIUgKAJ0ic11
         0MryIKXV7VOzJhCkE41zOebI53JU0xJx+KBu9tbOGZ/NN4h2MJM/HAqdvFMZaavcLcsK
         F+FNAFy4jZhkiUjp/Upc2UN6jIsfn1hgi2WRbdiDNixL2dhPJ+nXBpKdzDIgghan08Jv
         A/ieyNzqijSNcexp5txFd21+rLlWt/0WpJromaLwIWR8Olftd+tM6/4dUAweAFGBxriM
         33Ew==
X-Forwarded-Encrypted: i=1; AJvYcCUy98nt9EJ35/DdbWPor/wi4EdPJhiDeChRAetBHU5JU2pmYWwbFCRxopZEafdhLrrb1Q1rnRr/dsFaxDUKUjzekGyoUuoBZ6hbBA==
X-Gm-Message-State: AOJu0YyR4LOO3C4b93DnDCFqFVWNPhjQv6mLlVfVc4yajwm3cIEQUvo+
	frZIIwLBkrwkqp3O6ECWozvSHJFhNlXiyKF9xAFYbmEBU96CtjYkKivdyw==
X-Google-Smtp-Source: AGHT+IGbxi3EbzRk8sT09GB9OWN57JJRVnLDOjooOUhZQZIgX/n3AQVHTxSPIlOPZ+EnJIp4nwp3fw==
X-Received: by 2002:a17:906:af08:b0:a6e:f91e:efd0 with SMTP id a640c23a62f3a-a6f60dc56d7mr45513366b.56.1718308782338;
        Thu, 13 Jun 2024 12:59:42 -0700 (PDT)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6f56f9c858sm103092566b.206.2024.06.13.12.59.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jun 2024 12:59:41 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
	Lala Lin <lala.lin@mediatek.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 1/2] dt-bindings: nvmem: mediatek: efuse: add support for MT7988
Date: Thu, 13 Jun 2024 21:59:32 +0200
Message-Id: <20240613195933.31089-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.35.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Rafał Miłecki <rafal@milecki.pl>

Add compatible for MT7988 SoC.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 Documentation/devicetree/bindings/nvmem/mediatek,efuse.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/nvmem/mediatek,efuse.yaml b/Documentation/devicetree/bindings/nvmem/mediatek,efuse.yaml
index a773101d8538..32b8c1eb4e80 100644
--- a/Documentation/devicetree/bindings/nvmem/mediatek,efuse.yaml
+++ b/Documentation/devicetree/bindings/nvmem/mediatek,efuse.yaml
@@ -30,6 +30,7 @@ properties:
               - mediatek,mt7623-efuse
               - mediatek,mt7981-efuse
               - mediatek,mt7986-efuse
+              - mediatek,mt7988-efuse
               - mediatek,mt8173-efuse
               - mediatek,mt8183-efuse
               - mediatek,mt8186-efuse
-- 
2.35.3


