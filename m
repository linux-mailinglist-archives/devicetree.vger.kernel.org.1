Return-Path: <devicetree+bounces-48610-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 020A1872C3E
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 02:35:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 40E68283E1C
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 01:35:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE901139D;
	Wed,  6 Mar 2024 01:35:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail78-37.sinamail.sina.com.cn (mail78-37.sinamail.sina.com.cn [219.142.78.37])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20B9F6FAF
	for <devicetree@vger.kernel.org>; Wed,  6 Mar 2024 01:34:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=219.142.78.37
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709688901; cv=none; b=DxGkTBw29pCrHVzBUtWjcOFY5BjLk8u18FaXTsRkJ9iZ/NtjogEFPlqGu3mKtuYiUv+xEEnwLzhfT5GDts5yzHt24Omgvoxas5aUCf+tOeTUu9fPwlVVUNinjZCjPxYI/XKbbPuoRFNHow+b4ALbfn55F+NkbVjDXdmjjyYZiks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709688901; c=relaxed/simple;
	bh=pJzzRLw0ld6ieyqr7fhe5DRfgd38ERsz5SID14arAVY=;
	h=From:To:Cc:Subject:Date:Message-Id; b=VDeaCj6VbgLuvQXchD6aTx2zbEvVzbpvHuHh3uUT5VfuhbRSjpto29E1F9bUUy+qLVMltGbXfipFh/1GFSqjtm3S6ZXsDsi39WB6Imn01stPwnpWRl/cpJ8dG/nw/KWxfZazN1oxZy9C7cCIXdfp0d7RaxRt0m06jGVaZ31NK1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com; spf=pass smtp.mailfrom=everest-semi.com; arc=none smtp.client-ip=219.142.78.37
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=everest-semi.com
Received: from unknown (HELO zy-virtual-machine.localdomain)([116.232.53.71])
	by sina.net (10.75.30.235) with ESMTP
	id 65E7C81800003DE4; Wed, 6 Mar 2024 09:34:17 +0800 (CST)
X-Sender: zhangyi@everest-semi.com
X-Auth-ID: zhangyi@everest-semi.com
Authentication-Results: sina.net;
	 spf=none smtp.mailfrom=zhangyi@everest-semi.com;
	 dkim=none header.i=none;
	 dmarc=none action=none header.from=zhangyi@everest-semi.com
X-SMAIL-MID: 4BE93CC2C17E4254B72E6993CDEE0D62
X-SMAIL-UIID: 4BE93CC2C17E4254B72E6993CDEE0D62-20240306-093417
From: Zhang Yi <zhangyi@everest-semi.com>
To: alsa-devel@alsa-project.org,
	broonie@kernel.org,
	devicetree@vger.kernel.org
Cc: tiwai@suse.com,
	amadeuszx.slawinski@linux.intel.com,
	yangxiaohua@everest-semi.com,
	zhuning@everest-semi.com,
	zhangyi@everest-semi.com
Subject: [PATCH v1 0/2] ASoC: codecs: ES8326: change members of private structure
Date: Wed,  6 Mar 2024 09:34:12 +0800
Message-Id: <20240306013414.18708-1-zhangyi@everest-semi.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

We found that using 0x45 as the default value for interrupt-clk 
would cause a headset detection error.So we took 0x00 as the default 
value for interrupt-clk and passed the test.
We removed mic1-src and mic2-src, which were not used.

*** BLURB HERE ***

Zhang Yi (2):
  ASoC: codecs: ES8326: Changing members of private structure
  ASoC: codecs: ES8326: change support for ES8326

 .../bindings/sound/everest,es8326.yaml        | 22 ++-----------------
 sound/soc/codecs/es8326.c                     | 18 +--------------
 2 files changed, 3 insertions(+), 37 deletions(-)

-- 
2.17.1


