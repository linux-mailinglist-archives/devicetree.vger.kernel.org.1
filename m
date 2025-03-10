Return-Path: <devicetree+bounces-155984-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BEB7A58D48
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 08:51:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1D55A188CCD1
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 07:51:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1163221F17;
	Mon, 10 Mar 2025 07:51:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail78-60.sinamail.sina.com.cn (mail78-60.sinamail.sina.com.cn [219.142.78.60])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B41011CBA
	for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 07:51:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=219.142.78.60
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741593096; cv=none; b=FVDq2kICyu0y9da0qoAo8oJUxz01xXR7Nqjk6n7hdyTl7naxqlqSv2k4nejHgN0wPD3MzD2Hxfk+pH7CRxGY4r6PioDauR74z62ST2f7dFNKzkyvDxCGECSZyeikfHdQLwbhdIhzBLiD+PQ19TbjmBE/o4S2Y5ea8ZZOhJ6c3uw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741593096; c=relaxed/simple;
	bh=TQzZQoSP3cx7FAowpyPZuaxx4zOSlBAHDOzvU+DlU9M=;
	h=From:To:Cc:Subject:Date:Message-Id; b=KkNlnWhOvNDrQwtXqzucUmSVGp8MOu+itpgpFNIEVhZOgIkbuLTgEBisMIQd6VvsiVne+tLQRJpSnPXAlRCUv/onJMts04KhsLp9rSfmAxWt0Zx9VoZ+U2C1ZGwWoFr/plaRNTlSVgAwgjFdoxw01apAi4Lllb7ajv0HgH9KupI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com; spf=pass smtp.mailfrom=everest-semi.com; arc=none smtp.client-ip=219.142.78.60
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=everest-semi.com
Received: from unknown (HELO zy-virtual-machine.localdomain)([180.159.108.137])
	by sina.net (10.185.250.30) with ESMTP
	id 67CE99FF0000652E; Mon, 10 Mar 2025 15:51:28 +0800 (CST)
X-Sender: zhangyi@everest-semi.com
X-Auth-ID: zhangyi@everest-semi.com
Authentication-Results: sina.net;
	 spf=none smtp.mailfrom=zhangyi@everest-semi.com;
	 dkim=none header.i=none;
	 dmarc=none action=none header.from=zhangyi@everest-semi.com
X-SMAIL-MID: AC44FE096A064EA196718CD54B3D1E00
X-SMAIL-UIID: AC44FE096A064EA196718CD54B3D1E00-20250310-155128
From: Zhang Yi <zhangyi@everest-semi.com>
To: krzysztof.kozlowski@linaro.org
Cc: tiwai@suse.com,
	conor+dt@kernel.org,
	broonie@kernel.org,
	devicetree@vger.kernel.org,
	amadeuszx.slawinski@linux.intel.com
Subject: RE: [PATCH v5 2/2] ASoC: dt-bindings: Add Everest ES8389 audio CODEC
Date: Mon, 10 Mar 2025 15:51:26 +0800
Message-Id: <20250310075126.122915-1-zhangyi@everest-semi.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

> > Signed-off-by: Zhang Yi <zhangyi@everest-semi.com>
> > ---
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> 
> ---
> 
> <form letter>
> This is an automated instruction, just in case, because many review tags are being ignored. If you know the process, you can skip it (please do not feel offended by me posting it here - no bad intentions intended).
> If you do not know the process, here is a short explanation:
> 
> Please add Acked-by/Reviewed-by/Tested-by tags when posting new versions of patchset, under or above your Signed-off-by tag, unless patch changed significantly (e.g. new properties added to the DT bindings). Tag is "received", when provided in a message replied to you on the mailing list. Tools like b4 can help here. However, there's no need to repost patches *only* to add the tags. The upstream maintainer will do that for tags received on the version they apply.

Thank you for the explanation.I will do it in a following patch

