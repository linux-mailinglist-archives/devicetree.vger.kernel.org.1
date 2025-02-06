Return-Path: <devicetree+bounces-143611-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D6998A2A910
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 14:08:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 72C6A1676FF
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 13:08:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0530822E41B;
	Thu,  6 Feb 2025 13:08:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zClau+nW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38D1C21CFF7
	for <devicetree@vger.kernel.org>; Thu,  6 Feb 2025 13:08:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738847303; cv=none; b=eigOFUNdsfXe/8MdaqzqytCctpCvSL3DMSidFnnFjeghewgkKGicCVjyHehQQf0vSFBPWrz/C+Of2a3hrFJOQCak3lgtGPfYXt6FK+zU+rpuD33dI+DPxZ9WMzvv1w682Dj2ThuM+3a6VmzPwQ3/o93pFKqltlD8jsMgdSnLs+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738847303; c=relaxed/simple;
	bh=XgoQ89NLlToDu6WIUhA5TGdMOBSSYefS3ZZviogfjHo=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=mqMNv+arAnGz2opdBhGOzDofIMEzBqBKyKFfRWeypUSukfphniKmf4oXddiZNzu9x7bE2OzEaiJrlaWoYCfY/2H3Y3CVC1qsGDtUpCEoVzax5cSLyi/WYX1GQBw5SoeFPxLkLc0UJuGOIq/Nxww/bfIZOILjzxayLy5VfpdFIIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zClau+nW; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-5dcd09af4f9so1914019a12.0
        for <devicetree@vger.kernel.org>; Thu, 06 Feb 2025 05:08:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738847299; x=1739452099; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=CC73hfx/xdEwQzx0mqhvPJwAxj42f8+ghz1yMlEDxZ8=;
        b=zClau+nWlFAcu2o1PC1sLaGRjHtTGcJeaIePsK2uFfnyfe8H9yZ7+MByFVPdOQ+jbY
         NjpraJeZrb/U5svaCi9Qxf0LdatnSyNVURaaPVj7WBNVZqL39pDyXLHmEUynF/ylxBwv
         e1VBMDVq0nOuWmHEr9LhlmC2l79s/ggyarf1ZR4hO4kftDCAFCu7roK2ePtrZO/iLlNn
         VfvbD5PKUhnHR+WBtxlAOo7AeLXibtSy/Jme7wHNm8mhSvDVfrDaVZGkNJF76roWNfHk
         uch7wZBz8p6oFiUU51jzmSX6qwJlSgeHuFdzH3k43oz0A7P3QP2mNXLL9kYU4FKNqsy2
         4jYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738847299; x=1739452099;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CC73hfx/xdEwQzx0mqhvPJwAxj42f8+ghz1yMlEDxZ8=;
        b=i+yOYvRY2p4Sz9viU3UiHZ9pFWMrtzBjQ+9fkEpqKJaaoCT85qFrw7JtxvvYd7Hl1G
         oYg5bt0+pXRRfDpETm/myfNYbCAd/VBx4xuAXm5jZ02wHXTQzlb8yfBjTipjEbstfD6V
         g5xA1ldk7/yqJXo+cFrbZWV1Ih74D/0eemcytha+XVRkR2p8qe2cWfL0d/DxgzV1u+9r
         19u6gCq7gDxdwq4fxBq3ckspbTg/IFJoY9b7/zf9cpJceByKz/y/JPPjFzYOjM1sxpqd
         8QbWUJOZuXeyt6oFJw1GHcBGSpFEFFOb/BgCBzSHv2cUHzT+mVqGS0ujSg0mYbHxjIP8
         X1WQ==
X-Forwarded-Encrypted: i=1; AJvYcCURLsN90EsGZq0Kr+swBq2NzY22wOELRDH/lH4d/eYMdAI/KRtXhm7CwyNowStJG3CKZH36Ys3fEV3B@vger.kernel.org
X-Gm-Message-State: AOJu0YznMgcDstt3RsO6MhFi/GxV+rEYRfvLORD4gzBu7l8EBM6dXAsH
	EYwn1C5oRoHmvcIAMUFG3iDP3nV7xyXU0Iu4jRUPHfc7jLmWtTf4DKZyoBsJu8w=
X-Gm-Gg: ASbGncvLWUxMJzXfqdao/PodhGNGAjL/QrvmO8xdpDBu4OuzZML7F2qNpcWuAT8JWhU
	w3QmIiW2zJKAjU2M8TsSdZbVFbGykvvVQxC2D8CrnPhIdGI6TvP185fuhHOdT9Nf6WyGdDWMknQ
	8PcHKTK2u5eUi7wiFsvstGl0VJywS1snozmn3hOs8NTXprzepaVw0ye/AZMV1w/q3wHy79fS13c
	x1HU8ZCKJVQ+ZyZHgZltXbj/UjtGL+uudQXUszIV7OekDfdyNY4QMHnG65KoBCvjAlnXR+4OY6Q
	t+qmdnXNIoGKpAJHGABTU0XOP5rF3yHx9T58d4smL74hBXkcXMK8mqM0+HWzc/HKLtWRWIoGpyQ
	=
X-Google-Smtp-Source: AGHT+IGHBChEeQbZZWdB6VUb2tAPzM2QubPuRCkq9llaK78PumUt20gOs9+K10OlU484h2rpI5M7EQ==
X-Received: by 2002:a05:6402:27c8:b0:5d9:f5c4:a227 with SMTP id 4fb4d7f45d1cf-5dcdb778e7emr7219614a12.20.1738847299436;
        Thu, 06 Feb 2025 05:08:19 -0800 (PST)
Received: from puffmais.c.googlers.com (140.20.91.34.bc.googleusercontent.com. [34.91.20.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dcf1b73f8csm830235a12.8.2025.02.06.05.08.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Feb 2025 05:08:19 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Subject: [PATCH 0/3] gs101 reboot updates (DT)
Date: Thu, 06 Feb 2025 13:08:17 +0000
Message-Id: <20250206-gs101-renppt-dts-v1-0-cdfe993fb3c5@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAEG0pGcC/x3MQQqAIBBA0avErBtQKamuEi00x5qNiRMRRHdPW
 r7F/w8IFSaBqXmg0MXCR6rQbQPr7tJGyKEajDK9MsriJlppLJRyPjGcgqsfnLc+WjN2ULNcKPL
 9L+flfT+SZeZYYgAAAA==
To: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.13.0

Hi,

These patches update some of gs101's reboot / power off requests to
bring them in line with downstream / bootloader / EL3 monitor
expectations.

In particular:
* an unnecessary property is removed from the DT
* the reboot / shutdown SMC calls are aligned with downstream now
* we now implement the requested boot mode as a notification for the
  boot loader 

Cheers,
Andre'

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
André Draszik (3):
      arm64: dts: exynos: gs101: drop explicit regmap from reboot nodes
      arm64: dts: exynos: gs101: align reboot and poweroff writes with downstream
      arm64: dts: exynos: gs101: add reboot-mode support (SYSIP_DAT0)

 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 19 +++++++++++++++----
 1 file changed, 15 insertions(+), 4 deletions(-)
---
base-commit: 808eb958781e4ebb6e9c0962af2e856767e20f45
change-id: 20250206-gs101-renppt-dts-cb8ab6bf6294

Best regards,
-- 
André Draszik <andre.draszik@linaro.org>


