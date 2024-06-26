Return-Path: <devicetree+bounces-80394-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BB159187CC
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 18:46:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 170DB28B8EE
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 16:46:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DCE8190069;
	Wed, 26 Jun 2024 16:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="W3XHcb95"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6CA418FC7B
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 16:45:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719420334; cv=none; b=sKx6rqqvbQngVdRpROWwOPkNNnWLPq/8LA6QHmyvnIkt9GTpg53yLhcjPDgnOikwoq1K8w2X+Vnle4qsCxOAJjZ61laEieRSBisYqmxXPjoo/jMRo8SvWhYuziSArCEwxTdNAMhZBORXPV14qtzhFoCRe6WujJunrIXfqZO0mwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719420334; c=relaxed/simple;
	bh=MfF4I7nIq4LTPUDGrXqomoXh3+Ut9BT5spiR0JSuVqE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=GP2X1LhmkgMkAHxQL5iO1cGC/ATKwEwGyjHz7rH6mQlUqB33ZbE4p15wM7Cz1w6M160CBR0m4O8CSEFNCujnqsUNbCLEso+6qU4Z9wY+eN5VD+1Ds7E3TWAWeKpG6UUBNy2ev91VBHqyVgbKYdMNz8/6ZW2mj8/KoBDr8Ouyfzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=W3XHcb95; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-42561c16ffeso3318165e9.3
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 09:45:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719420328; x=1720025128; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wlOaZtVdd0CpZF25pGFNkZ1asY8XjIo6XmcoG9NHsQg=;
        b=W3XHcb95t1U867wAfvA0F8Y/U7XM61hzPBncp8wX/rnrXhOkQOtW/6VRE/bqCvPdSw
         AUJ4WxeXC3rx2f8/zCj336zyynNsi6n/n/0pwMFNQTAjeuA72iv1HVRpXp/OO0tpwLzY
         1/mq+XlBdbGMdTcBXmW92PLRTdex8fdN4me/dTw2NWk8mbpoc4rB+OS6EQMrvS4x76j3
         z15mPBapg0s8ft6wpN1d6NbV7FgkmIsw1ubRxe7Df9dyZJpB5wOxpft6gOHKAuXQkQHn
         UKJ8L1v8Y0yFKn3pkHSQ5zKapNOh67U30TL3nVD9ozY4boqRdHc2w4q2UyvBxzP7N68A
         88Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719420328; x=1720025128;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wlOaZtVdd0CpZF25pGFNkZ1asY8XjIo6XmcoG9NHsQg=;
        b=ZesgaUbayzYki5yGeQ3yoKYdwKN2HKQDHkxu4V4ui3i46zd+3AjydJ4rHhQfrbQNR8
         XTieRP4cz0Lvl3a4ko9AB/yqSoZmOgFhMMKSQblvSfZh0cq1bwR27GcnX5zYu4kEohmf
         4Tke4mzzK0lV4ds/if4gzv68KGEXc5oYPYFDK9K10b/0IHMR+3zzbnWyE425OKglT8JK
         buJQGvPW5FJGDpneDHLFd/gsYM6BW3HJLkob30zNwQgPftaDI6Vxf4Qmc42/VxSFsxgR
         RxlF6O45nUq+7GoywmotcKm21X5jCOzWN/i/pxmLYw6gvKtG9kt98eMSb3YKNS0o50wM
         +GDQ==
X-Forwarded-Encrypted: i=1; AJvYcCVQ7u6AgcGMjES8Oh10HGB+V+bJ4JmxgN/9IVSSsc4rENO0jrmcvYTa+zzbCGnuLV6I+B2v5vsu+AY4OBCYffWCoxdLY3un2OgY2w==
X-Gm-Message-State: AOJu0Yxfk7T+tW+g9hgCpvCchMBf4YYfAY7SnNBmkE6HXG463K+T/2+A
	Wm85sCrE9YQtJ4HL98C+CoAlWgWyGJsPIpijBLYDhpPd+CWYtle/EUBQeuIi/+k6mD1gXbPVcXh
	/ukI=
X-Google-Smtp-Source: AGHT+IEWju8KnTUHctzPYHWPozmNa5BV076n8oWeDx8hIxgYshz+W2PMOtZyyIMeTQcmp4dp313nTw==
X-Received: by 2002:a05:600c:16d4:b0:424:a406:ad52 with SMTP id 5b1f17b1804b1-424a406adb7mr32279735e9.19.1719420327933;
        Wed, 26 Jun 2024 09:45:27 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-424c825f752sm31945865e9.20.2024.06.26.09.45.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jun 2024 09:45:27 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Jessica Zhang <quic_jesszhan@quicinc.com>, 
 Sam Ravnborg <sam@ravnborg.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Jerome Brunet <jbrunet@baylibre.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, dri-devel@lists.freedesktop.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20240626142212.1341556-1-jbrunet@baylibre.com>
References: <20240626142212.1341556-1-jbrunet@baylibre.com>
Subject: Re: [PATCH v2 0/3] drm: panel: add support lincolntech LCD197
 panel
Message-Id: <171942032709.3067283.3359858132781303992.b4-ty@linaro.org>
Date: Wed, 26 Jun 2024 18:45:27 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13.0

Hi,

On Wed, 26 Jun 2024 16:22:06 +0200, Jerome Brunet wrote:
> This patchset adds support for the Lincolntech LCD197 1080x1920 DSI panel.
> 
> Changes since v1 [1]:
>  * Rebased on drm-misc-next
>  * Drop vendor prefix change (lincolntech recently added)
>  * Use mipi_dsi_dcs_*multi()
>  * Drop the shutdown callback
>  * Insert mipi_dsi_usleep_range() for _multi usage as suggested.
>  * Downcase hexadecimal values
> 
> [...]

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/3] dt-bindings: panel-simple-dsi: add lincoln LCD197 panel bindings
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/47d5c1934edcbda13d4fab4d7019b9ec8be0fe08
[2/3] drm/mipi-dsi: add mipi_dsi_usleep_range helper
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/3ebc76c424bc0f0768f5c346667e8f51217917ba
[3/3] drm/panel: add lincolntech lcd197 support
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/c5207ed4638314aca89afb45629902288efe5f4e

-- 
Neil


