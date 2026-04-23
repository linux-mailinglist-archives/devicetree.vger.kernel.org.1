Return-Path: <devicetree+bounces-289607-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UFdRNE/i6WlQmgIAu9opvQ
	(envelope-from <devicetree+bounces-289607-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 23 Apr 2026 11:11:43 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F157744F197
	for <lists+devicetree@lfdr.de>; Thu, 23 Apr 2026 11:11:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 427E5300FEC5
	for <lists+devicetree@lfdr.de>; Thu, 23 Apr 2026 09:10:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DACEB3E123F;
	Thu, 23 Apr 2026 09:09:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SqTMHQd5"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B71573C9ED8;
	Thu, 23 Apr 2026 09:09:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776935399; cv=none; b=hl9hIFo1WM8QdeGLdgc+o0NNqqya6/5yRgWdf1H3QUBj/UUgxPpykZh/k/9yNmdfPfyTW3EVI+oEw3zm8sNp1zVOfcXBGKDf8IKLnKKqUQBW9m2ZanYvc3LbiQdiUmLgHO7ry/TJ7VVQwyDBIaWIO7XS4SVKDmbE8QAh5cDJca0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776935399; c=relaxed/simple;
	bh=LmEOVucW+Da6ZRyIF5c12slqN1lpENa4Yxr82bUq+sg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UkPNh1Y69Emp//hoI5S8mkhDRmyz9FoqYryY4UqHuc4nNXgwV1+/Adu+WeDCa8+8PeOU8fhlaL5LF7zffZHz5b6KU4ziBeDyLkNxjfbdnmiUdEuZgk9H0WmKiidS9xp2OqOsK5bijZB0e72VRmZqvCS/2NFisPwZCiRkxwnLUDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SqTMHQd5; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D9172C2BCAF;
	Thu, 23 Apr 2026 09:09:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776935399;
	bh=LmEOVucW+Da6ZRyIF5c12slqN1lpENa4Yxr82bUq+sg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SqTMHQd5JAnCugsjSK82RslXfQzaU71nkjNL9oITexV5FZci65YjnPt0hcpDVPVHT
	 LlZwocrpev4joM4Z6gBcU/um31bHVP7TKS3LBGpEHaLyeGp2cCIBCI4RxlQ1JXlZwS
	 txzKbKJ9SJ4m15z8w64BwXbvN/kIZCuwwlWE43CTSbx10uwHqddX5SVpQW2CDG2Oea
	 QfWkEJ2H93hUV19C6PBmU+PJk5krFzAYuxcmuMJPqztJBge2sVdgFMaHn04Q1Am6h1
	 SgDyknjPbD/pU7mQeM4jqyaTnOqcUQ1Y6bA6UMxQ3fo2+41akPgbI58AiFm0L06Hna
	 tI7aKj9Z8glOQ==
Date: Thu, 23 Apr 2026 11:09:56 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Marek Vasut <marex@nabladev.com>
Cc: dri-devel@lists.freedesktop.org, Kael D'Alcamo <dev@kael-k.io>, 
	Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>, Conor Dooley <conor+dt@kernel.org>, 
	David Airlie <airlied@gmail.com>, Jessica Zhang <jesszhan0024@gmail.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, Sam Ravnborg <sam@ravnborg.org>, 
	Simona Vetter <simona@ffwll.ch>, Thierry Reding <thierry.reding@gmail.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: vendor-prefixes: Add Displaytech Ltd.
Message-ID: <20260423-cuddly-aardwolf-of-advertising-cc43ef@quoll>
References: <20260422210806.80948-1-marex@nabladev.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260422210806.80948-1-marex@nabladev.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-289607-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,kael-k.io,oss.qualcomm.com,kernel.org,gmail.com,bp.renesas.com,linux.intel.com,linaro.org,ravnborg.org,ffwll.ch,suse.de,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:email]
X-Rspamd-Queue-Id: F157744F197
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Apr 22, 2026 at 11:07:23PM +0200, Marek Vasut wrote:
> Add "displaytech" vendor prefix for Displaytech Ltd. .
> 
> Signed-off-by: Marek Vasut <marex@nabladev.com>

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


