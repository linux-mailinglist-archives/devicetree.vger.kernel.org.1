Return-Path: <devicetree+bounces-246673-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C2AB3CBECE3
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 16:58:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id DD22E30115ED
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 15:58:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD26731AF38;
	Mon, 15 Dec 2025 15:58:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kFgDYCUD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C17BC30FC35
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 15:58:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765814301; cv=none; b=AJOWo4tYrHGtgqTAqjEHCatPZsgIEqvqr58O5q9vxsTu8auU6yq4ik1oOpvwJqoh7ljl6SqThMCznWEh0SxAV6/hnZLmn5XLYfq5TxOymjYpxptJ+ooh+1OTuSFTdXycYFZj5b/0LFRfrsL0oMD/vcQITWslymj1K66t7eJCoPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765814301; c=relaxed/simple;
	bh=SXNHwmt4IY8mD5pE4WSrMi6z+GqRjpGucvBnGaDk3bU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=F3ahjnuciMd9dOH26oLtYHv4K79yZSEnaSbOC+TQRMMyz87kVGRlHV1QVp9jLrusMN442bOoPBP+N4JlvQdQLJofNYESrNQN769NDrDM0ojA6DBRYAAjZrVVn8vXOKGISCZPkCThheSHFuIL7F5DiqIkQ17Id7cVTrV37kOzlb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kFgDYCUD; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-477563e28a3so27713055e9.1
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 07:58:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765814297; x=1766419097; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j5xnr554TtYoRpbiQVpIVqZ94ylKVMynqnLIjhVFhbc=;
        b=kFgDYCUD2sXlFAQUXp/+muBWkya3XdNA4bOLRoB/uY0Ju2OX3RjOVTSYR0yvywx8+i
         4ykFclRrd55XpJUPCSpoRvHRX2lMXZ9HOObvfJnxsMjNC5xFiifutiduVD0+xhzXgE8j
         SuEB20q6lwRYu90QKrK4mNUrGg0mCV3WdVin8qMZyhfaUcglpW2HC1OVKLVAETtO+xiD
         InoDP2VWDTrnhx7aoZEkYSFyYgVq7QL+8cCooaSearV9yNQq9+CgFjh+sKRtW45WbUUM
         waCS32iYOYwa15i6Zd4h7to6jgEq5bPtpwSAvOX9Wg5rO9AJG3a3/i3s52ulSjMqzAlr
         BR8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765814297; x=1766419097;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=j5xnr554TtYoRpbiQVpIVqZ94ylKVMynqnLIjhVFhbc=;
        b=Bzv2YJUSNTHBv+rW478w2Dq5gpFK0KQUV9oNRC0XV/aEz7gdB3tbeRz6lzKl+k0bsF
         jDfVtwo73+p2WoEGoP0ORqXz3pGPv0jRChUfvvolb9eMQhwiVILuM4g2d0BdVr39v0Am
         lEpSm0rbiog8fVxtv5CxHnUheXumbgt6W30TWDZX8yfQz5NkZV2QjfjBmqqDV7AWvXSa
         LJ3LMwgSmNwiXNFjy3hXWQv3hBFuVogWm/MYw+a/qHZkPEufgxGg9yfwEn/13G2WnUcM
         uWR0Twjip9VoODK507LR5llMEvHoUvhbo0nTZnB6OxL331Jg5D3XvHpWWJrYAAfqnZRy
         FxgQ==
X-Forwarded-Encrypted: i=1; AJvYcCVmqyJsVK56TMHD2NNfqY79pCN9oaPyZEtNWOTEPCHtZMd6v29AWn/Ww/oDMOkADFsXdWjujs6sNQeN@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9p8+jjxlH14qs8J5EQqSGWD5JuxRpIQcnSNJVRs+Pq+Z7FlYo
	gZOalALDnecsl4fbyuP2ZpKZIcOgyXgUwcca9aUizOjrlCRaPEoozHuZ
X-Gm-Gg: AY/fxX4VhCRAigxRu8O+3+JZp6IiOkvtJuKxFhaQAHWKmInL5Duijl+ZTxVIqMQga+7
	Yqwcl6AHERTc0XdNO8jGD7S73Rw2xodIMTzwltFQcwa929wuCy9jHETVWsTGOYJ86SNvcv6FwJw
	8JzfuMCg/stRGoJsh+gapI7tkYOgfZ0/733nPNe8S294CgA9lHbe2bflieHdmnB/cmO4SdW6rq4
	Te0CdOFXrZ1BNl3DzANFOj6m6TTMDIbc6BE1vbpCITWmTcGRKTV/HmKGKLqytMufc2e5PjThYYQ
	K7MD/yJQc5wXhvkYlXogvUq17DUKdoFCWPGKgwCGXxnwz7ixPxdhyOIa/9CRpmII5U0Uv2n41jN
	8SXPEw0MO/qYzJM+PdP072VZffG0wsqurLxD22UzCMEhmNY7hg3luQQdQQKk2lmQ0ZvChOGmpfZ
	fwHYxmUS1vxNgrA4s2Kajepxb8lZLsCI8Ese9KIbDtjpZegltUEIEMEA==
X-Google-Smtp-Source: AGHT+IHg35WoITkMiGDualxHoa4S7x3nYKLJdG+oJFRoF7ngTCh3uk/xv1zFZFYVRyvKfVEk7l8FKQ==
X-Received: by 2002:a05:600c:529b:b0:475:d9de:952e with SMTP id 5b1f17b1804b1-47a8f09428fmr129477115e9.1.1765814297020;
        Mon, 15 Dec 2025 07:58:17 -0800 (PST)
Received: from ipedrosa-thinkpadx1carbongen12.rmtes.csb ([67.218.238.173])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47a8f3a1be5sm70209665e9.1.2025.12.15.07.58.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 07:58:16 -0800 (PST)
From: Iker Pedrosa <ikerpedrosam@gmail.com>
Date: Mon, 15 Dec 2025 16:57:56 +0100
Subject: [PATCH v7 3/3] MAINTAINERS: Add entry for Sitronix ST7920 driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251215-st7920-v7-3-36771009ec01@gmail.com>
References: <20251215-st7920-v7-0-36771009ec01@gmail.com>
In-Reply-To: <20251215-st7920-v7-0-36771009ec01@gmail.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Javier Martinez Canillas <javierm@redhat.com>, 
 Iker Pedrosa <ikerpedrosam@gmail.com>
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org
X-Mailer: b4 0.14.2

Add Iker as ST7920 driver maintainer.

Reviewed-by: Thomas Zimmermann <tzimmermann@suse.de>
Signed-off-by: Iker Pedrosa <ikerpedrosam@gmail.com>
---
 MAINTAINERS | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 5ddf37f0acc960039422ef988cadfa7176972fc5..79b8a277e38b55ebcff05450d6c565c0d87c6b51 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -7861,6 +7861,13 @@ T:	git https://gitlab.freedesktop.org/drm/misc/kernel.git
 F:	Documentation/devicetree/bindings/display/sitronix,st7735r.yaml
 F:	drivers/gpu/drm/sitronix/st7735r.c
 
+DRM DRIVER FOR SITRONIX ST7920 LCD DISPLAYS
+M:	Iker Pedrosa <ikerpedrosam@gmail.com>
+S:	Maintained
+T:	git https://gitlab.freedesktop.org/drm/misc/kernel.git
+F:	Documentation/devicetree/bindings/display/sitronix,st7920.yaml
+F:	drivers/gpu/drm/sitronix/st7920.c
+
 DRM DRIVER FOR SOLOMON SSD130X OLED DISPLAYS
 M:	Javier Martinez Canillas <javierm@redhat.com>
 S:	Maintained

-- 
2.52.0


