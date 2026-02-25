Return-Path: <devicetree+bounces-268405-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4DY5Gb0Kn2neYgQAu9opvQ
	(envelope-from <devicetree+bounces-268405-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 15:44:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E1663198E4E
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 15:44:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 01906305846C
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 14:43:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A9BF3D3D06;
	Wed, 25 Feb 2026 14:43:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WU/4bZN/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f53.google.com (mail-yx1-f53.google.com [74.125.224.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FAEF3D3483
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 14:43:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772030617; cv=none; b=EzHJiGD2NsFnumk86kShuOjpyjzRwSGdeNdFWq8rlSH3GRYsBUyYNZR+egXL7nc9Refthr6CLaspooDREWcRaAjxhbHeIDJkp/3m6vHJHXNCrLl2yPLHtkjGh4TynmufWzWnR/0Kb1Gd5ElS4tzjuu59guD4mTbsuWFsgNuBMlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772030617; c=relaxed/simple;
	bh=rKEeqVjE7wfvhzODV5z9zcNrAw4sm3ndUuu6PN9eKjg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=nG10GLCEVIcXbbHyh8mRcovNA16h+TBXIdhb0BYeY3qFUHeOWAbRX9GS11PSBSzIGub6m0FpgAMORkcW96d4OzSPP79KeoEc2GxGWDOIgXX6QdYrKLMvvCIS4/BDQAZtm6Wkqy+1TN5GNp9UqSvKL4zxBc3BJoXB1e4Mi1h33b4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WU/4bZN/; arc=none smtp.client-ip=74.125.224.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f53.google.com with SMTP id 956f58d0204a3-64ad8435f46so6281254d50.1
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 06:43:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772030614; x=1772635414; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Y5kQ77vzvVXrrGoka+gxza3DJxHiQ4HnQDx7tuRIPuo=;
        b=WU/4bZN/VSsPB7FurFAyKD2xFJUePr35LRXNhCSzmMarD7zrW1uvTFiOt5BOEHUjVK
         ZNdX71XGotDL5pflPbwNqXzQbuagcsYee89LoKd8pByIYnckd+DjfZ7NyhTtjrQUgyUB
         TfKBoQZT0jqEq1q4IHJpa9yzzrTyiERuZlckkXzN8pTxFB2kL3KnGrsCFSJC0dbv3dLM
         Sod22LyFbCG+ytfwUVLwQa9A0P4kJ5+TSee/o0/v3IQAzI3ABkqFeusI6n0Acxvnu/CW
         vhAov4aRSsMOcIwBbiVeVm9xBHai2yxroZiH/nW58YGhA6EeL8NLEDOUZVNwU+1nRgxM
         v9xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772030614; x=1772635414;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Y5kQ77vzvVXrrGoka+gxza3DJxHiQ4HnQDx7tuRIPuo=;
        b=VfFDi9yRllooaJBfhQ3+t9JDA6wBgK3PtHxkRlU2W9FxjopCsEEMJU10WJ+rYojlmg
         lmFqkVIvZ2B3wuRCmccWbfcLtbGIBihAaKIJLl6llfr1PgQLXzPobQ1RrQCV1fAuWtVB
         XG1Q6/5ZGMiYB+1jF9Uc1KCBopKsO0Q+33yIpGruiWc4AoHDqD7cMkys22YcDBD35r6c
         erPdD+Jhooxuq4ioFd5H8dL4U8IFekOe19ozLuqEnPVyvwER3TBNlFxiJuKcOmTpyDKo
         uZpSfz57DKY4vdHFfMtFGy3I77P0WuMsvfVnpbyHOArK9864gttfQo0ZrDmPefgX17Th
         hdnw==
X-Forwarded-Encrypted: i=1; AJvYcCXf5iwta3U6W/2Dx779xxNWJqzeNcj/Z43+7qS3bsBc3zT2peVaw5ilfIhD6WCp1SHPLuMUHPG3ME68@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5avOj0kAV0OO0UoQAaA4st+d8lKJZIMSfevda7wIWcEARM+f0
	o2sEfWtarvhutTeOYNe2tBo2+Zj69XEy1eWKG4jLpVk3zLCbLxHHSzlOaVco/A==
X-Gm-Gg: ATEYQzzFf4McilF3GlIlh7MKiE7PcSAGxW6NR9OXa80NDhQEsIlNuC2gSXL5sDrQymM
	Um8CCDEb2dVirl8NF0pkKzjP5owkXEROqxxDeoBQSMRJhsXOviA7WlrIY9P0qEqm4epujc2kHmW
	5kxd5z3yDpHbywkZFPh2kROVFHoLAQD+XcVkPmrR2Lt+MQurF/jrXARhOIWNw747C/Q2aso7nhv
	Ttr1rAsNOBdJhGadLCGVWpKTrF2/hqU94SV/lkc60+8bkpZe1fcgKg9j+9kN+X7ZPgPA3xbtz6W
	ITRw4+y39/gYdgb/NZ8qNnxGGIto6LXPLEeMaJm6QGLZcuveuIXcd6aRNp579WstSdumL6FQY4x
	oUXsGZQ0Xk/53Xgc228j5RWbaaVbpDHI+3Y1tRlAeIgnPOJPTbdPez22GPFpMlBzXihqzS8yIzO
	S9i89CfeBefq7dNLwg+8AKXA==
X-Received: by 2002:a05:690e:16e4:b0:649:b975:df20 with SMTP id 956f58d0204a3-64cb24d9de7mr443663d50.52.1772030613902;
        Wed, 25 Feb 2026 06:43:33 -0800 (PST)
Received: from [192.168.0.40] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-64c7a2520b6sm5555814d50.2.2026.02.25.06.43.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 06:43:33 -0800 (PST)
From: Erikas Bitovtas <xerikasxx@gmail.com>
Date: Wed, 25 Feb 2026 16:43:24 +0200
Subject: [PATCH] arm64: dts: qcom: msm8939-asus-z00t: add ambient light and
 proximity sensor
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260225-z00t-capella-sensor-v1-1-99f767bc326a@gmail.com>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/x3MQQqEMAxA0atI1hOIGazMXEVmUdpUA1KlEZER7
 25x+Rb/n2BSVAy+zQlFdjVdckX7aiBMPo+CGquBiR0xd/gn2jD4VebZo0m2pWBM8d0H/jhKDmq
 5Fkl6PNfhd103OxgcZ2UAAAA=
X-Change-ID: 20260225-z00t-capella-sensor-dfd37c2960f6
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 phone-devel@vger.kernel.org, Erikas Bitovtas <xerikasxx@gmail.com>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.sr.ht,gmail.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268405-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	DBL_PROHIBIT(0.00)[0.0.0.60:email,0.0.0.68:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,c:email]
X-Rspamd-Queue-Id: E1663198E4E
X-Rspamd-Action: no action

This device uses Capella CM36686 as its ambient light and proximity
sensor. It is fully compatible with Vishay VCNL4040. Downstream device
tree reports Capella CM36283, but upon probe, a device ID for CM36686 is
actually found. This commit adds support for Capella CM36686 ambient
light and proximity sensor.

Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
---
arm64: dts: qcom: msm8939-asus-z00t: add ambient light and proximity
sensor

This device uses Capella CM36686 as its ambient light and proximity
sensor. Downstream device tree uses the compatible of CM36283, but upon
probe, we can see that a device ID of CM36686 is actually read. Possibly
a driver for CM36283 was adapted to be used on CM36686.
This patch enables Capella CM36686 ambient light and proximity sensor on
Asus ZenFone 2 Laser/Selfie.
---
 arch/arm64/boot/dts/qcom/msm8939-asus-z00t.dts | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/msm8939-asus-z00t.dts b/arch/arm64/boot/dts/qcom/msm8939-asus-z00t.dts
index ea90b00a2c8a..1a340fa92755 100644
--- a/arch/arm64/boot/dts/qcom/msm8939-asus-z00t.dts
+++ b/arch/arm64/boot/dts/qcom/msm8939-asus-z00t.dts
@@ -147,6 +147,17 @@ magnetometer@c {
 		pinctrl-names = "default";
 	};
 
+	light-sensor@60 {
+		compatible = "capella,cm36686", "vishay,vcnl4040";
+		reg = <0x60>;
+
+		interrupts-extended = <&tlmm 113 IRQ_TYPE_EDGE_FALLING>;
+		proximity-near-level = <30>;
+
+		pinctrl-0 = <&light_int_default>;
+		pinctrl-names = "default";
+	};
+
 	imu@68 {
 		compatible = "invensense,mpu6515";
 		reg = <0x68>;
@@ -330,4 +341,11 @@ mag_reset_default: mag-reset-default-state {
 		drive-strength = <2>;
 		bias-disable;
 	};
+
+	light_int_default: light-int-default-state {
+		pins = "gpio113";
+		function = "gpio";
+		drive-strength = <16>;
+		bias-pull-up;
+	};
 };

---
base-commit: 3ef088b0c5772a6f75634e54aa34f5fc0a2c041c
change-id: 20260225-z00t-capella-sensor-dfd37c2960f6

Best regards,
-- 
Erikas Bitovtas <xerikasxx@gmail.com>


