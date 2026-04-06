Return-Path: <devicetree+bounces-284978-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kJw/L/jR02nGmgcAu9opvQ
	(envelope-from <devicetree+bounces-284978-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Apr 2026 17:32:08 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id D0C063A4C2C
	for <lists+devicetree@lfdr.de>; Mon, 06 Apr 2026 17:32:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 334E43009F2D
	for <lists+devicetree@lfdr.de>; Mon,  6 Apr 2026 15:31:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BF3C279355;
	Mon,  6 Apr 2026 15:31:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabladev.com header.i=@nabladev.com header.b="d9NfMqx/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx.nabladev.com (mx.nabladev.com [178.251.229.89])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51B81258EDA;
	Mon,  6 Apr 2026 15:31:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.251.229.89
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775489478; cv=none; b=r3Yuc3X01vgJAX4RmZI7HgfD4MDXg3SafvbkP3fJqWGpKX36M492y0EQegAqJXpYANIQsANJBOwKtfFPVbE+H/GS3jnYkXSJMLXaY1TzvJKq0nVCoO7xEGOZg+IOf8awOYrEltQLXPHQFM0GwhVE6haI9K7lyGJsdso8nxiWdR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775489478; c=relaxed/simple;
	bh=S6MR2YNBRSzDuJOiJOdwNpywu7sQ3wKTTf2citvbdNA=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=mQeqwIfnar3yFDVEkkpnvIPF10Th4P0UtJaaDA1kQ5+v5usUcR3g0NaoEM2dhZ3KF3btfZxJEsAaraYn91Ym4GJmREwoFYgoLSD12W3I+LAWUSH77cYgUZvP4vPXWlRVCMh/sMAkVozVvn5FXMSY5tQd3FB8TIN+V4hjQRZJR14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nabladev.com; spf=pass smtp.mailfrom=nabladev.com; dkim=pass (2048-bit key) header.d=nabladev.com header.i=@nabladev.com header.b=d9NfMqx/; arc=none smtp.client-ip=178.251.229.89
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nabladev.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabladev.com
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id B61A9112349;
	Mon,  6 Apr 2026 17:31:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nabladev.com;
	s=dkim; t=1775489475; h=from:subject:date:message-id:to:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=xTqqo0bM2Xp/vABBfMxTtslTbC0nEcFdtU9RVWpzvC0=;
	b=d9NfMqx/h4AterwS3pb9uaO184+AEpR9/8Mm0vRvs9yLYWBbiUUr0V5H+81Jdjoh0vbiA3
	A2J+qhLil58e1MlrZebVNYvehykoCA5MxzaQE8VqsCOURduIF3P7stxf0sodc2o3M7r1hy
	6WWmNSpk92X6H4x0dgjtkWbtWfKSk/DxPBFKIDtCNibREu0z3QJuK3eEF/JIcq9orKnxxY
	idfyFswFphl+FYR9vhGCb2/+4LKCM3e0QbCV36okK+Nt+ofOTmDsA6GBHFTvp1W2qWFRwy
	IFipw4+Mq8QhrdYPO+zQjtg71kprF/iHhTGmFJKCfkdjznlhTCPoRJofsT4ZWQ==
Message-ID: <41641a5c-8da1-4696-888c-454e6bf2eea2@nabladev.com>
Date: Mon, 6 Apr 2026 16:49:53 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] arm64: dts: imx8mn-vhip4-evalboard-v2: Correct
 interrupt flags
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Peng Fan <peng.fan@nxp.com>,
 Fedor Ross <fedor.ross@ifm.com>, Shawn Guo <shawnguo@kernel.org>,
 Shengjiu Wang <shengjiu.wang@nxp.com>, Viorel Suman <viorel.suman@nxp.com>,
 devicetree@vger.kernel.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260406063810.25531-4-krzysztof.kozlowski@oss.qualcomm.com>
 <20260406063810.25531-5-krzysztof.kozlowski@oss.qualcomm.com>
Content-Language: en-US
From: Marek Vasut <marex@nabladev.com>
In-Reply-To: <20260406063810.25531-5-krzysztof.kozlowski@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Last-TLS-Session-Version: TLSv1.3
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nabladev.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[nabladev.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-284978-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,kernel.org,nxp.com,pengutronix.de,gmail.com,ifm.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[marex@nabladev.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[nabladev.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:email]
X-Rspamd-Queue-Id: D0C063A4C2C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 4/6/26 8:38 AM, Krzysztof Kozlowski wrote:
> GPIO_ACTIVE_x flags are not correct in the context of interrupt flags.
> These are simple defines so they could be used in DTS but they will not
> have the same meaning:
> 1. GPIO_ACTIVE_HIGH = 0 => IRQ_TYPE_NONE
> 2. GPIO_ACTIVE_LOW  = 1 => IRQ_TYPE_EDGE_RISING
> 
> Correct the interrupt flags, assuming the author of the code wanted the
> same logical behavior behind the name "ACTIVE_xxx", this is:
> ACTIVE_LOW  => IRQ_TYPE_LEVEL_LOW
> 
> Fixes: 5eb7405db99b ("arm64: dts: imx8mn: Add ifm VHIP4 EvalBoard v1 and v2")
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Reviewed-by: Marek Vasut <marex@nabladev.com>

