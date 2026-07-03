Return-Path: <devicetree+bounces-319916-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id VRnNBw95R2pbYwAAu9opvQ
	(envelope-from <devicetree+bounces-319916-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 10:55:43 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C0D3700548
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 10:55:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linaro.org header.s=google header.b="GI/RmeVD";
	dmarc=pass (policy=none) header.from=linaro.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319916-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-319916-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3F434307AC75
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 08:42:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4AA50377EBC;
	Fri,  3 Jul 2026 08:42:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A639378803
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 08:42:23 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783068147; cv=none; b=Ucxvad0vygx+u/8DFV25DFhgoJQHwgRffYqNmdZTIkVQUvkqgItF2BLgPgWB6tCTnAFGoUuTCK1E2rzMtdGByPadpkLNt1sjDkwi7x7ckudfFsLcBWa7Z0AHhzUdhLwbFPS8ta0Et4jA8J8fMumF35uGFLWudfW2GqIme5VJBmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783068147; c=relaxed/simple;
	bh=BkhcnVftKdbXk7QyqJTW6ld5w2ThLg0FRlt/HdPNMfU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=eR1kRP23T1BZAJI9Gkz7DZm19nzsQLDMBw8TQTkNnN8NyTy49aw4ojTD0SCGB5naxK6H8G61K8qOVjFZsElsqdLrqTN6op70l2rUyGuKzZk3e4iRfq+tiyr8y0J3/aTqOGf6+E8QzND6nxRYRodZEnzSv0P3TaF4CMsAsgyAdIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GI/RmeVD; arc=none smtp.client-ip=209.85.128.46
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-493c733f15aso2819005e9.0
        for <devicetree@vger.kernel.org>; Fri, 03 Jul 2026 01:42:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1783068141; x=1783672941; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RUXYNloFl5fvS4Rg2TDnJjQxrpMnsYaeEPEFyyaGAnY=;
        b=GI/RmeVDmWj5772yjPFyHbHiDzZUpMhhACjbgkNrl1MuK/Ys8CXvtWsdoExuhuSVer
         GVx5IZpZueR2rH2rX+rm7sCPRTnZhMdWFvF0OXEqd40lYjivaz/0E7vemlz6zSE1zKiB
         V7d2V/rSQxAydsTS/gzgHPxRFz5Kz1oqWwewVWP3FDHWGsOMBO7Kji8sUt46CdwvMO06
         4Zi/K8shhwCwlavypuRDtSl/xc1zzGD0wUgmuQrTov8vZgTBgIzAouFFbrHw1Nj+5zEC
         YaFeVK7fCg07YXb/+kMBknKoqbPM7w0EbhJtZXYPneGv4MdteIDLxf5NTWd6ix+C39NO
         rgqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783068141; x=1783672941;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=RUXYNloFl5fvS4Rg2TDnJjQxrpMnsYaeEPEFyyaGAnY=;
        b=dE4xf6HnezCg8lUaDoVGhnEgfUVOBb/ZsUNOwz3qhFLt4cZe0PdeRz98eBE/69KAAG
         aErzlv6SU6j8zCBunL28qGE+Js6Gfif5ESL5/Vcwk6ZU++NFsaUUtYfFuxKKR8hake2x
         JhIeyYyBy7ZWaoqjeU/JFxzGfVuPcTr39Uz3M8Kajqk8pVbWachOGVsqMJGoU+UJuINh
         B8sbGg0R6sqB9Ij46WJlw4EGKZ6i3V/nuvbbUM9GwJwKX7GNrEAT7hzt0BYWsbikbTte
         6IG2VvdURNn9ktF2/tnTcuCOP7VFY8VP1zY/PsH4QxYXJZHWM8yM7qcn0+uhVZnx2hQV
         QA1w==
X-Forwarded-Encrypted: i=1; AFNElJ+rsQq2QPQv0HFgAd+8PQyYjaZphhVL4IQ5khIEQPaPsjZII1VL5+6362MQUsvryY15WgPDIzEbKxra@vger.kernel.org
X-Gm-Message-State: AOJu0Yzc5hnpxZxgi9e/24BmXyy40Uyeb5ldAWTXYQbvtykSkdfVYvjE
	Ln2VaywHRe1s5j3m2wLJ/HCxZFfxjKQpDCCRTkbLjcmg4q04Vgan/mEdURSGtR5pxkY=
X-Gm-Gg: AfdE7cntPB67V5VL+5V15m2thNVwEUyjH4wpGF9mVQefkKawjeuAsgapA3xIsw3msK4
	3KkXKOcsW/uKRpiK4ygr2UWY8/xtTMv9gNc06RTRj4m4VN/WA40cnYhHoMIvxS7w7Z8Ao96WtH5
	yAbDaOV8BqkHbNBu5ZK6QkpfZYy9extG5kkJWKwROf999xzx/SOSV2lnY2oyZphBc5yYuPi51t+
	DGIczxGxgng1zblU+nDid3cjZYTYvtp37TWs/cdZRBanzEwIb5ntvzc05fr/3SVz49DZy0VPnTk
	ikudXIQaF90g1VZYmmgSFbnp8nvFR/09fxY1KAk6GWGKYTiyBvWsB6lTQa9lCFg2u22dWYItYmP
	Je9zqFG1W2h6u2BqKYGkTyHjbvPCwEJ17IkdmMvsCtEgVSTiZSc/04MrbmxceYAKXqJBVQF2Rug
	016GkcNA0qSuZZ4KAHsXkDx+Zl9ykSJGvS9g==
X-Received: by 2002:a05:600d:c:b0:493:8391:919a with SMTP id 5b1f17b1804b1-493c2b433dbmr119940725e9.16.1783068140862;
        Fri, 03 Jul 2026 01:42:20 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:106d:1080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-493ccdab27dsm30001575e9.4.2026.07.03.01.42.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jul 2026 01:42:20 -0700 (PDT)
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
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 KancyJoe <kancy2333@outlook.com>
In-Reply-To: <20260519-topic-sm8650-ayaneo-pocket-s2-r63419-v4-0-b8929af5e951@linaro.org>
References: <20260519-topic-sm8650-ayaneo-pocket-s2-r63419-v4-0-b8929af5e951@linaro.org>
Subject: Re: [PATCH v4 0/2] drm: panel: support the R63419 based dual-DSI
 video mode Display Panels
Message-Id: <178306813951.3165305.5039889497151829172.b4-ty@b4>
Date: Fri, 03 Jul 2026 10:42:19 +0200
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
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-319916-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,glider.be,linaro.org];
	FORGED_SENDER(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_RECIPIENTS(0.00)[m:jesszhan0024@gmail.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:geert+renesas@glider.be,m:magnus.damm@gmail.com,m:neil.armstrong@linaro.org,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-renesas-soc@vger.kernel.org,m:dmitry.baryshkov@oss.qualcomm.com,m:kancy2333@outlook.com,m:krzk@kernel.org,m:conor@kernel.org,m:geert@glider.be,m:magnusdamm@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,oss.qualcomm.com,outlook.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[104.64.211.4:from];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:from_mime,linaro.org:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,vger.kernel.org:from_smtp,gitlab.freedesktop.org:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1C0D3700548

Hi,

On Tue, 19 May 2026 10:09:02 +0200, Neil Armstrong wrote:
> Add support for the Renesas 63419 based dual-DSI video mode
> Display Panels found in the Ayaneo gaming handled devices.

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/2] dt-bindings: display: panel: document the Renesas R63419 based dual-DSI video mode Display Panels
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/9c04ecc893f07d001e484e6c420af19a970f755c
[2/2] drm: panel: add support for the Renesas R63419 based dual-DSI video mode Display Panels
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/1190fc8d7b8a9cebea8dcbd2e544e43990ae81d0

-- 
Neil


