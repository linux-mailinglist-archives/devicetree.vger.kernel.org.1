Return-Path: <devicetree+bounces-128645-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 218EE9E9320
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 13:01:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C7DC21886586
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 12:01:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1147C221DB1;
	Mon,  9 Dec 2024 12:01:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="kR1gr7EF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB23121B91F
	for <devicetree@vger.kernel.org>; Mon,  9 Dec 2024 12:01:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733745671; cv=none; b=PYQu8ghtUdNde8zVpwcARbY/DdV1ltzHNc4XDqKMSrlOYElHbQJ3DarOXu8Iig3gsUNDymr5oolS/MMs0msq5i7smhoZiRPMrJbKqZNwzcRnq26JYYiyW2BclL8MP22Kx419BrMTsMzcu4qKUMv/HvdlMKn3BXGLqUr8ni08syM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733745671; c=relaxed/simple;
	bh=U6FIxo9NOFz5aJHwz/CGu0rXqmTcBFULicoq/xd9RaY=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=dlv/9Bd1KVawEa/6kN0xqUa+FVp9gLE/1QQceP9TfTzxpLuqyZcsGoH7E7uOajtvjXAzq4L0T967mo5Ane6dKFLvI8x8JU95MhqengkGHW4a1LI8tbRY7w+NLr8dvy/HwluDsb3yfVk46h55fihuTRiYW+Yd+FwU3cveBlwNBc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=kR1gr7EF; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-aa543c4db92so4052266b.0
        for <devicetree@vger.kernel.org>; Mon, 09 Dec 2024 04:01:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1733745668; x=1734350468; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=dIbPh213uMn4RKe5AQAX5FOeJn89qdDTeC1KU8kliyE=;
        b=kR1gr7EFLhCP2DJof4vpZ5Rgy/H5KHnEe7uuce65uxmg4RJeI2WAE+C0HOB5XWn/gP
         7EHQe8nq50AP4yJXGnSmZSGZWifePJdjrzxN4Ky/KGo8jLN7fmMJeWuWRHKkZsRWaORx
         clq/QtxBnAGnaLYO4Jj8FRO1Ovwbjzc9UDhSeiE4c1+8sUhQZKTczksh2/qCxtly+NSp
         8+6UqbRu31wDh+FBbmanO0g05i38ZCFPSSyQUjlZyd/0r7gvnErHfg5o5TQsXLyloXIh
         lMEQYfneEUp6FsGS8px4Y34KVs222KxFaXgnaAvwI2XgitguK3SrP6xobvxnFl7zCd4m
         YexQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733745668; x=1734350468;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dIbPh213uMn4RKe5AQAX5FOeJn89qdDTeC1KU8kliyE=;
        b=enocf9zhG4EOKxnxckkCCsHnHui3wp96RLn+0IO03e/COump2UwN0tMmjtzQ/aBx46
         Y9ho4XQVQ5cNKsEO+C++ablncoYtMmDkSxTNasU7IBQULIONid2junvyYU12kkUc/4YQ
         h4/CxEbfQQESCfOFSHE9Mq7su/3NUvPgzxP5ATMX6cMDEXsHAy2THdHgfx1661EaFZWg
         bCgoPFR4UXZSo9x2N9DVKex9ndiaYGGBxrspPy75Y6wqwIH8wj9iRXen5fXofxBws/ZC
         I1Cg0uanGeaxSKKKSAsQvkR0X668r2CeKKpGuH16us2AEeoINbIV1XJEYxZmLeN7PkiR
         vTlw==
X-Forwarded-Encrypted: i=1; AJvYcCVFaqSiKYXvowWsDfXOQmTZ16DQH6KoJ3C6mxi9R/rjKHQOCCBtxHJIL0g2skgH2SbsBi2dnHei9UIb@vger.kernel.org
X-Gm-Message-State: AOJu0YyhCyB+RNfIaFjQ/HVokDOwOrfOdOZdAWG/CZ/70ziXeVMVRit/
	dC/XBPq4jFXI83qpmMXKs7pB5DH9vgZe4kzpPq5dGlkYC3e+GsYmtycfS4j00gA=
X-Gm-Gg: ASbGnctEQIaoaabTanZ1Egv6mOLACXj/cFJvnAalNe2fFcl7qojWyuOu2dT/ALYVhkd
	arOVzHnL4nMn8Qxqt7h/tzTJDE0a+GMlDW6KaLaC5H50qHryIRTR87O1Uy5FsjbeQDjWaa5TAGE
	nrcmOWHoerLyhXQNZT8UQYcrpIOP3HGCro//tkS/vGcZlbeRJtgwYblZaE88vh3UgM97TDIpFZP
	gbP7vRqYvbBIPmnABzC5RdLu/hq7bKua+VmpuzKKGeMj+LDwWQHVwnvAR6TV8F3fe49KblrSuHT
	MfWmQ6Je+F8+JTe7E9l2aGwIUbUCD0mjt4rDmG0fn1/jLDhOr9ez3PqO4y7uF768hA==
X-Google-Smtp-Source: AGHT+IHIzUpxWEtu6qwCt8niQVJmNjY0QttQwYVmWWK8DQ6e2I9mse4mlgRgChp2cySuPRm+pt0vIQ==
X-Received: by 2002:a17:906:3087:b0:aa6:9198:75ab with SMTP id a640c23a62f3a-aa69cd5193cmr7199166b.26.1733745668002;
        Mon, 09 Dec 2024 04:01:08 -0800 (PST)
Received: from [100.64.0.4] (2a02-8388-6584-6400-d322-7350-96d2-429d.cable.dynamic.v6.surfer.at. [2a02:8388:6584:6400:d322:7350:96d2:429d])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa69afa395csm22555066b.71.2024.12.09.04.01.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Dec 2024 04:01:07 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH 0/2] Some small preparations around CAMSS D-PHY / C-PHY
 support
Date: Mon, 09 Dec 2024 13:01:04 +0100
Message-Id: <20241209-camss-dphy-v1-0-5f1b6f25ed92@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAADcVmcC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxNDIwNL3eTE3OJi3ZSCjEpdi6Q0E7NUI1NDI0tDJaCGgqLUtMwKsGHRsbW
 1AK9/BBVcAAAA
X-Change-ID: 20241209-camss-dphy-8bf46e251291
To: Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Barnabas Czeman <barnabas.czeman@mainlining.org>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>, 
 Caleb Connolly <caleb.connolly@linaro.org>, 
 David Heidelberg <david@ixit.cz>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2

Since the hardware blocks on the SoCs generally support both D-PHY and
C-PHY standards for camera, but the camss driver currently is only
supporting D-PHY, do some preparations in order to add C-PHY support at
some point.

Make the dt bindings explicit that the hardware supports both (except
for MSM8916) but also add a check to the driver that errors out in case
a dt tries to use C-PHY since that's not supported yet.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Luca Weiss (2):
      media: dt-bindings: media: camss: Restrict bus-type property
      media: qcom: camss: Restrict endpoint bus-type to D-PHY

 .../bindings/media/qcom,msm8916-camss.yaml         |  8 ++++++
 .../bindings/media/qcom,msm8953-camss.yaml         | 15 +++++++++++
 .../bindings/media/qcom,msm8996-camss.yaml         | 20 +++++++++++++++
 .../bindings/media/qcom,sc8280xp-camss.yaml        | 20 +++++++++++++++
 .../bindings/media/qcom,sdm660-camss.yaml          | 20 +++++++++++++++
 .../bindings/media/qcom,sdm845-camss.yaml          | 20 +++++++++++++++
 .../bindings/media/qcom,sm8250-camss.yaml          | 30 ++++++++++++++++++++++
 drivers/media/platform/qcom/camss/camss.c          |  9 +++++++
 8 files changed, 142 insertions(+)
---
base-commit: fac04efc5c793dccbd07e2d59af9f90b7fc0dca4
change-id: 20241209-camss-dphy-8bf46e251291

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


