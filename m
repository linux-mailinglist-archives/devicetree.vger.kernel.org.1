Return-Path: <devicetree+bounces-155799-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B3051A582D5
	for <lists+devicetree@lfdr.de>; Sun,  9 Mar 2025 10:52:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8ECCB3AE81C
	for <lists+devicetree@lfdr.de>; Sun,  9 Mar 2025 09:52:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB1FF1B2EF2;
	Sun,  9 Mar 2025 09:52:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp134-90.sina.com.cn (smtp134-90.sina.com.cn [180.149.134.90])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CD241AC43A
	for <devicetree@vger.kernel.org>; Sun,  9 Mar 2025 09:52:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=180.149.134.90
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741513965; cv=none; b=j1ZXN0JtE6Sx2Jz+j6UyXFsYumwAiFuu4wA2Xs6Z+P/unyaFaAX7pxxzkGbCnwIuVNec/3Eo0iVZPpcI/AcN+YNgYFZ4F4BUqrGnga0XmeQ3iCUP0PjgqJoz/+qB/hsLjP2YqAuWHciL9wgtauXbkZpditQ786p5lhZxTxpbXfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741513965; c=relaxed/simple;
	bh=ZZGNMIv+7ubq3C08ymB563OSRghoTPXhIKrm0DJAr0A=;
	h=From:To:Cc:Subject:Date:Message-Id; b=VkR3d4P6U+PvbzZ4miYU+a4nSgC5Sqlq01ATgx4cRQIjMFOoOa2wlMP+5dsiGE8ZmruE4Vh4tJoQsmW8lFz13PD7A7BZ8Jgo//ZzgvIgcpwp9PGJ2xPusjVk5jWxdiFFB5QadGSfztFelYRUc2v7Ean2S9ZwFKSM/dnKdcBIWzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com; spf=pass smtp.mailfrom=everest-semi.com; arc=none smtp.client-ip=180.149.134.90
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=everest-semi.com
Received: from unknown (HELO zy-virtual-machine.localdomain)([180.159.108.137])
	by sina.net (10.185.250.31) with ESMTP
	id 67CD64DB00000524; Sun, 9 Mar 2025 17:52:29 +0800 (CST)
X-Sender: zhangyi@everest-semi.com
X-Auth-ID: zhangyi@everest-semi.com
Authentication-Results: sina.net;
	 spf=none smtp.mailfrom=zhangyi@everest-semi.com;
	 dkim=none header.i=none;
	 dmarc=none action=none header.from=zhangyi@everest-semi.com
X-SMAIL-MID: B1BE9EF4BC834BA2845525DC5EFD9A9D
X-SMAIL-UIID: B1BE9EF4BC834BA2845525DC5EFD9A9D-20250309-175229
From: Zhang Yi <zhangyi@everest-semi.com>
To: krzysztof.kozlowski+dt@linaro.org
Cc: tiwai@suse.com,
	amadeuszx.slawinski@linux.intel.com,
	robh+dt@kernel.org,
	conor+dt@kernel.org,
	alsa-devel@alsa-project.org,
	broonie@kernel.org,
	devicetree@vger.kernel.org
Subject: RE: [PATCH v5 2/2] ASoC: dt-bindings: Add Everest ES8389 audio CODEC
Date: Sun,  9 Mar 2025 17:52:27 +0800
Message-Id: <20250309095227.113183-1-zhangyi@everest-semi.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

> >  1 file changed, 50 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/sound/everest,es8389.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/sound/everest,es8389.yaml b/Documentation/devicetree/bindings/sound/everest,es8389.yaml
> 
> 
> You got feedback how to create CC list. Two times.
> 
> You still create it incorrectly and Cc address which does not exist in
> the kernel and is a proof you work on wrong tree, which I asked to correct.
> 
> What's more, there is still no changelog and you never responded to
> review comments.
> 
> Can you slow down with resubmits and rethink the received feedback? I
> expect that feedback to be responded to, so I am not wasting time here
> repeating the same every time.

I'm sorry for the trouble I've caused you.
And I have responded to the comments at v3 and v4.

