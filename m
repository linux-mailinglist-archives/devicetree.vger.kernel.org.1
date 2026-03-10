Return-Path: <devicetree+bounces-273555-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UJlHH8MysGl2hAIAu9opvQ
	(envelope-from <devicetree+bounces-273555-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 16:03:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AD23252CE6
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 16:03:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 989DE324201E
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 13:35:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2953C3AB286;
	Tue, 10 Mar 2026 13:29:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OoK0N5Yk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8CA73A75B3
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:29:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773149343; cv=none; b=i3ftTrO6b82KLmcFVTf8wSxcdWTCDOV0ccq5wUipfhNIyLj3fsOyfpdPddha2HTuN5d9JnVsbckIH/5S3RXyiV99zMLvbalKTpudEQrEeQut/Qf7pJRdOXoBtuEP576by/2YwPJABE2Q2oifroGxDo1rFuXI8kdXnqlqOEGxcPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773149343; c=relaxed/simple;
	bh=MxLH9HOJAo2vgJWO0wXZjkSCDdY3gjegU3+RSMDwagI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=iQlrLR4LKKW3edcxEPPd16veqRvSHHqOMIDsnEB5b/ULi9DC5VbTIFv0UJUPbpQT2cGvppZbxEjV2u6t15j9DjLyDWzlHJPuMQOqVaO609wgLbuI4ukLSGU/HlukyaynlB0KMItY+CEaNhKn+gxl2ZdNhcJo/yy5g0ejnesXtJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OoK0N5Yk; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4852e9ca034so31510765e9.2
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 06:29:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773149340; x=1773754140; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8SlnpmqE+7GX79FgiT2u7obzSde1J7itNg26O/QF5e8=;
        b=OoK0N5YkGJylfvpDaSSmWdJiqhlxssjXyN7O5BrZSvPAg4vUF8yD29RuMTBJszanty
         2IY62O7dyh/2vIiW8lr+KKG8St6jT8eYIt5IfecFpEXd1xhj00a15LftVytRF+LKql1X
         zOxvTzM7k2sN5NwP4Y9/u1fGzoRQlj0I8kpJNOHfXysGcZ5ixEUOhCcP5hySEsUr2kkI
         //EPZ4tJK5CwBPDkD0vEHYMZgLt90pJA9Ux5SO1j2EhQTReeoJys+4GPx9OmlLOIYQhU
         cqngegPWUA7NJuQjyRUtvijtucp70BxxJNt7c2P8B8YuabPy+rSVNt6xx7kht6X9zTio
         00/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773149340; x=1773754140;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=8SlnpmqE+7GX79FgiT2u7obzSde1J7itNg26O/QF5e8=;
        b=oJ8VXIWmQ3gKUjqmFKO/4wfaHl1Tp440LHdjv62MOPA4nf8ZKGEaioXcopEGoTEJ5y
         Xil0PhTTXBnT0v/st44LCqY+0d7TYEl3dAWtP+QeH5qU9s2mTW6AjL568jd2tQ+qpTkB
         kItZTA4rESmBN/hP37EbRL/WQHd0dSvZcfD7EV0FVbwoXNyF0LR0UP6jY6NWfmhcN7mW
         BwyHJnPs0ap3c3IftyuFhIpWWBSzo8iwqTh+RquJQGDupYkZ/TEFZV5kC5VN75p/5ryh
         Vh4C4s/MUYSTUzeGsQYfjm1xhRbJE12yHkvL06XVNln2uqChgeQhN501xeAEhX4SSCkV
         qZbA==
X-Forwarded-Encrypted: i=1; AJvYcCUkid8Ji2VRdZBGqTlcz5Z+ZUJlPFxxcdnkQqWqK6xHqmupe2lqBe8QDbq4dbHdH4D/eg23NJl88zzN@vger.kernel.org
X-Gm-Message-State: AOJu0YyxQEwwMm9BrYDbwBiiUSIr6/Bb2NzLEbbR0LAll9wDvEVA387m
	at0I5j+xUS9MlSJRDw8Z9/l/3Db+vl+XqsU1VVMCo93By995f74OvewNC8vs6iqnIis=
X-Gm-Gg: ATEYQzxyllKMtFkeaohUeBBy8wa6JY0i+HxUdrLcDNPDuA4BNLW6h3sUg5KAPhqxdeu
	2W9nADXSVB3jJwStpscDGsBvrmeyjTLnb0hBusP0RY/DS8OOA3EMyE8bJICsPDTx13PjrJKQoiV
	lYhDjaI+ym35Q/TRFYR+9MvR80yJZsLgja6k9NBcW79SuPj7HSPupSJsuY/6lqbmHKLvoKa8x4h
	YN1c2ZtCHgVWBMNpZabN/mJRB4hXmR2aTrMhxbqdywLKTzYmiOcJRSeK4MlTbiyD6K/COBKjsY8
	Xxjx0gbLhZCKBjjHgH9KrJyEZfWo1HYj3b1P3v30t1QAXQywT8vMRe23v6Fa8okx+0JxtpWUZCQ
	FQq2g+BzFTJo1rW/2nFMxvAJCcQzGPAbLxYw67nh2u6+yU8DI4TbA3Ccn6uiFiM3kTZeGsD4DbK
	bTJTbSZfloiQi2EYPiFG5L65y4l2Qg+/PZ7yMiPUZNyohA
X-Received: by 2002:a05:600c:350e:b0:477:9b35:3e49 with SMTP id 5b1f17b1804b1-48526916bafmr228566465e9.3.1773149339840;
        Tue, 10 Mar 2026 06:28:59 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:106d:1080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48541b6f6e6sm132464235e9.10.2026.03.10.06.28.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 06:28:59 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jessica Zhang <jesszhan0024@gmail.com>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, Richard Acayan <mailingradian@gmail.com>
Cc: Yifei Zhan <yifei@zhan.science>
In-Reply-To: <20260310002606.16413-1-mailingradian@gmail.com>
References: <20260310002606.16413-1-mailingradian@gmail.com>
Subject: Re: (subset) [PATCH v3 0/5] Support for the Pixel 3a XL with the
 Tianma panel
Message-Id: <177314933906.2052605.4793016196479634687.b4-ty@linaro.org>
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
X-Rspamd-Queue-Id: 8AD23252CE6
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273555-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,ffwll.ch,linux.intel.com,suse.de,ravnborg.org,vger.kernel.org,lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,linaro.org:dkim,linaro.org:mid,gitlab.freedesktop.org:url]
X-Rspamd-Action: no action

Hi,

On Mon, 09 Mar 2026 20:26:01 -0400, Richard Acayan wrote:
> This expands Pixel 3a support to the Pixel 3a XL, starting with one of
> the panel variants. The Pixel 3a XL has two variants with panels from
> Samsung or from Tianma/Novatek.
> 
> This series depends on the IMX355 front camera devicetree patches
> (https://lore.kernel.org/r/20260217002738.133534-1-mailingradian@gmail.com).
> 
> [...]

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/5] dt-bindings: arm: qcom: document google,bonito-tianma board
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/8bcf6264b73f5cfa24e734c0027a69f207e26445
[2/5] dt-bindings: panel-simple-dsi: add nt37700f compatible
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/e0102c94ec12640a6b66037adc6e9ae5c9c0dc27
[3/5] drm/panel: Add Novatek/Tianma NT37700F panel
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/2db443036fe9daf170e5919face475307d486641

-- 
Neil


