Return-Path: <devicetree+bounces-256629-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 51ED0D39D0C
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 04:33:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 474ED303A38E
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 03:31:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69B652DE717;
	Mon, 19 Jan 2026 03:30:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YY4VtqG9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEC3228D8F1
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 03:30:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768793458; cv=none; b=gule1Nx6UG1TsV9iFRe3lkLFxs2xv21xsx0HaNUtvXr5moEUgsqFeAx3RffVULSabdkEwYIJ7Ez3pcY6KwlMa2jjyvxTRw03l/5/85vSyzCOo00MNjteQ8cSaKuyQh4Qjgd0S/nY7ORyOhtIlpjn33p7bE6pZNhJ4BQYo/U9JLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768793458; c=relaxed/simple;
	bh=sYgVWqZsv/TROqvYUD+azJpccjPNPUbbOaignxHHa3g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cjrpxzZqoj8EpVbawCgbui0zJRJXdNeLYquqlqFUGy11xM4jv2qJY1Ki8LQb0lRAuV9/rsdlwAh/Ef7mD3sHt4gsbe1nxxW5XBgTQ68HkhkECecZAhbHZ+cb2oV1jEbM6XEt2Fj2jZlef6r4gGWOnBZK6FcuiBVXNjxd1BkFEIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YY4VtqG9; arc=none smtp.client-ip=209.85.222.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f173.google.com with SMTP id af79cd13be357-8c6a50c17fdso298386885a.2
        for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 19:30:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768793456; x=1769398256; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BJZwBKE1B5fG1xmzuppeSdMMZvJUhNtvUP/Jy0XEbK0=;
        b=YY4VtqG9t0lbCjFKDbjmXsBlMhEoaYTGUD9H0HtzmHPhd5bMXfpLXfjkDfHafeU7HB
         ymycm0kFihWdsE3LMOR2FY8n2Db9Wdtn+tfZwNLyZOTsAv6/oMzSWoRLY8K/xspcHpGI
         oqtlFyseR3UpQlI3og912lhQ9iftK3aAciFZHlolnvB+XHurCLGhqyBdTXW2RHjDVSUY
         mIuq19R1v0OsHiGFsvlg55W7Sh27cgqHR9QYaulLPk/ALfdXu6JjziCnGU90anK91x3k
         fq0jmqrf7ura22p/A5DBgR9/PBIFyQFgrK3mntpXhjdYnaENvtVfwjVBTqF+uKWoe1CQ
         kI8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768793456; x=1769398256;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=BJZwBKE1B5fG1xmzuppeSdMMZvJUhNtvUP/Jy0XEbK0=;
        b=UoMXKiheZxLaxxvljkNxmJ4mG2u1ngiLZKuPQ1QBDlaFOpcNCYQUtO+uGqbXTwfMKV
         n6e0TBhdbs1R+CSjUhbSz6nnAMInNh7KhlJNe6IvnWcaXPfvKlY58uN6AvAkVvkxMK9U
         DV6NgTaZmhn9lTpMPB1mQ9BxDKx0DPAGO0XHL6Ob36rJaAdhbAPmc8Nkvocwj6FPvfN4
         oyccck5qSWEjoMB7xUv0SSqaE/EbO/Me5EZwVA3jdPaEteUyKYXrjZj0Wufvw0LJzZD5
         yti3C5iVEan2QVBG5uJvCoCQ1tH+zVfFp4uIbyeNB8hOJhVw4fPcINOD3WhNUyaKYDQt
         u0sg==
X-Forwarded-Encrypted: i=1; AJvYcCVhrYXrmFrjuVHYbVrG5ueuIhr802Xm3wIymfOflwVbn+B9wPxfoe9Z1v1Z30z4WU924VFaRg6mXYOk@vger.kernel.org
X-Gm-Message-State: AOJu0YzOZMjQyfLUfFZFABUpD1GnwFt0dZQkNkhfeT3e6LuHkuGY82g2
	1f0lrxhtkTU92odnnjA34CZXC+vqYIK2miwhaq0z9yBegDsyBCAiE+bN
X-Gm-Gg: AY/fxX7cydyjfMh+DXYbaDzvtxfgfAUPBvuxEYw6y4QLLz0JFdAtTxPNLgl9p9ZNNm+
	V9+1MVJoafnvakIaYWkvcFzyrg9XeoB5RMC1tvqrTgIZreFIciSvA+UC6OKVeEfSkbBotFTbtXt
	Fz7aZoV+PKiTJif+gwvUYdNg8tg3/DLiMspuBCP5++ISy+NC55aP+UG2alKHgLb+Q6YbA46a9Je
	7v+z313ABXUp1lojrdN9PLhOZtTiILqfZ4fRt72q/rNm6TIM2RTLjwGw/85y4WB0tMcZVy76J7P
	nGQu3gTSjGYIw3y9+tqerMaMaeOzqc1Gy5/D5/ZLJllMqjuzBIQHSwukClUFEnrvDOXsp0bpNC4
	FNxUNHHAjpqvvSIDp8gFTTjVFTbA9QhnGRMRA8NG9fzCP4Ruh8J+8qdD9flvXlyLR1iODn/0M7j
	7sl++BmfJz6u8R6ZQPEaL5BlB4etormjmA/xhc0pWA3brQZLOqyERNZ7WvHiFTlXS6UZk=
X-Received: by 2002:a05:620a:1a1d:b0:8c3:9be4:b209 with SMTP id af79cd13be357-8c6a68d8c70mr1274200585a.20.1768793455695;
        Sun, 18 Jan 2026 19:30:55 -0800 (PST)
Received: from mighty.localdomain (nat-130-245-192-1.resnet.stonybrook.edu. [130.245.192.1])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c6a71ab20dsm724706885a.5.2026.01.18.19.30.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Jan 2026 19:30:55 -0800 (PST)
From: Mithil Bavishi <bavishimithil@gmail.com>
To: aaro.koskinen@iki.fi,
	andreas@kemnade.info,
	khilman@baylibre.com,
	rogerq@kernel.org,
	tony@atomide.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	neil.armstrong@linaro.org,
	rfoss@kernel.org,
	laurent.pinchart@ideasonboard.com,
	jonas@kwiboo.se,
	jernej.skrabec@gmail.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	quic_jesszhan@quicinc.com,
	bavishimithil@gmail.com,
	prabhakar.mahadev-lad.rj@bp.renesas.com,
	thierry.reding@gmail.com
Cc: linux-omap@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-hardening@vger.kernel.org
Subject: [PATCH v4 09/10] dt-bindings: omap: Add Samsung Galaxy Tab 2 10.1
Date: Sun, 18 Jan 2026 22:30:34 -0500
Message-ID: <20260119033035.57538-11-bavishimithil@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260119033035.57538-1-bavishimithil@gmail.com>
References: <20260119033035.57538-1-bavishimithil@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add samsung-espresso10 codename for the 10 inch variant

Signed-off-by: Mithil Bavishi <bavishimithil@gmail.com>
---
 Documentation/devicetree/bindings/arm/ti/omap.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/ti/omap.yaml b/Documentation/devicetree/bindings/arm/ti/omap.yaml
index d8774c676..f694dcbf2 100644
--- a/Documentation/devicetree/bindings/arm/ti/omap.yaml
+++ b/Documentation/devicetree/bindings/arm/ti/omap.yaml
@@ -145,6 +145,7 @@ properties:
               - motorola,xyboard-mz609
               - motorola,xyboard-mz617
               - samsung,espresso7
+              - samsung,espresso10
               - ti,omap4-panda
               - ti,omap4-sdp
           - const: ti,omap4430
-- 
2.43.0


