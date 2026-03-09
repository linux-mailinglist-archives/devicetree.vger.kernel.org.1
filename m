Return-Path: <devicetree+bounces-273066-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EF4vCFkMr2lzMQIAu9opvQ
	(envelope-from <devicetree+bounces-273066-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 19:07:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2566D23E396
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 19:07:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 580FF301C8EF
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 18:06:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 595342727FA;
	Mon,  9 Mar 2026 18:04:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FP4DODNO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CBE7285C80
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 18:04:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773079448; cv=none; b=RwE+wcKlG27zmo9lICUbCIDaF84sSUfKOgo5SZhVEnqCaX28z7T/LdFpHXSEBueddmr2S1+rSOZkqiUdlgIOEast/jjmz6ZOsexI2mvdOkvnR9XHKlpsZ+bied8JiRFqNOFMSXRbSgf+DTB6AjlIk/tojJ/9dUEIy7XO0Tcsw7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773079448; c=relaxed/simple;
	bh=saN2Ki1xXcdiPdysrzrwglOdm/Xhe26yzmN3T6+yXpY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=PwmDDghdn2xKqIukY2MnpROonIrUo68YmG9KV2hKA0OwYnXEAII2C+VL9BeBMBw82rioFg/j/tF3DiQlLaX2fao5xlNfhpXVgkoT1c11FTdFtZinhZ5HnibaYWbbSpGteYE5RaGHZ133jkUqj2X/Kq1mYE4PzYaNJ47IDpO3WcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FP4DODNO; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-439c5cce2c6so5592055f8f.3
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 11:04:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773079445; x=1773684245; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=dV3Rs94eq/8lEKJBAht9P9yGrd7viF7G8GZxAdck6ME=;
        b=FP4DODNOEfhNIKEoFxGYqKWOetc0mf1i/PPNR9ICCsFNj8xSBt1lV+7ALSp4yU8v8Z
         C5EMZkx3+GLpG0JQV8boHcYEE4bg8ATOZJVkMqZ2oXH8092wzBcpAYlGONrKv1d1A9Rn
         lsw+c76htLF0P2Rxy0kLZvGNI4hyHUMqJJ133y74sQvOPydYHoE1jb74nWzZhcLBfTNx
         0Qr5cqgkciPG+jxGwFDR8TnnPy4kNtbvigqngRVTQ75Hbg0GHOROM08H7djupdB5X19c
         qN/07YPkVYTVFJE3usU1i0qv8o/KnNTVJc+wCInQ3tv226BKrQSyQ4I+gBYE3qWPWMsi
         LSsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773079445; x=1773684245;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dV3Rs94eq/8lEKJBAht9P9yGrd7viF7G8GZxAdck6ME=;
        b=NsZJGmtstO1/7Xi1gWTrr5nd+a/+Cl1Rwd6TpQs34lMapW/YD4V3BKFGa5hY3MSa7c
         JCWZ2HUG3GInsfAnAq33AH8TvCY2EdkdM2WssuBcPYQ9Yr5Ycv9o7cz6YH/aEFAF+REj
         xm4oFGed6bDTHRwGKiyoLrVnsJRcc6LnNIEQtIcvd4+NF4OsyAmnZVhahYNl2vD6y1T0
         lH0L+CyvBszirp17oK3xuKmovKIh3xw6FsIcJ0698FXlkUvuIBndt9BcvRdSIaGtKv1R
         Jsr68ZopQzhKGU7Lad/GcBdXwX/v4nNyFxAzfVQ3dhxLHvt6pZCwmowmVhrIqzVxmHv6
         Ffig==
X-Forwarded-Encrypted: i=1; AJvYcCVTOHXTaoIT9yI/TD2kkJhHQxjHFVj940YtmmgaVvKkCiuOSCIVOt9zxhvtLGJKpLrba5CxQ0LIxMmU@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1zzld3pvciJI7utNTlBdleFSu+W3+uSS2PPq/h59NvjYnb4oS
	SpfzpRjz+6dRVZ3G+7tjA51SEhTV2R4DdOE3QiSeL8cGHCNRj2ZimFUh
X-Gm-Gg: ATEYQzyvRUrxhc0+VTW64s74jpxB1z8XySl7YSTOkH5Pjqo2ZJ/a/pd0DNwT1uGCRdK
	nq3afeot9/b8FhP2543Utw47Wise/sdwWZgHzfFHZAIpXZ+g4iyztyGSIGwVxaC6+BsaV1gibRw
	JclNCTB29jCa67mq5OLbg1VaQuO2d2B07v6DYw4z78SUkeUwer0E8KaFtAe/l7b3c/fNvu53pJH
	ucBlSCyCis21y4+fpuHesiLkWDPnm0Px37oiyXeGsxHRUvmpCzGLi6Q5LZYexrhF5HGGw0qLQm9
	2uJn6vH7Dql+NGZ2JSWcACe0xtwwjR9qCCJ5K2B00O58Lay8uzAyQkI6WBwzpRD/Jb4brkyvJcy
	Nzj/vhoQozrYVz0pWssZSOxRpLCBWJYJl5mUZ8f+Oq2Zznhw3zvW8bIHhEjoiI7PFwMANg7i8E+
	EdF0wQp/NGzmFArjpiyJo=
X-Received: by 2002:a05:6000:290c:b0:439:b3d2:376b with SMTP id ffacd0b85a97d-439da66207amr21666689f8f.14.1773079445110;
        Mon, 09 Mar 2026 11:04:05 -0700 (PDT)
Received: from luca-vm.lan ([154.61.61.58])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439dad8dbb3sm25233528f8f.4.2026.03.09.11.04.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 11:04:04 -0700 (PDT)
From: Luca Leonardo Scorcia <l.scorcia@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: Luca Leonardo Scorcia <l.scorcia@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <jesszhan0024@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3] dt-bindings: display: panel: Document the rotation property
Date: Mon,  9 Mar 2026 18:03:36 +0000
Message-ID: <20260309180353.8220-1-l.scorcia@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 2566D23E396
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	FREEMAIL_CC(0.00)[gmail.com,oss.qualcomm.com,edgeble.ai,linaro.org,linux.intel.com,kernel.org,suse.de,ffwll.ch,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273066-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lscorcia@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,qualcomm.com:email]
X-Rspamd-Action: no action

The Jadard jd9365da-h3 driver already allows DRM to get the panel
orientation via the device tree rotation property (described in
panel-common.yaml), but it's currently not documented.
Describe it in the driver documentation to fix a dtbs_check error in
Xiaomi Mi Smart Clock x04g, where the panel is landscape-oriented.

Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
v3: Fixed commit message wrapping
v2: Review feedback: improved commit message to explain how the rotation
    property is used by the driver and why it's needed in the driver
    documentation.

 .../devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml  | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml b/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
index b8783eba3ddc..25024f4a63e1 100644
--- a/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
+++ b/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
@@ -33,9 +33,8 @@ properties:
     description: supply regulator for VCCIO, usually 1.8V
 
   reset-gpios: true
-
   backlight: true
-
+  rotation: true
   port: true
 
 required:
-- 
2.43.0


