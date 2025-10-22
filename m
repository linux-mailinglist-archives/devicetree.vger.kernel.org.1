Return-Path: <devicetree+bounces-229928-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id D493EBFDA98
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 19:44:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 3746D4F6244
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 17:43:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CBB02DE1F0;
	Wed, 22 Oct 2025 17:43:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oNnzfZeA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED87F2DC328
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 17:43:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761155001; cv=none; b=F9TKmpN83lxC6oxo9l6Th6gu4y3TLRLO0XRjhR1c9wJI0MgjziRGHOnpKWGXbDl2BtnTORgFRWFhpdu+PyeCSeCgm6Z1f8Xv7vv33XJMuMsuDfTw+N8tN8rz+t4jI7p9dVwTZB0NXgABHi4NhmoX+aHMXImwtdr+NLbGHnmbkls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761155001; c=relaxed/simple;
	bh=pebkCgjq2t7R/8JhhzKY0KYiQYww5PdgMrly8jY12Ow=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=NeMz3d2GBQLFqg8wmDo87vM6vj3Z///K4VxcpI+wM1fzmXdJHAzR+gMZ0bvAKW/nWMeu5Q4wmThXNq3wreplQMwVi/lzMRToLonzGmDOicbRObV0p1xALH+i/PoPri8KJ7yHA1s0fzxLZytW/BcFhx3CUOHdXebGvXI7XIikylM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oNnzfZeA; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-42701b29a7eso806886f8f.0
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 10:43:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761154998; x=1761759798; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DBgZ5OtYg07NCXp61kXr/BSbIWhE2fs8T+/yOfxFjCU=;
        b=oNnzfZeAzg9okwy0bKEyYuUIuYr4oexT+gBg+RSOAjwRHpWtgvPu7fgFDmYiPRbXqI
         6tKoz/1AMxOKEko8xgPQrOWwC7P39+sZ+IH2BQ8ViOILGuUfjQdIW0fdybVmQDT6iRhK
         eF2450YMmjC+Y2e3F0Ch9U0500cjyzVyT7JZEE+Juy2twckYEmK6MmnpUX2Cd2XDQFVD
         sUQvagOUpCp1RuqLYjdPALLkih2bMo26EzRCpqw8rB0P8OQQ7BZGM5WCMUk6cU7IR/L8
         it9ixpe4rZH6GPcUiW/0FvAiFf8JxZp/wm8b1IYd/AiSreeI7WiU6sFk9s8DOIVwiT2w
         +tPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761154998; x=1761759798;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DBgZ5OtYg07NCXp61kXr/BSbIWhE2fs8T+/yOfxFjCU=;
        b=c6SynWB2aMYbBHWW9LINmp1tz/zDuVwrd92pW7rXfRiypy/wltHCAASkYhxpfKc/c/
         BGRUgj6fxsd/nZ+kv0klsnH7TPFd51+itBDxzMcEcQIr1/i/5MOUzcz7RIFr1j7C8IyU
         6kjHigToxSNq2+YYVpxgYFYFlfCTQUWZgki8wOWTiADFAkSIT6eUDAmWlWXQK7U7jV5q
         tsq/FiRAgyVRJYG+jSNNds+dWcqEp6+XyQNAwkXGOEUPe2VfnsQApLgYnyjAJDCVGJd8
         M8y0zKJuESGuBNRY6AGGu3wTPOQMvWbWQHkCm7qfKXmJCIEbXlUBn5OEeinus2ojVbRe
         hy0A==
X-Forwarded-Encrypted: i=1; AJvYcCXKgxZ+46EW4q1pLxas14Wdu8twHk7WwzXF0bhJXzYUy/QDlLNEmr7Gzqvl/lYIGcF1L1GZ+9BLCnMm@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1yPa2lqOPYYUSg/23X0FQu3tgxYmwFaTSo9PyrI/A3lCqqDP0
	DW8xCWMYiIhmf50Z/dqqnalADsUTL95A6EF0HqAzEGsK0kaNEmZj2OprUcpk/2PU8qM=
X-Gm-Gg: ASbGnct3MrhMixgY7d0bYNhfmb2KSf83ITPNJ03ERmrR9oiu69+s20QIunqbx/19Rtu
	4By9hhAXrpyRsZ4LbUPtcPnFvz5sKhsPXc1qBDt8q1Svxv9lu9NzUUCguF/tbQoQ2gZBbWR5vxn
	EP75KAusZnMmaIwkxSWwrLLcVZ1+OLrQDdtMW1hgfmi97Geovit5iq7m08viYs20o3u1bm5boMz
	U0q2+Yzlmg3tAXkUg4PwQDVD6JV40WP7LJsxkWFHinKW7UyM6alA/LHrV50ZC/dpjSfWlG6MZWI
	+EhgmzJyna2xZRmvdn60svotXnYa14utWT/IeUeCUs+T13sW3GS44dmJvFWbSq0E2LC+7Kw4fdU
	Ym5GkZf3V9D7iTwR3U0UUkOH6KiMu6bB+aTt/qSK3SPjMDIhEueVMTNG+rNQP04RNWYCuYtsGCP
	McI8Cr7OuO
X-Google-Smtp-Source: AGHT+IFjziwUg1Dl3LOqBcFgSgns22D4G3uLdqScO3DNYkyYm03zLF/NNOMCJcEGGUm1q7BfvTYL1w==
X-Received: by 2002:a05:6000:2289:b0:427:84a:6db1 with SMTP id ffacd0b85a97d-42856a8c525mr2170414f8f.31.1761154998227;
        Wed, 22 Oct 2025 10:43:18 -0700 (PDT)
Received: from vingu-cube.. ([2a01:e0a:f:6020:edfc:89e3:4805:d8de])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47494aad668sm43434755e9.2.2025.10.22.10.43.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Oct 2025 10:43:16 -0700 (PDT)
From: Vincent Guittot <vincent.guittot@linaro.org>
To: chester62515@gmail.com,
	mbrugger@suse.com,
	ghennadi.procopciuc@oss.nxp.com,
	s32@nxp.com,
	bhelgaas@google.com,
	jingoohan1@gmail.com,
	lpieralisi@kernel.org,
	kwilczynski@kernel.org,
	mani@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	Ionut.Vicovan@nxp.com,
	larisa.grigore@nxp.com,
	Ghennadi.Procopciuc@nxp.com,
	ciprianmarian.costea@nxp.com,
	bogdan.hamciuc@nxp.com,
	Frank.li@nxp.com,
	linux-arm-kernel@lists.infradead.org,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	imx@lists.linux.dev
Cc: cassel@kernel.org
Subject: [PATCH 4/4 v3] MAINTAINERS: Add MAINTAINER for NXP S32G PCIe driver
Date: Wed, 22 Oct 2025 19:43:09 +0200
Message-ID: <20251022174309.1180931-5-vincent.guittot@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251022174309.1180931-1-vincent.guittot@linaro.org>
References: <20251022174309.1180931-1-vincent.guittot@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a new entry for S32G PCIe driver.

Signed-off-by: Vincent Guittot <vincent.guittot@linaro.org>
---
 MAINTAINERS | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 545a4776795e..e542aae55556 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -3132,6 +3132,15 @@ F:	arch/arm64/boot/dts/freescale/s32g*.dts*
 F:	drivers/pinctrl/nxp/
 F:	drivers/rtc/rtc-s32g.c
 
+ARM/NXP S32G PCIE CONTROLLER DRIVER
+M:	Ghennadi Procopciuc <ghennadi.procopciuc@oss.nxp.com>
+R:	NXP S32 Linux Team <s32@nxp.com>
+L:	imx@lists.linux.dev
+L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
+S:	Maintained
+F:	Documentation/devicetree/bindings/pci/nxp,s32g-pcie.yaml
+F:	drivers/pci/controller/dwc/pcie-nxp-s32g*
+
 ARM/NXP S32G/S32R DWMAC ETHERNET DRIVER
 M:	Jan Petrous <jan.petrous@oss.nxp.com>
 R:	s32@nxp.com
-- 
2.43.0


