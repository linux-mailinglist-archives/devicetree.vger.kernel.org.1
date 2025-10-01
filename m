Return-Path: <devicetree+bounces-222895-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E8CA6BAF35D
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 08:16:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A2FB3164084
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 06:16:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECF1527FB2F;
	Wed,  1 Oct 2025 06:16:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="hEKhphph"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 309CC20E334
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 06:16:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759299379; cv=none; b=CNXq8qDtY46SolM5ZIjbzspD2Z0hxFO+Y/KuETbz5K7Su7AobYHzafPo4JsO7YKigqVwtXR/igNi3ydauDAANn3lLo56Bp82R15F/TviShEcbavtAipYIkHEgWSeBnmb/ulvaJRdgLi3u8ydfoAzA9DyR2y4hUPa88pQPTuTkTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759299379; c=relaxed/simple;
	bh=zTZvQvz7JG+APZWziums5mPjsnmOIULh8ulG7LVPhkI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=DEhzesW4NNdQX/gsl3gwPyjdKgMtpdMoWIt3E9m6Iq3E1lY99vLK81ELs6HM6IKcTOXPGfj+WxvtUXnGnvkS2rdAlurmgXkAKetFBxacWEQYy2zXKhfMggiepNPUJbiQvprhL5RqUrpI99kgOHMLIxKzNF/ilQ22qPn/9u1DI94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=hEKhphph; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1759299376;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=8gaStWL+ntZFUm4T3e327BEdVCx4LxQqNCCOu6JDj8s=;
	b=hEKhphph4cGAUKhqWk9/qKaXKGfkDbVtJdTFMSUx1LKd1dmiiTf0xccDHU7DHAEbzB93ro
	YiZF6GhdkrCart+2INWx8CQeheTDI+wHpF0X2kzMRIovggDRw1VbPaZ+fgBkFa6cvtbGmc
	XRCRrsD5PTDffIwx6BV8YgreHMZUo+8=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-328-QExwZB2IOpiAlrozLxfXbA-1; Wed, 01 Oct 2025 02:16:14 -0400
X-MC-Unique: QExwZB2IOpiAlrozLxfXbA-1
X-Mimecast-MFC-AGG-ID: QExwZB2IOpiAlrozLxfXbA_1759299374
Received: by mail-wr1-f69.google.com with SMTP id ffacd0b85a97d-3ee12ab7f33so3527633f8f.2
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 23:16:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759299374; x=1759904174;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8gaStWL+ntZFUm4T3e327BEdVCx4LxQqNCCOu6JDj8s=;
        b=A+R39Y5Vh3/JU5DmBh6VDGTrgcVS56L7+LVacRfpweIRcD5Y849b6k6rz6d5qiRkBL
         O/3OC3UB2tu1khlcCLcYGF1GB8q1h9/coqE/RP+HpriDpDmESs8GnHtBbBigme/sdFpD
         Vhex05+XLc6yMyZ3/nwtdUlNaWaGiWrjjnyAwxhU0uASzScpxLCRgY0F3XRFhQxxxa1x
         csdjzu1T9tGGmUIojGP9SgfE9qOMj+JgVZlrSuYetFK6ojcC7laswRx1LP7JNRNzHDm3
         dLH1g293WidFqlZBMffEoQWcXL1Gkeb4XOvDD6wryEJHlw7n7EJV+xxZgrIRARDaDnyJ
         h8CQ==
X-Forwarded-Encrypted: i=1; AJvYcCVPr5uGJvwPPLH1ZbQOsnoViKIZ3oHC12XkuS/F3HgDapSt1xOIoUFrbK6tGKAd0/cH7MQmqeW/HfB5@vger.kernel.org
X-Gm-Message-State: AOJu0YzC+Bk9kpF9dzfY6ibKm2/j0LxTqnUwLxthsa5y5TbIKQwKNF3c
	gN9lkut3fdd3gWp+AUcz51r0F2X+kaMcviJOoKIsrzxHgDYdufIEdH2sz2HS4A/nLKnm7ZT8DxQ
	ocSKyQZuWAdujLAOF2DmbRCn0Xmaj2FBGeLvAsf7nZlnrDkq69A1/AkI970jBI6M=
X-Gm-Gg: ASbGncvy46+ywPGNXW7R7Oph6OJaQVMIjvP//zJyZdcwVNjD3ASO1GJc1I3qGFmQ5hx
	uI9DW7Eo3XzSbjYPtmStEtCDxFKkaN5JTkoBL6TRwy3b7EUmC+ijTdcgkqV1UwJLL59WLzVanNx
	5viwC4C0kOwAVzxle9PAnihbhW3dGSkvdq/ArVOw0C2rUHQnnXIVqp3jmzvEf7yZwN/as/+ueWi
	oYzvck9/3PsUzLyy9giy9MEh/Qez6yZ5+cN5xwVfJ8cPyr6RlB8JCPdEvGbboVGqlgRFeAd0coN
	R22BbTtqS4A5MIln6bo9GXL6Ltnpnh8hCGoG9f01MEqf+LM/yz7FGUo6KukPmOaHV0u9bWZ0/rZ
	q2v4P/68KBjSIcw7UWiU=
X-Received: by 2002:a05:6000:2381:b0:3f8:e016:41c0 with SMTP id ffacd0b85a97d-425577ee9a5mr1625967f8f.10.1759299373651;
        Tue, 30 Sep 2025 23:16:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEqt0cbQ3yhlC9NUmKLr9TrwlDXftJyJ8jaxrushSt7Z7NutbNA/tFFVZiy52RJ3xcD/4g9ZA==
X-Received: by 2002:a05:6000:2381:b0:3f8:e016:41c0 with SMTP id ffacd0b85a97d-425577ee9a5mr1625948f8f.10.1759299373270;
        Tue, 30 Sep 2025 23:16:13 -0700 (PDT)
Received: from lbulwahn-thinkpadx1carbongen12.rmtde.csb ([2a02:810d:7e01:ef00:ff56:9b88:c93b:ed43])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-41f0c467ecasm12794524f8f.38.2025.09.30.23.16.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 23:16:12 -0700 (PDT)
From: Lukas Bulwahn <lbulwahn@redhat.com>
X-Google-Original-From: Lukas Bulwahn <lukas.bulwahn@redhat.com>
To: Frank Li <Frank.Li@nxp.com>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org
Cc: Peter Senna Tschudin <peter.senna@gmail.com>,
	Ian Ray <ian.ray@ge.com>,
	Martyn Welch <martyn.welch@collabora.co.uk>,
	kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Lukas Bulwahn <lukas.bulwahn@redhat.com>
Subject: [PATCH] MAINTAINERS: adjust file entry in MEGACHIPS BRIDGES
Date: Wed,  1 Oct 2025 08:16:09 +0200
Message-ID: <20251001061609.513432-1-lukas.bulwahn@redhat.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lukas Bulwahn <lukas.bulwahn@redhat.com>

Commit 74459b0dacce ("dt-bindings: display: bridge: convert
megachips-stdpxxxx-ge-b850v3-fw.txt to yaml") renames
megachips-stdpxxxx-ge-b850v3-fw.txt to megachips,stdp2690-ge-b850v3-fw.yaml
as part of this dt-binding conversion, but misses to adjust the file entry
in MEGACHIPS STDPXXXX-GE-B850V3-FW LVDS/DP++ BRIDGES.

Adjust the file entry after the conversion.

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@redhat.com>
---
 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 343948543711..250e90f6f0ba 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -15957,7 +15957,7 @@ M:	Peter Senna Tschudin <peter.senna@gmail.com>
 M:	Ian Ray <ian.ray@ge.com>
 M:	Martyn Welch <martyn.welch@collabora.co.uk>
 S:	Maintained
-F:	Documentation/devicetree/bindings/display/bridge/megachips-stdpxxxx-ge-b850v3-fw.txt
+F:	Documentation/devicetree/bindings/display/bridge/megachips,stdp2690-ge-b850v3-fw.yaml
 F:	drivers/gpu/drm/bridge/megachips-stdpxxxx-ge-b850v3-fw.c
 
 MEGARAID SCSI/SAS DRIVERS
-- 
2.51.0


