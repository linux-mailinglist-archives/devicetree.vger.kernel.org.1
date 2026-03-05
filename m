Return-Path: <devicetree+bounces-271418-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cM3TOa9AqWkJ3gAAu9opvQ
	(envelope-from <devicetree+bounces-271418-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 09:37:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5931320D89D
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 09:37:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7E0D83010B8B
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 08:36:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F6B2342CB4;
	Thu,  5 Mar 2026 08:36:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vQtDtSO9"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF343288514;
	Thu,  5 Mar 2026 08:36:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772699769; cv=none; b=lZOmWQYd3UnRgutrDQg/88hFJZ5y098Sx0HbXP+CgsV5btwE81ii2Pkx1SE0m+hQNq/uaoINTU/LMYv+8oulWaC0/vqj7Oh0m/xQt7tyg6XonRgVoN4IROKX+V2KY0IsKt6JOeWIWZcOAmcyq8aGkCpyEvFBuBhVs/N/111wDJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772699769; c=relaxed/simple;
	bh=UHs7hn5mtQNWpVM3mVHlD2Muf1/IXQVhS6ToW829khk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tjQEoJzzhz/XP+311thSa+3fchkL5/MuHVUsHDC8cZHIdDulvAuaUrTfoaIHzCG1URMBlHg2v6fXNh5k3nDa+i2rh2nyokz961dnHyv/Z2l4MKzRswkL5XCyQNqlsxSXCUzhcYZo8NXwBlNvL9X2B8deVYpS+SRaJo/AIcPNGGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vQtDtSO9; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED511C116C6;
	Thu,  5 Mar 2026 08:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772699769;
	bh=UHs7hn5mtQNWpVM3mVHlD2Muf1/IXQVhS6ToW829khk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vQtDtSO9yzbZVERtVTp/xR6Z0Ga1UpXACJ0kMV78vX3k4D1T+9+T2AK4U5wJ4o+Ex
	 DoHSLLph+JA/x8zF178pCrtGqUen7giIdEleGYZyLCu8nUDjKUnBsF/X9vEvLj6K7P
	 WoEmgs3D0epB8OWsOfEvncYnb/0tzd8gYAbjmNL6eCuK4FnqHAQKzCF5XjWxpducOd
	 2d2rKj74GVXM7NVB40MkFtU1AaxD5FFmcVYuwjEANUL7APcnGNQ0NPo6/PvI17K230
	 EPllrtOmWt6yNI18fWdNiPKiu+9b60KB2O2gATU8tAOE42aQ1KehNYuYc0YxeKuo43
	 XmQ3hVFm/1UBA==
Date: Thu, 5 Mar 2026 09:36:07 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>, 
	Dmitry Baryshkov <lumag@kernel.org>, Abhinav Kumar <abhinav.kumar@linux.dev>, 
	Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Krishna Manikandan <quic_mkrishn@quicinc.com>, 
	Jonathan Marek <jonathan@marek.ca>, linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: display/msm: move DSI PHY bindings to phy/
 subdir
Message-ID: <20260305-nano-sunfish-of-essence-87de43@quoll>
References: <20260305-msm-dsi-phy-v1-1-0a99ac665995@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260305-msm-dsi-phy-v1-1-0a99ac665995@oss.qualcomm.com>
X-Rspamd-Queue-Id: 5931320D89D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271418-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,kernel.org,linux.dev,gmail.com,poorly.run,somainline.org,ffwll.ch,linux.intel.com,suse.de,linaro.org,quicinc.com,marek.ca,vger.kernel.org,lists.freedesktop.org,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:email]
X-Rspamd-Action: no action

On Thu, Mar 05, 2026 at 01:47:12AM +0200, Dmitry Baryshkov wrote:
> Historically DSI PHY bindings landed to the display/msm subdir, however
> they describe PHYs and as such they should be in the phy/ subdir.
> Follow the example of other Qualcomm display-related PHYs (HDMI, eDP)
> and move bindings for the Qualcomm DSI PHYs to the correct subdir.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---
> Merge strategy: I'd ask to merge bindings through the msm tree, reducing
> the conflicts for the current kernel development cycle. Starting from
> the cycle after this patch is merged, DSI PHY bindings should go through
> the PHY tree.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


