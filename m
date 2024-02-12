Return-Path: <devicetree+bounces-40985-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D2233851D4B
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 19:50:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8D7D2282FD1
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 18:50:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BC5C46549;
	Mon, 12 Feb 2024 18:50:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RhYoAQGL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f54.google.com (mail-oo1-f54.google.com [209.85.161.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCC0940BEE
	for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 18:50:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707763802; cv=none; b=SOAsPoGRyrkUAfRgA/cIM84g19hmYfyJVHsScH25SXUj8tedUQ8KpnO4EI7Btzgntm/UpwCCCiOg9ChiraufzpWewzNfFho+xLKksyirya8qfbTOYJnB9xUEw4XfeCl6eexPNLa/OOd7Yqn0jm8Tq1koSw02VbRNTMPfG2NTHDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707763802; c=relaxed/simple;
	bh=cOlBq2tBVh0khsGn0oWb8iynhF9z3F4iSVWxVyyxv4k=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Qlm2mZBavqT8N/nqzW3kgY4it8FlQUJpydeSI9KRqcOqnxeLTdQ52jmSH3X6nj3QetWsA9ggQFMoPfd3Zg3qajc3z+vTaOea4bEieplTGdiU3W3YtwqCVgfk3+VsbgtC6TMkqRWvrHOXf0C+CHGScowmG7zCMVeYA9vVxDl7Fzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RhYoAQGL; arc=none smtp.client-ip=209.85.161.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f54.google.com with SMTP id 006d021491bc7-59a1896b45eso1446435eaf.1
        for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 10:50:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707763800; x=1708368600; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m8VPhUxVNMumxmegz16wtqJemHSZk+dsg1qRV02Sa/A=;
        b=RhYoAQGLO0gX6shml7dtbopE4jMKnEfR8yhHpmldg9mPCf04unqs+zo90Z2PbS8C+H
         AGTVo9ZEPbzr1MXfMsck2ld2QvLFifaEQLfY3GeWNdOmgqTX+ryn3kvXy36lxm63+2Pq
         qZy992FFp8LWbkuEf7f/oGgCBuhhxLPRWUJUb8p2nbewb1EKYoZTgU+x/Di405u9pwxb
         PfzEEgAgRZ29oXBPTKALI10yL1lHPrsAj718+dsXWRHCJRUkXf0TnqueiZ95L07ysWpQ
         o6UQ3aLFlN3r7lCt3GAxPHGlCACenW2VEGmA4t+3nseGJ0dSiou7e/qbo+EYbX4v6W5u
         KVEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707763800; x=1708368600;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=m8VPhUxVNMumxmegz16wtqJemHSZk+dsg1qRV02Sa/A=;
        b=J/CpZKq0A4qbn/1dnt7AvsRRHoU5FuOxgQ1fvCyomIWtJ1QZ9Z0ZXUtcRL2Mm4Ej9m
         n0LGsv1+ijxN67ptirkeVWRZ8ezKTB74tziCOBCv4soUu/xAOEjM8SmTeW9jDl6uns9m
         RKAk/jVcm7b3qj/8WiBCWcS7lu/VUpHG40ch/nvVdN1R3hwbGYvUOWWeqV7SIF6SChMR
         VxJnc7hPXrcbx9LquT0emnxzsKSyrp/s1Bd1e2HZnfkEqjMY7hDfGof56Mfvnxcmn8j6
         QH49/hRurTtD58l3+Eko4Ir4z6G4uHHEK1qdAfz2AGCg8VZp/Lgzmb3M8m060+TCr/wh
         0ENw==
X-Gm-Message-State: AOJu0YwAUPMkDWmj48TQFBE5OYBVykw2eN9lqApLx7geJ67lSJ0KkhFY
	JZ4SJTMcd8Tzo7lGH1SnhYYJDqdKv0MN/UZpYtcRzlVqDL27ndby
X-Google-Smtp-Source: AGHT+IFwgajYnNAT2DG3t1Dz1gR/jo0jukUytaecVSmzqrrmGdGsu+3jEnD6ECto3ArNVJhamBZrrw==
X-Received: by 2002:a4a:8557:0:b0:59d:35d7:a565 with SMTP id l23-20020a4a8557000000b0059d35d7a565mr6684550ooh.3.1707763799981;
        Mon, 12 Feb 2024 10:49:59 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUAw9xmcZUUlJhRIP1qbo/rbWP6bZX5NSRm1WiUs2cyTvXQAuW2comimjVFLv6zQTgkrTRPLnBx2oFBFI0EUvHjaMhUL9qtGeonOQfsgadEu4lGsth6yuGSBgSw8q3CFjaSDWhLpFvdzS9/sLxxo9O99OyKQY9RycEe8W6djAuvkVZ0qLGQcDUuhwvGBOSb6ONrFDBejtFeFh2J48R7vvGLWARf3JevjXO7M9AoBmCluqfME+8bAf8XmGd8pwxTN0e/fXe+Fr9TdloVoaI7iKtZG5zVvXVsyDHuRgp9WQY0cQ2Idg9tWao3U1BM4XpgHYtCqqiZli1AyFBhUv9wkfvNePGNG+7M17faLFjB8dxmhlGEpBT6AABPM5MJM2gO2vzulHIWB8S7efK1u+adkraT99kRl3FTldMGvwKhVS/AmE3hcx7hudVPtcmMxYv2tOwg5MZ+xyPl/YHVWZRPbmE0wAJPhtbRLK4tD947MRrZOEdYMuUalJN0uATIud65dgI+PRCkNb9HqvTYyTDMdqMgYVNuNeHMhMjKogUhOs2LMHKk0a8C9+X8BDaH
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id b7-20020a4a3407000000b0059d5360c62esm171939ooa.11.2024.02.12.10.49.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Feb 2024 10:49:59 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
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
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 3/7] dt-bindings: display: Document ST7703 panel rotation
Date: Mon, 12 Feb 2024 12:49:46 -0600
Message-Id: <20240212184950.52210-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240212184950.52210-1-macroalpha82@gmail.com>
References: <20240212184950.52210-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Document the rotation property for ST7703 based panels.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../devicetree/bindings/display/panel/rocktech,jh057n00900.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/rocktech,jh057n00900.yaml b/Documentation/devicetree/bindings/display/panel/rocktech,jh057n00900.yaml
index 8dfe8951bf5b..97e0d14790e3 100644
--- a/Documentation/devicetree/bindings/display/panel/rocktech,jh057n00900.yaml
+++ b/Documentation/devicetree/bindings/display/panel/rocktech,jh057n00900.yaml
@@ -46,6 +46,8 @@ properties:
 
   backlight: true
 
+  rotation: true
+
 required:
   - compatible
   - reg
-- 
2.34.1


