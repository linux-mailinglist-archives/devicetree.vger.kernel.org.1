Return-Path: <devicetree+bounces-77893-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B5E591046D
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 14:48:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 407C81C2302D
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 12:48:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E56001ACE73;
	Thu, 20 Jun 2024 12:47:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oJ+wCuns"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F03F41AC24F
	for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 12:47:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718887675; cv=none; b=oo/O+xPL30FqSRiH+c0JMOEl5tVgyZX3ydAM3jsKCvhIUkpjP5wQfQnhxzp19q0l2y3B4+aozQZN8WspsCryq66j+yQVSAE9J7o56/m4THxfXG15W/Px/O4p+v6wsn69X42XCzpjB25PayeSrcvEhaWjsWUaUfyycycqj0/sVM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718887675; c=relaxed/simple;
	bh=SWXpURg2mmf1K+xh8CezsKl1rXAcAXaS1Se5E2w75kA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=LrYXliTmd+u6GpgzBr7TeHc7H2in+AKZ2v5Zaje1+wHhPvGbLIytezp0gtSTvL7GUqofmPsV1GMMoVetC3MNAGzeTU9FuHriESJ8xmuNolxO39cPB4ONlg/frac0YICskz3p1q+GtENk8QrTSp9oETI7uX89SNB+cxlB0xsHzos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oJ+wCuns; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2ebd6ae2f56so1146811fa.0
        for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 05:47:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718887670; x=1719492470; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=X4WCMST2iTV2G8AzOSfMKkH9eVerbU1DvCvFJ8NhXgk=;
        b=oJ+wCunsNPR7ErFlL0/KEHcw16mP+wdFr8xa1R6PxuAYruRngxcRWwP1KlcFSBJyse
         FGTRIlcxHnw+Wl3n23wnbhxlyqGxAe8suHzCnp84WJc3hD6MumnxK0TIFtSJaoseyDl1
         4SHdOtVZ+5PlhVcBLqRTQyd4VGG2OYXqSmGAITem5RQFvPTAiihjkwLswB2zh3g/OujY
         gWd9PEFbj0BFdAkhc5XC9cG3Kc31/yxosvu8fC/ZPzxcLyqlwL3OtVDmrhPMAiczYjiJ
         mPFgG4jrTIhr9S/lrTG3aITdwYtnGJh/46iC/WWwx+j6PX2Vo7Wh+vSLZQzZbQDaN+up
         TpMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718887670; x=1719492470;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=X4WCMST2iTV2G8AzOSfMKkH9eVerbU1DvCvFJ8NhXgk=;
        b=qLhdqIlAl3fuBSgYHXY93Udnunly1k6drYaZWDd54wD+1ZuysEyPp5rJyz7DiS4qUI
         69BvwBrUfAZm7DfytFNaND0uiA9Nr3rRHTorQin+wBbcTilQ2xKIWoaIUAkeP27191j7
         imwHq1dzIcp+QsV1wekwrsI/3fEuqV2DWFmhEus5JoKBe+qGmAigYNmgfBWl7OuEQv0X
         ETZHoFZfZ8BeyycQb6Kj3txuYZuLdJnFF3Vqx66NpYWsSlI/BbMd9O7hSlYHA9bBCjap
         KdB6afMWyKTWQ5kkb9KA7oONy0YziCTVhfTSNV1jy4n7EV/dkcuetBx3yL/uzZMeY5Sf
         9Kaw==
X-Forwarded-Encrypted: i=1; AJvYcCVj8E6dcu7slt0PUCPf8LeVIqiDPC2xfVYeDc8yscegHnx5bmpoooGNdHAs955kdMGN/R57y8N6lR71aQmaNZjDhE+rA2WewdDd8Q==
X-Gm-Message-State: AOJu0YzYgA8R4vsHaDvvuIi5Al3ebClyq9CfRm7K9oyO3Kri8mmwa/wV
	GBLFNzyO6PEE05By7PsTMM/p0X/f+xXtcyfH1ijeM8Ulot64LaQp/MFE4CJA2MQ=
X-Google-Smtp-Source: AGHT+IE8dh/T9bKkR8Vp6Ze42hc0qzfNPNgIBxQrpIXbEiTbmxRsmxIEoaM/6CPE9WkcbowyOsyKVg==
X-Received: by 2002:a2e:a986:0:b0:2ec:16c4:ead5 with SMTP id 38308e7fff4ca-2ec3cec4baemr38342951fa.2.1718887670108;
        Thu, 20 Jun 2024 05:47:50 -0700 (PDT)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ec05c17ba8sm22421411fa.72.2024.06.20.05.47.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jun 2024 05:47:49 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 0/3] media: i2c: og01a1b: Add OF support to OmniVision OG01A1B
Date: Thu, 20 Jun 2024 15:47:42 +0300
Message-ID: <20240620124745.1265011-1-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The change adds basic support of OmniVision OG01A1B image sensor on
OF platforms.

Vladimir Zapolskiy (3):
  media: dt-bindings: Add description of OmniVision OG01A1B image sensor
  media: i2c: og01a1b: Add OF support to the image sensor driver
  media: i2c: og01a1b: Add support of an input system clock

 .../bindings/media/i2c/ovti,og01a1b.yaml      | 108 ++++++++++++++++++
 MAINTAINERS                                   |   1 +
 drivers/media/i2c/og01a1b.c                   |  50 ++++++--
 3 files changed, 150 insertions(+), 9 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/ovti,og01a1b.yaml

-- 
2.45.2


