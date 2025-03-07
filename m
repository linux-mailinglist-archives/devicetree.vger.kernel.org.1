Return-Path: <devicetree+bounces-155286-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 080F4A5621D
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 09:00:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F28503B468C
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 08:00:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D5494C6E;
	Fri,  7 Mar 2025 08:00:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail78-50.sinamail.sina.com.cn (mail78-50.sinamail.sina.com.cn [219.142.78.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36E9328E8
	for <devicetree@vger.kernel.org>; Fri,  7 Mar 2025 08:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=219.142.78.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741334440; cv=none; b=PKejWmORhoHZSzQOIvOis1bjBtw5X2Ep696vgD564HUQFtsyenquYac5DPjXOOIdLy7hrt3YQerd9njUtsLefLYulAnbM5aXOmmKgKUyyDvlfFFgrESeitRcgHUfnHFLye/c2ipbmkNt/eu8EQBtgiY73Gby8ZuzDVJY8k33yIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741334440; c=relaxed/simple;
	bh=0JFI5Z8/U/mF6yj+0eCDZGsxNJSh+rt5QoGEH8wGgSs=;
	h=From:To:Cc:Subject:Date:Message-Id; b=ppw9RlVAAPi4x+Zc366DTvPacg0qYn3Vhl448u8e7kazRNKHjA6xFPBN85WxSzgUGlfJrO4LfvOfpOVmNu+bafwVVTdDbrfLtiid2VlnOVoXtmLyoGEohxAndcChynJv+MLt/FY6XeszXZuSrmsaYfSIGTMtpWcYEIGdFkwyGv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com; spf=pass smtp.mailfrom=everest-semi.com; arc=none smtp.client-ip=219.142.78.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=everest-semi.com
Received: from unknown (HELO zy-virtual-machine.localdomain)([180.159.108.137])
	by sina.net (10.185.250.30) with ESMTP
	id 67CAA797000047AE; Fri, 7 Mar 2025 16:00:24 +0800 (CST)
X-Sender: zhangyi@everest-semi.com
X-Auth-ID: zhangyi@everest-semi.com
Authentication-Results: sina.net;
	 spf=none smtp.mailfrom=zhangyi@everest-semi.com;
	 dkim=none header.i=none;
	 dmarc=none action=none header.from=zhangyi@everest-semi.com
X-SMAIL-MID: 6E3499F1222B4B0A95D319F782851310
X-SMAIL-UIID: 6E3499F1222B4B0A95D319F782851310-20250307-160024
From: Zhang Yi <zhangyi@everest-semi.com>
To: alsa-devel@alsa-project.org,
	broonie@kernel.org,
	devicetree@vger.kernel.org
Cc: tiwai@suse.com,
	amadeuszx.slawinski@linux.intel.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Subject: RE: [PATCH v4 1/2] ASoC: codecs: add support for ES8389
Date: Fri,  7 Mar 2025 16:00:23 +0800
Message-Id: <20250307080023.63815-1-zhangyi@everest-semi.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

> > > No, the machine driver should be configuring different TDM slots for
> > > each device - that's the whole point of the API.
> 
> > We are using multiple codecs as a single device.So we can't use set_tdm_slot to configure
> > different slots for multiple codecs under one device.
> 
> What do you mean by using it "as a single device"?  Multiple CODECs on
> the same link is the main use case for set_tdm_slot().

Thanks for the advice.The method you mentioned could work.
I will modify my driver.

