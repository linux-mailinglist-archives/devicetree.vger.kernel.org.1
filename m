Return-Path: <devicetree+bounces-233207-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 37522C1FE56
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 12:59:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 164691889B20
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 11:58:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7803C34402D;
	Thu, 30 Oct 2025 11:58:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Na0Z/6vM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99DFA33F384
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 11:58:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761825508; cv=none; b=HnYNPQ9XK+99GENi6hG0RMYZ3tsz8PAgX62Vz/hlLvPjENfAVBjCTp01pXmVKOs+u3hYG3sgfIozeJZx5AQcQRQEnpoYwGY//XNZqi1toyGAhje91DwchxRziqLA3XgLf+8Fug0pmKw4Ug0ff3gTh6pFQA1oaqmsvsRR3e1gZfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761825508; c=relaxed/simple;
	bh=sZNW52iY85l+p/HOpEFb2S81aet8Iw1lQAC4ADUJqwo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=JjF0zg4BVRizU4q6BJ6H++AsxzlaVBhDTgMiQ2FqdSoTyInxhe0QfU8vP5SICUa9lGVX3mbG5LWD7rV7/RVVCzlhWNwl5pyMA/1ouJTJpv53dPVlh201PGTtQbtBEHRp2PAreh3429ZGURT8COtLCX3+xybn6yLx+NEIx1O8WOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Na0Z/6vM; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-b70406feed3so53633266b.3
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 04:58:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761825505; x=1762430305; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=CPxRIbahOA8JF1fBeI0tVZJCAEXOLdeMtoMqodgWGYs=;
        b=Na0Z/6vMBL8Zc7h1ETExdWzjpN9Z8UywQ+xiWnf79uQKa6j2k/WBFPRzykM8VP9ulB
         3fHvARhWDZqM1bpH+Xo+AFtjMngczUtuDRlFE42JnDVISMJ27xMRZ2EbvNX8U5dm6+Tj
         u2D5E1aQz1psL+wEkkwnsYYrQksyy9ISQUCYRMrKxkV9DBYm0tpW5xw1TzQzJ3/dTQbR
         81FUnWU24I6FFfclQ5V0zKVfate0e629Rd7DoxNLPkyMwZvbgX4qzh0r+eWLa0oGF6iY
         pNQJ8nB3IcDaCdXAGEPHqBx82p9l2P1UDEDICRgGd7RcMxBvtepE7aNNHkFtyGEXXFbV
         1zUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761825505; x=1762430305;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CPxRIbahOA8JF1fBeI0tVZJCAEXOLdeMtoMqodgWGYs=;
        b=SOYm9MrscFc7CpMuhA/uU6eA39G9iLPlvdSJNo227iAWGAutr46y3Mr+4NKzjTrujA
         FwWg8o4dRn5F5v+DHSTChGalN/dZbAeL9e2MAbT8b8sBhMXXM4oRSFMCwFe+QohcI7uS
         sLoPQM3boHpwaudUeb2LrOTmblFV5WRYsBRasdT+A5Xf+NiI4rOCr6pESv8mg8vNHYob
         ramqWqZdZz67uKlsqMytYwejEDF0lflTUZ8e2y3lLFedPX9Zsoy6MXFXjsdH2z1ZUmSH
         KgTlfPtUu19Uc0mS/xVpHT4tfd5MVdGsBJ7QlsrEmWLnT2t/5BG7WL6Hbrum5/XVXAg4
         73Bw==
X-Forwarded-Encrypted: i=1; AJvYcCVgHAb6wP5Zk0Q6zLFnmbyP2zOG0SLgghDEjzcHoubzoGqFm6JyO+Jquk0I+GUhGMm35EpJTZbr0uvx@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0nEErFiGPWuy+ZI6RDF/ciZDrPl541vA/efn6NnWTJhuorGee
	Tm7bJOJ8qNIYd4/zoLr2YdBikUX8VjXb/0F2F7R+qs4oo6bPxsyW93qL
X-Gm-Gg: ASbGncslSoWXVZaLTtRQk0Y7kmcvywUow2Rk9ObWNz1lLyjBHND/hLuo4LpsWueTLee
	knggq1RBVFxExQuVtzAM84gNgzKP/cA+nj6JrW27ATkFy6wvfTVae/UEtxNqBKnwbsT8KvaKGrV
	iKzi/+yQHjnnJJ99/svMbKXwaSxIf3oPgChlSW04QiNWCSZQZi5OI3kkUdAV7hRJBHDLQ9xIkRj
	LW6Er30/0EAfzGg+fyY8aYML/XTrY13g5Tea8kCDOQ2AERtY65rWe+6cL2Xd7pZ9hW87DzjiOQA
	idU0iZpeGf71Vi7v7VxpDSc+lxz0NG735tlwbnShJuGWcvY673OgM3f9TGIQffgZ6ufrbCfTQ54
	lua6nju629umViP9MRreJH2wHFp30CAnYvYwRlOmo0sXYwUufQhjzv3iVfK2tRrfVeSI=
X-Google-Smtp-Source: AGHT+IHeSvgWKMHX9GjmCJ+A3zvrNHDZSYQPKt5DrHCbP1HCW+BvdIN08JLaAeXVo88A33OVPe//Xw==
X-Received: by 2002:a17:907:dab:b0:b70:30c6:c169 with SMTP id a640c23a62f3a-b7053bf1e3bmr282001866b.18.1761825504572;
        Thu, 30 Oct 2025 04:58:24 -0700 (PDT)
Received: from xeon.. ([188.163.112.61])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d85308c82sm1752564566b.5.2025.10.30.04.58.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Oct 2025 04:58:24 -0700 (PDT)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	Hans Verkuil <hverkuil@xs4all.nl>,
	Hans de Goede <hansg@kernel.org>,
	=?UTF-8?q?Andr=C3=A9=20Apitzsch?= <git@apitzsch.eu>,
	Sylvain Petinot <sylvain.petinot@foss.st.com>,
	Benjamin Mugnier <benjamin.mugnier@foss.st.com>,
	Dongcheng Yan <dongcheng.yan@intel.com>,
	Heimir Thor Sverrisson <heimir.sverrisson@gmail.com>,
	Tarang Raval <tarang.raval@siliconsignals.io>
Cc: linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/2] media: i2c: add Sony IMX111 CMOS camera sensor driver
Date: Thu, 30 Oct 2025 13:57:55 +0200
Message-ID: <20251030115757.33695-1-clamor95@gmail.com>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add driver for Sony IMX111 CMOS sensor found in LG Optimus 4X and Vu
smartphones.

---
Changes in v2:
- added nvmem-consumer and dropped eeprom
- switched to unevaluatedProperties
- dropped flash-leds, lens-focus, orientation and rotation since they are
  inherited from video-interface-devices by unevaluatedProperties
- dropped assigned-clock* props
- improved code style
- adjusted colorspace definitions

Changes in v3:
- switched to devm_regulator_bulk_get_const
- set V4L2_MBUS_CSI2_DPHY bus type unconditionaly
- removed pm_runtime_mark_last_busy
- removed properties from port endpoint and bus-type requirement
- removed unused headers
- adjusted register macros
- added vblank and hblank
- swapped register writed with known purpuse with macros
- container_of > container_of_const
- added return check to group write
- adjusted PM similar to imx219
- switched to enable/disable streams
- dropped enum_frame_interval, get_frame_interval and set_frame_interval ops
- devm_clk_get > devm_v4l2_sensor_clk_get
- adjusted default_link_freq calculation
- dropped imx111_id i2c_device_id
- improved code formatting
---

Svyatoslav Ryhel (2):
  dt-bindings: media: i2c: document Sony IMX111 CMOS sensor
  media: i2c: add Sony IMX111 CMOS camera sensor driver

 .../bindings/media/i2c/sony,imx111.yaml       |  105 ++
 drivers/media/i2c/Kconfig                     |   10 +
 drivers/media/i2c/Makefile                    |    1 +
 drivers/media/i2c/imx111.c                    | 1548 +++++++++++++++++
 4 files changed, 1664 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/sony,imx111.yaml
 create mode 100644 drivers/media/i2c/imx111.c

-- 
2.48.1


