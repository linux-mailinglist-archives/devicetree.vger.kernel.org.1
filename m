Return-Path: <devicetree+bounces-151523-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DD45AA461C3
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 15:08:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F31303AC202
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 14:08:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C84B82206B3;
	Wed, 26 Feb 2025 14:08:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oXkkEJmn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEB0215E5AE
	for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 14:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740578905; cv=none; b=UlY0Tiu1zCpPw/XmefFOeXaAVQtPcr7yL40+XFzoJ3H3VkzacGWRclXOx9rr2/IDdBFI582NKyCu4Zs++ZusKoeBHyCVursVlYwx9rRJzEUOcpOFtxgFeWawr0K54UcTKJkuL8In/m8UQPpfKVC9GswMRVOyemwy9No3qvJef04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740578905; c=relaxed/simple;
	bh=Z8ID3sNVfwatoCeBh6IOOz1sI/Ryo8GaKrAF0IjVDvU=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=LD/u4KBnqGOPvM1P9Iw92pSfjTfUCYOJGplzv7D53zFFChpWpEGyd/XFBpGJJRtzgwqMZ4JEe8NXR0q0SRbbalGZx9vUbaM29b+t18BfA7knPhBFmcqZeolLbabnt8r0kv1YxcdZNo72T3p0F8RckiIFcNW1QG62oEsdvNaWXSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oXkkEJmn; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-abee54ae370so241801066b.3
        for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 06:08:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740578902; x=1741183702; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gGkvpqqa0lNt6OkGD+EZHoDXRP4y0p+8QmeJ79Z97r8=;
        b=oXkkEJmnBGiOJfjc7cQZzQ5LgEfhKMJd3SelLVgJMUVgneoKnNA/87UERr7bkxfJRf
         40nV7JCUWiQcD3OD80T02PlMo/iT+0pqg5cr/jvyH1B1DNrix7JdGCFfeZDNd1TffT2s
         p2N8diUxCnH6r/+rYPZTau5sab2mJ2RZq9LfhkufWW+EaZ5u3FxicGjFHuLZC6FBHms2
         JzDQqYBagRsvXqDLzUW9wbyq9Wvn6wtI15pRbWXmYjSkk4b7jzTtbJ/Mqn61ttx7vy9B
         4UgzeUyc6VWgR3Bd6lOdFTEx2IKhja0M8LkNmpEkyzhDMlG0um05XJMAvMIu47idkZUj
         gXiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740578902; x=1741183702;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gGkvpqqa0lNt6OkGD+EZHoDXRP4y0p+8QmeJ79Z97r8=;
        b=E2yZvrYFiY9XdJH5eE7AERzWPjvaqd0IFwkF9PZZZpdyO/aRU2Y9dgKyyLiPBjtqee
         cT3xuymOQ8LBnkx9UTyGf/0BJFoZGGX7OPDCcrKD8mzoAEx6z5vYfp11QgesmLs8cyLH
         V15vPh33cnx5MuU8Bv5h9uxzyCm3L0sdkakSPKy/dy/E+GwjVWvAKzUDKfMgIzycJGWr
         OpYcgOReO1zPlP+auA/3aLOiMP6iqa7n52v4dJlMoulqoKK2o0Hv7ordhexak62sLRqN
         TNJxMAFzzcsI/+ZKYhDxaPghUDiCt3XgOn5mN30qdO0xEabsFTfo2AEctTuy1KSB2TWi
         fWIw==
X-Forwarded-Encrypted: i=1; AJvYcCVuEHqTnFpYf2z9Mghy17so2Rg5FcKqhc7xSGBww+nw/evUha/dx703M32YrNRmJAHeWDB2HqRN63Ar@vger.kernel.org
X-Gm-Message-State: AOJu0YyIILJg76K5I09yb802BP0NDXyzVg+oUwGjkNIlUT5+bAjufkkD
	5ncW1KVjJl9oJRwQUti5epQoj2I3eNyPP7i2oJGnnllCpQVhoZbyy4RACxBpqW0=
X-Gm-Gg: ASbGncv++W6gb/T7/guYb0PicgXsC8aA8bvhfDIN1mUPJCUnYTeIvuGBj19ALVOXkJP
	9qqTyP7cyRsh216XrmUMsgmcW9/OE4SgU3euwMgXsOv+1BIrIKW25EruRMX09IDt/xXQPxqHjDI
	SZutM5D4gEL1HBwGfLd3Rvq/s5t/UBZdfRlXt5yo2dJeXStgI/gEwVxt9wqh/gPmGC7t9yA6Nsy
	vGnPLgxsYSHAXfdI46GPvSSOIrglPLpVRXkriSyP+GxLQ/BHGnLX+ytL6Xw5PWHMexrlsyeaNi1
	XzGpIalmo/8a+iPpDbhf1GXkcprpk6WMbskIoWlOyWED+lJSkHR5R7Y70DeHm0qZaXVBqjZ2Dde
	R35fztXSc5g==
X-Google-Smtp-Source: AGHT+IH4MdS69xY9exYgdEvpIfpgesUDo++yOFDim/PJZbSNDvBtWjUP3kjR6hVeKMzb+SYuk5VjHQ==
X-Received: by 2002:a17:906:2191:b0:aa6:8cbc:8d15 with SMTP id a640c23a62f3a-abeeedc8786mr268568966b.14.1740578902102;
        Wed, 26 Feb 2025 06:08:22 -0800 (PST)
Received: from puffmais.c.googlers.com (30.171.91.34.bc.googleusercontent.com. [34.91.171.30])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abed20b6024sm330157566b.181.2025.02.26.06.08.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Feb 2025 06:08:21 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Subject: [PATCH 0/2] support Linux reboot modes in syscon-reboot
Date: Wed, 26 Feb 2025 14:08:19 +0000
Message-Id: <20250226-syscon-reboot-reset-mode-v1-0-91c1b62166ae@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAFQgv2cC/x2MzQqDMBAGX0X23AUNJg19ldKDP592D82WrIgiv
 rvB0zCHmYMMWWD0qg7KWMVEU5HmUdHw7dIMlrE4udr52rnAttugiTN61aXAsPBPR7APwcfYx/a
 Jhkr+z5hku9fvz3lelKi9dWoAAAA=
X-Change-ID: 20250226-syscon-reboot-reset-mode-566588b847e1
To: Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

This series teaches syscon-reboot some of Linux' different reboot
modes.

Linux supports a couple different reboot modes, but syscon-reboot
doesn't distinguish between them and issues the same syscon register
write irrespective of the reboot mode requested by the kernel.

This is a problem when platforms want to do a cold reboot most of the
time, which could e.g. wipe RAM etc, but also want to support rebooting
while keeping RAM contents in certain cases.

DTs can now specify the existing properties prefixed with one of the
Linux reboot modes. All the changes to support this are optional and
opt-in, platforms that don't, or don't specify a register/value/mask
pair for a specific mode will behave just as before.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
André Draszik (2):
      dt-bindings: reset: syscon-reboot: support reset modes
      power: reset: syscon-reboot: support different reset modes

 .../bindings/power/reset/syscon-reboot.yaml        | 74 ++++++++++++++++++
 drivers/power/reset/syscon-reboot.c                | 88 +++++++++++++++++++---
 2 files changed, 151 insertions(+), 11 deletions(-)
---
base-commit: 0226d0ce98a477937ed295fb7df4cc30b46fc304
change-id: 20250226-syscon-reboot-reset-mode-566588b847e1

Best regards,
-- 
André Draszik <andre.draszik@linaro.org>


