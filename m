Return-Path: <devicetree+bounces-245501-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D544CB1910
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 02:05:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E3C053022584
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 01:05:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 762EE2147F9;
	Wed, 10 Dec 2025 01:05:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="Ri/GDVTu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC3D51D88A4
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 01:05:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765328741; cv=none; b=jSI3s1ig0AfF+wfIZzp8ZRzGRjsJibuJzgkYOOf6TCVGLCFXbbxhS1xYvdUX763ORS9zN0S3VxZ6Sn26Ovq6Zh/w6Wq31G0JRJKN3/kI2m4GTmbhleG6Z8MEPrWMyN/vO4KD6DEJfW2uaXOv630HOHIbqxWXmXPTeX9pV15CZWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765328741; c=relaxed/simple;
	bh=+i3BTfPhsLE8GEo/94/1SE3mgTKecjalY7mtMdqKORM=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Lw4x39ZLrozPmItcHeGJC99RC0+r6bItmmvsmeR41Lvzuto3oVmUgBjL0U9e5Fx/6SbnCXXnWE7tuS4V1IiTf6Lkg4eJluyXjJ8HXQ+StUhS+TZ6S2lia+N4wIoOIwKX3h0zpYyiREawTps5cDWA8l4RWApZ46UPJAqbGPoIVRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=Ri/GDVTu; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-477bf34f5f5so49244705e9.0
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 17:05:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1765328737; x=1765933537; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HHcSDCZPYXhd26Yn2LSvoK/Mf/qVpncEW7C95ovxbvY=;
        b=Ri/GDVTurLUN3C7rCjTK7gMxfgCFTeAyd+wgZf3VlOWirmins7VV96LR0XWNU8Pcbk
         KPcZNfqm/TTxCZ5W/4NoVrVzpqoTMk2xGaec8Uq/UEUdQjZBcnXLj0fFQDfFVRcsLu4O
         3d9u4Cek1OvQq15QHkhWoUuk/JsCinEnOQW9fH/A5RhJbVXmDMrVVvFvUc7Tsrm+rcZI
         x52DwrDBDD63Y+6YAFMqyybxi3f8ZOnA3PsCJn4OIO+o38haM6oJQtSDgkl5mzZ7Wux1
         4LuksXWI7P9BzNESHVl9gsM9LUBvRtSrTDnAfnk9S4M024XaaiC+3uPsydu5XsZBP0a4
         mPDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765328737; x=1765933537;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HHcSDCZPYXhd26Yn2LSvoK/Mf/qVpncEW7C95ovxbvY=;
        b=nsEwVSQziEWQwA8MEQ+q9Sm9d4SVvJXBKQT+t+tVX5Pb822AgVF3Hz9pNaB3T2bCp4
         5AfX/EVmbpsYOhdvfardyyggOjIsIPnmeQrnwwQZxDHzDcYmGO/pXU17uzfFpftIDVIu
         iNt9GZZLriWUyZKE88wvtT+NPU2GOL6OlJh+ZJZnajla4Sb9bJ/sggsj1vzsHp5EphHm
         APe4RvMJnFa6Ij4NJt3g5D1gSToZ1Dp5Pm2Nxrc1J8x6lPWlqvkLbEWSG46k0xE4ajki
         xLdYmRg5QqUDh3LW1TffBPJbSdQLggycmNN/wTT4pWcrCwE/63Wg53FP9BMP+fUY9IVO
         ZJvg==
X-Forwarded-Encrypted: i=1; AJvYcCUxKqW1c5xvUmxMnAdtFx8Zi926NkE9CS/bN+gcoaH6szjAqLbDzmcPstoXEjthahmOkKarV6MeVsbq@vger.kernel.org
X-Gm-Message-State: AOJu0YwQb82A6tpxnu1DP6h+N+50HMEDtNDKpxTcV++OwJgZAAhEDNAQ
	r35PpXYiXsefKylEzMKfv9siSbpfwGyQTAqGIY/HS7hxsBrrXd9ZlZz6r5bTM2ifGxbcgWJJqWT
	shCfMwtr2dg==
X-Gm-Gg: ASbGncvrLOBK08q24B/+0XPMwtEqCVLmlvheEtRwuq1kqDbzThS2cw6oBwVx3wAm5yF
	q7lxXS5TE6NKzugqOeylevc2gq8KeEC9g8TtBLbkLwzdXRdpw1PYdohBTqlpI/Ahkoqu37z9t3M
	GZ4ud7QDvBIk9hNzNYnC2FjokFZFVYTZTXPucAvmrNrjSAlOT7Nla607Hm61nhMxgrr5Jvdz77S
	O3x9JhfwvVPOSHVdXPR+sneLEf6Ynf9hQwKKvEQ7CYadjHYXwcASpTn1oK6JFFXkJyNEDgoUr8X
	UbWXNgFSdU798ItOobrO0HSaasZo3gJWe8I+IIGWlW2Q4UZMikGhhfk+uY+yt7bItC+bwWLiTmh
	G1GXJwXwBPCOf5go3PSkor/jIf7JuI9hUIEFfhA4LFcXJEOsPwYeDFqpbUCMEIiZoGNkL1u90bT
	H6mVj4lFI7JkhxQ35D+K0VA2B1n3TfEsxWtkwPtByuAc034CSniobVh69EY/ln
X-Google-Smtp-Source: AGHT+IG0T6nWXe3W7j54A4PIsvvrJ8+7alDZyq2DAzB8aUB31Ina+UJT5hJjNMeivMH0tZ/Ul8SsHQ==
X-Received: by 2002:a05:600c:528e:b0:477:fcb:2256 with SMTP id 5b1f17b1804b1-47a8378c79emr7622015e9.17.1765328737169;
        Tue, 09 Dec 2025 17:05:37 -0800 (PST)
Received: from [10.200.8.8] (p99249-ipoefx.ipoe.ocn.ne.jp. [153.246.134.248])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29dae4cf9acsm163206575ad.28.2025.12.09.17.05.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Dec 2025 17:05:36 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH 0/4] Preparations for camera support on Fairphone 4
Date: Wed, 10 Dec 2025 10:05:26 +0900
Message-Id: <20251210-fp4-cam-prep-v1-0-0eacbff271ec@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAFfHOGkC/x2MywqAIBAAfyX23IKvIvqV6CC61h4yUYhA/Pek4
 wzMVCiUmQqsQ4VMDxe+Ywc5DuBOGw9C9p1BCTVJJQWGZNDZC1OmhLMR2igfxKIN9KTLwO+/2/b
 WPvs3PC1eAAAA
X-Change-ID: 20251210-fp4-cam-prep-640342df0834
To: Bartosz Golaszewski <brgl@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-i2c@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765328733; l=883;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=+i3BTfPhsLE8GEo/94/1SE3mgTKecjalY7mtMdqKORM=;
 b=WYroaOjCibHjE0paBIII6ZqmzENJydkJRzz6ylokmPfmofZB4qZ4I1nlYmOCU7+MSpxAM7NY/
 udMRwR5fT0lAWBhaWZdjprM3ucYrMDCO5qetfjwrRt2D/WWahkT8brU
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Start adding some camera-related parts which can easily be upstreamed.

This contains the EEPROMs, fixed-regulators and enabling the CCI pull-up
voltage source.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Luca Weiss (4):
      dt-bindings: eeprom: at24: Add compatible for Giantec GT24P64A
      arm64: dts: qcom: sm7225-fairphone-fp4: Add camera EEPROMs
      arm64: dts: qcom: sm7225-fairphone-fp4: Add camera fixed regulators
      arm64: dts: qcom: sm7225-fairphone-fp4: Enable CCI pull-up

 Documentation/devicetree/bindings/eeprom/at24.yaml |  1 +
 arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts  | 72 +++++++++++++++++++++-
 2 files changed, 70 insertions(+), 3 deletions(-)
---
base-commit: c75caf76ed86bbc15a72808f48f8df1608a0886c
change-id: 20251210-fp4-cam-prep-640342df0834

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


