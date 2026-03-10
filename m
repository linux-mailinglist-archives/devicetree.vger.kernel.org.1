Return-Path: <devicetree+bounces-273556-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8IRwLnAnsGnOggIAu9opvQ
	(envelope-from <devicetree+bounces-273556-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:15:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3520325198D
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:15:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2BEA131DF63D
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 13:35:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C26D33AC0D8;
	Tue, 10 Mar 2026 13:29:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bKeT0lBO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 691D73AA509
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:29:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773149343; cv=none; b=rJZEaVTWRKk+g4HNQIhiEkvwxU8qixhMMI8OALglFt/vIUdLYt+5SYMqXWut5tu4ZvCfLmmh1XqqeTiapUPqBI8vpcSHCZoWcCXfY9crhdECrwowXeh/FGHi1syBiEYTtySuf5lJuF45j4+viNnLtZB5p2QAY0bCiTaZ7HmQLgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773149343; c=relaxed/simple;
	bh=qNzx24Rcp4nvtrHYU9b10mekFUITnnmsmSyJES+hTRo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=SJ4leOY/crN5LN0EfBonf1C0X4juRcKhMR6g455rlsWgHZHBGPICCBoO8PlZ1C47DlJyzdIC2M2N1DAPdw1ZNtF1PWYTSUThI+npbQfpg23fbay38aqxKMF/VEuz5njpxJSN9BNj2cLVSZ55PZMZY7ilaw7GZSH2tqHW3MDZDQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bKeT0lBO; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4853510b4f3so37553235e9.0
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 06:29:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773149341; x=1773754141; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EPtBxF+86T0dqDPtLLVFLx4qw1I0Al0hvlQRBYdfDUI=;
        b=bKeT0lBOJLV9ZW8tQc4OpToSuzU5jfJvkx74DhqAlpKaCC1FFeonSpjBjrqqiMN6Lv
         NXKgY6WLfzNrGLaOYPoJ+4gAFj4s8/rNmxQfod2RAKgW9DxVVmujFXA1WOd84ei+SI13
         7B5LvcfUgnCsJPHLurVptWXWUOcDBpxm1Uuow6xOCp/ZUi49GhEolGqBi0HE72Z+pxNr
         8XGJ+cZ2oq2bm9r/Whqi9obwguGlqLxPiY3D4vkztpUTKqT7WcEU+uECASf+1iue31qx
         FnA49nYLxMPHNDgGDKtXGp1MwDLgUlnOh1j5Zf+4SBrYTvNIHDXXf6K4ZSPPN8oHnzNj
         xBFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773149341; x=1773754141;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=EPtBxF+86T0dqDPtLLVFLx4qw1I0Al0hvlQRBYdfDUI=;
        b=FARqIopZB9Pj592BT4yfSJMq6grhge6bJRomzaI7qajoXlFZhSVrVzzpKm+HAD0ynd
         Ov+fqnJ01XaOFrZbwyRzk8FVVttnDXKsapdPbNIfaMm8fHAmRoCp4MQY+aSX8eiK00Gm
         Zzo0GRUkekLsFjCnJSl5Va8K+sgE9xC2+vHqk1D5GI23nXvPDMvzdnCWAbRV85LxtJLd
         +rXSuVt64HMYAygvmj6XflYfY9p+/S7utDWFcLSoeSFxA/jCn1wCXGslkzSUG9Hj/zs5
         ExiUp9/Rg0YA7Axzm+bSdNWssBhl4WFgeZWsv1mrbe/ioRbKZROwAownvbTIq/i31d8g
         Dgrw==
X-Forwarded-Encrypted: i=1; AJvYcCV9vxywZe4BfK72YKUJhjKYBiGvXf4hVkoqESUPFge22+ezuAjz5IzZrHTtBNVo5CcysqUhssi3njGj@vger.kernel.org
X-Gm-Message-State: AOJu0YzO8/eXX4MMyjeT8WxrkwxYpsDELo5680eIlXTrUtzsEYFZuKPI
	kejwWZH7VhU6dT2c5jU+4aUWJXVKK9BU7hKheHG9GPQoaENkL1rHisSGeqiJsz7vQQDXjH8xwBg
	ymTID
X-Gm-Gg: ATEYQzyljXCSuWUheO6XkRm2VrE+jraCf17yBasnujQtA3m/x3BVwhUPliib29rr0VB
	DilV6mk9aFQzALwcT7HNkl3SMfuQIiOUdaO3+HSfrETbZGuOhARDZIunD+QFDOXH97A/k4Whv7E
	TNNcr/+SN7XyGdgdVsyG2I0fE/RQY42sW5zYTW3ZRRJbhgL89GPrl54TYZQPlNcZ38eeXI81EdL
	1ak9wIiw8W32dtNSJlVQm8ysR26K6XMT8y7NQmrPd8RFycd/+4n3oN6RFStqk+j0Cm/CI0tojo4
	XLv9B00gSqub2VWMiJNMgNptR3PmZehA94XqSnKs+gGSq4eE6Q9Rf27tEgprWqejLHs1KKORJI3
	IG19LfPGlC4Vwd6X9qPQkhdIMQKIOISg6FpavMHUCEf+cSVVygo8RCJPs/Zqnz+mmoEKxiHXMZK
	KUkTikF2QU3RIZ7QA4hDLhpzQ4z9kIJHNzuHpMtzh9bpHd
X-Received: by 2002:a05:600c:4e45:b0:485:4100:1eee with SMTP id 5b1f17b1804b1-485410020ffmr68416835e9.24.1773149340631;
        Tue, 10 Mar 2026 06:29:00 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:106d:1080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48541b6f6e6sm132464235e9.10.2026.03.10.06.28.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 06:29:00 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Svyatoslav Ryhel <clamor95@gmail.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20260223064630.12720-1-clamor95@gmail.com>
References: <20260223064630.12720-1-clamor95@gmail.com>
Subject: Re: [PATCH v2 0/2] gpu/drm: panel: add support for DSI panel used
 in Motorola Atrix 4G and Droid X2
Message-Id: <177314933996.2052605.12299517386390303458.b4-ty@linaro.org>
Date: Tue, 10 Mar 2026 14:28:59 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-Rspamd-Queue-Id: 3520325198D
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
	TAGGED_FROM(0.00)[bounces-273556-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
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

On Mon, 23 Feb 2026 08:46:28 +0200, Svyatoslav Ryhel wrote:
> Add support for the DSI LCD panel module found in Motorola Atrix 4G or
> Droid X2 smartphones. Exact panel vendor and model are unknown hence panel
> uses generic compatible based on board where it is used. The panel has a
> 540x960 resolution with 24 bit RGB per pixel.
> 

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/2] dt-bindings: display: panel: document Atrix 4G and Droid X2 DSI panel
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/6b263e50c036ab5a366142fb050e287d50d404b6
[2/2] gpu/drm: panel: add support for DSI panel used in Motorola Atrix 4G and Droid X2
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/a187482243cac177d04ce9b5571acc76ab800e9b

-- 
Neil


