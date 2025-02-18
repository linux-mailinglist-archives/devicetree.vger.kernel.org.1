Return-Path: <devicetree+bounces-147840-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 70621A3992B
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 11:39:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 44FF81897D5C
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 10:35:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DFBA23A56B;
	Tue, 18 Feb 2025 10:28:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EnHdBj/i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242D9239562
	for <devicetree@vger.kernel.org>; Tue, 18 Feb 2025 10:28:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739874487; cv=none; b=TLzSMZ4UrmdIfuQ3HUSdzErblmuVDYcP7xGc4jVHfu8HUkMNbL1GZbHoW52jK+3k2DxipgE6M65bdM4T28+u/H9M2RKwZDxD+BOnc2gN9mkBWC1jJr5H1N3F73otljZMFJCypgLVhGb1pawBS1WjH/uoLJ0LFkr4l6EVaUdZLRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739874487; c=relaxed/simple;
	bh=xyTzNDPTbBHZ7zKE5XjanII4DyJB/TFklEmgxp8N1mg=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=LIUbQslqxVc877rMycAXSQh6yTt5V9FFlLZb9cPC09M81L1By2K2gYLBU954pY9H/VVn9r9obIc7OMYo6b2z/BtAD+CU+WN9PtMGGm65GlzrYLZ+bWLADZY5RAuj/XRmoZ4EuSzlgyaxD37Bdoc4yjZdn/0CmJaHeEQaoJmEaUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EnHdBj/i; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-54529e15643so3391966e87.1
        for <devicetree@vger.kernel.org>; Tue, 18 Feb 2025 02:28:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739874483; x=1740479283; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=huILF73F0Ot4K9MVtWbZWa3483Muf6BB22lZSEHflgM=;
        b=EnHdBj/iR3l5kkBYl5CORMO7MmtGDmCvYuxUn354NeulWlQG/YhrSx8NB1o9R/oyQE
         hqim80W7AF3WTB0CoS7jtKDmyNy/6NtXQj90Cs04OmcNtKIBt9/cRWXHPhQbA1AWw3wM
         xFxv1OG/JhNWelqM5BnhrHd4vCLFNH0/ICFefc4YSmjNo1k3yNcwbh8plj3aPO/ZuZzR
         buWUSeL/y2hPYdxec6K/aamv7RRemLgk02nAsEzelDfEp46izZ9jE4E64TI/8xoayV6W
         gBoVypvcuVnqa0ERDcDhoXZnDbyhaBYsX0em/2h/pVziNH79Rt0St4Po+ZPcMmwNJqwK
         1mMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739874483; x=1740479283;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=huILF73F0Ot4K9MVtWbZWa3483Muf6BB22lZSEHflgM=;
        b=iKBNlIk8WKiA5RevWT9WAwvQ8wnC8y3gfvu92ARoo6zFW9qCJBmduxw/kuvsEHXVJp
         ompEaZpAOjDj0hjxUHLI8PZTkAJRdzi5NgchHZzCrBf23Mz6T0PHFY20Aao3aUUo1IzM
         VjF8luOaoU2cdt5r+CjwnkTQtggPRj+8Gp3WXMLiuz0JJ7so4cKsleFfiv2E6e1CeNVq
         +v4TiheWsE+qNwJJkjyyImADkNo4TJ8BVdB3ExZEw3CpuOOQFlBUE949/47+cMaG2h2K
         c7LKXjQN2a858WyYH9Rs2fcDEUtpmyFtRF728WiSWleHdPw9mWM1agvyxWBf7mHR6Gft
         xUYw==
X-Gm-Message-State: AOJu0YybpwM+WMWhHAgYiQNFB8rUJQTj2dJ4I7TcQrb5w3XPr3nGDRDE
	KcBX3Q26sSUCjdDosFZLy1fdXi3U9dMF+kwqCTlfbR9y71+oANFJxR6krYiyvbg=
X-Gm-Gg: ASbGncvci5BE5bBGs0WsdUsXQJIEOqsAeZQXdJOBQdSKRHwfogK1UFhl0WxTKIR2bdt
	grgX3xGC1EarAiOKhCFe3SBxkVjrWlXUS7lmVeH1bogIz/SdZ/BVfoDsdFYG9l5QsQEZYE2f/sH
	DdyIM5Vg8wryRVr2OuJE9dC7QPNfGsf+Fgw0Z91L0iVwVpAL/OyYs6loanhNKcq/Qta96yaPPbt
	OAS8WN0LURyGZiiaAlcxyM5uyoYY+czmjKPM2UgF3rkGXS/yAcxXLUIo1NaDaj+Stfd76UfSZEp
	rxdYNNCdCtzHqIpfXUipmP9emQ==
X-Google-Smtp-Source: AGHT+IF5O+C1dzWuMv9dIm1U8FGTYzD8C1EPVA9Wxtd54xCVPowfwist5JqI8jCMXF0IhBCCEipguQ==
X-Received: by 2002:a05:6512:ba6:b0:545:f9c:a833 with SMTP id 2adb3069b0e04-5453032765bmr3623164e87.12.1739874483215;
        Tue, 18 Feb 2025 02:28:03 -0800 (PST)
Received: from [192.168.1.140] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5461e202368sm830756e87.61.2025.02.18.02.28.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Feb 2025 02:28:02 -0800 (PST)
From: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH RTF 0/2] gpiolib: of: Handle threecell gpios
Date: Tue, 18 Feb 2025 11:28:00 +0100
Message-Id: <20250218-gpio-ranges-fourcell-v1-0-b1f3db6c8036@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIALBgtGcC/x2MQQqAMAzAviI9W3ADcfoAHyDexMNwVQvipEMRh
 n93egwhiRBImAI0WQShiwP7PYHKM5hWuy+E7BKDLnRZaFXhcrBH+UzA2Z8y0bahKY0x1mlVOws
 pPYRmvv/tAF3fwvg8L38+lsBrAAAA
X-Change-ID: 20250217-gpio-ranges-fourcell-85888ad219da
To: Yixun Lan <dlan@gentoo.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.14.2

This adds some code in the gpiolib OF core to deal with
several gpio chip instances per OF node.

The change was prompted by the need of the Spacemit GPIO
controller.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
Linus Walleij (2):
      gpiolib: of: Use local variables
      gpiolib: of: Handle threecell GPIO chips

 drivers/gpio/gpiolib-of.c   | 126 ++++++++++++++++++++++++++++++++++++--------
 include/linux/gpio/driver.h |  24 ++++++++-
 2 files changed, 126 insertions(+), 24 deletions(-)
---
base-commit: 2014c95afecee3e76ca4a56956a936e23283f05b
change-id: 20250217-gpio-ranges-fourcell-85888ad219da

Best regards,
-- 
Linus Walleij <linus.walleij@linaro.org>


