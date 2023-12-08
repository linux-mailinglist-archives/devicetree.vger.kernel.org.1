Return-Path: <devicetree+bounces-23219-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2042680A7D2
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 16:49:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BAEF91F210D8
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 15:49:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37D8332C92;
	Fri,  8 Dec 2023 15:48:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ehKvHWnq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-x2c.google.com (mail-oa1-x2c.google.com [IPv6:2001:4860:4864:20::2c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 006B9172A
	for <devicetree@vger.kernel.org>; Fri,  8 Dec 2023 07:48:53 -0800 (PST)
Received: by mail-oa1-x2c.google.com with SMTP id 586e51a60fabf-1f5d34235dbso1067789fac.0
        for <devicetree@vger.kernel.org>; Fri, 08 Dec 2023 07:48:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702050533; x=1702655333; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+sJJJXTD3ENUousJPpiYIp/VztCtL02D+xzUtCsBqSw=;
        b=ehKvHWnqc+GAVjlLFhm6y31nL51nUVpAt8YTZgO+S6Di0by/eTkLkDrrb86D0cQv1b
         gbZAqsMfgoAp0uqqPJ/35Br9MNYebKOrlIE57VLggavm+xfD/ADPXGoEEJfrZMRHlkzw
         RdyErmmkq6dhnQyZbXWRB2P+YxBKce/oE+V4F4DapXB5H4BOeBApCHs8blSovqVLdC/J
         kxCY9Xrvbl8ctT79I+jybMKpXWcPvTe56t2hWESHj5riJyX+ztZj4YtvHXcaI4stp/iz
         5q7uuLbGsVscWNt5A4J1+YfI+zrc3aiJW8tBftKyg2y9HjW7cy/7nMEHl1L+H/FwhMGv
         4Bcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702050533; x=1702655333;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+sJJJXTD3ENUousJPpiYIp/VztCtL02D+xzUtCsBqSw=;
        b=HrFmsMQrzpdiFCPRhqX0TUN0JTMWsTkBKYwz5T8xyOQZhzAVK3zvKEielpfyv/UPCd
         QhGTuIvRx9WyPwHSLI+gPEz33bKbM2B6VZZG8fMz6uLICPWqPG0LAk4JuEgLe7SRZrz8
         OSj89evNVN6ZddqLz7r2O3Ty2bJLI4caX/DLJH3agKdJdEhtf/yKhCEIpLaedteIsdvW
         sih8VSaWKxJdV9qaEJFaKyWDt5R1i+4k7Xpkr4TAFWEVgzU3/YyGHip/uW9eUD3lkdyV
         1rjDCJ1wc7XrRRd/j5nuU54gZrp/dk60bDt3MsZqXOWsRXBV4Gp8sObxkaY+wOef6l9b
         Xpxg==
X-Gm-Message-State: AOJu0YwyBjBOK1/t090BL/IQ9uMyfwBvrNzkPwJDfDyf1BKSEUb0njhB
	2uplcHlobDHu8rmIih8T3crZGNS4kO8=
X-Google-Smtp-Source: AGHT+IGJhsZaSLxxBlw2I8ajoJKeP/a3CPks6R0804004vPLyNn1UUEcixbC98/jUUDIyfaj5kOqVQ==
X-Received: by 2002:a05:6870:37ce:b0:1ff:adb:29bc with SMTP id p14-20020a05687037ce00b001ff0adb29bcmr498503oai.26.1702050532999;
        Fri, 08 Dec 2023 07:48:52 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id os25-20020a0568707d1900b001fb28cd0e9asm444624oab.3.2023.12.08.07.48.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Dec 2023 07:48:52 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: devicetree@vger.kernel.org
Cc: dri-devel@lists.freedesktop.org,
	linus.walleij@linaro.org,
	marex@denx.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	quic_jesszhan@quicinc.com,
	neil.armstrong@linaro.org,
	jagan@amarulasolutions.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 2/3] dt-bindings: display: st7701: Add Anbernic RG-ARC panel
Date: Fri,  8 Dec 2023 09:48:46 -0600
Message-Id: <20231208154847.130615-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231208154847.130615-1-macroalpha82@gmail.com>
References: <20231208154847.130615-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

The RG-ARC panel is a panel specific to the Anbernic RG-ARC. It is 4
inches in size (diagonally) with a resolution of 480x640.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../devicetree/bindings/display/panel/sitronix,st7701.yaml       | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/panel/sitronix,st7701.yaml b/Documentation/devicetree/bindings/display/panel/sitronix,st7701.yaml
index 4dc0cd4a6a77..b348f5bf0a98 100644
--- a/Documentation/devicetree/bindings/display/panel/sitronix,st7701.yaml
+++ b/Documentation/devicetree/bindings/display/panel/sitronix,st7701.yaml
@@ -27,6 +27,7 @@ properties:
   compatible:
     items:
       - enum:
+          - anbernic,rg-arc-panel
           - densitron,dmt028vghmcmi-1a
           - elida,kd50t048a
           - techstar,ts8550b
-- 
2.34.1


