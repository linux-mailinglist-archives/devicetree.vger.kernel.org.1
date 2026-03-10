Return-Path: <devicetree+bounces-273549-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0B8vNisnsGnYgQIAu9opvQ
	(envelope-from <devicetree+bounces-273549-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:14:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 914B22518CC
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:14:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A63C831730B5
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 13:34:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0CC839DBF7;
	Tue, 10 Mar 2026 13:28:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dq8Tpjgv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EEF939DBC5
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773149334; cv=none; b=WEP+ae3HIWE3PDPJCnAAp5pgJn4qyB1k/fwjgdDzVJsSM/DXe/CpJIIHyzpfXjwXyLA23Js0S7gF/gvCSz2eXvI4gzqAwf+IL2EKXSFI4dvJnFe/HHXMmTAmWmcsK+ZiQx+FMo0EOu67LbnAOaONCa75M4UpNUnPW8f9Vs/ekeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773149334; c=relaxed/simple;
	bh=EWnh4f2+RIW4bcHVktrYqbSMYyn5qgnqLofinbb6yTc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=lC0ejLXEJVIIvmBBbx55LX4JMArjU0ly87n3288heTks6ZVKqV2YqanEit4mDUEWMFb7ICyG5L/PGvysQwwKfmesSXHIqKnu+C3Tv0PbhwyZfAKwb6UBc1Ig6rqHFwl++QbHN2nLNumXROyF16TihRmaj/CK5ecK3Gj0CgKinrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dq8Tpjgv; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-48534b59cf3so21538765e9.2
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 06:28:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773149332; x=1773754132; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R4oxDm5JlYl3LzaRTTBNVDKv5682/k8Rf+qU4xWLObU=;
        b=dq8TpjgvOXlf7KUO5308Up88omHXT2m1Qj8n2wookRiG1ZMWL0QKCI8Rc2aVngMRGa
         P+yPWM9NMimqcTnSY4001RCD4HIqTzFy5PIPZi3EYZLAjNJGxmbQdPtpZthjxQKtKmkj
         P0gnekoNIGo9EnRloV9BqUOaG53CugjltbRcDVDG11jJqzxvJd6xiWAMaEgGPDd5Dkqf
         4XaIZaVQtpHu3PZOFzsFmPF40VE1oIQZkIISUCtwiLKjPsPG7LwGXt1KSRLFZZcnUFZG
         8ubs7gpS+Mqjyn2SiOZHjC49kWr3lkebAANfuEAjRXi4ar0DSwIXqbF9cg8uyxTBZPaV
         eRWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773149332; x=1773754132;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=R4oxDm5JlYl3LzaRTTBNVDKv5682/k8Rf+qU4xWLObU=;
        b=qDv3QAXALWov+w4V2m8F84zf47woRuNoLwvBE/rAI8aGe04uRVwvUWk8ltOyVFHQve
         rEus4zQMTtwmQe74R9WDxZMs5RIA8R+S+yiaNvWZeAtQFQgj+qzeIXZq27dscJkLj+Kc
         tW5OPJYmP33VdOKLUq2hzvnhCufYSGwy/J2qt0+drLv51YJ0l+lvE6RW1hMMcDSzePwn
         Qyy4Jr2XyomrKD+5FVRksLV8VfvIExSpzNGrcBpWgBA3p6JwevogCClmXQL60itBIZbY
         fzfOTfMHkBEA7iRvfyM9w7RsSCOfOO9mAsmqeFnrOB+SOL6TXSUqg1Cja4ydC7HQPQv3
         hopQ==
X-Forwarded-Encrypted: i=1; AJvYcCUZhx5IUYJ3mZe6ocVRo783cEbOzoGPcCAhzl5LhhWBOJUTecWaof2DaRKlIx3dj6nQXkUR4mJqE/Jn@vger.kernel.org
X-Gm-Message-State: AOJu0YxMas79w0n8DKfhxtrJ/aKVcL0hvc2KOKXQnIdnWh0QBw7nRz5c
	a2H6wr6nlU2JIefGLnK5BlSbf2ZQJgR4K6+DxRE/1AeGBDdo2Thqb/l/n3gbuXI9sTZ91uXXqxj
	P1LF8
X-Gm-Gg: ATEYQzxyOV7PG3Y74TomWtZh5rqVbkj592WqK3PPtClQZvZanJT5iecezsa3UngJXs+
	3F5VspC8UIwDfNYUw8bLhxXUj/NMJ5PLYv403i6eL9v1eapJdJ/tAg74VFIN50cewKxr98uoBsS
	zqpF0biisD+mPVjwzBp6rMm7Yj6YJcSoH92DnMg+ben6IAfC1QTc3EHQHi35sOfojay2k69/l9M
	eephcey2Bz9Hyp4TLAvhsnEg5oHzWBWJJifxwWvx9BJMxPFclmolfnA6TY2QcDfWQEsJ3VZAPIJ
	T9BRAs2RyUG9DVcnB3hjLQYNrZF7328RAN21aabnV0++FfobAE/2xfa2k2v0Njjrnv6USc8kHXU
	dy3nZMed1LOWooCAiaWPhPxB1nlGejMtIihfdaxLW/lxRnXzxY330oVBUJEt0THR90/xRdxbPhZ
	1PAnbBSbNLlDTS9Vk+P2W3ahJk1u/SZ4fyakealmQl/lnw
X-Received: by 2002:a05:600c:a08b:b0:485:3fa9:358c with SMTP id 5b1f17b1804b1-4853fa943demr86976805e9.17.1773149331476;
        Tue, 10 Mar 2026 06:28:51 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:106d:1080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48541b6f6e6sm132464235e9.10.2026.03.10.06.28.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 06:28:51 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Jonathan Hunter <jonathanh@nvidia.com>, 
 Douglas Anderson <dianders@chromium.org>, Sam Ravnborg <sam@ravnborg.org>, 
 Svyatoslav Ryhel <clamor95@gmail.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-tegra@vger.kernel.org
In-Reply-To: <20251204060627.4727-1-clamor95@gmail.com>
References: <20251204060627.4727-1-clamor95@gmail.com>
Subject: Re: (subset) [PATCH v3 0/7 RESEND] Add support for panels found in
 various Tegra devices
Message-Id: <177314933067.2052605.5030496259952095113.b4-ty@linaro.org>
Date: Tue, 10 Mar 2026 14:28:50 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-Rspamd-Queue-Id: 914B22518CC
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
	TAGGED_FROM(0.00)[bounces-273549-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,nvidia.com,chromium.org,ravnborg.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,gitlab.freedesktop.org:url]
X-Rspamd-Action: no action

Hi,

On Thu, 04 Dec 2025 08:06:16 +0200, Svyatoslav Ryhel wrote:
> Add support for panels found in various Tegra30 and Tegra114 devices,
> including panels in Tegra Note 7, Surface RT, Surface 2 and Ideapad
> Yoga 11 T30.
> 

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/7] dt-bindings: display: panel: properly document LG LD070WX3 panel
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/3efe01ff79041fe64a6f6637191b69abf310fd0d
[2/7] gpu/drm: panel: add support for LG LD070WX3-SL01 MIPI DSI panel
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/3efe01ff79041fe64a6f6637191b69abf310fd0d
[4/7] dt-bindings: display: panel: document Samsung LTL106AL01 simple panel
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/3efe01ff79041fe64a6f6637191b69abf310fd0d
[5/7] gpu/drm: panel: simple-panel: add Samsung LTL106AL01 LVDS panel support
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/3efe01ff79041fe64a6f6637191b69abf310fd0d
[6/7] dt-bindings: display: panel: document Samsung LTL106HL02 MIPI DSI panel
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/3efe01ff79041fe64a6f6637191b69abf310fd0d
[7/7] gpu/drm: panel: add Samsung LTL106HL02 MIPI DSI panel driver
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/3efe01ff79041fe64a6f6637191b69abf310fd0d

-- 
Neil


