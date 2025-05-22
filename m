Return-Path: <devicetree+bounces-179492-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B8221AC091E
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 11:55:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F3F433B8BBD
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 09:54:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AEA7E2874F5;
	Thu, 22 May 2025 09:55:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp134-102.sina.com.cn (smtp134-102.sina.com.cn [180.149.134.102])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AE0B2F32
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 09:55:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=180.149.134.102
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747907713; cv=none; b=AVRmgHGsxAtfEWUVI95+vh2IttMUWgWKsOQKWpiJqJz3rah6ZRMyg+oLpGGolTaiALygk3D58JyYlTvKtleHwBef8uAalgUo+Fmepmm5QgSpxvvzrRHHDIWNwL41fqS0urVmO/3HP4SgRgyu79JoRvGuX1rXW/WtY0lVh5nHo5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747907713; c=relaxed/simple;
	bh=v5mx8hHSC8ujjutLkZQ4+PgocT6absct5dh6c41uN8Y=;
	h=From:To:Cc:Subject:Date:Message-Id; b=kmzxy8am3O4LJJBnraqNfu3qWIH6NY7ekpcwFaHypHw+upRrWUgUnKUew1RcMLohwmVziBOUxfRLAf2jOGCtEyFGyWbgDoGnrPlQvB04ln50lYZPrhanktWy8MyaSA1LbyJr/fqcatvaxcfABXGhITozyp9lkeKemp270s3m0uc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com; spf=pass smtp.mailfrom=everest-semi.com; arc=none smtp.client-ip=180.149.134.102
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=everest-semi.com
Received: from unknown (HELO zy-virtual-machine.localdomain)([180.172.39.205])
	by sina.net (10.185.250.32) with ESMTP
	id 682EF4770000799E; Thu, 22 May 2025 17:55:04 +0800 (CST)
X-Sender: zhangyi@everest-semi.com
X-Auth-ID: zhangyi@everest-semi.com
Authentication-Results: sina.net;
	 spf=none smtp.mailfrom=zhangyi@everest-semi.com;
	 dkim=none header.i=none;
	 dmarc=none action=none header.from=zhangyi@everest-semi.com
X-SMAIL-MID: F6B89C767C2C49F3A68479481D15E0B9
X-SMAIL-UIID: F6B89C767C2C49F3A68479481D15E0B9-20250522-175504
From: Zhang Yi <zhangyi@everest-semi.com>
To: broonie@kernel.org
Cc: robh@kernel.org,
	tiwai@suse.com,
	devicetree@vger.kernel.org,
	conor+dt@kernel.org,
	lgirdwood@gmail.com,
	linux-kernel@vger.kernel.org,
	linux-sound@vger.kernel.org,
	perex@perex.cz,
	krzk+dt@kernel.org,
	amadeuszx.slawinski@linux.intel.com,
	krzk@kernel.org
Subject: RE: [PATCH 2/2] ASoC: codecs: add support for ES8375
Date: Thu, 22 May 2025 17:55:02 +0800
Message-Id: <20250522095502.10106-1-zhangyi@everest-semi.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

> > Because the default value of the chip's volume register is 0x00,
> > initializing the device without setting it to 0xbf will
> > cause the device to mute until the customer sets the volume.
> 
> That's normal and expected, it's totally fine and normal for the user to
> have to do some configuration.

I got it. Thanks.

