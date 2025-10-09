Return-Path: <devicetree+bounces-224931-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 94951BC8FE0
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 14:24:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 30C3F3A726F
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 12:24:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7A482E2DF1;
	Thu,  9 Oct 2025 12:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="Gp+ctcNA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67ECE2C0F63
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 12:23:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760012633; cv=none; b=spe0V/GTk0cMgSQYySa9ePW5M2Bq/RAnN5LOWsRPxHsUbNmi3VFtzltOweKQfv5aWgeMdwrdvpg1dus88oUYPtbIVyeewhYeF99BArlq9amlIGq1PBFPfBiJ81V5YBmcZQm6dL1p1ZnNBRcJCJwlAJBDN55tSeh7XShxSm0kSk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760012633; c=relaxed/simple;
	bh=NKYwbSuoZ7KUdj7otYEtY2P0sntuXVy4h1xZozLcbWQ=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=VyAwsQwHtugo7jDb098LCosIbhccDCwSB7le77BQB4mbIyChhuF92Bsr6OuUkyPWIbemJtXv2cxwskFxrt/qoTkNIUXd/ULRJijuP8Bcw7Lu0PCZtqdByveRfF3m0kqvNMkmES8rfrsMCxXCB3SXxSWsxepQwnVkf0edddA0BMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=Gp+ctcNA; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-637e9f9f9fbso1557074a12.0
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 05:23:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1760012629; x=1760617429; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tHySYeGJ1ieMTpnCcwu2cfiHKzDSjdVN2CuFIzAgi+Y=;
        b=Gp+ctcNAXQVtTo4EyNVw0Jje0zFymioIy6QAJcQelXjUpxtCi8o0wH7ihgAoJt7yon
         DtJn2lDZCkruacpp8k8ndaZYbRER0IAOnEc/DGyihN3Ma7UEZDsZpW7LNOSiG3aeiDJq
         eFVbXzft8WovxXH3ozl8G1CYPJA7Juji5ugWgCWpkndhnzHecN4cWmoji0suWhT1kPs5
         shVxasnAredQmiXH60Uatdjg+uzky/NWEW91zcvCJ4oXevdV7Hcg7g4pLet24/lAIEJ2
         NRpZva5d6MU7YDgSb30BYkz/Xt22uultBF0RjqhaiXu5a0PWdju1m/WMI52CM8GNxbc3
         bKVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760012629; x=1760617429;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tHySYeGJ1ieMTpnCcwu2cfiHKzDSjdVN2CuFIzAgi+Y=;
        b=fbSJb3T8VRtYpORA0I+auTmNpchxQAAEL65I2QtWro0u4y01MAq5891/6dEoC9d9Rg
         nktEYV0vrBzDl/3YS9kAPwZWTTk3xTouJB3gvkK7Rvz7k83ywyoweB/s0yKMDHtYvl5I
         zO5HpIgoJPdt8zdFpinHJrWcGI9lwSMQBlLqqLKcRuQrW0iVtuY2Yl5Qa1IMQ+HwWjB2
         H0FsE7Hc9wSfm6W+mDTFLf+KyFhUs7Y+q016Pu21M6Sd8VKFlqrH8VpXx/bvbjiRvd6V
         GVfmHXUaacyUg/ucUOwR4x1KSbTxOrU3HSMQ1ASlKb+ggZJVBjPGvTpuSdR138m3af+s
         mPZA==
X-Forwarded-Encrypted: i=1; AJvYcCWBCT8FdKoNHT/OmzcVeOl4CRAuhmyQT03ZdCl4h+G3TQU4gKVz3pINt/CeJOyx4uZ+BJHyFLEx2pD2@vger.kernel.org
X-Gm-Message-State: AOJu0Ywb7TSmazlrf6ffAvVwH74YYqKlaGsQvMkTiWCkb14UtKr5pUtS
	TQwwqxTekIQCVuLLzNFwl1UISn7VyYdIc2P1TIi+ZTLFPoGB2Jz0sJDVBBqTgw7N7nM=
X-Gm-Gg: ASbGncvVeUmEkaadk5QhRgSowpxqblMj/r0A0o1Q028U9GArDmMIyQcwCvxhzfdDZ7N
	wqTlbOL8zGotlLs7nzNQ+Pxz9FzPi4Md/Zq8lYUHZpp2o9Rs1cW4c+t867Z/9H2bzWroeKLi/t3
	lcEIbFQtyvnYPet3gidaizOaujNZD+io2Q1q6u9+zpCTO6PczdxcgK/Q0il38pVBG8HGfOjKIig
	fEwcc7eNpwWrZalBDwp/uATx8sWE7de/wFxDuiCVXo/3+ZKBYObm0X3X9sfDtdh5NTRQjDwh7Pd
	47pnsHTR761Y9Ovzj0pXISYqq6CqgqhhQzntvP6womaDhHyurTy5n2Ra/C6riikOPUl2Mfv6ueR
	YibljESuK54nCxK7wuYL9LrF0OAkYFWF2u/ou5fQQtdzwTTUUQ/U6x0rPrNWb2huGnxMn+ScqfC
	YGVlvi5tWEXMLGo4yZB3XuUGrhuO0ipScXjGugkTE=
X-Google-Smtp-Source: AGHT+IHHln953x+ocb683fbtunM4jGpgYY7ccluW48jSBvEHmWWg41yNKdtcVem28NTFOpr1Aiy6yA==
X-Received: by 2002:a05:6402:520b:b0:61c:9852:bb9f with SMTP id 4fb4d7f45d1cf-639d5b57922mr6410311a12.1.1760012628801;
        Thu, 09 Oct 2025 05:23:48 -0700 (PDT)
Received: from [172.16.220.227] (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-639f3d09b92sm2231273a12.30.2025.10.09.05.23.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Oct 2025 05:23:48 -0700 (PDT)
From: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
Subject: [PATCH RFC 0/3] Add support for Asahi Kasei AK7377 driver
Date: Thu, 09 Oct 2025 14:23:37 +0200
Message-Id: <20251009-ak7377-driver-v1-0-29e4f6e16ed3@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAEmp52gC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1NDAwNL3cRsc2Nzc92Uosyy1CJdCzNjC8M0I0tzM9MkJaCegqLUtMwKsHn
 RSkFuzkqxtbUA4DpR2GQAAAA=
X-Change-ID: 20251009-ak7377-driver-86381f29765b
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>, 
 Tianshu Qiu <tian.shu.qiu@intel.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
 Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760012628; l=1154;
 i=griffin.kroah@fairphone.com; s=20250804; h=from:subject:message-id;
 bh=NKYwbSuoZ7KUdj7otYEtY2P0sntuXVy4h1xZozLcbWQ=;
 b=+mBeh2zVh4IEuQ1wv5ncOtyoapeQ/seSYFdezBTttdLSr5A5HdBUQ5/+Rl23YaFQySt8PmHTk
 ZaZY62dL0V0BQ0C8GwuNMvZWkYHpWkU5koSyUD3jX1Pno5WCl/AhfBZ
X-Developer-Key: i=griffin.kroah@fairphone.com; a=ed25519;
 pk=drSBvqKFiR+xucmLWONHSq/wGrW+YvcVtBXFYnYzn8U=

Add devicetree bindings and driver support for the AK7377 VCM driver.

The driver code is added to the preexistent ak7375 driver, which appears
to have similar function order. 

Some values of this driver were reverse-engineered from the existing
drivers due to the lack of a datasheet for the AK7377, The driver moves
the lens but could not be fully tested due to lack of camera sensor support,
that's why this is marked RFC.

Signed-off-by: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
---
Griffin Kroah-Hartman (3):
      dt-bindings: media: i2c: ak7375: Document AK7377
      media: i2c: ak7375: Add support for ak7377
      arm64: dts: qcom: qcm6490-fairphone-fp5: Add cam actuator

 .../devicetree/bindings/media/i2c/asahi-kasei,ak7375.yaml  |  1 +
 arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts         |  7 +++++++
 drivers/media/i2c/ak7375.c                                 | 14 ++++++++++++++
 3 files changed, 22 insertions(+)
---
base-commit: e5f0a698b34ed76002dc5cff3804a61c80233a7a
change-id: 20251009-ak7377-driver-86381f29765b

Best regards,
-- 
Griffin Kroah-Hartman <griffin.kroah@fairphone.com>


