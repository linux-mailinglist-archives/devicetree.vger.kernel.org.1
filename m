Return-Path: <devicetree+bounces-65910-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 51A738C0966
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 03:54:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8331B1C21028
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 01:54:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F204213D295;
	Thu,  9 May 2024 01:53:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="OEyUVNbe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7734913D50A
	for <devicetree@vger.kernel.org>; Thu,  9 May 2024 01:53:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715219607; cv=none; b=JAK+ogjqIoPA+Xx8qLEWfUtaT8DNIwHqmaV4IEytVcBVj3p3E6tFhmEHEuaI/+1Zf2rISEBXqWpbRyWIUnkxfvlcENhKboWMWYDsCJLXSolge1vMKvLr6E8at0S09j7va0uQf+1JuD78K6ygs8hgHZI16JX7YUfTFbeac9rS8Ak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715219607; c=relaxed/simple;
	bh=wWc10zoCDVN8UkfWeHq9Syg1LnfqQTqJyi5bEAWpAkI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=EelPw3sxuhfwClqWlN3K70qxuG52rQthfvS5R1hbtHJs7paVsb+wkKuE4SDOtlCezgSLp+2Jr5KyDvhNWd9bHyMYTWOXXA+3JIzVJIvlUWGire5uYrOeR9E77cMm1NaihSJeMI/sNAZkq9uIG2F5nzCk4sNDy/QQYolhpCoQC3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=OEyUVNbe; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-1ecddf96313so2588275ad.2
        for <devicetree@vger.kernel.org>; Wed, 08 May 2024 18:53:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1715219598; x=1715824398; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uHqHiQyAVeHyVJ0K9DBhYgyNwQ4VRoYKxLN88oizGgE=;
        b=OEyUVNbeDjrItW/VDEmtwSRJ62qQyjfEkiyTrsR4je4NKjv8kE9/0l8AHZWsX8WWgJ
         oGjDWRCV9+3VHmm6ib61tcI0YvA3IIqG0FM7Y6sb5Et1L0GHeECHT6lK14gzPLu9uN21
         Gj0/ueUUl8nWiNt4tuEcBB5DFlULUiWtfPhogGbrWanj8Vf191lDmORBSBWsxbT8llE0
         CGsISfpglmXjwZAaUDvrvP3wBrmfauR1k5s9QF0cnyFjriYX1bTtWKdUTwsHPHdI2ZyZ
         yjWxOu601LyRCJgWdVhPRIfduP3LZ2T4fHGp3bJwkbGilgSqbx7xFpU8GdykjFNpDfKp
         c01A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715219598; x=1715824398;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uHqHiQyAVeHyVJ0K9DBhYgyNwQ4VRoYKxLN88oizGgE=;
        b=ZfYEb5PsBnNqlxbev34Z18xZott4ga8EDEEqSVknVhu+6uyjHwjmWDbNSjSbyZNTBV
         tqTCqV0GZKp5BRymaRphV9207+kfSyLlOM7RMdQkXx61kDseAejd7QlhhNeUw30lWeur
         T5ZuDJON/vMldPjZ4zx3bs/4AzQ33YgysjIkjXWknVmGqRAFcnz+r+7yH4Im7iAz8C29
         Mx/qj82AqeVVnKcZidel96YeP23Kh6/59BT1fNUPhulEqj/OgUd0ScgwniXUO5BEJmh1
         XYiJATpgPWFEoz/6dHiph34TFSztThfADp46EgGeIheEnJqZ086NDLU48giiELSUHcGP
         H4fg==
X-Forwarded-Encrypted: i=1; AJvYcCU62Dw/rDjCImRs7Jmp6M6TObXhBnNiTp1M9I7IiddoZVjoVsaYUtTiBw6A/lePfKs256DBvF/7l5oQqPWXjM77BfXrxffMMtY76Q==
X-Gm-Message-State: AOJu0YycgCUUyCn9D/0GltwFLLf3plIZ+A2IRbFGetJH9ASWzyVsn953
	LvPfbvfLCXDepmOltguAh2qgJPMsMcE7FlSieCahTmvDNmCBteRnccM7REknoZk=
X-Google-Smtp-Source: AGHT+IEhZ2pJBCfl1DKT6ud+R8/fivFjIpNW18fFmRukQkFcf5Rle+Flry48GAdfWk+93kBhW++3Ng==
X-Received: by 2002:a17:902:ce8b:b0:1e6:7732:a180 with SMTP id d9443c01a7336-1eeb078ffb8mr55322735ad.50.1715219597814;
        Wed, 08 May 2024 18:53:17 -0700 (PDT)
Received: from localhost.localdomain ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1ef0b9d15dfsm2117465ad.62.2024.05.08.18.53.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 May 2024 18:53:17 -0700 (PDT)
From: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
To: sam@ravnborg.org,
	neil.armstrong@linaro.org,
	daniel@ffwll.ch,
	dianders@chromium.org,
	linus.walleij@linaro.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	conor+dt@kernel.org,
	airlied@gmail.com
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	xuxinxiong@huaqin.corp-partner.google.com,
	Cong Yang <yangcong5@huaqin.corp-partner.google.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v5 6/7] dt-bindings: display: panel: Add compatible for IVO t109nw41
Date: Thu,  9 May 2024 09:52:06 +0800
Message-Id: <20240509015207.3271370-7-yangcong5@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240509015207.3271370-1-yangcong5@huaqin.corp-partner.google.com>
References: <20240509015207.3271370-1-yangcong5@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The IVO t109nw41 is a 11.0" WUXGA TFT LCD panel with himax-hx83102
controller. Hence, we add a new compatible with panel specific config.

Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
Chage since V5:

- No change.

V4: https://lore.kernel.org/all/20240507135234.1356855-7-yangcong5@huaqin.corp-partner.google.com

Chage since V4:

- No change.

V3: https://lore.kernel.org/all/20240424023010.2099949-7-yangcong5@huaqin.corp-partner.google.com

Chage since V3:

- Update commit message.

V2: https://lore.kernel.org/all/20240422090310.3311429-7-yangcong5@huaqin.corp-partner.google.com/

---
 .../devicetree/bindings/display/panel/himax,hx83102.yaml        | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/himax,hx83102.yaml b/Documentation/devicetree/bindings/display/panel/himax,hx83102.yaml
index baf8b053e375..c649fb085833 100644
--- a/Documentation/devicetree/bindings/display/panel/himax,hx83102.yaml
+++ b/Documentation/devicetree/bindings/display/panel/himax,hx83102.yaml
@@ -18,6 +18,8 @@ properties:
       - enum:
           # Boe nv110wum-l60 11.0" WUXGA TFT LCD panel
           - boe,nv110wum-l60
+          # IVO t109nw41 11.0" WUXGA TFT LCD panel
+          - ivo,t109nw41
           # STARRY himax83102-j02 10.51" WUXGA TFT LCD panel
           - starry,himax83102-j02
       - const: himax,hx83102
-- 
2.25.1


