Return-Path: <devicetree+bounces-18672-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 46E267F7999
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 17:42:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 771AA1C20E7A
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 16:42:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC34233CDA;
	Fri, 24 Nov 2023 16:42:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Wvr3re2x"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E50719A6
	for <devicetree@vger.kernel.org>; Fri, 24 Nov 2023 08:42:47 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-4083f613275so15595005e9.2
        for <devicetree@vger.kernel.org>; Fri, 24 Nov 2023 08:42:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1700844166; x=1701448966; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nY57yW8jqPx4DCjz4gafCo99TqRgCQishv/BZqsXq+M=;
        b=Wvr3re2xvbKnzDYL/dG3QRaJCPSfCQe4K0zb6Ido4yJ6oZD34H4ig7OUsHVW5VkFl0
         ocQ972xInpVZcp6LwGcrhmftlRkqcaz+Gn9ejaL4Ii5Mfd9c0UwAlbqmShiODcfX/XgH
         mIc/2kU81QmI92bDG2TxSy8U4dDn6QEjZIpI8gOyaRGi9VirzpKV2to6m7Us/c4ScIzd
         jq5TTeqepGte+Q01zd/Po80ELNodwifNWB/YxY0Y4lSiTqJQ9kCKQ+R+q83OArwT3PE0
         d4ojJjfGwvhW/CwyIQEVHgHzKiEGNGjASKHyAdQZiZGUTR6CZetfk4/8WdwRa39L+p12
         hyzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700844166; x=1701448966;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nY57yW8jqPx4DCjz4gafCo99TqRgCQishv/BZqsXq+M=;
        b=SpZfcOBOlJtMtoBIM54SNKX5xeJ+CbFojuFlXT9zUOBcZlmpHdXZLjmtCiZlay7YsS
         pP4aFzUT3ruVH2nkWOoIGfctpnhdXmIGxDWopPQGRMlZqoLMgDBStkYym+rsCZAB6vaA
         oMFUGIptds8jxLmu0ObvlqhFWbuZLQXkFeq9Ryvfv9CmlqHLm/RCVpc/b/mx3qMXGNAp
         SpENitwxGOKJOHP3YbHLlLY1fgyZIl7n8imlOLlU630cFOl9tJsBRSnc25oIx5o6zXK+
         pDR5EN47maQgq8h8LS1M/8CKhZX3RGNmTezfuuucnnb2/6Z+KcfGdrzlPt5o+xrRTzGP
         z1YA==
X-Gm-Message-State: AOJu0YzfmMVVnvPxccJ0OQmiHSpjBs6RUFKo7xTnT/ki3N7O2XjtXM+d
	WS2SL3iXzXQR6PM4O2nTdph7tA==
X-Google-Smtp-Source: AGHT+IF0qtFjt0i/sxwkQJ9BDFSUDAmlZ1vNck5maPD+WnShRNQ0koLnOjpHlDBfcr97NsaHGHftKA==
X-Received: by 2002:a05:600c:1f93:b0:401:2ee0:7558 with SMTP id je19-20020a05600c1f9300b004012ee07558mr3057188wmb.32.1700844165899;
        Fri, 24 Nov 2023 08:42:45 -0800 (PST)
Received: from toaster.baylibre.com ([2a01:e0a:3c5:5fb1:1243:6910:fe68:2de5])
        by smtp.googlemail.com with ESMTPSA id r4-20020a05600c458400b0040648217f4fsm6159082wmo.39.2023.11.24.08.42.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Nov 2023 08:42:45 -0800 (PST)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Jagan Teki <jagan@amarulasolutions.com>, 
 Nicolas Belin <nbelin@baylibre.com>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Remi Pommarel <repk@triplefau.lt>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org, 
 linux-phy@lists.infradead.org, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor.dooley@microchip.com>, 
 "Lukas F. Hartmann" <lukas@mntre.com>
In-Reply-To: <20231124-amlogic-v6-4-upstream-dsi-ccf-vim3-v9-0-95256ed139e6@linaro.org>
References: <20231124-amlogic-v6-4-upstream-dsi-ccf-vim3-v9-0-95256ed139e6@linaro.org>
Subject: Re: (subset) [PATCH v9 00/12] drm/meson: add support for MIPI DSI
 Display
Message-Id: <170084416459.2546450.3587219733392523958.b4-ty@baylibre.com>
Date: Fri, 24 Nov 2023 17:42:44 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.4

Applied to clk-meson (v6.8/drivers), thanks!

[01/12] dt-bindings: clk: g12a-clkc: add CTS_ENCL clock ids
        https://github.com/BayLibre/clk-meson/commit/bd5ef3f21d17
[06/12] clk: meson: g12a: add CTS_ENCL & CTS_ENCL_SEL clocks
        https://github.com/BayLibre/clk-meson/commit/5de4e8353e32

Best regards,
--
Jerome


