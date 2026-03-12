Return-Path: <devicetree+bounces-274644-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IJUqOZfXsmlDQAAAu9opvQ
	(envelope-from <devicetree+bounces-274644-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 16:11:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8243A273FB5
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 16:11:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BB30530413AD
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 15:05:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2657A399347;
	Thu, 12 Mar 2026 15:05:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="j6lqU7Ri"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8ABD138DD3
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 15:05:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773327907; cv=none; b=ae+gGBwh4T+x2Kp5Q+pQjyWMQNsh/vdDk/zb3HrXZjcI1ueCbSVO3U4zR1vRtDU8AiC0ucE2o0HmRt5j4oucC43OZnCiRv7e6E9CZ5oUZR2nKaxpoaOFi0Eabg3BsBG6mXsrRO6e1I654W+lyDQtJvZSecp0zmw6xpHjDBQVc5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773327907; c=relaxed/simple;
	bh=Ou176iaKRapsXxPlFxmCOXeZg+hgHxa5jRA/hTxjWH0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=fSOFxyEMNjDHv76OS07mRS/x2QbwTjW/+w34yT7RrgHSNI5I/rRanBMcnlYDcGuu/Xb2P40paXcSo4xMbGUceaT2ogxrEvX21fhbOsr8HSzDuSW+8q4bfWEfv8jIpYeMDiso7h0VjpPjjtQgEmFE0BX09F9rNCipsjBUJptjcrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=j6lqU7Ri; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-59e5aa4ca41so1050745e87.2
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 08:05:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773327903; x=1773932703; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=sFoMkityIlWAkBj/ankUjCHQN4IX1we00551tFsNNnM=;
        b=j6lqU7RiNL1mvT/y+NVmJEaa9Si1jTdzA+1JQpwAQfraL/AeQmcEXO7zobo2V6G7bx
         Dh6KHzmBXZdwAWu/3J4TBh4m7pN3NvYrFk0VTgaCWy2XqTc7SsK5mf4jLbtUpCX9o7tt
         4cRKeiJc9RtcUJgKgY8FHiMePS7Ybjqes63lBo2cuQPQBXOAm3BX5D+oLqhK+ckA3HmC
         4UYZCdFik6Fe30ytjxwsiWuHhPrL0gE2KXLMuU9Hmz06ssfTVmWcazKQAV5KNeUucEfq
         iJFeVBShs7/0caXzqiMh8p+9S53CCeqoCuNOhtRJJMIKDipmi8kUV1QjlcdkElXI2Zq5
         ocdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773327903; x=1773932703;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sFoMkityIlWAkBj/ankUjCHQN4IX1we00551tFsNNnM=;
        b=wghJzDVfXIk1A7JlvHTV8UULLbDTil87qIiiwn9+GlbzpuQ4Mogc0BvaS63r7b/1LR
         Ogp4fYx59cyo+jaUT4fHhdj5c4YdsgEQPwJP/T1oqOo0wRpUT9xOubUyfdSJW+Iupd1d
         6PImfTtpYSyVZcB/RIcj5/EpSLYcnnUH26Hl/mzTbbS6hoZgbFCakIS9VjUlB6oIpS0d
         4fMyR5nO4HuX9sQLxxVjf1f19AKxqpDHpltRMXh89aGOxYTtxJurlYtxSWwwz8VZhFCt
         Rjw7b9ve4fZwV1bUPlJ7iHrYwj56vBRycA0DS3C1q56wJiIW547NO9MMLDVfUMry/Oel
         s+WA==
X-Gm-Message-State: AOJu0YwlffXlJmjdoJxUqe/o3NVZ2e8iOl4fAA3wCaYhZJLbFq8XBVxm
	N0KMQfRo48lzQ/hntlaiw/8ayu91b06BVtzxxpr08D9eHwBmP38R59Nx
X-Gm-Gg: ATEYQzxh1j559JKN7NSCKt1ktRkvHJwWRvycH5yS/10OmOHMdIJFalxDsbh1TvdKGfI
	UX/ushKzQvdekNlDu1mZ7aYQU76DB9tvtxmXJiiPtyRDx33kENh0KuCMahR3qdt7NjdVPSOQoWG
	NXe12GctxOpji4r7nkNOi2byqtGaA37wXvPhKIXXUcTF7baDA3kF3IFvNnoiNYIe/pTHmrj2U1v
	m92m4mxIHhCeq+Z5lombFQOWHxKCo/HQVm1Cv+e4/YogbauZ1TK1p7qVq1Vmw1DfcNCkH1SXlrn
	pXLd6gUQXgKzQUTgcuJVLUdgwbq/b6pQ7kbrmzYQZDTy0A2dvsYCnwnFzG2UfBZLapzTyVJABbZ
	Wn8PQjvogWwP/+WvPQCxeV59P6anop+Bn3wWxYvRAeIEuHXjHZo25dgw87Q74YDyWIjZlAGNM0o
	hWDOYENL83Sg161heRNTTN85NW1nIyhE6GwkyxBdk=
X-Received: by 2002:a05:6512:2c0d:b0:5a1:37ab:312b with SMTP id 2adb3069b0e04-5a156bc2156mr2304776e87.15.1773327902998;
        Thu, 12 Mar 2026 08:05:02 -0700 (PDT)
Received: from gentoo.sknt.ru ([95.161.221.172])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a156034364sm1000197e87.40.2026.03.12.08.05.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 08:05:02 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: linux-media@vger.kernel.org
Cc: devicetree@vger.kernel.org,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Hans Verkuil <hverkuil@kernel.org>,
	Hans de Goede <hansg@kernel.org>,
	Tetsuya Nomura <tetsuya.nomura@soho-enterprise.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Alexander Shiyan <eagle.alexander923@gmail.com>
Subject: [PATCH 0/2] media: i2c: Add support for Sony IMX662 sensor
Date: Thu, 12 Mar 2026 18:04:35 +0300
Message-ID: <20260312150437.1091195-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-274644-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,linux.intel.com,soho-enterprise.com,linaro.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[eaglealexander923@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 8243A273FB5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This series introduces a V4L2 subdevice driver for the Sony IMX662 CMOS
image sensor. The IMX662 is a 1/2.8-inch sensor with a native pixel array
of 1936x1100 (effective 1920x1080) and up to 90 frames per second
(depending on the operating mode). It supports MIPI CSI-2 output with
2 or 4 data lanes, RAW10/RAW12 formats, and both colour and monochrome
variants.

The driver implements all standard controls (exposure, analogue gain,
horizontal/vertical blanking, flip, brightness) and runtime PM. It also
provides a selection API for cropping and supports multiple link
frequencies via device tree.

The driver is designed to be extensible: a V4L2_CID_HDR_SENSOR_MODE
control for Clear HDR modes is included, but these modes are not yet
operational. Future patches will complete the HDR support
(Clear HDR and Clear HDR + DOL2).

The driver has been tested on a ARM64 Rockchip RK3568 platform with a
24 MHz external clock and various link frequencies; image capture works
correctly and all controls behave as expected.

Alexander Shiyan (2):
  dt-bindings: media: i2c: Add Sony IMX662 sensor
  media: i2c: Add driver for Sony IMX662 sensor

 .../bindings/media/i2c/sony,imx662.yaml       |  112 ++
 drivers/media/i2c/Kconfig                     |   11 +
 drivers/media/i2c/Makefile                    |    1 +
 drivers/media/i2c/imx662.c                    | 1176 +++++++++++++++++
 4 files changed, 1300 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/sony,imx662.yaml
 create mode 100644 drivers/media/i2c/imx662.c

-- 
2.52.0


