Return-Path: <devicetree+bounces-52952-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 651E588A847
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 17:06:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 897461C60776
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 16:06:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D24745BFB;
	Mon, 25 Mar 2024 13:50:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YpqtH4SJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 870B445C06
	for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 13:50:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711374611; cv=none; b=QWU/psMHIUSGUkLGVf23gzAdaSj9Q6cCc8yQ4GzbUeFHS+sJgFLoGFVYeBLxmUyCA/Iy9ebP/Jw6Ne/o5sfE2Zaizk6E7gLXHaNfkfBB1+8YZXAgEgc2Am6rc8Alpq5u5ypKFgzVoY4LlfLGJXBkej638dXvAsFJamLrBhLAlu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711374611; c=relaxed/simple;
	bh=pm1D8AANHU7OWrqEa59hVqEOXMzi1M1QkKkHx/w3BXM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=VDolkiq56WEhLgXG2+9dHrF0d1Zic+g5QQVo5WOLX+Dbdll9fOeWB+kgSpf2uegtrVexBU5Oj6esnHpAbE1aNTwivOwV2+jZOIuE51idcyeTn+yCTBG5AZTEBrPV6Zdq8n9ztmKusQdxKszQUfqAKv2w9/24Jc4VOc8Ea85l50g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YpqtH4SJ; arc=none smtp.client-ip=209.85.210.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f48.google.com with SMTP id 46e09a7af769-6e695470280so2282549a34.3
        for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 06:50:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711374608; x=1711979408; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lTa5nbcCR6s5PUGPSt2FliWbNyzghkPZuzdDT4iQreY=;
        b=YpqtH4SJLDxI2B5+soSHu/JPr4LDoADyOzw9ZjmIOQ5Ok6lMMdy0xvyJ8fCmvkIV/v
         AFjk/9LR3pNLZVUCusloPFfGVIejW7j6pIgeJq2NQZKXXtcRhQQjJuW6SaNmEd2+JmTH
         gy+Ufad3Bt8zhX/QjgaMTeEiyDgLY52J4qJrZqOlR6lIZbqJSW4U138lxsgqDgJVVUhV
         h+RVO37hXUik8MkgiBcTMS/9hRNdogkXWs+Z8vQ2iIZgsUFD0wcUyMKxr3jeEZidsSoE
         K35ZRoth7aZ6HVrYO1W5LiebY/a91P/OLAyeVoKmdrikWRl12jHIetNaXrFwDb6apwS9
         7oTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711374608; x=1711979408;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lTa5nbcCR6s5PUGPSt2FliWbNyzghkPZuzdDT4iQreY=;
        b=m/zaShIk37TF03pgYOdBddR84yBCd+xswsgts8q0TObMwR3wKL1XUFNyt46urbSxL+
         ylW/2RAJ73SOzkpQw+Mm+8mSL7dCA+TpGBEMB10FHjlPUZyF39JKd7MHdeapmPdJGzeo
         siATOGD/DF/IeJrrRQGPtvAVhZADfS+j3ORPDSwp0hjbX72N/hl1FmWO16JAcJ4agj/x
         h3iPOG2URkx8tbkwsjuZ0I0zAMuY26ruLKZ0PPLPHSr3ilI+0NX54F3BcqVDL4Qp7z50
         q2FljX48wHPgGM3juLU3krFGrASDH5v7rnL0yk1EPrtIVzYQQl/kEfVus64fQuSvYJpd
         NTXw==
X-Forwarded-Encrypted: i=1; AJvYcCXZci+lcBvaHPU4oKPX4PYAJ9LhDQhHlqSumBOSmd21PSoohlxRG6W4q9qEUN3LJ/ADkbfzezjrkMNXI+CnhNCqVv+5wO1wYbtEqQ==
X-Gm-Message-State: AOJu0YwasLqYHRNixpg2Sp3FpyRNsFfY4TDdLB0QA0ohoW25OUpITAZS
	xHc7xlOMNkxuHQoMmFJHrXat+nqbJ/tLkY6iBcKqRNbzIfYUUqYy
X-Google-Smtp-Source: AGHT+IF7XHsaP6m6/3Dc/nu1JlamhXyyy25YMxWiLxoadqRdsCgcTmEF1RLsTJdNBcfYMZK0qlHYJA==
X-Received: by 2002:a05:6830:117:b0:6e6:6ea1:9820 with SMTP id i23-20020a056830011700b006e66ea19820mr8618855otp.14.1711374608661;
        Mon, 25 Mar 2024 06:50:08 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id z8-20020a05683010c800b006e673e2d2a3sm1118250oto.77.2024.03.25.06.50.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 06:50:08 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	quic_jesszhan@quicinc.com,
	neil.armstrong@linaro.org,
	megi@xff.cz,
	kernel@puri.sm,
	agx@sigxcpu.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 2/5] dt-bindings: display: Add GameForce Chi Panel
Date: Mon, 25 Mar 2024 08:49:56 -0500
Message-Id: <20240325134959.11807-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240325134959.11807-1-macroalpha82@gmail.com>
References: <20240325134959.11807-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

The GameForce Chi panel is a panel specific to the GameForce Chi
handheld device that measures 3.5" diagonally with a resolution of
640x480.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../devicetree/bindings/display/panel/rocktech,jh057n00900.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/rocktech,jh057n00900.yaml b/Documentation/devicetree/bindings/display/panel/rocktech,jh057n00900.yaml
index 6ec471284f97..4ae152cc55e0 100644
--- a/Documentation/devicetree/bindings/display/panel/rocktech,jh057n00900.yaml
+++ b/Documentation/devicetree/bindings/display/panel/rocktech,jh057n00900.yaml
@@ -22,6 +22,8 @@ properties:
     enum:
       # Anberic RG353V-V2 5.0" 640x480 TFT LCD panel
       - anbernic,rg353v-panel-v2
+      # GameForce Chi 3.5" 640x480 TFT LCD panel
+      - gameforce,chi-panel
       # Powkiddy RGB10MAX3 5.0" 720x1280 TFT LCD panel
       - powkiddy,rgb10max3-panel
       # Powkiddy RGB30 3.0" 720x720 TFT LCD panel
-- 
2.34.1


