Return-Path: <devicetree+bounces-48942-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B739387468A
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 04:07:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5F3B928139B
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 03:07:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D513863D0;
	Thu,  7 Mar 2024 03:07:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail78-63.sinamail.sina.com.cn (mail78-63.sinamail.sina.com.cn [219.142.78.63])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EED3F6AD7
	for <devicetree@vger.kernel.org>; Thu,  7 Mar 2024 03:07:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=219.142.78.63
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709780833; cv=none; b=TMqMEUeEGkDZNoZIY1a6axY/771IkANcQH459PFIWjOF292C6DF+QIP+R+YztGF2En/BXtWV7fcCGMk5OATC7dR075Jz0C1tunGcycaG0R7QX7ZUDTk1YVJVGXBR2+OwBT5KtCV4JFK3ose8mVNE+cQKKUni6IamXlAc0Hh/hf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709780833; c=relaxed/simple;
	bh=xp/p94MyRNrAJWB5aG3QgKjRNzeXGBCxFqM4ZS0DcHU=;
	h=From:To:Cc:Subject:Date:Message-Id; b=o9AQd/KrO5wfPsskks1VvLNI/By4c9lLOO1L8oG9hEglKbq/njFB7zJCz6n/csH+Wa51A0ndC/SVcKCEIzQMP076QpUIqEtOlhx6hHB34txH1aedC06xpc/2USJG7E9jhKwSoct0v99nn6usz4JTWb0YnnEG3xukWUcmayILHjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com; spf=pass smtp.mailfrom=everest-semi.com; arc=none smtp.client-ip=219.142.78.63
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=everest-semi.com
Received: from unknown (HELO zy-virtual-machine.localdomain)([116.232.53.71])
	by sina.net (10.75.30.239) with ESMTP
	id 65E92EC7000245C2; Thu, 7 Mar 2024 11:04:40 +0800 (CST)
X-Sender: zhangyi@everest-semi.com
X-Auth-ID: zhangyi@everest-semi.com
Authentication-Results: sina.net;
	 spf=none smtp.mailfrom=zhangyi@everest-semi.com;
	 dkim=none header.i=none;
	 dmarc=none action=none header.from=zhangyi@everest-semi.com
X-SMAIL-MID: D65A2737F131438A9504E79278B04227
X-SMAIL-UIID: D65A2737F131438A9504E79278B04227-20240307-110440
From: Zhang Yi <zhangyi@everest-semi.com>
To: alsa-devel@alsa-project.org,
	broonie@kernel.org,
	devicetree@vger.kernel.org
Cc: tiwai@suse.com,
	amadeuszx.slawinski@linux.intel.com,
	yangxiaohua@everest-semi.com,
	zhuning@everest-semi.com,
	zhangyi@everest-semi.com
Subject: [PATCH v1 2/2] ASoC: codecs: ES8326: change support for ES8326
Date: Thu,  7 Mar 2024 11:04:38 +0800
Message-Id: <20240307030438.23228-1-zhangyi@everest-semi.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

> > On Wed, Mar 06, 2024 at 09:34:14AM +0800, Zhang Yi wrote:
> > > Removed mic1-src and mic2-src. and changed default value
> > > of interrupt-clk
> >
> > We could do with a better changelog here.
> >
> > > - everest,mic1-src:
> > > - $ref: /schemas/types.yaml#/definitions/uint8
> > > - description:
> > > - the value of reg 2A when headset plugged.
> > > - minimum: 0x00
> > > - maximum: 0x77
> > > - default: 0x22
> > > -
> > > - everest,mic2-src:
> > > - $ref: /schemas/types.yaml#/definitions/uint8
> > > - description:
> > > - the value of reg 2A when headset unplugged.
> > > - minimum: 0x00
> > > - maximum: 0x77
> > > - default: 0x44
> >
> > This will make any DTs using the properties instantly buggy. I believe
> > there's a way of marking properties as deprecated, you should use that
> > instead. Or we could just leave the properties there and ignore them at
> > runtime.
> 'deprecated: true' is the way.

OK.I will modify the properties, thank you for your support

