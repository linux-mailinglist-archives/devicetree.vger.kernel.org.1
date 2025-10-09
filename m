Return-Path: <devicetree+bounces-224932-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A2F1BC8FE5
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 14:24:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6BA191A6230A
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 12:24:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0CEC2E2EF9;
	Thu,  9 Oct 2025 12:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="Smgk941Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C7032DFA32
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 12:23:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760012633; cv=none; b=EcS+KouGcHGywyQhj4Qy6DBlTgRZ6Pst0tj5cQWFN+tMGSsKvEElU47bwCjwtILlHi8nBqyIVqrdOywo+esi9IrRzBYpMWSZkeMammrd5vZdpueKDbRO6kMMDwG/qG63fpoYU7HntX1Jl7JvzepJ+Ql+W8qeBBqj0k6354qN0FQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760012633; c=relaxed/simple;
	bh=8gVlk9smM1PELBfkVeRiLfq5UVjtyIkKz5m4vaScY0Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=gpJ9fe8Amz2OZEKczzcnHM8y+2ugSIkJGEgAjOfak/IOLaUSGIgri9E7j1NBRlp9RXJv8sgbMf7JKN3HzKY3gj9Afja0qm9kjH2p4K2Td3Q4cBi/cfYqhlVcCnBhLok0vHWq9GcfVFMNDZMYjIjE0vd6o2JAw8s8aSfLiLr0ddw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=Smgk941Z; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-62fa062a1abso1479697a12.2
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 05:23:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1760012630; x=1760617430; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F3uxa4fRuVyUqOKym+dPyw2hVfaKQnFjx/vC0g8hIx8=;
        b=Smgk941Zt4hIB0FwtYk/08i0MC9Vfw/+BryAmlNGnlfTolID15/3ap25UUaDtkc8gO
         0pUMqSE9gOzWy0oPqaesRpOC8AQAvFIE05dhidQGmMk1ctj9KnxQGE5vbIsL5fvS+r7m
         thgR/omuXRXpIMfckk5E34PhI0jvkjcAP9FZpCePGiyygr5LqwLjKOv/6d6d1iozYoy7
         WlrA7erdR9D/50gV3YOFW0PgSI7z45XK2e62S6S/7hOUuD0L7RnGzq74Dt5b2a9lh4aA
         GPJlCv1eitoKXt7Dm4HDpOPnpTYZq/yl9h0wlyn/x4QHxF4gB/XR8WKpokhZpIYb+sH8
         EpvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760012630; x=1760617430;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=F3uxa4fRuVyUqOKym+dPyw2hVfaKQnFjx/vC0g8hIx8=;
        b=aA/lVg9KTaL7OFidNMCbw9Vnv53mD87koFp2UPkajNlmRsEsL7PELSnFctted3l4rH
         Z5aAdg9iUqdSsmtgycx7/B3Y3OVbTxcjBDzn64uAOadb26oJf6Cy1G2tMmMUWP2K50+K
         jPvjqHR0Vcs8F2FRmRp9kgrmwZ3cBPbUPksE0/vAFcQXL4sH3k1ynhKVQpuKj9FA522N
         309uZGK3OM1JuEhp+DouLzR8TOiuoh5lnT0Yd38rru2V0HUgTFynnTNpEIhCaY/m846E
         DjmmPu7e96pspRBHVn2a+uok0W2yCXLkiZWuvOW51xGhwAZrpy1OwGTpB+eY84q+yQbi
         tJqw==
X-Forwarded-Encrypted: i=1; AJvYcCWoEnwkbQC3zKfsUP9ZCcsSf5TDphKF6Y48ghbYkTwSMtHCuN129EnwnH4bxmIyPYmI/phvqYN8vNus@vger.kernel.org
X-Gm-Message-State: AOJu0YwA/AG8rbewEUKVVrDk4UmflXzfIPQOCjwEtvAnz6gLp90d1HND
	ML2KdJ9Xo/VwqT8Uzmoj/suXB4GUjrMip+cvAR5HpaEqo24WUGc2dVaNgxah4SA3xG4=
X-Gm-Gg: ASbGncvjoK8OUuYkIyxC9kMkeAJjlMxKLrHv2DSdTMx2Zt2KhT1FxY4UftaBgQrbYTQ
	7AoIcTEm4SgVYZQvLTemLTSu60NFsfYN6e9SYgHOSMia6KBMaWfsb8GnXPM3Ssh6t0QqpwjyCgP
	hQSpaqphIeENPB2O5K25t+SagRKdpJMbxNhxbATtllzQIJaltcUiV/DjLHJqNG2gMy4SCV+lCw8
	SCPo527tdZ12PbIJmIAJK7Shxr9vTgfBATbzMN7kPUSvLri+hI7KdUtXYJr0wevulx6+gYEWKHv
	Nh26FhpaCcXmxCDYnVE+NE8k0WcAYD4J8vdJkF0396xNuiUJ+vpAVhyv3mlrC8sI6F/Zfb/qVvu
	aTWzLn9bvzJVOHOBZR2w64EJzEWc16kcg1WbzMOU2YU3DERjDVmkd5hWnrpvFbdVbA16nJHulwh
	M7mc+mENQhROfCdqEdjXQUA2fyTyMM
X-Google-Smtp-Source: AGHT+IGxgMccbKlgi4yylAk4wudj96kX48auY6/u1zqpqttH1xWg8MxYaDDcu2sseBENbhoMxyZF5w==
X-Received: by 2002:a05:6402:518c:b0:62f:67e0:55 with SMTP id 4fb4d7f45d1cf-639d5c371demr6511994a12.24.1760012630426;
        Thu, 09 Oct 2025 05:23:50 -0700 (PDT)
Received: from [172.16.220.227] (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-639f3d09b92sm2231273a12.30.2025.10.09.05.23.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Oct 2025 05:23:49 -0700 (PDT)
From: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
Date: Thu, 09 Oct 2025 14:23:39 +0200
Subject: [PATCH RFC 2/3] media: i2c: ak7375: Add support for ak7377
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251009-ak7377-driver-v1-2-29e4f6e16ed3@fairphone.com>
References: <20251009-ak7377-driver-v1-0-29e4f6e16ed3@fairphone.com>
In-Reply-To: <20251009-ak7377-driver-v1-0-29e4f6e16ed3@fairphone.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760012628; l=1584;
 i=griffin.kroah@fairphone.com; s=20250804; h=from:subject:message-id;
 bh=8gVlk9smM1PELBfkVeRiLfq5UVjtyIkKz5m4vaScY0Q=;
 b=D8BY0D0RkszxDBWlHYL6eM+A3qSf46i00GaDK8zQzyYjkdJb+CxhfoA4ySmtSYqDSWnTnpvai
 v1ivVB9v0rIAdZAH4kk12Ezgjw4MJuwJFNk4hE2g6H2rqkAk4fh0fjJ
X-Developer-Key: i=griffin.kroah@fairphone.com; a=ed25519;
 pk=drSBvqKFiR+xucmLWONHSq/wGrW+YvcVtBXFYnYzn8U=

Add support for AK7377 VCM, which is a similar chip to the AK7375.
It has no known standby register setting.

Some values were reverse-engineered from the other chip's code,
so the driver may not currently be reaching its full potential.

Signed-off-by: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
---
 drivers/media/i2c/ak7375.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/media/i2c/ak7375.c b/drivers/media/i2c/ak7375.c
index 9a2432cea3fff9f0ff41796f97236449792dccfc..47f9d14d9a65d43e5a8e5d6966e8f330c99865f8 100644
--- a/drivers/media/i2c/ak7375.c
+++ b/drivers/media/i2c/ak7375.c
@@ -65,6 +65,19 @@ static const struct ak73xx_chipdef ak7375_cdef = {
 	.power_delay_us	= 10000,
 };
 
+static const struct ak73xx_chipdef ak7377_cdef = {
+	.reg_position	= 0x0,
+	.reg_cont	= 0x2,
+	.shift_pos	= 4,	/* 12 bits position values, need to << 4 */
+	.mode_active	= 0x0,
+	.has_standby	= false,
+	.focus_pos_max	= 1024,
+	.focus_steps	= 1,
+	.ctrl_steps	= 32,
+	.ctrl_delay_us	= 1000,
+	.power_delay_us	= 10000,
+};
+
 static const char * const ak7375_supply_names[] = {
 	"vdd",
 	"vio",
@@ -331,6 +344,7 @@ static int __maybe_unused ak7375_vcm_resume(struct device *dev)
 static const struct of_device_id ak7375_of_table[] = {
 	{ .compatible = "asahi-kasei,ak7345", .data = &ak7345_cdef, },
 	{ .compatible = "asahi-kasei,ak7375", .data = &ak7375_cdef, },
+	{ .compatible = "asahi-kasei,ak7377", .data = &ak7377_cdef, },
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, ak7375_of_table);

-- 
2.43.0


