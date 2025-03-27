Return-Path: <devicetree+bounces-161129-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E487A72A7F
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 08:22:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5896418948C5
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 07:22:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4F031CDA14;
	Thu, 27 Mar 2025 07:21:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp134-84.sina.com.cn (smtp134-84.sina.com.cn [180.149.134.84])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33E311C8635
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 07:21:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=180.149.134.84
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743060112; cv=none; b=sxuDNo9rV1VkYWOid+KMFRNmTmNMRfSNnsoHtDkpNj4ZW5JWy4sBC7c3TQKH4hxttKunK8F33o6NftMUi0YNXEl/n/+thGQcA7k59bbJ5tJ9tMQKZgl6s/p4ciF5uJkr7FhwmoElGYiJnKAvd+aW79lCUPJU+GXfMzcyrtNS8bg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743060112; c=relaxed/simple;
	bh=Ho8us93v+DWLM+JefLS8SHHTqp00cwemHeb2/IG2pE8=;
	h=From:To:Cc:Subject:Date:Message-Id; b=cNJaDQRmKWUDzrcJtaAFxQrTVfcE5SXAybqijTKogz2LrqDu3n6N9kLVAkaQDfBnbL38/jp/ngOJxQyonoN1IMNN5gc/7i1QK9IO6zyKIVeOiouOe22W/L/c4DEM8Yj63nRds73tIAQRbH+NiRhUMi+uVIUq7EUZrml3za803VM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com; spf=pass smtp.mailfrom=everest-semi.com; arc=none smtp.client-ip=180.149.134.84
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=everest-semi.com
Received: from unknown (HELO zy-virtual-machine.localdomain)([180.159.108.242])
	by sina.net (10.185.250.29) with ESMTP
	id 67E4FC6100003255; Thu, 27 Mar 2025 15:21:06 +0800 (CST)
X-Sender: zhangyi@everest-semi.com
X-Auth-ID: zhangyi@everest-semi.com
Authentication-Results: sina.net;
	 spf=none smtp.mailfrom=zhangyi@everest-semi.com;
	 dkim=none header.i=none;
	 dmarc=none action=none header.from=zhangyi@everest-semi.com
X-SMAIL-MID: 4E5B6FFDDAD746FDB7975AC28C216961
X-SMAIL-UIID: 4E5B6FFDDAD746FDB7975AC28C216961-20250327-152106
From: Zhang Yi <zhangyi@everest-semi.com>
To: broonie@kernel.org,
	robh@kernel.org,
	tiwai@suse.com,
	devicetree@vger.kernel.org,
	conor+dt@kernel.org,
	lgirdwood@gmail.com,
	linux-kernel@vger.kernel.org,
	linux-sound@vger.kernel.org,
	perex@perex.cz,
	krzk+dt@kernel.org
Cc: amadeuszx.slawinski@linux.intel.com,
	krzk@kernel.org
Subject: RE: [RESEND v5 0/2] ASoC: codecs: add support for ES8389
Date: Thu, 27 Mar 2025 15:21:04 +0800
Message-Id: <20250327072105.47223-1-zhangyi@everest-semi.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

> Where is full changelog? Look how other patchsets create it, so it is readable.
> 
> Even this entry is not detailed - what did you remove?

I'll give a fuller changelog

