Return-Path: <devicetree+bounces-223341-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B8227BB3938
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 12:15:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 645AF3B9297
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 10:15:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 712153090CB;
	Thu,  2 Oct 2025 10:15:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="v3hWiZ0d"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8024F302CD6
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 10:15:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759400148; cv=none; b=cOQA7PSfHs5XYrbeiKuDQH7MV60j1EZJN8nWkCuPcjre8sKABHSCIlk0HiiMAp1DFmp2ELiGIiiK6RSpkO8SuVOiW08DR9AipTcDdmy9a92YMasMRenwPb3XqJSDUWqpzyRWOgv/QgdmhMTWqQoqNN2CXkqlRj/UR0xnxVlZiYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759400148; c=relaxed/simple;
	bh=66oeXJMJEulwZj/KIhNOzY5gGBvviXDjo7ZUMMncbtw=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=EdoX8LfzjuhiOkz78hZF4jpwOAs93ryjmE2J8bPR+hxT5HKS16DfleedbDlw4IBWGpG+Yb/JlBsp130RBkMTPXr2J9jNh04mE4k55UwoQNau0DV30ldzPZCWGlZ0cjqOXxMhmWy7h8AGHs6PXm27y7gWGpZeoIW2HGjCN6RFn/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=v3hWiZ0d; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-b07d4d24d09so150361466b.2
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 03:15:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1759400144; x=1760004944; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=NPlLSMsE7jtu9vfSrQUVTA10X9VUfgXuBWRPCu4XK9E=;
        b=v3hWiZ0dBTe0BCjfiyl6e3HMtCzGyrb5Vvj+Db1NCgnrVriMMx9lkQc2MftgQCXFGp
         80kDQQFWg6f9IcKLmfxU6NPNSKSEE/n3XTGU6MQ6yXFohNxRoyAmpNizdOj+hqhTlRMz
         XHeQYvXKWoF8JCJHR4NRGgphDZ5V5+NMWivnLosGhA9HYCvVEHxsp++PvM+S563RASMD
         HooIJ4gMfGcbM4OeVbwJRF54by8bd5RmJqc0OdAm02Bm4PbU4iDMTzbvPw68GSV8Cp1S
         s226aIxaDRWmJCQ4nU5/tFrbYtkOX1uVGw7ygvVuTwmgj0vEPK0B0QkV6yRU7pWlcGC/
         WXcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759400144; x=1760004944;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NPlLSMsE7jtu9vfSrQUVTA10X9VUfgXuBWRPCu4XK9E=;
        b=XFflKgC9247RyiYApecXcGURivT0sr6Zt4rwn3JI+VYeXK60hJ17VOoUploeNiibOU
         v7ORGV2edtAp2OZA26WoSzSDeNRNdAae6wKtIIS6stsvHZ4HNWgj9PJr+KVYH44ZLjpp
         W1iSOBqPtxZuk7RZKHlbIxRyScHUOHdw6+BOlnzwx3f90X64qoUCw3cDdCxd03LVLtgs
         qJQWE2eBFilP4NEHDAPfJkWviVkbr2oeuRepcy9l549I83/GLy5S0bfI4AL3ie7vS89f
         Ng67JnTp2QUh2uip9STkqFV94UhnH7imMF9wbdV57MdyXq/FnrJqOmwJBWINRMjO05Zs
         2ukg==
X-Forwarded-Encrypted: i=1; AJvYcCVxD8UHbFgidQ9nBnvxd8DPT7sdSUNtNsmGx/l0b/WbuhdT/XYWZqrIRft8nd2fdPBE7zvhdzjEj0ze@vger.kernel.org
X-Gm-Message-State: AOJu0YzEKZSFL7VyUmAOtfKQmDZ83GGhrqwFSov07Tyw2cUlYqCBcMIG
	D866cdzDs3ZzhZpY5zQ2l48nlbVPT8/mL6XKyrRmVruLiLkOX9yvBQ8KZOBUWjA5Nx+0EI0IQC5
	wKOHCMBY=
X-Gm-Gg: ASbGncugy+C7vjcwTjJvGGgvfLMVpMrN3zcyUTYU4eWsDbIAAsIENOkcpapd2GjWcJ5
	T1ZVyrfw2d6zWA5nwq5qNUnwKsD82lFc0ujwL1rTciI+1yGhAUxNosunDFTBoXmJMwanut3jR0G
	lZDqjuyxRllJ+qODj3krIJyV6I+u0d3lOA/P0PvxBpLzJrb2XeqmZrLe0S26VPiOscWNb0ZXfqp
	Bo6bIx0w8iux6YM6VuoV/JX9PiJZb3jqeww9wecF2plSn3UUaYeCO9v/S+1VzNUWEhMZ2YXMvFd
	uHlO5jhaTRiFMxRV9sP78vCsEoNfMnAItWvBWoOXMTXsC3FUi8dSc0A+o/dSphAfNVXdwPaqhDE
	3VCF2uK16NU2gqIUrAhun3+OPgy+FdUNIedNtNqiq3DdivQBqG/DG7RmTRDR2liTXXEIdH07ldC
	B22TvY2mQDfKXFFGux9f5YM9s//7wD
X-Google-Smtp-Source: AGHT+IFeiokypzBNV3MdgOJgTGlXOrZ2BNMjOleFZQU75JeHB4nqA/43V4SqkrvtRZ97TXcmn9ISAQ==
X-Received: by 2002:a17:907:6d0b:b0:b3e:b226:5bb0 with SMTP id a640c23a62f3a-b46e8b85fe2mr871981166b.42.1759400144353;
        Thu, 02 Oct 2025 03:15:44 -0700 (PDT)
Received: from [172.16.220.227] (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b4865e77427sm174862366b.36.2025.10.02.03.15.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Oct 2025 03:15:44 -0700 (PDT)
From: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
Subject: [PATCH 0/4] Add support for Dongwoon Anatech DW9800K driver
Date: Thu, 02 Oct 2025 12:15:32 +0200
Message-Id: <20251002-dw9800-driver-v1-0-c305328e44f0@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMRQ3mgC/0XMQQ7CIBCF4auQWYthiFjgKqYLClNl0VahoknTu
 0vbhcv/Je9bIFOKlMGyBRKVmOM01sATA/9w4514DLVBCqmEQc3Dx2gheEixUOJKo1A+XIwiAfX
 zTNTH7+7d2qMTvd6VnY/xr1q2m40wm9mg4dppLSX1Hju0RW5e5zJxPw1DnC0r1zM20K7rDyRbh
 fS2AAAA
X-Change-ID: 20250918-dw9800-driver-58105cd495e0
To: Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
 Daniel Scally <djrscally@gmail.com>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 =?utf-8?q?Andr=C3=A9_Apitzsch?= <git@apitzsch.eu>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, 
 Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1759400143; l=1571;
 i=griffin.kroah@fairphone.com; s=20250804; h=from:subject:message-id;
 bh=66oeXJMJEulwZj/KIhNOzY5gGBvviXDjo7ZUMMncbtw=;
 b=EgraaFNjoNIULDbNYyc3vYi1LctddRH4XQidFUC15RQuotgGw4RXcCVy9oN7iNJdi5eU46qR6
 GVGLxDbMVrJCkyPw6xXs3XyI5Xt5vyMXnjLAI9egOCr8Sc097BPyxgL
X-Developer-Key: i=griffin.kroah@fairphone.com; a=ed25519;
 pk=drSBvqKFiR+xucmLWONHSq/wGrW+YvcVtBXFYnYzn8U=

Add devicetree bindings and driver support for the DW9800K VCM driver.

The driver code is added to the preexistent dw9719 driver, which has
similar functions and method order, but different register sets.

Signed-off-by: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
---
Griffin Kroah-Hartman (4):
      dt-bindings: media: i2c: dw9719: Document DW9800K
      media: i2c: dw9719: Add DW9800K support
      arm64: dts: qcom: qcm6490-fairphone-fp5: Enable CCI pull-up
      arm64: dts: qcom: qcm6490-fairphone-fp5: Add UW cam actuator

 .../devicetree/bindings/media/i2c/dongwoon,dw9719.yaml  |  1 +
 arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts      | 11 +++++++++++
 drivers/media/i2c/dw9719.c                              | 17 +++++++++++++++++
 3 files changed, 29 insertions(+)
---
base-commit: 6063257da111c7639d020c5f15bfb37fb839d8b6
change-id: 20250918-dw9800-driver-58105cd495e0
prerequisite-change-id: 20250709-dw9719-8a8822efc1b1:v2
prerequisite-patch-id: 5a1b6083c0f5df1421cfe6952dac44d9ddb7fb07
prerequisite-patch-id: db5f49e91aaf521fa487994765b4107f543531d6
prerequisite-patch-id: 76bfa65d3ff23fc827790b0868bc34655cfa93fe
prerequisite-patch-id: b76d61c90bdbf20f437d2fe438d54e707621e953
prerequisite-patch-id: 46fc09662693e6a51bb89ab4d0914265c74bc3bb
prerequisite-patch-id: 4e0012f76dd03d5653ba185a8ccc59017a1b90d1
prerequisite-patch-id: a618641cd4b7cde40825fa0d4201b6c27e74266d
prerequisite-patch-id: 8b43ff7e81258cc7624800e4bf645458a0f05380

Best regards,
-- 
Griffin Kroah-Hartman <griffin.kroah@fairphone.com>


