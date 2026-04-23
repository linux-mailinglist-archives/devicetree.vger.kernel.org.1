Return-Path: <devicetree+bounces-289796-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qDq0LBmU6mnQ0wIAu9opvQ
	(envelope-from <devicetree+bounces-289796-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 23 Apr 2026 23:50:17 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E6F75457FA5
	for <lists+devicetree@lfdr.de>; Thu, 23 Apr 2026 23:50:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9F60B3010D87
	for <lists+devicetree@lfdr.de>; Thu, 23 Apr 2026 21:50:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58BD9361DBF;
	Thu, 23 Apr 2026 21:50:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="WqJ9v8hC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8F9F29C35A
	for <devicetree@vger.kernel.org>; Thu, 23 Apr 2026 21:50:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776981014; cv=none; b=qyNCzcD/AJRWHyN0py+p45JyDzGAFpxRNUdJJRGib6cZYZ/mYFVxvRa/eUjfUAvFmw4oEDDR399TjT5jtfwbnY2TU+Pdo2G5ov67awNbovccUiY6B2L5aVylf2dqYkxSTuOkH+wN9Q9YqaMJE03blNgP86GwK/ZuHHiP/5FJBTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776981014; c=relaxed/simple;
	bh=LSRVDpEOamzQs0THbHW6eRIUrSeuuslIY0FvfldgvzA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NNUjCjJnYPnD87lZUXg4JC/qbdjnvOI9iOapWAtmbtvvOGXgEz5aqkq0z1sCYPBtJbP+XaBMOpwxw5wvbbKiKFAmMxUvHMYF8atOGXHKl/K4mlJlA1836TRqPY8fRHhVCQFj7MsPOE4i4gAA0Q1zt99Qd14OZUO6/xxAvZfkN7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=WqJ9v8hC; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-ba3115fe0d5so1353102366b.1
        for <devicetree@vger.kernel.org>; Thu, 23 Apr 2026 14:50:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1776981007; x=1777585807; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G1fiSCPkq0DML3luJPuVMp7dn80QlXb/vZ8XRZ+msWc=;
        b=WqJ9v8hCG+MuP9NTx7ASrbPEDvgw2mjcWm9XbCwM0MRIXL7LJl7rlhEUE2tgrBngKc
         0ouVF8BsX0hEDfZQPtwT6oEJYRvXOj6oXGZFRu1x+XfUE7kD3i0XP94Jakgai0n4QZGs
         qGj7T6mRiVei7q1It+OfObJS7eGxNeHOHGi3M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776981007; x=1777585807;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=G1fiSCPkq0DML3luJPuVMp7dn80QlXb/vZ8XRZ+msWc=;
        b=N3PpOrwSlfpuSa+I2psYmlbKokk7WJ/b9kvCQKV3IAzPSNjxeJT5aAAJ16nRwnR3zu
         nMOsibnMYlQBkQCuzHVOTxmjHNCd7tpY4NRbtI7NnvV3hrwgkrEUyt8m1f50bUBBVo8a
         lzXREGlKb1KB0ZJX5pyr/Tb0ZCSGmC9Pl+rcgYaE01FiYKAiOweVSGMqn8njKo3AyBO7
         tt1S4NprN373Tu4fKD5fhxlkKARTqD85poe5KKx/gUXKqhHSidCoIKSW0ej7Tj6gTZOZ
         fz5SeGRgF3UUggC7gi/xb8HLiuBrfWZ3FM06e/52Fy6S2yKIXM2e2lMST3pTk55ZsyRT
         XfxA==
X-Forwarded-Encrypted: i=1; AFNElJ8MyUyz60T4RibBdD4FdE0tfAd3LpD5qftmPVAEb1+uU74O8F6WSvXp66iYylsEd35ksQR+A1lik+vr@vger.kernel.org
X-Gm-Message-State: AOJu0YydKLnX0CcTw5nKKkx3mYS1QKe8UoVBHX92VPCx3aDV69HZWY+C
	VI1ohuT40C0va2AFQHm/izLy67WoVvcBO+c8XrfXNpBCi6ChjqtQ8BSorVK+hmpFz4VPbq3Ci/k
	K8N0CmQ==
X-Gm-Gg: AeBDieuZpySkHjws3QU1r6iSD6/D0VdZJ7xW53tbls9n2iJW9CTYcfM4LNjRchqp5Rb
	OzGzyQ0AYYwyxH5U/12aQKdIkhXLJ4hE7RMIiXKnWVYsXIbt+rmv/B/sTjXC0/8EilllZzfZ0T3
	EaXfCPQJ1oMzJBwg/p/vDYNwVrmPS++p8I3udilWKdT8zUsaDdtCTNgkKJrGzvsCew8ISflaeRx
	ZQZUUk6/WYQD4HJyW8+dxW/tyRSOyuwdMb6xTkcY6jUjDF69ZrSC8vwEtBwAyjIlKYe1KKFHtfh
	7rDELxG4IOtOWCJ+O1fMljvtgOsPNUwbfLe+IqXkUSjA0DOyaiXCJPwxMvzZouOoHoNTaUPd1Vx
	hVPfLMmw7RmU1cda545hy2mRuPmiSiQ4qyE2E7rf+lQJ/6SHR4+VuGNhg6BxmTlMbTrswE0wpfB
	jIQowdRWy5s40AMAiMCk1hDs/Wk9pHRSz5M5qFuv2ZFf3SSYHffqEYTpUWplt2bNXakWkNaz7p
X-Received: by 2002:a17:907:7241:b0:ba7:79ef:8694 with SMTP id a640c23a62f3a-ba779ef8ea0mr955166366b.14.1776981007259;
        Thu, 23 Apr 2026 14:50:07 -0700 (PDT)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com. [209.85.221.53])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ba4555398f8sm700177266b.59.2026.04.23.14.50.05
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Apr 2026 14:50:06 -0700 (PDT)
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-441209fb77eso2474986f8f.1
        for <devicetree@vger.kernel.org>; Thu, 23 Apr 2026 14:50:05 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ/SkrbvDvAxEwb0mWMNzefsPsyu5uEx3L+E6J1c7Rcqn0oOJDdXDFrT1o3k7SIjl497eIZ1xIJlBK5Z@vger.kernel.org
X-Received: by 2002:a05:6000:208a:b0:43e:531f:720c with SMTP id
 ffacd0b85a97d-43fe407383cmr43673395f8f.11.1776981004287; Thu, 23 Apr 2026
 14:50:04 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260423-manta-display-v1-0-196f80c5673a@timmermann.space> <20260423-manta-display-v1-2-196f80c5673a@timmermann.space>
In-Reply-To: <20260423-manta-display-v1-2-196f80c5673a@timmermann.space>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 23 Apr 2026 14:49:53 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VNvPtG_f1W942SKJfM4ptK8Wvd-nZs4geBCG3bO_A0BA@mail.gmail.com>
X-Gm-Features: AQROBzBZ12eQ8JPtoHklunZA7baGhpheKR11CnReOtZ62TdnznxZp2PUusIRrN4
Message-ID: <CAD=FV=VNvPtG_f1W942SKJfM4ptK8Wvd-nZs4geBCG3bO_A0BA@mail.gmail.com>
Subject: Re: [PATCH 2/5] drm/panel-edp: Add support for Samsung LTL101DL02-002 panel
To: Lukas Timmermann <linux@timmermann.space>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <jesszhan0024@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Sylwester Nawrocki <s.nawrocki@samsung.com>, 
	Chanwoo Choi <cw00.choi@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	Alexandre Marquet <tb@a-marquet.fr>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-289796-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[linaro.org,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,ravnborg.org,samsung.com,baylibre.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,a-marquet.fr];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[chromium.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dianders@chromium.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: E6F75457FA5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi,

On Thu, Apr 23, 2026 at 2:15=E2=80=AFPM Lukas Timmermann <linux@timmermann.=
space> wrote:
>
> From: Alexandre Marquet <tb@a-marquet.fr>
>
> Add a panel entry for the Samsung LTL101DL02-002 panel, as found in
> Samsung Manta (Google Nexus 10).
>
> Signed-off-by: Alexandre Marquet <tb@a-marquet.fr>
> Signed-off-by: Lukas Timmermann <linux@timmermann.space>
> ---
>  drivers/gpu/drm/panel/panel-edp.c | 31 +++++++++++++++++++++++++++++++
>  1 file changed, 31 insertions(+)

Adding new panels like this is discouraged these days. Is there a
reason you can't use the generic "edp-panel" compatible? I know that
the exynos5 driver is pretty old, but a quick glance shows that it's
based on the same analogix-dp core that "rockchip,analogix-dp" is, and
that seems to have support for aux-bus...

-Doug

