Return-Path: <devicetree+bounces-235801-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 95ABBC3D07A
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 19:11:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 672094E112B
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 18:11:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3999534F24B;
	Thu,  6 Nov 2025 18:11:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FDw660X0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f44.google.com (mail-oa1-f44.google.com [209.85.160.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A610329E10B
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 18:11:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762452701; cv=none; b=BsjJpD2BdoppyRzUBR0hgNJKp3wYpVetHHnWk06Crkytgh56Y6jt1Tk6sJWw74Pj7RDupYOr8/2ehZh2S7p/+Pt44JvlFuLP6PBHfqz9iEosNFtuoNBetWBOKwYmLNevU1XpQAkE8GsMjQk28o+VObBNQrK2IoZijZj1X/iAz4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762452701; c=relaxed/simple;
	bh=ttDLOV58sV7aHLZikr2VflAiz+1E0RrJKiUCgh8qzIU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kwn/KwDP7jvP2fSWLQ5SiytA8AMOzhqz38XP/LC6WzI5+9IliMfEr7dQD3kVJAl2U+kCkbQXGSuFtUPRFX2/mAhbZDdj/o5+cQEQ1WD74naqiut2of083nJ8/b03UaBPkOOHq1oNrWiCYr82H49Bbz7JfOJRwKPwqcGQNcNLjjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FDw660X0; arc=none smtp.client-ip=209.85.160.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f44.google.com with SMTP id 586e51a60fabf-3e41b6469f5so142592fac.2
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 10:11:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762452699; x=1763057499; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T0LfZV6ZvHIu2m+187yq+/hilPWa6I1ikCEzp8Vg+NA=;
        b=FDw660X0x1cSRYPseFymW2hASIxNm5K30uAEAvc8Vfbb18gZO3Mzjqc+aaNqHXOcJT
         j82MbRxfGSzSUeb0Oj1rmR495e5LcMVwCmUnEb3wzCcmGN2XkbtRMOiErq2jOqNoYXGd
         FVXErMKrExuodA0llC5QJxNUD2qgEL3C3dt1aspr3rdCluE1uvcNvOtvCVqnuyN67BJg
         /GpsY/P3pVdG4tTLYMJwSzPGU/tbw4rD7RM8yPXUoMrvsiIPZlkdSPHtN2g1ygfM/o0a
         nQP03gcxARBBTOzOEtqhOTZmcXqU2qeETsb220jxgdosS8wLKhV73KeGCVcgPK1Ujwhl
         KPTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762452699; x=1763057499;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=T0LfZV6ZvHIu2m+187yq+/hilPWa6I1ikCEzp8Vg+NA=;
        b=Y5jt0LbTtoT5QyFrNUq+Gv4+ZfdCHpOq4EF95r0k7cax6HMJU6gbBCjp2MX4RkNELD
         /Z8K1Hi4/fb46CI/jOpqIaaDGiKdzAtJU48N2k9DGBGGJbecJirdtsEuipnhL+PGXuO/
         ay/JT7G4FMQZzo5kKbUb38XDCzvBPCDUGA6IpLYYJJ2GZ60U2XKfbmSI/MnJYuCkFBYF
         GRN3JK7Fpk8XzLvhIQCEu4Cmdn6UvCBIdXw3QI3LyJaj75Yf4lEsW38NqECXGduIYw34
         fOdYvex6n+mbohInUOwoUhljKDgcyI4ge2uW+2aDaNQQ/jzCiQ08tlm4xqu/Elyhv7x9
         vHxw==
X-Gm-Message-State: AOJu0YyB6zb6IcVjYdH1XtONEHeKPZC70EFyZba7D6ZRyowloS7y+0qh
	d9jrBgJp+hIppDHCSLzA1bLBZriPuz6YB3OPE3kreoUDz1IUdpP09tTv
X-Gm-Gg: ASbGncv1wKW/eOvqUgj03BpXO5ObgA9JJFxbFn/98V5SodwuLqF8jXNr/9i8NGSKh1D
	UUbGDj2ZTEjP6T4JRrXArWM4wCgQJiVokyAGVku5twsGvfuJKZO4BRCw2VulbEcZ8gPmTvx/Ub1
	ezlJkEI2BcaNvR7VfeK5X4Cn2h+rCbHiGt07SShPdaXG3uppZC9bNFsN6gdnU2UH/urrgVveZY9
	XQ/m5ZobeZbOGqZi9CuKA6+v/px8ApwBnW2YI24K9AuF45QdDUw4AH9st3V8jDkbyyvl6L/laHH
	msf4dAOabzdp830cRvkGGe0tcoI3u/WEASD2lqv6XdcsErVfklP4GXoN5vJdvaB1R51ILt7GjXR
	IkGW4V2qWDbwH8JkjRGQU+ZgJThYUl+bggPJlkWMHjRtuiWCQ/34VdeQDw40cwYpjVKu5D9URiT
	qFb/TsbFQZwaQnFvLBAVCIg/4rjUKXgA==
X-Google-Smtp-Source: AGHT+IEuLeAiIcFbvckZdi0fEGQUB8Xf6ZhxDDLX2HCSRm7iQ+wj5DqmHKY9RpQQmONnKJ+cIm7Vyw==
X-Received: by 2002:a05:6871:1d5:b0:3d3:5f85:af68 with SMTP id 586e51a60fabf-3e41e3c250emr345117fac.10.1762452698548;
        Thu, 06 Nov 2025 10:11:38 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0:41f9:c9d3:db30:c36a])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-3e41ed0aa06sm137739fac.8.2025.11.06.10.11.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Nov 2025 10:11:38 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	cristian.ciocaltea@collabora.com,
	sebastian.reichel@collabora.com,
	jernej.skrabec@gmail.com,
	jonas@kwiboo.se,
	Laurent.pinchart@ideasonboard.com,
	rfoss@kernel.org,
	neil.armstrong@linaro.org,
	andrzej.hajda@intel.com,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	tzimmermann@suse.de,
	mripard@kernel.org,
	andy.yan@rock-chips.com,
	heiko@sntech.de,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 1/3] dt-bindings: display: rockchip: Add no-hpd for dw-hdmi-qp controller
Date: Thu,  6 Nov 2025 12:09:12 -0600
Message-ID: <20251106180914.768502-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251106180914.768502-1-macroalpha82@gmail.com>
References: <20251106180914.768502-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Add an attribute of "no-hpd" for the Rockchip dw-hdmi-qp controller.
This is used to describe implementations where the HPD pin is not
connected or used for other purposes, such as in the RK3588S based
Gameforce Ace which repurposed the GPIO for an additional face
button.

The "no-hpd" option was chosen to be consistent with other devices
which already define this parameter for broken or missing hpd
functionality.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml        | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml
index 96b4b088eebe..07342838cd52 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml
@@ -69,6 +69,12 @@ properties:
       - const: main
       - const: hpd
 
+  no-hpd:
+    type: boolean
+    description:
+      The HPD pin is not present or used for another purpose, and the EDID
+      must be polled instead to determine if a device is attached.
+
   phys:
     maxItems: 1
     description: The HDMI/eDP PHY
-- 
2.43.0


