Return-Path: <devicetree+bounces-99199-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 12A3596937C
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2024 08:16:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 45DAC1C22BF7
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2024 06:16:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A3911CEAB0;
	Tue,  3 Sep 2024 06:16:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="feRF/iIe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f43.google.com (mail-oo1-f43.google.com [209.85.161.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B03D01CDFA1
	for <devicetree@vger.kernel.org>; Tue,  3 Sep 2024 06:16:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725344174; cv=none; b=QdOx/s1G3ZMwZPI6l3Bv7QCpd+L3zl7MDWOPI3UxBVfIxGrPi7BoP49mYIBwdinydOrXtCPWv/Z4SfkNIvj3dmGDro/3wwqve8d+Qok4ZqmQTZaGzvpdXbW93OLudRkE6DTBIHfp3vgIVVSMrwJiqLSBu6+R0GUVzTpmAg1SaIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725344174; c=relaxed/simple;
	bh=deggtvOiPxfY9hndrPsLSOWlaVlQZ0daB4TbW0uW/I4=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=BHSAUeFbrcOWj2zcgLXCRrYCJkFtkyD/LPUtljwJ2v85VSb/nIl1fQCsyHQ6aV228pHu8eWSlSxgu4ReJRbuCLXdaYnY1PZBw7l8pPxZ1pYPLz95iimEiyw5YxPX4ACQz0lL8soXU05nUwQctvGzBIqewBAJJ88vAWGQXyWYvvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=feRF/iIe; arc=none smtp.client-ip=209.85.161.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-oo1-f43.google.com with SMTP id 006d021491bc7-5df9433ac0cso3359965eaf.3
        for <devicetree@vger.kernel.org>; Mon, 02 Sep 2024 23:16:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1725344172; x=1725948972; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ElCvWR7fcelFVFGE8p4d+UKKJx8aarvsE8q+pY5j500=;
        b=feRF/iIebW7GXzxG93pxUbOlo5M+SN7ooRuJlnNSrUu8DAKIFvcyTVDjsLhfQZ8bX8
         T9RMdDMOs9WS0XqFnelMQhp1E/xB6U5yWPRBbaoYiwaNrfB0gu8UPc++nal1KHnFZ3YH
         lD3gUj03zJ/GkxrxwDLMTeoB75Vo6p09T6yldH13EjTI5uywGQw8IDQpjko2RnwQZCcs
         5BTJIsMvzqgiRhyh5Ols2eVZB+DlVb9GDmxUeWcLma/Z/EWZug6XsuF8gGCxFItfao+n
         jdOTGyiO09HB3QU0BEoYsgqymn1zWk/AMScr+WNUIZmjjdXeT4biju7iGHG+3MWy0/Vx
         V5/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725344172; x=1725948972;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ElCvWR7fcelFVFGE8p4d+UKKJx8aarvsE8q+pY5j500=;
        b=bJnMs2+MH5phX8X3bD+qz0uubeUllvtmN6DDra0dsmK8tvXFRiiEcOwPboMRlowd9x
         kzsNCSNZXJtFkJ7/OtpjjpxbcvjEydZ6hnW2CDTEDV7DlrMcCLqQUik4H5SWHeYHqDIb
         6cGbnYSxnOFIf3yhtaSiWFHlnaNkC3oFzSVPmMSnUl6QaShfNoutI0fEYExyTIIYEt3/
         HUfU49ngQizAg9kq3EJOberBa66K7ZvXB7rQmMZx1D/BLqfEPN/LA8bq3R+xRe1pOrgZ
         +Y+9bwkRuHLmRgpSQcoWimUgT/gPfUviDXhipA2q1zb9Z3KFliiF4sPyk5yk2zQs2h2+
         qdOg==
X-Forwarded-Encrypted: i=1; AJvYcCUnAssrQ3vvDJ2R3UezAFWqLTGVtns2Cb0HqM6CfL/j+6Igg0HPu1CQda7QAzwmaOZbhlZjymnAXtfv@vger.kernel.org
X-Gm-Message-State: AOJu0Yzp9hUB445HfiEtUaGkwL/fIVMJUH1qgAawCIa33HuFf91MXkp5
	ydzvlQuX/eypT7qPDbdbwLDf/pRKNXeDV+U2UUieAeCTEwvMmcWiCuVjyWxTdCM=
X-Google-Smtp-Source: AGHT+IG2tdFZEFYcyYni0un9vMzsadLohCJ0pP2jLeBlZ1Od8A3SVpwYq5Bvb8FiaHawN5AZA7QK4g==
X-Received: by 2002:a05:6870:328f:b0:270:2c3:f362 with SMTP id 586e51a60fabf-2781a94563amr1280235fac.32.1725344171802;
        Mon, 02 Sep 2024 23:16:11 -0700 (PDT)
Received: from zjn.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7d22e9be1efsm7151415a12.62.2024.09.02.23.16.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Sep 2024 23:16:11 -0700 (PDT)
From: Jianeng Ceng <cengjianeng@huaqin.corp-partner.google.com>
To: angelogioacchino.delregno@collabora.com,
	matthias.bgg@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	knoxchiou@google.com,
	hsinyi@google.com
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Jianeng Ceng <cengjianeng@huaqin.corp-partner.google.com>
Subject: [PATCH v2 0/2] arm64: dts: mediatek: Add MT8186 Ponyta
Date: Tue,  3 Sep 2024 14:16:01 +0800
Message-Id: <20240903061603.3007289-1-cengjianeng@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This is v2 of the MT8186 Chromebook device tree series.

Jianeng Ceng (2):
  dt-bindings: arm: mediatek: Add MT8186 Ponyta Chromebook
  arm64: dts: mediatek: Add MT8186 Ponyta Chromebooks

 .../devicetree/bindings/arm/mediatek.yaml     | 11 +++++
 arch/arm64/boot/dts/mediatek/Makefile         |  2 +
 .../mediatek/mt8186-corsola-ponyta-sku0.dts   | 24 ++++++++++
 .../mediatek/mt8186-corsola-ponyta-sku1.dts   | 27 ++++++++++++
 .../dts/mediatek/mt8186-corsola-ponyta.dtsi   | 44 +++++++++++++++++++
 5 files changed, 108 insertions(+)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-ponyta-sku0.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-ponyta-sku1.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-ponyta.dtsi

-- 
2.34.1


