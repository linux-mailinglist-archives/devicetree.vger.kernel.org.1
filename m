Return-Path: <devicetree+bounces-231080-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id F097EC0A3DB
	for <lists+devicetree@lfdr.de>; Sun, 26 Oct 2025 07:51:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 4AE2E4E165F
	for <lists+devicetree@lfdr.de>; Sun, 26 Oct 2025 06:51:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93F07262D14;
	Sun, 26 Oct 2025 06:51:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=reznichenko.net header.i=@reznichenko.net header.b="Vj2KtX/u"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C4861D90DF
	for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 06:51:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761461463; cv=none; b=nVfGB8qVa8HBOmeBuJJJspGonL/8m3eQLX7pnKqAFcyo5WJgtm0aAXd7L+XZhheDltjQg83OUYcsT9rfob1jl6M4GbBg6u/XXmfavYDTPuhnJuJ59egp/IVCr8wB+28pxe2/7D4TMOGR7rCFUOTLfpYUx94N84djxwIiYxFdEZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761461463; c=relaxed/simple;
	bh=e85NXa0sI3f3w+CETu20WN8BTa5YzlfYtevVbUSsSsY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rJKQ8/DuZCCsDOZxntUDj8KA67dHLxqaUAOGc1qGL2nTTJqvd4HJDSNX3sM37ZThV5KzQwyRZJXnApFmw/3DZ72AAARIADyd40Z8r/0G4lGl94pksd6/FfPq+umCLXlavfM9hdA3SOuZ51f3cm5Y3z/CR51tL28oVIAVnNBTfBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=reznichenko.net; spf=none smtp.mailfrom=dpplabs.com; dkim=pass (2048-bit key) header.d=reznichenko.net header.i=@reznichenko.net header.b=Vj2KtX/u; arc=none smtp.client-ip=209.85.215.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=reznichenko.net
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=dpplabs.com
Received: by mail-pg1-f172.google.com with SMTP id 41be03b00d2f7-b6cf1a95274so2451426a12.1
        for <devicetree@vger.kernel.org>; Sat, 25 Oct 2025 23:51:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=reznichenko.net; s=google; t=1761461460; x=1762066260; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bwm3y2MubzEk+9BE7WJDp/oVxvmkQrQjbNwGQzPi+1s=;
        b=Vj2KtX/u4thXrq5QECAa6wwlWAFxoOJL4e+8dQANybSDZyxF8tqut2Ll68/tq05ada
         R25Zz0uZ1+FA7DUHnbtH7iDCanDndbAuOxlJeTl/hXXUSLGDBmeMexJLoJO4Z72zVd1f
         HlLylcmKUHnESEurYB0enXyXFOZ38SVd+X0VjF8FihCAFbO44BYsUH8XKXOpOiM2pN+m
         Ej+PrIQrdn/JPnq2NXp8Bk5kYVUqx2S3mQo4YqRK5/GUw+LqZHIX24xk96caMLQPVRMF
         Ip4ie9D9bK3fz7sxQVEwhATVrwQx8WQgiZH86/1+SoOC2NW1NqX3Nyo4j6LdFJiKG5pU
         57sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761461460; x=1762066260;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bwm3y2MubzEk+9BE7WJDp/oVxvmkQrQjbNwGQzPi+1s=;
        b=dXyHYVs+lJWYP3o93JMErfXk25qY93B/re8rpvFNXDiH6NEq1WsN8lwk7NqFC+qUBO
         ykF90rZF5fk5v/iBSHhRs1xCKefrYTfWfh5EIngT4P9WL42V57xa6W1Lw7wtGQWc/4IV
         DUeg81OTvDzT1dViavwmUMnZDh7uaX8PXk4cgKQ9CtZhr/7FFJa4Plu9XCM4pluzENuz
         5sVhrCWkyTqff8r5QpwM/8IlGGBy6xemlfkVuLlvzcvHPkrgrREnnKYkasepLFdIb6nZ
         ALJPIc2/mWzYjl+h2TrPV38ycTMrWoDHSzVUChPDINGaDCnxH2e7O5kW9PbfoKfktIh1
         GgDQ==
X-Forwarded-Encrypted: i=1; AJvYcCXZ1Mceeo6rInl3OBYMrjG5ipUyrn1j7sAtEo8QDqEoq7arcOdoDwT/3hdZHee44m4oVmsIazdeml+8@vger.kernel.org
X-Gm-Message-State: AOJu0YylVo2CcsRYFt8ZN3vm1Ohcg83jNHL4QQdhaMl0SbkWZwL7kPqY
	85nVEn38cHTIn+wJO4rfsydngJIM/5K6ZI+DR1wjYdYaJ9CgKfXfMjckcL5Z/r+opbI=
X-Gm-Gg: ASbGncsPIvbbmhjpPD2pYHI03b7GguvQNlIA2+r1S67cndLeSHVZmDrdkR3dQNcH5yL
	d5c+bW2klJHKt7HMob423mhxeUsjF6kdYxF2cDGrJMDlrbLWJTjt6kwI6MXPXCy1Aau2KOhk414
	0eDecLC1vmYCTIwdclD5oWZkOjRTUHN8pCjiA3Nio35P65nWCpK336I/LysXJvmeXt27Y/ReE0F
	FPHfOveoAX/eRMcLKzAMZtLwFX10VAcebwB7qCCD1/mvlxhpMae2UjTJle8PYkPPZCY33i1F+t9
	mvc8caPc1h29rKtkYSF4fffGyBxu+bN1/y8Up2XY6TGxJpC4Wc/c2XB+PFFjByIqYjc0n8u9iTa
	zNH/wMz9AkTUWppnBMDxZXZ3ixD6tWdjWDDuLyIebyslI6j0vRGdi09CN1N8UkVrXA1MSup0/kb
	zEqwLq7A==
X-Google-Smtp-Source: AGHT+IFk7R96YXUE2AFHweAhNJTfel5qnttPqZd813Q6RU73D4Bpa+BM9FjFwisJbKplCLyC3elWYg==
X-Received: by 2002:a17:902:db0b:b0:290:b53b:7459 with SMTP id d9443c01a7336-290cb65dc2amr403459295ad.56.1761461460154;
        Sat, 25 Oct 2025 23:51:00 -0700 (PDT)
Received: from z440.. ([2601:1c0:4502:2d00:640c:95e5:94c3:cc2])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498d4288asm43184905ad.84.2025.10.25.23.50.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Oct 2025 23:50:59 -0700 (PDT)
From: Igor Reznichenko <igor@reznichenko.net>
To: linux-hwmon@vger.kernel.org
Cc: conor+dt@kernel.org,
	corbet@lwn.net,
	david.hunter.linux@gmail.com,
	devicetree@vger.kernel.org,
	krzk+dt@kernel.org,
	linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux@roeck-us.net,
	robh@kernel.org,
	skhan@linuxfoundation.org
Subject: [PATCH v2 0/2] hwmon: Add TSC1641 I2C power monitor driver
Date: Sat, 25 Oct 2025 23:50:55 -0700
Message-ID: <20251026065057.627276-1-igor@reznichenko.net>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251022044708.314287-1-igor@reznichenko.net>
References: <20251022044708.314287-1-igor@reznichenko.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch series adds support for the ST Microelectronics TSC1641
I2C power monitor. The TSC1641 provides bus voltage, current, power,
and temperature measurements via the hwmon subsystem. The driver 
supports optional ALERT pin polarity configuration and exposes the
shunt resistor value and update interval via sysfs.

Tested on Raspberry Pi 3B+ with a TSC1641 evaluation board.

Changes in v2:
- Fixed devicetree binding name and formatting issues
- Alert limits are handled in a standard way
- Clamped alert limit values, constrained valid shunt values
- Cleaned up includes, fixed various style issues
- Expanded documentation

Igor Reznichenko (2):
  dt-bindings: hwmon: Add support for ST TSC1641 power monitor
  hwmon: Add TSC1641 I2C power monitor driver

 .../devicetree/bindings/hwmon/st,tsc1641.yaml |  59 ++
 Documentation/hwmon/index.rst                 |   1 +
 Documentation/hwmon/tsc1641.rst               |  84 +++
 drivers/hwmon/Kconfig                         |  12 +
 drivers/hwmon/Makefile                        |   1 +
 drivers/hwmon/tsc1641.c                       | 703 ++++++++++++++++++
 6 files changed, 860 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/hwmon/st,tsc1641.yaml
 create mode 100644 Documentation/hwmon/tsc1641.rst
 create mode 100644 drivers/hwmon/tsc1641.c

-- 
2.43.0


