Return-Path: <devicetree+bounces-319915-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id BmAPAvt1R2pbYgAAu9opvQ
	(envelope-from <devicetree+bounces-319915-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 10:42:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 95E4E700353
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 10:42:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linaro.org header.s=google header.b=fXIxihg5;
	dmarc=pass (policy=none) header.from=linaro.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319915-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-319915-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 028A3301105C
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 08:42:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6BE9378D8C;
	Fri,  3 Jul 2026 08:42:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBE12376A10
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 08:42:21 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783068144; cv=none; b=NvpIapyuKmCUT1QVsvnhEWl3KvEVBUiYRsLbUPyIBO/v/Oj4Pl+DtsS4V1U7AjHkF+QmjJ0mPLDN4agFRO/ApyNBM9SnjUi19uAdd1vAPIQi8xzJ+pwrg1tk3UtErnvcD5ay+QkXqdXS4Fwc7MFVKLLFay05LceCyrN1CpmNG4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783068144; c=relaxed/simple;
	bh=eOq1f3xM6JDAQeC9Kgei/M1mMOJhAIH9od8V8aUf+D0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=bPMXV7v2SP6e0edgvDocdmVl1UHkpb+uWzPcbst7cgrV9v4rdt6Bc2TkTmewCP7qyR5fCubvrokjtVmZjse7YWYEvequhknbNn6vGzUgoBTEDj6iCUTYmE3NRvecD7HS4sVX1TA7Bt0+ABjW5xsPDtDpZue4tZQFO9vm2pX/dUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fXIxihg5; arc=none smtp.client-ip=209.85.128.43
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-493b61b52b6so1797325e9.1
        for <devicetree@vger.kernel.org>; Fri, 03 Jul 2026 01:42:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1783068139; x=1783672939; darn=vger.kernel.org;
        h=content-transfer-encoding:content-type:mime-version:date:message-id
         :subject:references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=RXc3pK0ovFKB9bMMvTE9IPUZKu6aZsXVUk3VK3ezvc8=;
        b=fXIxihg5UU9QxNMlaXLymjGI2M8+8hmojRP/YECFpRHMZv0Zsy80+LzM96K9Vns5zn
         f4zyd6iviY2tkZV6lxAwZ/riLyzHq1+r2/Ot6aXtDi1UqKnj+B2fUpwYDsKiUMyc0ovC
         u0AiAPxyttIkXENB6Rz6NngTXS6uzx1cWfLsdR6c8ZPKzLMXOaayEgWOqhQ1BiXYVOWV
         dieF1W3AzhgHrK4jxVJyEfmV5k7wsJTAvK6an9r80wPNVbGgygKQ/cNvWPZTvC0If1M+
         W0dnYV9xZWtRG5RYi8FZugedt8QnswZQB2tG71d6mqM2mV3Y9gw3jfawAAdgnpnKfiZ6
         9U0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783068139; x=1783672939;
        h=content-transfer-encoding:content-type:mime-version:date:message-id
         :subject:references:in-reply-to:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=RXc3pK0ovFKB9bMMvTE9IPUZKu6aZsXVUk3VK3ezvc8=;
        b=hLLHS5uSKO7M5BE8VXBlGVsF964fBRIxyiaDcGCKyBmUB9WRRZ181JmHlr5Y1ggbO/
         Wg6ACPaCh3vqUITkNUVOYpyNhZzExZtzheU+Q9exp5gEt2w392UhcYINoo3F8bsLrJ0s
         2BRtvtQiaxIz7WvIa2Gbdy6sH7OYVyceKvv+90n1ujHSTGG0jKMOm5FfAaAvgQEciq4G
         h+KenEi+2ELXCVSrjR9e4nLEOBv5VRDb8FnlboIi1EKRQ/I1ylBJuYuPzlLKEelG1r5M
         jmvqYKZpI1rQfIp7aiu8QyqaU/6BvNmd2pi/98z5OpLL7W3VM3cCiwu8pRdvm/ZeGcZD
         eH7g==
X-Forwarded-Encrypted: i=1; AFNElJ+OKWdum5yww95KNR32DhWLxsbQSekVhCid4bvs2VwpH9OkRUjZyqnAcasMjoUA9XT4LDWlqmv7umNH@vger.kernel.org
X-Gm-Message-State: AOJu0YwwbKw3SiyULO1P1kgzTNCaagqVE8cNIOgd49k6DtIYzZhy5d4c
	mXUQH5ePXITawmwNCDePpPTit59o0KXgZnQ5WqItwi94vx+XvSKCPRhIbvxIa/sb1YU=
X-Gm-Gg: AfdE7cleTQToH+BYSZFkdpdgSAzhFu6uRrDI8yy9NjG3luIf9PcYPqb1LEQ40+gX8+D
	BmW/fAxAZ8GD5cM9Fkox+UcRPVwkfcZbxwJgDGSnmIb6xNNnmhFznhTAMocipH0fMSPM77c6dNX
	FjV0YMsaV7uDwMQkPjZaYrWUK3tVkzf0S8p8jmvxCbwM4fF+awXZ/MPw+w45ximTEVIvn4kyT9w
	9hxvwVwo0ictLPUqsIDqBSaNR/TjgIM+GkpmHvDFM/uRNTwd6jcRdEbRDvY8Og4GT3j0qgR2aRJ
	o3R9+eYKdcQycxaFtlQUXyp/TB205+J3CtZUzTRcjd6YD6dsIZ79zdEGbkUAWta1J8nQ2HooHgP
	4T0oSaFm/OYG72eqai7ET9449YXmTIAW4TUWe6FBMtbvrpXaNjfdU50i9Ma2zzz4rSR4ir91w1h
	1Kvi53whdfZjCmke5FILsKCe0aWXXCeCOnQg==
X-Received: by 2002:a05:600c:35d2:b0:493:c3f9:65a2 with SMTP id 5b1f17b1804b1-493c3f9664bmr142706275e9.5.1783068139403;
        Fri, 03 Jul 2026 01:42:19 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:106d:1080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-493ccdab27dsm30001575e9.4.2026.07.03.01.42.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jul 2026 01:42:18 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Jessica Zhang <jesszhan0024@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Magnus Damm <magnus.damm@gmail.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
 KancyJoe <kancy2333@outlook.com>
In-Reply-To: <20260504-topic-sm8650-ayaneo-pocket-s2-r63419-v3-0-9f61cf24aebf@linaro.org>
References: <20260504-topic-sm8650-ayaneo-pocket-s2-r63419-v3-0-9f61cf24aebf@linaro.org>
Subject: Re: [PATCH v3 0/2] drm: panel: support the R63419 based dual-DSI
 video mode Display Panels
Message-Id: <178306813821.3165305.8418071797826961279.b4-ty@b4>
Date: Fri, 03 Jul 2026 10:42:18 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.15.1
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-319915-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,glider.be,linaro.org];
	FORGED_SENDER(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_RECIPIENTS(0.00)[m:jesszhan0024@gmail.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:geert+renesas@glider.be,m:magnus.damm@gmail.com,m:neil.armstrong@linaro.org,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-renesas-soc@vger.kernel.org,m:kancy2333@outlook.com,m:krzk@kernel.org,m:conor@kernel.org,m:geert@glider.be,m:magnusdamm@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,outlook.com];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,linaro.org:from_mime,linaro.org:dkim,vger.kernel.org:from_smtp,gitlab.freedesktop.org:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 95E4E700353

Hi,

On Mon, 04 May 2026 10:02:04 +0200, Neil Armstrong wrote:
> Add support for the Renesas 63419 based dual-DSI video mode
> Display Panels found in the Ayaneo gaming handled devices.

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/2] dt-bindings: display: panel: document the Renesas R63419 based dual-DSI video mode Display Panels
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/9c04ecc893f07d001e484e6c420af19a970f755c
[2/2] drm: panel: add support for the Renesas R63419 based dual-DSI video mode Display Panels
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/1190fc8d7b8a9cebea8dcbd2e544e43990ae81d0

-- 
Neil


