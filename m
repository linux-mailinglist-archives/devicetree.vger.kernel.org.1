Return-Path: <devicetree+bounces-124996-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DFFB9DA7C5
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 13:30:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AD357162E62
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 12:29:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A53A91FC0F8;
	Wed, 27 Nov 2024 12:29:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GkdoMgmI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f66.google.com (mail-lf1-f66.google.com [209.85.167.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C80851FC0EE
	for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 12:29:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732710598; cv=none; b=D2eq4MIFJzgH+lUMfaLedDqA31qCfm9abJCEgC+jrrM0yyoC1LIhmSGkDVFwx9v5UjdS58hdCjC9M7PyM/XJTQC+In1KYDO1Mw4DjaMXcdp31CafrNS9UH8cGYCQE6nJv5aDHgATVcDsucCbxuX1NRntskCr0wgU3CAEk6hfTRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732710598; c=relaxed/simple;
	bh=eO8pZeLmCY07ZvONQ95F7bnDt5LzCJtb1w9NSPUfJh8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=R2tW3yk8dE8jugMxvhfH1/8LHjSYvt8yoichpLbSv/bFlEWGDCYk3Nw2G/ukZxjvFAoIrsUbfajzEAOIxNI1bDF4l8XlNaeyhOjQSGRWCCk4r/T2xV3rWpGsTwa/LOZ2v3ZtbgOhP3Xjrxy2PJUnjtJfcSi4nK+Ne5xQBIYVUDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GkdoMgmI; arc=none smtp.client-ip=209.85.167.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f66.google.com with SMTP id 2adb3069b0e04-53ddb4c05d1so669051e87.0
        for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 04:29:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732710595; x=1733315395; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=KRcdSs7XMlGnAilpDhcNiYT3hFI3KAq1n7SCl+kMm14=;
        b=GkdoMgmIwaaGmz5I/jMOZc2DEuvqJYiAiw6yeY7DixADaY0Y+L7rIka7ebJktp3K2B
         tISsYEh1ACr+1dbu16T+snXfgu6HtL3qZw2uzql3dIiYwZFKcl6HK+/tam3oDPdByjvt
         8kaRjngBkX9KEZgWV32oa3NYJrChUulq4hTHx9Gdmkrvy4L5feTi8f1/mn46aubCrPVr
         JHSm6v6ElKctF+qPY3QMQOUMvTvtGmJ4DlM7AAcVGo2sD7OL9IHMgz2513bOu42IaCa/
         Otsvp8qxCwi4+nohGF7rjBdyAeHhoyyV6oqwQsgueOcGYMFgOhcrZcttGdKbuD+gLEWb
         rDOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732710595; x=1733315395;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KRcdSs7XMlGnAilpDhcNiYT3hFI3KAq1n7SCl+kMm14=;
        b=HhJMTABcOUZyBb4XeysGqYXwtxw87YdFT5dQNvw8zvZi2fTvdemDMXD4m1joClEJHG
         E9EHZxjpONwC7+IEWJohn/GuKdT7YT0eOdaD1vu7VbdZCJno1uLe2s6NPKT3u+8V5XOl
         R48P+erW2/GIzX3QGw+dzoI69g3tF2teTqCIvP46Xb/5Zu4QiWYDcWIfgdquraPO3i1i
         mqsk8rULPc5ksqzIlbH5MRS6bcXAlWtLA8PpAHZomicgWJy4YgkxziyZXJqJcBIFJkMu
         P0uOP5HQwzv/lEXi+dWVBlIAyZhThC8FW4T1UPDqqvwawT/oul2l/o7cgMfKwIgpw4m+
         lbzg==
X-Forwarded-Encrypted: i=1; AJvYcCUyZGHDwnY7YqFXkyYoKFPsJBqXCvAqW627WnNJ1juH+MhdVlNCLnVBAHZkcoeXd97t/wZZu3RAlhzG@vger.kernel.org
X-Gm-Message-State: AOJu0YymuAgsxdM1FoWrQmYGn2pc2QuuEHvhLjN+YM63qHW7zwyYMAca
	XldHE9CsIm1ZpNV4+EmRfUtXP5RYdwejWbtGMIuGMbFtwvOYqqfV0AWB+PJdFBo=
X-Gm-Gg: ASbGncvDs6pt/915y4qSyKJHgY7zW7/anCTY90PCG86joq9bhqmWXzSCxqElWykr4Ul
	TUulxdrIIH9ogulQXX+Gs5cKVgGYnd3PtkMhnoIyqzwFE3pOgEbQjymZilTxGveAy2wh4wCMx+P
	X5e9Vu7P364xdrO+Gk4s8YUlZYJq1pFOXPTpd5sJPzy4mAKlXfO47ZmyXPMVhK7GGztQxR5v5K3
	R+Glt4opkMeyYY41hSATTodjprC9L10t+clSnHviqKVYhAlwaxlGBQQ4IkbBmpt7OeHVKITA/jg
	xCgKVs9aiMRU8XcnRDTs0x8ChOqON+BfSvJHHBM=
X-Google-Smtp-Source: AGHT+IEmhY/XevE73lIO5R+T76MBj7DXNOF8lKpN8Jyne4r1vkv6Io8XVDa+jBnr77B+i8BS8pEL7A==
X-Received: by 2002:a05:6512:3e23:b0:53d:ddc6:259e with SMTP id 2adb3069b0e04-53df0108cbcmr392654e87.11.1732710594838;
        Wed, 27 Nov 2024 04:29:54 -0800 (PST)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53dd24953a1sm2276621e87.228.2024.11.27.04.29.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Nov 2024 04:29:54 -0800 (PST)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>
Cc: Robert Foss <rfoss@kernel.org>,
	Todor Tomov <todor.too@gmail.com>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	linux-media@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v3 0/6] dt-bindings: media: camss: Fix interrupt types
Date: Wed, 27 Nov 2024 14:29:44 +0200
Message-ID: <20241127122950.885982-1-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

It was discovered that on a few Qualcomm platforms types of interrupts
do not match the type given by the Qualcomm IP catalog, the type in
downstream code and the type requested by the CAMSS driver itself.

The mismatched interrupt type between firmware and the correspondent CAMSS
driver leads to known problems, similar to the ones which were discussed
previously:

  https://lore.kernel.org/lkml/20220530080842.37024-4-manivannan.sadhasivam@linaro.org/

Here the situation is essentially the same, namely a repeated bind of
the CAMSS device is not possible due to a wrongly specified interrupt type,
and it may lead to an issue in runtime manifested like this:

  irq: type mismatch, failed to map hwirq-509 for interrupt-controller@17a00000!

Changes from v2 to v3:
* gave clear commit messages addressing Qualcomm IP, thanks to Depeng Shao,
* hence keep Krzysztof Acked-by tag, since the only expressed concern was
  a missing reference to the hardware specs,
* added Reviewed-by tags from Bryan,

Link to v2 of the changeset:

  https://lore.kernel.org/all/20240923072827.3772504-1-vladimir.zapolskiy@linaro.org/

Changes from v1 to v2:
* added gained Acked-by, Tested-by and Reviewed-by tags,
* per patch review requests from Krzysztof deduplicated "media:" from subjects.

Link to v1 of the changeset:

  https://lore.kernel.org/all/20240905164142.3475873-1-vladimir.zapolskiy@linaro.org/

Vladimir Zapolskiy (6):
  dt-bindings: media: qcom,sc8280xp-camss: Fix interrupt types
  dt-bindings: media: qcom,sdm845-camss: Fix interrupt types
  dt-bindings: media: qcom,sm8250-camss: Fix interrupt types
  arm64: dts: qcom: sc8280xp: Fix interrupt type of camss interrupts
  arm64: dts: qcom: sdm845: Fix interrupt types of camss interrupts
  arm64: dts: qcom: sm8250: Fix interrupt types of camss interrupts

 .../bindings/media/qcom,sc8280xp-camss.yaml   | 40 +++++++++----------
 .../bindings/media/qcom,sdm845-camss.yaml     | 20 +++++-----
 .../bindings/media/qcom,sm8250-camss.yaml     | 28 ++++++-------
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi        | 40 +++++++++----------
 arch/arm64/boot/dts/qcom/sdm845.dtsi          | 20 +++++-----
 arch/arm64/boot/dts/qcom/sm8250.dtsi          | 28 ++++++-------
 6 files changed, 88 insertions(+), 88 deletions(-)

-- 
2.45.2


