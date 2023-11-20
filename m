Return-Path: <devicetree+bounces-17318-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B1027F2120
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 00:01:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CB6561C216AD
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 23:01:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE7EA3AC12;
	Mon, 20 Nov 2023 23:01:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="V0FwDHob"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-xc36.google.com (mail-oo1-xc36.google.com [IPv6:2607:f8b0:4864:20::c36])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE1AA9F
	for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 15:01:38 -0800 (PST)
Received: by mail-oo1-xc36.google.com with SMTP id 006d021491bc7-58ce8403881so34051eaf.1
        for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 15:01:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700521298; x=1701126098; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uZ8VGXg54VR9x4z/bS3xIraGv56b9ySs3yQzJdhrrEU=;
        b=V0FwDHobcJpnkdZkROpFdQx96UfcvMvhrl2pk5Yg6k30t0bLKbWrCLmHAPpVpDvlm5
         IRvMqZ4tSVqVTLFk1/wx/YxY2tcXBiOpmyt3uEBoTaYtNObhP6XyJKn4KwOnWLJnj5SK
         uthzDJY5AYj9h+JpySWV0d1PylADPFuUoIoTp/WB/H5mM/FHPAHqJ1Oid7357vgsZYzC
         tBHcC4/rjs6p2qkBUqVwIrkEfNZxHvokZPT94t6cSipmvpJyipUTacUFr245KB/covmz
         s/MjE5/bwatv7gxQFi5UOI8zOdpMCTBqPVd3T4NqPUgetkHLnMSekD0WfjMBvj6L2Klk
         GXcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700521298; x=1701126098;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uZ8VGXg54VR9x4z/bS3xIraGv56b9ySs3yQzJdhrrEU=;
        b=DKppSqQHAnasEj1ktr2gHOj10tq71cX6QL9XaBtehDt1fJHkPBjdm3ZNM4Erz9yx8d
         QaIE2CDkP/flB9MhqUaFpcXAmrmjL+s2QMUlj8gM3QK6eu9Dd9clAu6Blin87hZFLuZH
         SktlCQ2JEJt5YT4MI3JM9JVKRG90S34CRFDtlbN5x4bHpA0vjAVvcgRLpk0Hj0bTdKjI
         +UU+bqMzoEWkaXArq/S20XCPiTnq02kIliHuR1RCCW4kpM5Wx9/BfPC3mXX0tN4n0BV9
         bS3Cn7iZDKWNXd4PIBrpjyKo9PeK28UfiAOQRcIPAycckgON+eGlcuJUtLQ+4QX7AYYQ
         sEqA==
X-Gm-Message-State: AOJu0Yz7qpuV3+SifD9rH6ZCtEkUmzRoS587IDhsYac5ActOtqNqX7OK
	Eig0PAusuhCudyJOlRcqrpdIJQ8N0jU=
X-Google-Smtp-Source: AGHT+IHGMMjWuQKTqjVy8HRYGFxaU9xr+mwEHmuaRwe42Hbf7xhDU+TdzA6PHk1HPenSdOJaGUrzWg==
X-Received: by 2002:a05:6820:1508:b0:57b:6451:8c64 with SMTP id ay8-20020a056820150800b0057b64518c64mr10750357oob.9.1700521298004;
        Mon, 20 Nov 2023 15:01:38 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id g10-20020a4ab04a000000b00587aaf6add7sm1545117oon.9.2023.11.20.15.01.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Nov 2023 15:01:37 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	maccraft123mc@gmail.com,
	sebastian.reichel@collabora.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 1/3] dt-bindings: arm: rockchip: Add Anbernic RG351V
Date: Mon, 20 Nov 2023 17:01:29 -0600
Message-Id: <20231120230131.57705-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231120230131.57705-1-macroalpha82@gmail.com>
References: <20231120230131.57705-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

The Anbernic RG351V is a portable gaming console from Anbernic with the
RK3326 SoC.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 5f7c6c4aad8f..3786f901a1a7 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -30,9 +30,11 @@ properties:
           - const: amarula,vyasa-rk3288
           - const: rockchip,rk3288
 
-      - description: Anbernic RG351M
+      - description: Anbernic RK3326 Handheld Gaming Console
         items:
-          - const: anbernic,rg351m
+          - enum:
+              - anbernic,rg351m
+              - anbernic,rg351v
           - const: rockchip,rk3326
 
       - description: Anbernic RG353P
-- 
2.34.1


