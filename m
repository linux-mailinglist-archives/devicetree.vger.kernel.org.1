Return-Path: <devicetree+bounces-264106-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CJZ3DUcgimnLHQAAu9opvQ
	(envelope-from <devicetree+bounces-264106-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 18:58:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CB39F113514
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 18:58:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 14F58300669B
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 17:58:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D945388855;
	Mon,  9 Feb 2026 17:58:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TX3H9997"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AC143859F7;
	Mon,  9 Feb 2026 17:58:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770659907; cv=none; b=uRc4zdL4FQq1UKhuxtUI4/hADH+iOQhHb6yU7m8k15VaesZ7g8zKW/T3MR/mNy/Jtqz5Eridw43hVl2inetSSQnnnQo8zF36KntI+Sbh09uqO3rqRtooRUcn6AFCasjRUdDa4MXPD0VrW1rlHE3TYuMF9okegBRPtdsfMi06qxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770659907; c=relaxed/simple;
	bh=vxxNB6nWgY4FeC3V5k11CvbrJUV7Z/hmMTpSNLsLNYY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FbaNvSPRt795Ju0MN3th67cfr+jjmchybphuPJYrgTVnxu8Oe3DA4eJ/oAhsmbkSOc98BTwnJ4ZFM5qxwDQva8EkA/608MBccfyuqm0dqqO5NoaMUeRGaQIRe5mSwlZU41av2zdMGFHhuDiHfN5ozJs7u7wuZW8YfE1ycWPNRgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TX3H9997; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 642C2C16AAE;
	Mon,  9 Feb 2026 17:58:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770659906;
	bh=vxxNB6nWgY4FeC3V5k11CvbrJUV7Z/hmMTpSNLsLNYY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TX3H99972Qth3fjJt7lnW+yMbsYjeoJojgZeRvCZ3IxPlw9u+b/Sn0ZG+byjFcPSi
	 dOsp9XYpZKiDIeYjqmnoja08c4N+PSTVf2Aj4yhceOIFa8dp/rw7/jVP8X+fs12K+C
	 vF59Dhb8oOkxuyeEBabgcYbX/vECmOnbFe33w28a+piwe5LMiAEOCN/7BZeNNVd3kI
	 iBG1/uVHXUYsV8iQJe6WzTJcLFHYSNLjJ2eoyP8mYDv7hPcqu3+V9R1W4CUsElbFzD
	 Q6hRPJ9WQVfk/xWGFZe+cIvSRfVQq88nJ65vr5l73m6XGpXjUgmaaV/PgVR/uxKVHH
	 eQcmel4SSF71g==
Date: Mon, 9 Feb 2026 11:58:25 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Dominik Haller <d.haller@phytec.de>
Cc: conor+dt@kernel.org, Laurent.pinchart@ideasonboard.com,
	linux-arm-kernel@lists.infradead.org, adrien.grassein@gmail.com,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Jonas Karlman <jonas@kwiboo.se>,
	Andrzej Hajda <andrzej.hajda@intel.com>, upstream@lists.phytec.de,
	David Airlie <airlied@gmail.com>, dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Robert Foss <rfoss@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	devicetree@vger.kernel.org, krzk+dt@kernel.org,
	jernej.skrabec@gmail.com, Maxime Ripard <mripard@kernel.org>,
	Simona Vetter <simona@ffwll.ch>, onas@kwiboo.se
Subject: Re: [PATCH 5/6] dt-bindings: display: bridge: lt8912b: Drop reset
 gpio requirement
Message-ID: <177065990345.1493489.15126893179740897544.robh@kernel.org>
References: <20260130205820.83189-1-d.haller@phytec.de>
 <20260130205820.83189-6-d.haller@phytec.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260130205820.83189-6-d.haller@phytec.de>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-264106-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	FREEMAIL_CC(0.00)[kernel.org,ideasonboard.com,lists.infradead.org,gmail.com,linaro.org,kwiboo.se,intel.com,lists.phytec.de,lists.freedesktop.org,vger.kernel.org,suse.de,linux.intel.com,ffwll.ch];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: CB39F113514
X-Rspamd-Action: no action


On Fri, 30 Jan 2026 12:58:15 -0800, Dominik Haller wrote:
> Drop the gpio reset from the list of required properties. The bridge works
> fine with a reset not managed by Linux. In the driver itself the gpio is
> already flagged as optional.
> 
> Signed-off-by: Dominik Haller <d.haller@phytec.de>
> ---
>  .../devicetree/bindings/display/bridge/lontium,lt8912b.yaml      | 1 -
>  1 file changed, 1 deletion(-)
> 

Applied, thanks!


