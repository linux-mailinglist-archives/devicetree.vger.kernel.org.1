Return-Path: <devicetree+bounces-197315-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DE13B08D2E
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 14:40:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 062DA3AE393
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 12:39:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AECB2C324F;
	Thu, 17 Jul 2025 12:40:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NcrtNwI8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 942B829ACF3
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 12:40:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752756007; cv=none; b=rC3LgUatej9fHu4gv+/8lffawmeKG1UgxI46j2Ibh4r7qqPkPmNI2pQERMAx2BgWbiHP9YiqD+5omVZd8sdie+blizuzGUNb5hTXcyB4Noof3fEVf8NH3MEAE2azxkbMGFc/PTvq4DRe8paOuzMMdXxz1M9/CgghvGcFqBKM3fg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752756007; c=relaxed/simple;
	bh=HECWTOF5w1fsGyPWcw2e1Ysjoi+3vaK8f3knj5F0NJY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=r/78r3xI6n0B9eCQhTNbYHrMHvlQwuHDYjYFUDpcWVkWckbale6+cpQ2H0QSOwIe/pNsj63cdxWWgV5tA5xrvzTBq0F+Hr/aIgzTRs/IF5Fm4+lgyS0PnYQGRjQixOcCa66KTiVmFSLp3FUCrDV6HtfgPoWHBEaRvyvXlKve/08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NcrtNwI8; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-55a1eced1abso25451e87.3
        for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 05:40:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752756004; x=1753360804; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/iN8qcbM5Ap4e1fU476G02YHM7tz6hEQR2mzb3lV4l0=;
        b=NcrtNwI8U221728CRJl9dCcoikpYbOWA9EvFusVkh8T63NPuQnjBqSQa2nCJkYAPyb
         cx+9geP9Qql03yaMEvKVj6CBEkbnisuJGknC7oZgO50bysZB/MDSx3zUgwfv+MhJkczs
         hNQc6QidegHJq+RMnUDQQv+acncAV4LoOVKkSetcztRWZdSY48QYXCgJeLaeBrvRD2cy
         7EXA4JvmjYxmg9ykRmwUdJG23guJTxfnczo097ny4wRDBJ70Jm2spNB8mlvjtSulWmZk
         GW9H1d+6ruRRzVkzFx2vSr/144m8um6XzySebXTYrRMNWbxhebExJYLnRbRe/a4RuwF7
         6D/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752756004; x=1753360804;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/iN8qcbM5Ap4e1fU476G02YHM7tz6hEQR2mzb3lV4l0=;
        b=XSIuR8Ybbz+yVwSZmVdb7KDjzwPilsjACmzATHPcsRSdKWfm15W2OtM5iL5qtMO2m4
         Ali1v/AxE7hxCsG+GlZnQo9BEVs/tPL32pYg1/il8LzE8PVzTiZ+4T+QijYt/shj5R0Y
         4am3GzCv/YB6jW/Nij200UOaSlCSRqN1H6FC4X5lKLW+2GAhWa0UIIsckLNXTNVgIFZn
         mZg6rWbTWoqela3pZdYX82KYzDSUJO4d028Jmgiu57EV2NSeU/Gor56ZxF52Dpm3Hddk
         UmyQ0TK0Qy0qmiDOXZrns/Bd5EyVIqSwkEUVCHIed1/iDD+QflSsvRlnqq3+s5EADXHt
         y1eg==
X-Forwarded-Encrypted: i=1; AJvYcCX/oD/xuwuisJ6hiSZfwPOaJyiGyc3VR9sSeaR/X6Vm32r/HgIhC540DFXl1/n3J+tpb+iYyCSx8VWu@vger.kernel.org
X-Gm-Message-State: AOJu0Yzcj5ZB2w2teY8U7Gs4ax8si/17p9hG2NlZPeT4gb3ScsETTsE/
	dEd/ndGatRmgHOyJnzNpO3ykfy8WmQl7NfK18McjS+264II7DKFO587Hq34bSQcX8fo=
X-Gm-Gg: ASbGncsr5e627QZiqHya7a7mCIh52zcWsCcaRfSt5DIGbsnD2SD86lQr31Qc046inxW
	mLh2MjqFzsqVZhVpdHCKNsL3oieNCibpefgupx+o7+h+wBe7k7pEuluFwDJZIaPD4JQ8I5b5VJU
	W0NQ4/yz6ZWjs8QMujOasuiUkadF9ykaiNiZPAUepUNbRdn06enjOfIbIiHU9mzq10M5z8IbKuE
	nUA/80wytXDWvD/qa6NFgJ+zL3yRfdR28rEDFOjOwAv0gvdkXsJxmLonBvJIWH/TzhlEdRDmH6b
	O2NXvYZ8Pj+rC5w+Aumbn/YqwkmtvWgzf7HUduPQZeMrnUj65JMJLeOtbGRI7fp3jvqGklYMhhy
	hadaWzl4t2DUXobCPp0E26SHpWNtoCaqXk676/7d8MlefGe+HMVpxcatjwL6oKJVtwdE31sJjsn
	r+ObJtM5H8HU+mTEgdQFs=
X-Google-Smtp-Source: AGHT+IFxOFXc9GfQCAh4UwhojW5VIlIseM/LQ+blHB6j5oe1cb4c1jumNKoVyqA6/IdEGOmdlu8sxQ==
X-Received: by 2002:a2e:a9a4:0:b0:32f:4e1a:19f2 with SMTP id 38308e7fff4ca-3308e4b3babmr7673721fa.6.1752756003442;
        Thu, 17 Jul 2025 05:40:03 -0700 (PDT)
Received: from localhost.localdomain (88-112-128-43.elisa-laajakaista.fi. [88.112.128.43])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32fab8ed701sm24624871fa.90.2025.07.17.05.40.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Jul 2025 05:40:03 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Hans Verkuil <hverkuil@kernel.org>
Cc: linux-media@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 0/2] media: i2c: Add OmniVision OV6211 image sensor driver
Date: Thu, 17 Jul 2025 15:39:59 +0300
Message-ID: <20250717124001.108486-1-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.49.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

OmniVision OV6211 is a monochrome image sensor, which produces frames
in 8/10-bit raw output format and supports 400x400, 200x200 and 100x100
output image resolution modes.

At the moment the only supported resolution in the device driver is
400x400@120fps (Y8).

Vladimir Zapolskiy (2):
  dt-bindings: media: i2c: Add OmniVision OV6211 image sensor
  media: i2c: Add OmniVision OV6211 image sensor driver

 .../bindings/media/i2c/ovti,ov6211.yaml       | 100 ++
 MAINTAINERS                                   |   8 +
 drivers/media/i2c/Kconfig                     |   9 +
 drivers/media/i2c/Makefile                    |   1 +
 drivers/media/i2c/ov6211.c                    | 877 ++++++++++++++++++
 5 files changed, 995 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/ovti,ov6211.yaml
 create mode 100644 drivers/media/i2c/ov6211.c

-- 
2.49.0


