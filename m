Return-Path: <devicetree+bounces-273550-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cAYoIEItsGlHgwIAu9opvQ
	(envelope-from <devicetree+bounces-273550-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:40:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EA388252380
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:40:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B74C63413103
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 13:34:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A52D3A3839;
	Tue, 10 Mar 2026 13:28:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mBPYr3EX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BF9D3A16B5
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:28:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773149337; cv=none; b=DOQZS7ymn0KblC1O0dDaaazZR5s/lPKWS43hhrce91bBSNH4xcLALUNSa1qo7qvQ8BQtxQMmW64H+4fHC8IKvNScM3icKWBeSOemh+9YeIn+P2hfsW24ujNqeakgDg1dvICW7JWNzmVQ3WjbAYZ4jX2xa9ekl8Js7ftbI5uEpq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773149337; c=relaxed/simple;
	bh=nbDBfnCoqStjNE1+FHfFMg/E9OrP+v1YMgqFW9kqvMY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=VseVB1Zc26lCAvXwK7n/PdfFyalrDLehq5IafU7CMZR1b+RaLbFnXC/dA1ac4GmWf6LM7GO8m7+sz71YSMzSuz5acenXVbuVKn23iarshRscFMbxzavxK4+vaiEWZFOYidBLEFM4by3s8MFJH2oSLdJK7SAYUhQtxaFnG1LHVYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mBPYr3EX; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-439b9b1900bso6783465f8f.1
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 06:28:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773149334; x=1773754134; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VO1TTYHAfBoOzIJDJEJ0WmryBG6EX9gPDF4DBIjBV9Y=;
        b=mBPYr3EXtX3SMFu3BFDhzvuevRfXZkcy6OyqiH0WUNCrRQb80M2VmUIyoZmzIzRA3C
         VcjlmgaMKUZN9hIILGFnoysJOpHHIza0igSspUL+jPRiS7FDgGAvETBGY1hBMJSRBiDU
         PzrPh/ffqr8LHhubyVcWFfFevn3+dwU9UT7FNNXz+bJNGIVF3IzwZKDgKsYMoaQh27Ez
         hR3e0ZakfMVe7cgQXJRkSYC5yocI87FxMlDIbK7Fr8yhrn702eouqLfG24B9WlzBWZvZ
         ssg7N2RFa2k1LqTL10gpBpmHbmPbOXaYdokym0WIOLpzo9mxbyn9iLSDjO2saWNgqLKh
         9TWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773149334; x=1773754134;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=VO1TTYHAfBoOzIJDJEJ0WmryBG6EX9gPDF4DBIjBV9Y=;
        b=ZYEnVJJZW4egrJro5eiqf/gUFX/IMglS3zZ2uPpwNDyVWdrRQddbz1BJ2AOJIPd0H7
         J8tgO7kjtJYYf0aQQDThKm7/OEoTrFgEewEDmaXW8LsNL+neo7+oaZnSAaxCAbpaTsxM
         pfavhgzfl046Y7PzfAOMQ7pIO9dwG92F/0fX8GfaK/jg5ANt7qFhhqGEcc05E8Wzs3LZ
         E5X2RLkRtAodxRseemuFsJ0DQirXDZxY2eeMHIwGAcaQy68r0jpkdOWqqGRmvZSwYhUB
         87fd74Ze3A06h4yiGZNuwOk0ludETwAAFIUZXn7XnG7mf2LvzUzZUPrdnRZ2A/Wta5+A
         k8PA==
X-Forwarded-Encrypted: i=1; AJvYcCWjNmSiFNsAcjdUkzU5nhNldkEMJWc4H8bDf2qTA7AA2BG06QLdfYgswCvxpQeDnfm7DxECcPzQUZdS@vger.kernel.org
X-Gm-Message-State: AOJu0YylLAkRlQgLMqiHtQiPFvizmwWcU+8ENt0pO0rQdJzQKrNv4tMS
	Y/uHDHOa9L/wQ/MLkFe0NaBtSkcFBj1SoEcV4kKKpEBT6hbx/gm3oWrQl4ev1/lIVW3QcoQstct
	Pn8lB
X-Gm-Gg: ATEYQzyQt8svRsCLRegRUJDGTkbXrCYIH1EJzKZDqhrhIlF4Kk139KQ7OpRjr42cnhP
	Rnt3ILaSC9i9aTQiN4TZ1tVmlK3uR6s+kO46ot3+jW6xq5mcVjFJ8C8d2vEJCOV3mR/A+TVCBWS
	q+hejJDkImW9tg15MZNv5UUABA+baxV/s7tqtd1MsS0OUFCHAkp5z12IRJc6fkV4HPVvcpgTMhX
	BZ20/O+WmWYdWTdN1eIJINWG9ctf5xJ7lx2GyXamuajaz680ZiO1p4W5nDvLpZNXSuFTl098nBn
	nIH9G1qSRN03OMnO5lMO62e49M1apMtGwo9eXryF6evd17zh8c2RE70/hHzeb95otfMDgqi3NOQ
	rtB4MF873x2A4LokU5GbQlGRuob82sPop8pzJB9EcTzMjYZ2a2++1OV7V5lTzTHHvH6Vd+Rut3l
	SDM4rsaFlRtObPUmacUA6ZalN3iib/hyxI1cfs0TXotqyg
X-Received: by 2002:a05:600c:1e88:b0:47e:e952:86c9 with SMTP id 5b1f17b1804b1-485268bd528mr283400215e9.0.1773149333982;
        Tue, 10 Mar 2026 06:28:53 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:106d:1080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48541b6f6e6sm132464235e9.10.2026.03.10.06.28.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 06:28:53 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Jessica Zhang <jesszhan0024@gmail.com>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>, 
 Florijan Plohl <florijan.plohl@norik.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, upstream@lists.phytec.de
In-Reply-To: <20260217123759.169317-1-florijan.plohl@norik.com>
References: <20260217123759.169317-1-florijan.plohl@norik.com>
Subject: Re: [PATCH 1/2] dt-bindings: display: simple: Add Powertip
 PH800480T032-ZHC19 panel
Message-Id: <177314933302.2052605.7183990147602403836.b4-ty@linaro.org>
Date: Tue, 10 Mar 2026 14:28:53 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-Rspamd-Queue-Id: EA388252380
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273550-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,ravnborg.org,norik.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,gitlab.freedesktop.org:url,linaro.org:dkim,linaro.org:mid]
X-Rspamd-Action: no action

Hi,

On Tue, 17 Feb 2026 13:37:58 +0100, Florijan Plohl wrote:
> Add Powertip PH800480T032-ZHC19 7" LCD-TFT RGB panel compatible string.
> 
> 

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/2] dt-bindings: display: simple: Add Powertip PH800480T032-ZHC19 panel
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/eb2ed3de6ae9006a81e964ecd0ca86919b13f37d
[2/2] drm/panel: simple: Add Powertip PH800480T032-ZHC19 panel
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/4a3a4cb8198a5853e940cc6620c7b7c4e215a899

-- 
Neil


