Return-Path: <devicetree+bounces-179781-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 72F01AC1A25
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 04:37:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 94DE43AE86D
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 02:36:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02829204F8C;
	Fri, 23 May 2025 02:36:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail78-66.sinamail.sina.com.cn (mail78-66.sinamail.sina.com.cn [219.142.78.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EAD71C8606
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 02:36:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=219.142.78.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747967816; cv=none; b=Vv5UGHRrmCsAyuTNxBnqgO8qcxUHTdj0zt5mg/OubuBLBCxMlu9MBn8NSeJIfxOPo/IUJcZhXCFmmJSfj3F5n2CYBgynJPqCsnahKRN1cWl6gO2Vpyo/oUuyIxJe9gidYjfI+MrPIXcmwohLO+3ANtMBHQ05UeotQr4WxirKyX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747967816; c=relaxed/simple;
	bh=tsuEWF7Y4U4cgRs7BeuIASePR97OAkS45d2GfcQdQoU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=XihvDSJPobGMdPEKiIorK1+6SgoTOSpM/KaPOGanucvwDA7DD04FdAMdjzzQ2v+f5CDCgNG0va00yYZbCbDZ4LEqsr5hR9Ea5zzrOMSAWvABHLnzUypn5Vv4nOP2zPDOnQxVZ7AGRWU1bUMUbWQrR01zpa6NSktDqd5+HcBlAtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com; spf=pass smtp.mailfrom=everest-semi.com; arc=none smtp.client-ip=219.142.78.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=everest-semi.com
Received: from unknown (HELO zy-virtual-machine.localdomain)([180.172.39.205])
	by sina.net (10.185.250.32) with ESMTP
	id 682FDF42000051ED; Fri, 23 May 2025 10:36:52 +0800 (CST)
X-Sender: zhangyi@everest-semi.com
X-Auth-ID: zhangyi@everest-semi.com
Authentication-Results: sina.net;
	 spf=none smtp.mailfrom=zhangyi@everest-semi.com;
	 dkim=none header.i=none;
	 dmarc=none action=none header.from=zhangyi@everest-semi.com
X-SMAIL-MID: A4FDEAD57B7345448FEDA9B8BAA690B9
X-SMAIL-UIID: A4FDEAD57B7345448FEDA9B8BAA690B9-20250523-103652
From: Zhang Yi <zhangyi@everest-semi.com>
To: krzk@kernel.org
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
	broonie@kernel.org
Subject: RE: [PATCH v1 1/2] ASoC: dt-bindings: Add Everest ES8375 audio CODEC
Date: Fri, 23 May 2025 10:36:48 +0800
Message-Id: <20250523023649.22785-2-zhangyi@everest-semi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20250523023649.22785-1-zhangyi@everest-semi.com>
References: <20250523023649.22785-1-zhangyi@everest-semi.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

> > Signed-off-by: Zhang Yi <zhangyi@everest-semi.com>
> > Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> No.
> 
> This never happened.

I apologize for the mistake.

