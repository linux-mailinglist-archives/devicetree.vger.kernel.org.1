Return-Path: <devicetree+bounces-271796-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6FV/LlspqmmQMQEAu9opvQ
	(envelope-from <devicetree+bounces-271796-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 02:09:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 3988D21A280
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 02:09:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E6714302C32D
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 01:08:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E5E12FFDEA;
	Fri,  6 Mar 2026 01:08:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eBGE/NEM"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A4BC2FD1D0;
	Fri,  6 Mar 2026 01:08:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772759286; cv=none; b=CRBFU8ermi1YKrJuSWygLlnlz9C26RCDsG+Z/1u6kI1TDDTMte6GJm/XsHkrm0cUZC/DO0VkPjwbf8SsXA6fZkR5WTr+d+RAVujOiP1jTfouiHSUqLyjnwuKyyH+KcwjUOZuh4nFw2FQpkAB5tel9T4bhFAQDGz5ATZWqf0uYto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772759286; c=relaxed/simple;
	bh=B8tOVBmY+EUIN1uBk+9h1I345IZ9kWKRDBkL7ai3E+c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Xi/NWDTnz7oXoXhQ5A55S3bSvZehP5lZO6eujOGy8W/oVzBIenaERdd0aJPRFfxiTXUDHnGNTejP++exqp1kwMUPauBtuY6a6OHtuejELEo9HLSdw7VOIfqZ0p7/3wRRb9PWO2FXqsK/iUFUbHFWpGCCnJekfcZY6Oobff25OqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eBGE/NEM; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9165FC116C6;
	Fri,  6 Mar 2026 01:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772759285;
	bh=B8tOVBmY+EUIN1uBk+9h1I345IZ9kWKRDBkL7ai3E+c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eBGE/NEMtv8RnAK1NsRCzKwTehVMKfN4lo71QN8VB1giD9Ll3K2eVqM9ROWSJhL62
	 Kyozcnue96JT2usj8dX9rD40ZU9rFsltFdpJpbFCWXoRl1fgMEqp0IlqphDtNEYoJ1
	 dxjIy2goVblgNGVkPJeyBUF8Jkxlvnr2IVxaPTw0nLeJ6CTVOJ2hodI5VOg0OzFAX6
	 BmCBFaRCyLGJH/Irrzsff46QxEpobLEsrLGbOEadB2vPLZYoies7HS8O9G8eOZZg5T
	 bSfZlxp4UU3+vFPUWE4B/x7Z+uTqnlFBkjh+KcAGpTG8lvX6oek7WGETrdoZ+oJRiJ
	 SdXY9//8DGzhQ==
Date: Thu, 5 Mar 2026 19:08:04 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: James Calligeros <jcalligeros99@gmail.com>
Cc: Shengjiu Wang <shengjiu.wang@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
	Takashi Iwai <tiwai@suse.com>, imx@lists.linux.dev,
	Jaroslav Kysela <perex@perex.cz>, devicetree@vger.kernel.org,
	Fabio Estevam <festevam@gmail.com>, Baojun Xu <baojun.xu@ti.com>,
	Frank Li <Frank.Li@nxp.com>,
	Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
	asahi@lists.linux.dev, Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Shenghao Ding <shenghao-ding@ti.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	linux-sound@vger.kernel.org, Kevin Lu <kevin-lu@ti.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	Sascha Hauer <s.hauer@pengutronix.de>
Subject: Re: [PATCH v3 3/7] ASoC: dt-bindings: add TDM slot idle mode
 properties
Message-ID: <177275928407.908052.10390059527937221650.robh@kernel.org>
References: <20260301-tdm-idle-slots-v3-0-c6ac5351489a@gmail.com>
 <20260301-tdm-idle-slots-v3-3-c6ac5351489a@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260301-tdm-idle-slots-v3-3-c6ac5351489a@gmail.com>
X-Rspamd-Queue-Id: 3988D21A280
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271796-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[23];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[nxp.com,kernel.org,suse.com,lists.linux.dev,perex.cz,vger.kernel.org,gmail.com,ti.com,renesas.com,pengutronix.de,lists.infradead.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action


On Sun, 01 Mar 2026 18:05:22 +1000, James Calligeros wrote:
> Add properties to describe TDM slot idle behaviour. These properties can
> be used to describe how a DAI is supposed to behave when not active.
> 
> For example, Apple Silicon laptops split a single I2S bus between two
> physical lines which are combined at an OR gate in front of the
> receiving port. One codec on each line is expected to transmit zeroes
> during the active TDM slots of the opposite line, or we will have corrupted
> data at the receiver.
> 
> Signed-off-by: James Calligeros <jcalligeros99@gmail.com>
> ---
>  .../bindings/sound/tdm-slot.yaml         | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


