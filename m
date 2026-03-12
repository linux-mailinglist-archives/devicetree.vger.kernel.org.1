Return-Path: <devicetree+bounces-274424-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6D0GLqVLsml7LQAAu9opvQ
	(envelope-from <devicetree+bounces-274424-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 06:14:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 326BF26D555
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 06:14:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 31853303D646
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 05:14:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A65FF3A6B60;
	Thu, 12 Mar 2026 05:14:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabladev.com header.i=@nabladev.com header.b="c3BBm4l2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx.nabladev.com (mx.nabladev.com [178.251.229.89])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A238C3A4508;
	Thu, 12 Mar 2026 05:14:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.251.229.89
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773292445; cv=none; b=OOJaqFSKUdhB1yXdY+70rR73qjdaoYVV/oWrQBbc8YkI4Pr9BwRSf0Kgxu11XgWa5fFJ1nMr1WyKxhdy73cg+RIx6FWWhWYZNBvBexGEsCHGa05rdEXZvOfYvzGsCRQZie6qe/R8bK9QYePNlQbO+i2MY26BolQqFpy1feX40+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773292445; c=relaxed/simple;
	bh=9LMi7EH5LcZ00XXXjnl4eLv5CdHV23fgmfFVoaqTQAs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aWOWYgWPiKPowI6/TH6IBjOa3MJ8FywHOcHVdXhYpawzQTNaWdO+PTQ88gh6iPxTniDVDD6MTYDsrpBxHt6ddE9yO3dh91nCmvjyeRhX4QHA/MgS008rhZdcfbTHBmZiK4klmhqp0cg04tpU6IdoKAkUhn1GvtKqVXNzmq8JQEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nabladev.com; spf=pass smtp.mailfrom=nabladev.com; dkim=pass (2048-bit key) header.d=nabladev.com header.i=@nabladev.com header.b=c3BBm4l2; arc=none smtp.client-ip=178.251.229.89
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nabladev.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabladev.com
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id E003A10A507;
	Thu, 12 Mar 2026 06:05:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nabladev.com;
	s=dkim; t=1773291941;
	h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=LAFG04ceHNc7rsC3ZsFGGq8Jqrn9hxXlHeTD3T5rR8Q=;
	b=c3BBm4l2EMBi+om33TK54OGwQFYq0ZQCToMl4IdQBmw2nuHz6EtWHm1bZWheHF+o+4CbnB
	zTu+CXdjOMO62Hm2nK4hFFgvOJKhSFiQkFSb61zygKc2ESrYNpbRsCH+FyG+hWN7PxqgrG
	mCmyGGdrDgg6qa8AEg0JMgzoX8OC/RTs/lOQuo8HILkDz90bA3DIDywsRG/RS0Hs1ONPw4
	yFPiFthg5azb7CecO5pufmk8seXGu3+UJ8ZCcC0Pn7GVw9+mTp3r6pSZze6eI+VEAPhjvM
	HpwtMnnE4/RTDN5Y7aDSzflJc1KqNRwanGU+Li1PjbRI/Vc7l+qo67dqa7I1nQ==
Message-ID: <9f694b2d-44bc-46ad-8aa3-b464c2f0da13@nabladev.com>
Date: Thu, 12 Mar 2026 06:05:34 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/2] drm: bridge: ti-sn65dsi83: Improve dual-link LVDS
 support
To: Sudarshan Shetty <tessolveupstream@gmail.com>, andrzej.hajda@intel.com,
 neil.armstrong@linaro.org, rfoss@kernel.org,
 Luca Ceresoli <luca.ceresoli@bootlin.com>
Cc: Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 valentin@compulab.co.il, philippe.schenker@toradex.com,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20260312043743.261475-1-tessolveupstream@gmail.com>
Content-Language: en-US
From: Marek Vasut <marex@nabladev.com>
In-Reply-To: <20260312043743.261475-1-tessolveupstream@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Last-TLS-Session-Version: TLSv1.3
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nabladev.com,reject];
	R_DKIM_ALLOW(-0.20)[nabladev.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274424-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,intel.com,linaro.org,kernel.org,bootlin.com];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[nabladev.com:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[marex@nabladev.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,compulab.co.il,toradex.com,lists.freedesktop.org,vger.kernel.org];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 326BF26D555
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/12/26 5:37 AM, Sudarshan Shetty wrote:
> Hi all,
> 
> This patch series improves dual-link LVDS support in the SN65DSI83
> DSI-to-LVDS bridge driver.
> 
> Currently the driver programs identical horizontal timing parameters
> for both single-link and dual-link LVDS modes. According to TI
> documentation, when operating in dual-link mode the horizontal timing
> values must be divided by two before being programmed into the device.
> Without this adjustment, some panels fail to light up or produce
> corrupted output.
> 
> TI also provides recommended register settings for dual-link LVDS
> operation. This series adds support for an optional DT property
> ti,dual-link-video-mode that enables the required configuration
> in the driver.
> 
> When the property is present, the driver applies the recommended
> register settings and uses a simplified DSI video mode configuration
> to ensure correct dual-link LVDS operation.
> 
> Summary:
>   - Add DT binding for ti,dual-link-video-mode
>   - Add driver support to enable dual-link LVDS configuration
>   - Apply recommended register settings for dual-link operation
>   - Adjust DSI mode flags when dual-link mode is enabled
> 
> Changes in v2:
>   - Introduce ti,dual-link-video-mode DT property
>   - Add DT binding documentation for the new property
>   - Update driver to read the DT property and apply dual-link
>     configuration conditionally
>   - Adjust DSI mode flags when dual-link video mode is enabled
>   - Update commit messages
> 
> Thanks,
> Anusha
> 
> Sudarshan Shetty (2):
>    dt-bindings: display: bridge: ti,sn65dsi83: Add dual-link video mode
>      property
>    drm: bridge: ti-sn65dsi83: Add support for dual-link LVDS video mode
> 
>   .../bindings/display/bridge/ti,sn65dsi83.yaml |  9 ++++
>   drivers/gpu/drm/bridge/ti-sn65dsi83.c         | 52 +++++++++++++++++--
>   2 files changed, 57 insertions(+), 4 deletions(-)
+CC Luca

You might want to look at recently posted:

[PATCH 2/3] drm/bridge: ti-sn65dsi83: halve horizontal syncs for dual 
LVDS output

