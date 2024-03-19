Return-Path: <devicetree+bounces-51688-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B45D7880111
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 16:49:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E53DE1C22122
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 15:49:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FE66657BA;
	Tue, 19 Mar 2024 15:49:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LEw8RiMv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66F0B1EEE8
	for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 15:49:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710863357; cv=none; b=g2KheW7vgQ9WU9C6KRA9q2s1ZnlgUK5RtqjWrq7cotCOkCzxKd3k6WpjLTRF7Za87MQJrpbk3kxmSXKcgbFSpCYh6PH+nc8nyPsvnSy+xquDmU+BNn7tssp7rGWHvF2l5WKiDGea1NOG5VPqLHp4fCH/9hrgaQIUSsW4OASSinc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710863357; c=relaxed/simple;
	bh=2pyYCimS//Qq6yBYv8hqGm6lMX6inWdKtpT/73DHq4o=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=fRaPGGAEXdeBVSXdMeXigqQqeIW07GBC4iK2//GHNqb0MG47lGUaQcfC/7TxJyv4hMXNG6JwTWf7WExxa+x//GnSR0KnKv9a+7kKSKWKUZdIRVeUKRKFgIZkvuTtaP7f8j8PoMn7iwRK+K71L3yLaPifjm9xnx7SsMuO2+QTibE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LEw8RiMv; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-41467d697a2so3679075e9.1
        for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 08:49:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710863354; x=1711468154; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ADtjyGn0eFpMcL5tcHRmk098Oppmok1FxnjO4slrBOM=;
        b=LEw8RiMvdDcBWTPLnVUdK8ELyXyE/23UjjnhNp+OpukaMJKXO4ZwyGoyV2bgw051Ft
         83ztXeLP6s4v+IRQdlx12l2hkxyyyZfj0v7th6Vt179yOdoYiKZp14t09kd4fuTyKnKa
         T6F6DTB/nD24RhuO3L1RGJTG/h6wAybvolK9n01CiT+FmJARu/AFfgvMFyra+JMXty3e
         dhVF2gfeiNMHvSyBQ0mZ4y11plAVMjgSNlHpUfPGO6ZExsfU45on6dnMewWkihYMHaQy
         iz5TxrkErQAjtMyH8w26zVxjNv4+LoRiIHETviM9h68Zt0XIw5gnJoBna/4StYr+wKGv
         b4Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710863354; x=1711468154;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ADtjyGn0eFpMcL5tcHRmk098Oppmok1FxnjO4slrBOM=;
        b=I6cbgtnTUKCNiASCT7HP3UWo5qsbJ147+bjnLDvGSwcy4Vcw6t82bEfXd67wZGcnnd
         svyx6gZvd5uWTfyXWx3yxbiE06KSZBesZRD0MlxFtqi2/5FC4uxOAknYq94fgC1r+Ovi
         m1bDCcaYNHoaGQdAH9nr/4tW8VjUyiIPMqNRr6A1BvTlie1vvXYFPBQmcTjEOvpHkqZh
         F7Ef6ELeuIBhaLgMcwVLRtjxsubCb0WJCp9mw0tSnzNqVuB2daRdJEROXUTF8j2kp+6T
         C868kuEJRwfhO0Qft7MvnbLjLFBxURLn5hgKeG5HIw17F7Szudn+cR+x5Sj6orZ6BxkM
         DNeg==
X-Forwarded-Encrypted: i=1; AJvYcCXJBnGf3HtYaEtIQDFr4pqDQW0ke00YfiC3mJMCFg/Ff8/I4miYUKvxeF6eWeUoc8eshV2ZlW5k5czALuDegvIOJKdGbBv0Sl1daA==
X-Gm-Message-State: AOJu0YxfOW+v9D6+I1CxJrg4a8/xWOm3h6YCuFOQVNiNo9Fl+6C2I5D9
	nrQCYZBt92PEAmSbtEep2ilBPwoIhksuNWK24DmShaPcf7bI/zJ3T/tnoRaZXKI=
X-Google-Smtp-Source: AGHT+IHrOnj4CaHghcEG+9l8AS5c9AIXpcElhpR8lUv76uiBOgUiYCWAhhNkUgilfTUHBoAMu3DNnA==
X-Received: by 2002:a05:600c:82c9:b0:413:e956:6893 with SMTP id eo9-20020a05600c82c900b00413e9566893mr14388206wmb.41.1710863353717;
        Tue, 19 Mar 2024 08:49:13 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id m9-20020a05600c3b0900b00413ebaf0055sm18742915wms.7.2024.03.19.08.49.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Mar 2024 08:49:13 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: quic_jesszhan@quicinc.com, sam@ravnborg.org, 
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, 
 airlied@gmail.com, daniel@ffwll.ch, robh@kernel.org, 
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
 thierry.reding@gmail.com, Nathan Morrisson <nmorrisson@phytec.com>
Cc: w.egorov@phytec.de, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 upstream@lists.phytec.de
In-Reply-To: <20240318161708.1415484-1-nmorrisson@phytec.com>
References: <20240318161708.1415484-1-nmorrisson@phytec.com>
Subject: Re: [PATCH 0/2] Add POWERTIP PH128800T006-ZHC01 panel
Message-Id: <171086335278.3926836.15356889496427917031.b4-ty@linaro.org>
Date: Tue, 19 Mar 2024 16:49:12 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.4

Hi,

On Mon, 18 Mar 2024 09:17:06 -0700, Nathan Morrisson wrote:
> Add the device tree bindings, timings, and compatible string for the
> POWERTIP PH128800T006-ZHC01 panel.
> 
> Nathan Morrisson (2):
>   dt-bindings: display: simple: Add POWERTIP PH128800T-006-ZHC01 panel
>   drm/panel: simple: Add POWERTIP PH128800T006-ZHC01 panel entry
> 
> [...]

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/2] dt-bindings: display: simple: Add POWERTIP PH128800T-006-ZHC01 panel
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/3b2304cfeddd141523cb50cc1a3ba7624b865011
[2/2] drm/panel: simple: Add POWERTIP PH128800T006-ZHC01 panel entry
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/fd6aa8f2dcb7236e511c1a58d82c2a178170e6ff

-- 
Neil


