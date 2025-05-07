Return-Path: <devicetree+bounces-174812-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E97EAAECD1
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 22:22:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 942557BBA2C
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 20:21:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9A6C28EA61;
	Wed,  7 May 2025 20:22:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="W3Q0tQH7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D2E428EA4A
	for <devicetree@vger.kernel.org>; Wed,  7 May 2025 20:22:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746649350; cv=none; b=YjjZ4pwHMhWezcRMvTIH23eh1NdBl6LfD+5O/w0Co0FfjZkAVxMMHZJJuVoRvQ7+J00DndFXwf6pCUKiHWASxxLBy4a0EBVjHX9HB66KerVWPT+34W5So8/RRJpwedN4sSBqQPZmII8cHgF1HjEhA6hY59JBySOoq6Y2Ej3ibE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746649350; c=relaxed/simple;
	bh=xsgJ2zKW1s6unCASARfB210Gumqt0eW6xXNMAN+uJvs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=HnRfhxOqsAPz7kul/WCGm99HHBMHkAgXzOL21mKs6WBPqTdWSzv/IEYtu2tnUfZrrZ2QCmqrfGIhR3EwhCN2Upz1r2lrTddPqhkbARwxEjtWam3x66SF5Cn3fZFTIZmZetuSIV+oQK3YMQy/OSceov/6Apm4OiwEt+5j93Paq20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=W3Q0tQH7; arc=none smtp.client-ip=209.85.210.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f54.google.com with SMTP id 46e09a7af769-72c3b863b8eso141786a34.2
        for <devicetree@vger.kernel.org>; Wed, 07 May 2025 13:22:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746649348; x=1747254148; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2wCsPI37yI3kW2PZlC399eWtWxNv3NVwnKhYRGNZB4g=;
        b=W3Q0tQH7DlnD0LDm7n4IdprQsZFiBQAeLt8QvJE1nOay/6RsZK6nPOVZayACxgXlYA
         v56EsXQNDiait7NcHCJDP2tlwWtETTmDaTT44DlkNeuVNZVWx6aWwRL7wQ4fmReAm7Va
         yN2PJEXPinjxMSOVpuZn0XPzGN46ktTbgET5GioB+fMyUdtf+9nMbmJmb5+4NDaUT1Ba
         z1iDgWBmnKD7mDS9GJsdKNXIMJ03n9e0xhtcPjsgB80QdBeqeoQIDLGseSlwHF8Q+m/t
         pvaZf1HOh3SDKyG0YGfngFsTIKqfTL5S5D8oNRMQWP2C3O6QsYpzPBDte5ocBlWoObNP
         828g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746649348; x=1747254148;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2wCsPI37yI3kW2PZlC399eWtWxNv3NVwnKhYRGNZB4g=;
        b=XL7SyKKauwuBiMA+tktRJ+36ktohL4Pu5Zckh3tQLRKev+hWRJMYnRUCU7zTqJ48iu
         JRmhjIleVtAE6WiyRQD3eOE2hgwoJV/0cV1RRiyH6eJI6c2v6dEgArF5b7NTHqgvBSsT
         K31oGUUQCG1dEtfkwI3FJiKcwyhYQ0B+pJugbaC6eQA1vcCGYRAIB+ajsldFsGZPZV7x
         /PZd6+9OznLRyshFoChzDnBMA8H6TFqxE+AJkziW1hNSAUi9Nzne+QQzNZ4V9BL1w0x6
         Z9PMduaRzkueMqHhi9XccQtC2Q9UwWpT4qkWUMSDmnS7+64bGNyO5HZlf0Nzc467mv0G
         N4AQ==
X-Gm-Message-State: AOJu0YwMzYo3gkVG5HdQmiin2XpA5etUI13i3UshZ4X4wXzLAoEwpB0c
	jOXoMWzg/WITqIsh4YZ57B2SlwtdtE5zPiruVtGJ+xLmBuYogRJG
X-Gm-Gg: ASbGnct9X/reOlDgNN0v59v5EUZvh91F8z0ZQvdtK+XvVnAZqwgIvEDkdb584vzGGFo
	XobvrB2ai5X/ClBlxNWmNZSTDMq+Hn021j9svl2XtGCKsYY9FseUALVFMUspbNG5EbCxNv+i4UW
	jzLButUXkQmlPhj1jGw8NEaKc1tos1eO8u68cOLN9WkqCJUjAZ1UXWTXpK/qA6bIREnDLnjYek3
	fwIcMeyq//6REfEGLzA6FVljgzW00PN/dLJJbwr81oIdmRPuBtXdL0RPwpZRtPj4uUZdtKXho48
	bBMtYRV5fHCcZKq/P9OJS8tYKluUs77/WmHiLipkecbDQLuHKNbiIgm0E+8x
X-Google-Smtp-Source: AGHT+IFytOVfXojJmCR6jJHFmx4KGJn78CqT1+wKBNfjDiJd69/px5acPIOn7PhMAV+YoSaRnITWVQ==
X-Received: by 2002:a05:6830:370f:b0:72b:9fb2:2abd with SMTP id 46e09a7af769-7321c97d487mr523435a34.20.1746649348140;
        Wed, 07 May 2025 13:22:28 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf:e46c:46ba:cecd:a52c])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-732109df2dcsm725945a34.9.2025.05.07.13.22.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 May 2025 13:22:27 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-sunxi@lists.linux.dev
Cc: devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	ryan@testtoast.com,
	macromorgan@hotmail.com,
	p.zabel@pengutronix.de,
	tzimmermann@suse.de,
	maarten.lankhorst@linux.intel.com,
	simona@ffwll.ch,
	airlied@gmail.com,
	mripard@kernel.org,
	samuel@sholland.org,
	jernej.skrabec@gmail.com,
	wens@csie.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org
Subject: [PATCH V9 01/24] dt-bindings: clock: sun50i-h616-ccu: Add LVDS reset
Date: Wed,  7 May 2025 15:19:20 -0500
Message-ID: <20250507201943.330111-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250507201943.330111-1-macroalpha82@gmail.com>
References: <20250507201943.330111-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Add the required LVDS reset binding for the LCD TCON.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Signed-off-by: Ryan Walklin <ryan@testtoast.com>
---
 include/dt-bindings/reset/sun50i-h616-ccu.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/dt-bindings/reset/sun50i-h616-ccu.h b/include/dt-bindings/reset/sun50i-h616-ccu.h
index 81b1eba2a7f7..ba626f7015b5 100644
--- a/include/dt-bindings/reset/sun50i-h616-ccu.h
+++ b/include/dt-bindings/reset/sun50i-h616-ccu.h
@@ -69,5 +69,6 @@
 #define RST_BUS_GPADC		60
 #define RST_BUS_TCON_LCD0	61
 #define RST_BUS_TCON_LCD1	62
+#define RST_BUS_LVDS		63
 
 #endif /* _DT_BINDINGS_RESET_SUN50I_H616_H_ */
-- 
2.43.0


