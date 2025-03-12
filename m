Return-Path: <devicetree+bounces-156829-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F5BFA5DA5C
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 11:20:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A0B3A3B5613
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 10:20:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B20123E323;
	Wed, 12 Mar 2025 10:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="fdhyS6by"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAD3E21D59F
	for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 10:20:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741774832; cv=none; b=rJDeQGdYmWvxYtxDaKl+afhFYc4WohElWmxB6Vlg1b7PcmzqRAGdibdaGfu2s9Kv8/nTLqv16dh/W7GoP+IE26ZPcZPnPSSlUmOYeSsl1sCYT0CS5kHG7QdvLkzfPNyr64RbDtk6fmOfBHPU7fKc9wXJS3Aw18O4ZCh8GzZ4PXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741774832; c=relaxed/simple;
	bh=kVD1cBOvbcjfuLGnWQGwAsJLPrywxdLU+w4aBmi2vMo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=oCWf2HddfxtBhpuN5anhJGptRK7XlDfgWozseiNVJgM+jL9IQ/3q5Vr+3uwK2e5R+/InaRq95KXF4Lhfx0cC/og6pfCkaK1syVSng5F+uIqUOzWW/QxtOxF1mtwKgONZekw6HDDg6WxEboKMzpXV1D+NeOpTJZ9xoHoEE6MP0l0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=fdhyS6by; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1741774829;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=h0Yr5Vgm7RUBCb/M+U5Z8BVsZiNBVB+EPPiJ4rqIWDA=;
	b=fdhyS6by15tZnEiIss0zjnherR7EKzyJ8RO2EVOGvlAREz1j/6L9iNPkC96siIqld2+bme
	nodkwvdTPz6c1mSQcxRCOvf3G1ectoEQ2um01P2ktTAb3sO//Kvh1RGYkNVZxsgcWgozB4
	YkWrPZKjBICaKBiBZ23CqUwH9iVmb5A=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-526-9inSblshOf2o9Kb5-mVZQw-1; Wed, 12 Mar 2025 06:20:28 -0400
X-MC-Unique: 9inSblshOf2o9Kb5-mVZQw-1
X-Mimecast-MFC-AGG-ID: 9inSblshOf2o9Kb5-mVZQw_1741774827
Received: by mail-wr1-f71.google.com with SMTP id ffacd0b85a97d-3912539665cso318182f8f.1
        for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 03:20:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741774827; x=1742379627;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=h0Yr5Vgm7RUBCb/M+U5Z8BVsZiNBVB+EPPiJ4rqIWDA=;
        b=ox7FukN0GpOeBZVyE+7hIa3lC6PXC4iHzyGc4JDDDXGWlUMKCSJy2JBgG6sw3tOcU1
         SExYIyKTj6HbYNUWhsFudHUHMtTPwlQsNl8rDFWq9UGe9uwFTlv1Xd/+DqDHa4SmD0/h
         EOi/veW/PWBKdzUHLzygSigUg/ECKkACN/873ztXjP5ap7IBwgdWuSgRNg04KoBmV8Ca
         SGnowOojJkDiIFiXYsfFpLyu5MVzcXf4DsXyI+tlVNwa8CPFvSpwaAmKlFumvJb2I6KC
         AN9JaACGqPo5mNAhqVwRfyOVpRDiPs0MfIoaCG4ulou11OyHenbK2A3d4XmCqlEcGoAk
         3Jtw==
X-Forwarded-Encrypted: i=1; AJvYcCWc3Knl9k/+DPeuNV4Tb0WPmxYfaajHaT+LAAZLRnFYwJtshIuu40UN9PPNTcUyCIyrgXCcHf7S/qvz@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3dfdICAJxQWqiGQr58mqCrJy6RgYrszRi3Y6tdp0Vs9Jwm0C6
	IHXPEvpMIVpN30A9a1FHmcLvyE7KCJHKCZ6paC5UrxpB4QlkNcMD5TzWKtMCJszZiKOrPo0XIib
	RyZQwq5wRZachU0RDWWK6gmA0hB6qWOdtstVh9xke9/GEqPOtO/EJZy9ZDYQ=
X-Gm-Gg: ASbGncu9fdh9dZEvNFnoGAT5MlhpWSgXgKP/0lO0+k8BiAq5geNh/thVq99rZqNOH4Q
	FCMGDqObxfEVYzcqJLPo13CnuBiwvKL6JvacDIbpkSF/qVrWakW3QDLH0uJzAci2oCWY131O40+
	PYdoV1ksAfcYFCask2DXpjYK3rBJr87/G6ESllwJ82oUP1m1reiMRoHEwam2uLcoW5SZ6NxcrrG
	ahwdi8ra1MWMJpUQuebGuHScL32BwLq20R3kJ4cHXRB7pAwoszgl/+F4r7YCn29TQvXPp05ezWC
	hXAfdMX54EufaZIrXE2n8OtEzF6gO+bGWL3u9JfPuKbwi1IcIz6/d39FxA926A4=
X-Received: by 2002:a5d:6c65:0:b0:391:98b:e5b3 with SMTP id ffacd0b85a97d-3926cb6442fmr6821010f8f.14.1741774827296;
        Wed, 12 Mar 2025 03:20:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFy2Q1sDAMgAbiGTwr0193U6ouUjNnUZZOSZ5Aaw1xNFil+VycgOfWKIaXwNWW/V12c4oR4JQ==
X-Received: by 2002:a5d:6c65:0:b0:391:98b:e5b3 with SMTP id ffacd0b85a97d-3926cb6442fmr6820992f8f.14.1741774826959;
        Wed, 12 Mar 2025 03:20:26 -0700 (PDT)
Received: from lbulwahn-thinkpadx1carbongen9.rmtde.csb ([2a02:810d:7e40:14b0:4ce1:e394:7ac0:6905])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3912c0e2eecsm20457196f8f.79.2025.03.12.03.20.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Mar 2025 03:20:26 -0700 (PDT)
From: Lukas Bulwahn <lbulwahn@redhat.com>
X-Google-Original-From: Lukas Bulwahn <lukas.bulwahn@redhat.com>
To: Frank Li <Frank.Li@nxp.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Cc: Stuart Yoder <stuyoder@gmail.com>,
	Laurentiu Tudor <laurentiu.tudor@nxp.com>,
	kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Lukas Bulwahn <lukas.bulwahn@redhat.com>
Subject: [PATCH RESEND] MAINTAINERS: adjust file entry in QORIQ DPAA2 FSL-MC BUS DRIVER
Date: Wed, 12 Mar 2025 11:20:18 +0100
Message-ID: <20250312102018.215018-1-lukas.bulwahn@redhat.com>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lukas Bulwahn <lukas.bulwahn@redhat.com>

Commit 78fa0d19a50a ("dt-bindings: misc: fsl,qoriq-mc: convert to yaml
format") converts fsl,qoriq-mc.txt to yaml format, but misses to adjust the
file entry in QORIQ DPAA2 FSL-MC BUS DRIVER.

Hence, ./scripts/get_maintainer.pl --self-test=patterns complains about a
broken reference.

Adjust the file entry in QORIQ DPAA2 FSL-MC BUS DRIVER.

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@redhat.com>
---
Original patch was sent 8 months ago:
https://lore.kernel.org/lkml/20240708075124.73522-1-lukas.bulwahn@redhat.com/

Patch was not applied yet. No modifications in this RESEND patch other than
rebasing it to the current linux-next tree.

 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 67bfd9109535..e6609b78998d 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -19578,7 +19578,7 @@ M:	Laurentiu Tudor <laurentiu.tudor@nxp.com>
 L:	linux-kernel@vger.kernel.org
 S:	Maintained
 F:	Documentation/ABI/stable/sysfs-bus-fsl-mc
-F:	Documentation/devicetree/bindings/misc/fsl,qoriq-mc.txt
+F:	Documentation/devicetree/bindings/misc/fsl,qoriq-mc.yaml
 F:	Documentation/networking/device_drivers/ethernet/freescale/dpaa2/overview.rst
 F:	drivers/bus/fsl-mc/
 F:	include/uapi/linux/fsl_mc.h
-- 
2.48.1


