Return-Path: <devicetree+bounces-243314-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 21DBBC96B41
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 11:46:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DFCC93A3302
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 10:46:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27E67304BB5;
	Mon,  1 Dec 2025 10:45:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Cam41KJF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7804A2405EC
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 10:45:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764585949; cv=none; b=GyVNXJVcCdgx0Pw0dCMShjy00QgTp41mkj7lgSpN1nLfy0+zmkxxeubt2foiGiZI/AfVixr6NFIgO0k9sfNuvgx2A8xwJ+KQclnAJwySVBF8f6VeRecXrgBQsbbG/P7r89BlZRdqA/HrScmeSb81/4GH5TXCakxTpx2QaypUaFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764585949; c=relaxed/simple;
	bh=e+eXP31aXqYuHfqQ4ChdLqp8avfL3ewikrQxBy7BDg8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hImfDO04RkO50KVpCKzb92bftL+s5XDSwzVssXfaPukRgiaF3N1O+H6G8S2+xxLu+f6Vftlqj4Zsz/U4KbivQaRXpBrfrrC4IuPS/cjqg8RxAsXjgGSt4tCmDdyrVm2cj8wdKv7gmD1KPqeX1qFZIdM+sQFUuqYcAs6IhN3ygzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Cam41KJF; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-47775fb6cb4so27809365e9.0
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 02:45:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764585946; x=1765190746; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+3haUaE3WBd/H3ns4eosPa5tj4oG7IhSbyAobG8wCXM=;
        b=Cam41KJFYheTHlCyBHSBsNd2F8H+sIcjkxpVaknJIXmeVinZHqZnr4z51sMYW7c92i
         bKgShFcaV7piKC94W4sj72MgBQdawAxBJ91Qe+cu4zgvhGhiSmXEIEBeCFG2t0P1ONq7
         UZw5ODTMRfeY6u9hiyupfStCiskCP0d4w/WaUmj+lPzKhO4c0O3Yj7Uzc5n8TxK8Szuw
         aNIbIOx3VDGKgmvGggoql8SFEa9PjMtXRTpCplq8lMQuPpJmW4/YyFFkCJuMbF9SdvAy
         xvz5Z7LLfFiY1lg1dROtXQrrFx5VDOGcBTN+i/+N6xu/McqIgIvy+zzLSdPSrGFZm2eK
         ujCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764585946; x=1765190746;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+3haUaE3WBd/H3ns4eosPa5tj4oG7IhSbyAobG8wCXM=;
        b=CRf79g19kIy2fzEUFhh/YgIzxD5TOa4x+QL7CVXdIpcJz9KGxHEavPe9vtifMPzNQ0
         cNQD/7VW1AIMD0AiH7NwDggu03K08DKYaPzALg0prEAr7RFf1jNEqWmlCdHxfmjAhwHF
         kL5EX30ayYTtWpbV3Esb9mpZsLfhOfDYj16jKbncgFnMar4yD8xOZrBYywpucaOmDmYQ
         Y1q6arWJwGeQqFXC338cZnYtgldPC01inZfOzTPbYqbYGnMn9BthZ1PKYrLqGvGacv0D
         Jsr81c9c7hxFhktayta51k79cKGsJbcOEgzq1tTf0jW1/5QLImOGqXPb7OUjvU239/jD
         64Hw==
X-Gm-Message-State: AOJu0YzXJ8GjMFNt3ipHRZQdZBjH7YJjkKdQTCTZ5yDWrWzKnTAHPJnM
	56qeDMuExtMd+ff7cDnzE5yboU8Ox3+BavxX9hLOgdKwjB3/frFLB1uK
X-Gm-Gg: ASbGncvm9WiblME9Tnoipg+c6uXpIOPhYNl0GdhWOwxsVPhmcbM/zZqyoAsHBESvMLA
	qUy2nQIzCyg4rnUDUeRGi7I6TVuy0FJwDt1UDN1eLczSDe+Q34WTWuDdyTM6+Fd/02ZTLtJxvWC
	+8wPAeI5AGS5iB6MMdOGab8EM95+LwtbtAeVp7hLrBRV/eYQ65VbL5gHDTGb+6M2Pw1+1PS2yAf
	3VqXxZYbnWE3lh9m9iJ3M/Phq7ZJnrClt4bktht00QREBd4iU2iXd4m8Y3eXp+TGfEfgd9SjNeQ
	uDBhqUXK3s9ZKD5IwsqXhbZxp8IlmylzEgFDxv33Li1c85p1FdLpdbpKYTnpnZvCT3aP/aHuADr
	tX1YKmqVCet0xo/QzMM+Y3juQGDJw00UoT43xKwTAmYmlXdDwS1PG28wnlTLlREp8C14IquJMBW
	QuBf9VxE+GDfpHxATZL5NaoV3y+g==
X-Google-Smtp-Source: AGHT+IEOXXUIrMivLgZSl60uiNX4yUHLTdTE+ZPG3CdRF6KMSnG1uLC22eyTbR/Tq36BGJVswlCeDg==
X-Received: by 2002:a05:600c:3588:b0:477:bcb:24cd with SMTP id 5b1f17b1804b1-477c11179ffmr408394335e9.22.1764585945795;
        Mon, 01 Dec 2025 02:45:45 -0800 (PST)
Received: from [127.0.1.1] ([2001:861:3201:3d10:4ab6:6efe:9b65:a6af])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42e1c5d6049sm26264262f8f.10.2025.12.01.02.45.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Dec 2025 02:45:45 -0800 (PST)
From: Gary Bisson <bisson.gary@gmail.com>
Date: Mon, 01 Dec 2025 11:45:17 +0100
Subject: [PATCH v3 1/4] dt-bindings: vendor-prefixes: Add Ezurio LLC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251201-review-v3-1-07f9af7341fd@gmail.com>
References: <20251201-review-v3-0-07f9af7341fd@gmail.com>
In-Reply-To: <20251201-review-v3-0-07f9af7341fd@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Sean Wang <sean.wang@mediatek.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Gary Bisson <bisson.gary@gmail.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764585944; l=968;
 i=bisson.gary@gmail.com; s=20251201; h=from:subject:message-id;
 bh=e+eXP31aXqYuHfqQ4ChdLqp8avfL3ewikrQxBy7BDg8=;
 b=7bNTbOK4r/NgZeFKYX1i7o9YFptwPZEoE0LRJ7HZzNvAZqmeDOUbmdMZB/SswLMppISOcDsW5
 DuvgNJUd7cpAeAWNmDrMxqS0hp9FFRrfWLvfVhzCGvmt6PXiPUg6tlF
X-Developer-Key: i=bisson.gary@gmail.com; a=ed25519;
 pk=eaOrLwovHUZBMoLbrx+L1ppj+AH+TfgxkVhIEyrhkeE=

Ezurio is the new name of Laird Connectivity after it acquired Boundary
Devices.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Gary Bisson <bisson.gary@gmail.com>

---
Changes in v2:
- none
Changes in v3:
- Added missing Acked-by from Krzysztof
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index f1d1882009ba..e76e6c5be726 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -547,6 +547,8 @@ patternProperties:
     description: Exegin Technologies Limited
   "^ezchip,.*":
     description: EZchip Semiconductor
+  "^ezurio,.*":
+    description: Ezurio LLC
   "^facebook,.*":
     description: Facebook
   "^fairchild,.*":

-- 
2.43.0


