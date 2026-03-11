Return-Path: <devicetree+bounces-273784-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6ON7CLbIsGk8nAIAu9opvQ
	(envelope-from <devicetree+bounces-273784-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 02:43:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7463025A73C
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 02:43:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 20E883131984
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 01:43:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71FEC36E480;
	Wed, 11 Mar 2026 01:43:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="X+HUCLZ3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4874D28D830
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 01:43:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773193395; cv=none; b=qQRfLBOIAwArvvQ7uDy30jY2bE2PllnYIDbUmfbXJayl3HsXdJieEgC5I529kE5ICdvb0Og/GqOgpcatU2WFyZRLJOn/zI+F7YJv6n/KQC4qX2m2ZRGGXWppyKtps/wcJtO3U7LBPxnS116CvAdqsmPuVzUNQWTrk1DUeNH0Kj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773193395; c=relaxed/simple;
	bh=9LUdXfBARsaa5aGSj+H1I2RjRXfeuEeD4z57PoMbr/o=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Nq/e3PR0zTpu8A3jQgtb+JtP8+XwZpM3KOp+MxGhU16vq8VZNhooV4Z2qvVi5F45Yf027GodVwxTyHOsTRTCZiq9d6CJVaBb+kb0u57wlirboATXekcdcLDdPYjp68ul0BGDH8tcK4q2W9M/oApFnySsijMIXcmTpxTO7IKRl08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=X+HUCLZ3; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-2ab46931cf1so3776935ad.0
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 18:43:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773193394; x=1773798194; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=SsEmlKrghwdfIHl/EnFksbvwKHzbziypfGsIUQMGG08=;
        b=X+HUCLZ3YgoDkSkNs0y35ZlKKa4ubnWe8Ba6Wn4ekeJ2qh4agm7o8tr8jmSCc3wmwT
         F1ZzCjWag5oJLasRxaadL51H5wID3oLjCWlsQqRmdbJnthK/Y7UDen2J0gmnSsEqQWMt
         AL1EDuxKqUDbeJFlSNYk+XiPTxt09BisFWnh8YsnfnDEMc4yRKc/as3V1NdjGdwL6MZD
         V9Q8E92uCowAA0rWI/6RN7WMcQzVzLHPS/PU+vkwJ0ATLdHiPbFvvkbVrbMmbaJMDmQc
         2Et5CDoaJuGM4N8ckQ8vFHJp4S+yI2vSOPzH/vB6hzJ4qRwWg8zpRWVTHZfjGhI84sU9
         nh7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773193394; x=1773798194;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SsEmlKrghwdfIHl/EnFksbvwKHzbziypfGsIUQMGG08=;
        b=ZMcLWk3k6EDQXw1KsX+z3efiTEfU20jsllCTKtAfE9ebfOLoT1eNlRaHmAI8rsiQJX
         pBsXElUweD8or0LWKF+gPKDeL5a+cb3Ny6v8onQOE2YiAGLjlIVRf9rGXoxD9N8ZyZRt
         DUb/GpBkYSI7wdQ1RqdHstD9pFqPSOFd7OWvLl6HO7mcZBKZujEngV++HOqc40bC1SU9
         sQINu4uwPlQStFqRslBrXk3z88Z+HJWomNOxoMnE8MJQ7HXwtSAG7dbQPM3FewoM3oGQ
         ZMq9p2Gys9OEn5ZXbmDpGIk+q9TZwgnPcnDOy8GvxCQ5QniRTUZlqxKLsTLR8kuHdrm2
         74Qg==
X-Forwarded-Encrypted: i=1; AJvYcCV2nXk5HT58ERsk5M+4h+kVVKrBnKWp3nVNKcGQ2AHUB5hiWn0EGOgcMKuhxVG4E7al2aUeRrltH/ly@vger.kernel.org
X-Gm-Message-State: AOJu0YzChY+sTofubANAHbbzaDPj73h1PyZSxmfkGNe/U74zVTni/nyG
	TXRKCVX5hZpP0yVL41DpQGUf3U4Gpe7T+Oq5PRvB2frnNXy98ekki8dkhfmYKg==
X-Gm-Gg: ATEYQzyGpUsD7dsgQ9dLcK4A8K9I1O8Mtjt+7XLvy0Arm12J+0ubJZXMMESLs0CQWff
	4kNnmys5i3PpSKPAxJ0LOJuGgVvwzbusACAdIbR/FCJtVHCuD0jD60pk9T2IoLYxA6gx9iAtLwB
	AG7iRDMUyHHfOo8MsN8G8gTf29Ox5Km8e7VBBZGR/mnGTdlgz+aMB+C+R4sDIdakJbuuMcZnShR
	dkWw81UCb8Qp+ju66JClYmUdveYWB/3Sila8ju8sdyS2b79aduBU+1EXxBgjxozBRk+uaWszGv6
	BCD7TzwoqGifharAWXVcLYfTqz5VZ06TQJ3uGb/81yon4B2GmT6CAVUAJ0KLEBbaDFCM0KNboUU
	4tgmOIOqbiy9E8UOEV6SJ+kYTL/8MgIKox3gEnNjcNL9lt33UU7UhJTZrBkZhkjO9PXa4TBnqRq
	xJ1tijzGT5gR2zw/3MWNFs83QErY7S+HMQzWrNaERUGGQKkm5AjmF6trj9JvxuZ/g=
X-Received: by 2002:a17:902:ef4f:b0:2ae:4fc2:d95f with SMTP id d9443c01a7336-2aeaed01c8emr6386825ad.26.1773193393652;
        Tue, 10 Mar 2026 18:43:13 -0700 (PDT)
Received: from [127.0.1.1] (61-220-246-151.hinet-ip.hinet.net. [61.220.246.151])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2aeae378980sm5219545ad.84.2026.03.10.18.43.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 18:43:13 -0700 (PDT)
From: Kyle Hsieh <kylehsieh1995@gmail.com>
Subject: [PATCH v4 0/2] iio: adc: ltc2309: add support driver for ltc2305
Date: Wed, 11 Mar 2026 09:43:00 +0800
Message-Id: <20260311-add_ltc2305_driver-v4-0-bc350d347f33@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAKTIsGkC/33NywqDMBCF4VeRrJuSTDTRrvoepUiaiwa8lERCi
 /jujUJBinT5H5hvZhSMdyagSzYjb6ILbhxS5KcMqVYOjcFOp0ZAoKAADEut625SwEhRa++i8Vh
 AaWVFOX0ogdLh0xvrXht6u6duXZhG/95+RLquf7lIMcHaSlKCsJoDuTa9dN1ZjT1auQh7Ij8kI
 BGEUytKZfNCsl+CfQlOKPBDgiWiKijLK1kKW4k9sSzLB0B4/H06AQAA
X-Change-ID: 20251223-add_ltc2305_driver-728fa9161bc7
To: Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Liam Beguin <liambeguin@gmail.com>
Cc: Michael Hennerich <michael.hennerich@analog.com>, 
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Kyle Hsieh <kylehsieh1995@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1431;
 i=kylehsieh1995@gmail.com; h=from:subject:message-id;
 bh=9LUdXfBARsaa5aGSj+H1I2RjRXfeuEeD4z57PoMbr/o=;
 b=owEBbQGS/pANAwAKAaWDQrcJVsSBAcsmYgBpsMiu6ISH7e43zyj4n9jfFOpNujq74w1rCW06t
 QzuulYDW2qJATMEAAEKAB0WIQTJHsaNZOdY+THGqJelg0K3CVbEgQUCabDIrgAKCRClg0K3CVbE
 gXwcB/43sAs76T9QYx2/+O3+hdNFFIR3lu0Bfge4vkyf34/+uEqJN82WsmZLqO6ex/zAWF/R6aa
 yuqnZFm9zaoiiIUVzE9TfGl21mp4z2vme7H3gDTE8sey7KjWp9kdBqNZVyPqjW23FKBBRTPQOpc
 5shAY0vzQBkKvZfyveIvg8pVqsCBFpAEieddsjyJvYy92mNGIU734QyAthjFQ9jqqbO13PPQAAd
 K69CL9J7ENokAz0qhBaxDTodZRVqtw4GeKo1WJjwLOp2i2IriDgNr3UJ5zKp1vv+AL60c+Rvu7S
 DsSU76O46OtwinBcEo1of6TBGQ+c2A/Fq4av32oUe2WyX3E5
X-Developer-Key: i=kylehsieh1995@gmail.com; a=openpgp;
 fpr=C91EC68D64E758F931C6A897A58342B70956C481
X-Rspamd-Queue-Id: 7463025A73C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273784-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[metafoo.de,analog.com,kernel.org,baylibre.com,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[analog.com,vger.kernel.org,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kylehsieh1995@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

The series add support for ltc2305 controller from 
Linear Technology Corporation(lltc).
This is low noise, low power, 2 channels 12-bit successive
approximation ADCs.

Signed-off-by: Kyle Hsieh <kylehsieh1995@gmail.com>
---
Changes in v4:
- Fix build warning in ltc2309_probe(): initialize 'chip_info'.
- Link to v3: https://lore.kernel.org/r/20260126-add_ltc2305_driver-v3-0-951349a87f97@gmail.com

Changes in v3:
- Modify ltc2305 channel mask to compatible ltc2309.
- Link to v2: https://lore.kernel.org/r/20251224-add_ltc2305_driver-v2-0-061f78cf45a3@gmail.com

Changes in v2:
- Reordered chip descriptions and code from low to high order.
- Renamed chip info structure to use ltc2309 driver prefix.
- Switched to i2c_get_match_data().
- Removed unused variables.
- Added chip info to i2c_device_id table.
- Link to v1: https://lore.kernel.org/r/20251223-add_ltc2305_driver-v1-0-dfa0827fd620@gmail.com

---
Kyle Hsieh (2):
      dt-bindings: adc: ltc2497: add support for ltc2305
      iio: adc: ltc2309: add support for ltc2305

 .../devicetree/bindings/iio/adc/lltc,ltc2497.yaml  |  7 ++++
 drivers/iio/adc/ltc2309.c                          | 49 +++++++++++++++++++---
 2 files changed, 51 insertions(+), 5 deletions(-)
---
base-commit: 9448598b22c50c8a5bb77a9103e2d49f134c9578
change-id: 20251223-add_ltc2305_driver-728fa9161bc7

Best regards,
-- 
Kyle Hsieh <kylehsieh1995@gmail.com>


