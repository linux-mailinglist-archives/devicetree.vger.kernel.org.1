Return-Path: <devicetree+bounces-166590-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 905AAA87BE4
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 11:31:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D0B087A45F0
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 09:30:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 922781DDA15;
	Mon, 14 Apr 2025 09:31:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="I4w4J0fh"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC2B41DC1A7
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 09:31:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744623093; cv=none; b=Ovk+yXhaeAf2kDpmH0cCIIJpOPNwYBKX9xzflan9eAvPzW/oa6fdZR6njDdNF6QaPHVxVsuK1Vb0kZ0SJRDb0lp6otGx63LOo2qUxn4a9TycWUWMN/xLB8PsUACOAxYhQrvDDJar1z0cw9dj0XfmczvBNfdtwakPAd+lON3I0FA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744623093; c=relaxed/simple;
	bh=WEfGh8/JZ50VI42QY/UzDVj5QGsc8xf1TZieBe4ZvGo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=CrdVFFAGD196xev88lam40l5AvvWSxMXtHsPzwCx7frCtDWJQkDqXY+ADr8APx5kwbm6KPZFkahYEybiEEuBCiHMe5mFGB/3rinFZTM+L8U48y5IhaXqc/+tauNJ7fsrFKniGh1SGdg3hEITHY4UCeneofO+mtb7wboi02HqJmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=I4w4J0fh; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1744623090;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=DcJtOZqqmGG/GNqQfI/h8Deen7z+Z9B2I6ayBe0ZS9Y=;
	b=I4w4J0fheEb+HP0y4eGTI+SmOI7vVmTGUrdOiacerSQFKZCgXDMyKZtTZV2N3CdoLuwF3P
	nEpGxmLaz/KXrseemqnsJ8ZWLwlssLkj91tQSXlgv5blumfR1dI07+s2LmACPqwzpMbNbH
	Q67R3ZExJ+udw2+tJ0z61fsejOa5h+k=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-483-1tFzRIzUMqiKFENDto7C9Q-1; Mon, 14 Apr 2025 05:31:29 -0400
X-MC-Unique: 1tFzRIzUMqiKFENDto7C9Q-1
X-Mimecast-MFC-AGG-ID: 1tFzRIzUMqiKFENDto7C9Q_1744623088
Received: by mail-wr1-f70.google.com with SMTP id ffacd0b85a97d-39130f02631so1642379f8f.2
        for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 02:31:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744623088; x=1745227888;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DcJtOZqqmGG/GNqQfI/h8Deen7z+Z9B2I6ayBe0ZS9Y=;
        b=S5qVV+4UWCMLhYNrSIOS13P0oFIhSv9nABbHchjo2DuSoFpikvILTMsv0h7WN++5BZ
         YMaIuhSko0hImnoPXoEF2HxYw8AVutzsCagw5OgJAEavl+gNDt1xz3/NgD8DSI3vI6yx
         iW72eP7L/D7ujHrW8Utwrt21ZbCOBPzFVrGuQiNMbQ9nFLLX7GgKVlFe1+EbRlHAOOIb
         Q1Sdd4HZ7n35UiAA5tFb+Io4aTF82WsN2FwG+95xGjQGVqNA5okxAdSZdbyXBE+B+nV8
         wZLkwN3MZTAhkF2ETZfFV056ioB8G1g1OP1e3maXHoCY06vwwF16is6nFKCxGhxKroQY
         4aJw==
X-Forwarded-Encrypted: i=1; AJvYcCXWp+f0VUlu5ns4dzNUW8GyVYc7yD/yON7zKKcCt/BzF8SpjZY+4c99e2fH23s21Cl2iazAAVHus5B9@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4E99i1O0+/AJxsodVTGsD4Wz+3Rxnfy6EvEZzNtM/0yU4oYiw
	ScpeSsbocnhImfSIAW3YF247hqoCRkjse7xFeQ5sjsNsABVsjBlvHuoPDLwWSeUDSV/sEExGi9D
	KHZveDGUEJ/QMbD9kh16X6f0g3phBCJ+wEkWXKVsLE5F7Ya2pNKBoIz8PebLuHQfhEpvV2g==
X-Gm-Gg: ASbGncuie/XFVjrv1oQ4dbvzlx0AmkuXTETntH06kFx1LrTj3jEKkgUrSyaSHvxSvqn
	I8Cv5RxPhKYF3rn6EtcjQH4Ebe8Iw2pCETBdQb/9DyIyDRFrf2dM231EbsdjGsHmTIhFSa71oRa
	W2isoJB5F69IJHAoQUMSp0jeG7u8vWDN11DLoTOAyjRPa0EmedMarVE7HqA9y7ReQI5K69AIgF3
	3GD31VzTYwAA0WcJZ4dGhP5iHB65lKk7L2kPnSHHUSI7WkaKIYu/nN/OiEiZGmwq3l1wbyOTdVo
	knsCV1OhZxvYrL4NaiMf2hqs9UJSs275jF6SS4A5IWF7FY+oNn8EkxR9Cg==
X-Received: by 2002:a5d:6d8f:0:b0:39c:dfa:e1bb with SMTP id ffacd0b85a97d-39eaaecd89amr8181816f8f.42.1744623088006;
        Mon, 14 Apr 2025 02:31:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFIf80qJHQp64UqJH+NY2wPEKUU4CFrtiWzV4xC6O7YO6zvGgMGZVZiou6pYI9qUGO0MpoZFw==
X-Received: by 2002:a5d:6d8f:0:b0:39c:dfa:e1bb with SMTP id ffacd0b85a97d-39eaaecd89amr8181783f8f.42.1744623087487;
        Mon, 14 Apr 2025 02:31:27 -0700 (PDT)
Received: from lbulwahn-thinkpadx1carbongen9.rmtde.csb ([2a02:810d:7e01:ef00:b52:2ad9:f357:f709])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43f233a2a13sm169193675e9.10.2025.04.14.02.31.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Apr 2025 02:31:26 -0700 (PDT)
From: Lukas Bulwahn <lbulwahn@redhat.com>
X-Google-Original-From: Lukas Bulwahn <lukas.bulwahn@redhat.com>
To: Frank Li <Frank.Li@nxp.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Patrick Havelange <patrick.havelange@essensium.com>,
	devicetree@vger.kernel.org,
	linux-iio@vger.kernel.org
Cc: kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Lukas Bulwahn <lukas.bulwahn@redhat.com>
Subject: [PATCH] MAINTAINERS: adjust file entry in FLEXTIMER FTM-QUADDEC DRIVER
Date: Mon, 14 Apr 2025 11:31:24 +0200
Message-ID: <20250414093124.19683-1-lukas.bulwahn@redhat.com>
X-Mailer: git-send-email 2.49.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lukas Bulwahn <lukas.bulwahn@redhat.com>

Commit b7549ed5edc6 ("dt-bindings: counter: Convert ftm-quaddec.txt to yaml
format") renames ftm-quaddec.txt to fsl,ftm-quaddec.yaml in
Documentation/devicetree/bindings/counter as part of this dt-binding
conversion, but misses to adjust the file entry in FLEXTIMER FTM-QUADDEC
DRIVER.

Adjust the file entry after the conversion.

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@redhat.com>
---
 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index af3537005de3..661419d7c71b 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -9216,7 +9216,7 @@ FLEXTIMER FTM-QUADDEC DRIVER
 M:	Patrick Havelange <patrick.havelange@essensium.com>
 L:	linux-iio@vger.kernel.org
 S:	Maintained
-F:	Documentation/devicetree/bindings/counter/ftm-quaddec.txt
+F:	Documentation/devicetree/bindings/counter/fsl,ftm-quaddec.yaml
 F:	drivers/counter/ftm-quaddec.c
 
 FLOPPY DRIVER
-- 
2.49.0


