Return-Path: <devicetree+bounces-155979-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 30ED5A58D25
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 08:44:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EA4673ABDC8
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 07:44:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85E9F1D5AAD;
	Mon, 10 Mar 2025 07:44:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp134-102.sina.com.cn (smtp134-102.sina.com.cn [180.149.134.102])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7145D5234
	for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 07:44:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=180.149.134.102
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741592652; cv=none; b=LgXip8rFHxRJiPmdwWXhodo2pnLgoBWvdVasHPQZ4ASUi0Q7vNBKPEBBjQNHcbtvgrQ5kcP8Zo+1vnbgyb4ViszKwyDzhDhMqvM4iuQrZZaLOQ78EBrmCs5l7V9dSt9fYDM1xdhuqzMJsSA+I6I8kvzAtgm9PGhHwXuyIj/w2dk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741592652; c=relaxed/simple;
	bh=+ylCaPqMuBOOPYEKUzjxA2hFKkA6JCzUcwHKkGx4RDo=;
	h=From:To:Cc:Subject:Date:Message-Id; b=I3++kjBXzX/lgsU7Ql5hwi3KAMLKdCejOdtrkQtiKGhBSKsrj72EGL0WCyvefjT2VmaPnPC61kQCtX+zGC0grtM4WrMLimAzIb0Cyl+73LJUAYlVCaktjVkuDWu64Yaqg23pDbPIyU7UYtNFvz4VP37vt/2ro5MHTdTAGWWbTTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com; spf=pass smtp.mailfrom=everest-semi.com; arc=none smtp.client-ip=180.149.134.102
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=everest-semi.com
Received: from unknown (HELO zy-virtual-machine.localdomain)([180.159.108.137])
	by sina.net (10.185.250.32) with ESMTP
	id 67CE981A00004D8A; Mon, 10 Mar 2025 15:43:25 +0800 (CST)
X-Sender: zhangyi@everest-semi.com
X-Auth-ID: zhangyi@everest-semi.com
Authentication-Results: sina.net;
	 spf=none smtp.mailfrom=zhangyi@everest-semi.com;
	 dkim=none header.i=none;
	 dmarc=none action=none header.from=zhangyi@everest-semi.com
X-SMAIL-MID: 76F1BBFE37B4418DA964987A436D7C60
X-SMAIL-UIID: 76F1BBFE37B4418DA964987A436D7C60-20250310-154325
From: Zhang Yi <zhangyi@everest-semi.com>
To: krzk@kernel.org
Cc: tiwai@suse.com,
	robh@kernel.org,
	conor+dt@kernel.org,
	broonie@kernel.org,
	devicetree@vger.kernel.org,
	lgirdwood@gmail.com,
	linux-kernel@vger.kernel.org,
	linux-sound@vger.kernel.org,
	perex@perex.cz
Subject: RE: [PATCH v4 1/2] ASoC: codecs: add support for ES8389
Date: Mon, 10 Mar 2025 15:43:22 +0800
Message-Id: <20250310074322.122840-1-zhangyi@everest-semi.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

> > I apologize for not responding to this review comment.
> > But I did view these review comments and fixed the error.
> > In the meantime I will modify my cc list, do I need to resend a new 
> > version of the patch to correct my error in my cc list?
> 
> Why this list uses different addresses in the first place?

I was trying to show that I have changed my cc list, I apologize if it bothered you

> None of the patches had changelog, so you put additional effort on us to actually check what changed (see submitting patches).

Can you please check out my new v5 patch, I'll add changlog to the following patch

