Return-Path: <devicetree+bounces-222494-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 12720BA98F6
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 16:26:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A6F7617A9C0
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 14:26:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC2F930C600;
	Mon, 29 Sep 2025 14:25:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WtMI5uC6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6A4B30C0E8
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 14:25:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759155927; cv=none; b=dDQtwBhvKi4Uzoh8LqXA71janSgY9lh/dYlW9HcBiLB9MfFJj85qBU96P1rRpqEIkknB2UKJbqtPCuxI/wF3eA5hySAmVSSUYOyVK4+WKRL/cR+rCpZrhFXva/3Kg5rulPcc30Ax2hOb5k6gylyc0IDcYJGUA5PFihxmm62jFSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759155927; c=relaxed/simple;
	bh=kebRgWgjU4+QFooisivlKuz8gUSdZe1BvseOgEZtkVM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=eHErfD6bW54aAMZb7na+dowfbXrQCs1L7oXXsypqUzO/R57SMgiVgYUkc2NGadnGXLyLa2JEDTZSVUMGQKmALJdbtZ08Iy1IzCeWN4bL+C9VJ3M5YWureDnLuuL1HYHHMTYzCyMvuz2DD9Y/Uj0zxlYEG8V5s2yN7HbLqpURJzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WtMI5uC6; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-362acd22c78so46370241fa.2
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 07:25:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759155924; x=1759760724; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Sh9DAofb5pc+fYQ7Puuw943vV9lmOx/AYaxuS09pAW8=;
        b=WtMI5uC6qCIVL+3o2yjaN6GakQS4dQ3ghYq8AoaubFoji8dLbIpE8VDiyg+FQErxwj
         rzKjiSrQkBkD3dlT9FoQASO3jYm4mKIR6ip+XqpuWbz1iSV9ZxKPdTEYPPNieLkpj3Zo
         pRg9UfsfHdGbPQEmaXuv7fet7SM87LTDGlMD3SbuDXXwz8h2BcENnPVAyFRvH41JDsnu
         5YaJy2PEMhL/ooWI9OjlKNejiSnB9uV1CrRXAfvTK7/3Pi0FwHLilpjeNkcJWfEm96S5
         qHU5ManElj/irIG+7Pi9FcFA16Uel9aWRW0k8BpytK2a5mCw9B42LAXZ4/2X6Ud3lfed
         wHfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759155924; x=1759760724;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Sh9DAofb5pc+fYQ7Puuw943vV9lmOx/AYaxuS09pAW8=;
        b=lGUggckdQyNvoRr4WeD3KsIAwLRmaqeHv13qsCJILDJQC6cF95DwKrFkBITiPUyfNq
         FtNj619ZjrJrNrm8j9b8fkg8tuXTsN0aAG+JZsCnjULgQvk196mdNP7bXlpPAevHDgqw
         ZGA7E/P97n32EZED8YT9crjYjYpDDQpRxsAGBiF+L9sr3P1/rqvN4j+zLZiEeduP3Tr/
         bzAy0j2/l5xlEInPXALe8PfdnqeCxTaeLjJcPxZIcZavDPQXS1vR9u3FYssbQPsj56dO
         zGCjbQGIP7H/mGDmBgksmvpQWFB+XjAaOEOL9GdvXEXGraWdCW8t8F3OfCUoc0FNsCNc
         dUqw==
X-Forwarded-Encrypted: i=1; AJvYcCXzrT1uwwEcjMO4QMfNSWo7mQZ73KSYCtwY//gQujPjuwFFwpqWS5ZfKQUqfHJ3/QZDgYfKTDFBqQg1@vger.kernel.org
X-Gm-Message-State: AOJu0Yyg2blYFGTqEft4/x9sV3esesFJh9GBVXCsLQKPoYVpKLIxylvf
	U3JOP36/QGzZ4GJE8zNCIg4pu0NSOiMVjmNOyB/9lvLjLqZBQj9xn6iw
X-Gm-Gg: ASbGncu3QyHc+Bmlndf5EuObj12/wp1vl5oRxV9bWBUAQDvPSJI55yg+K3iKRag7kVZ
	WxewqEnDHe8wPkKxidWJ/eV1ey4Q9mc+y/2kPkNPtP8maFPY2smdevAOkr3ZtFEPOQePXhtjl/j
	m2s7CLnTi90ul873FB1VeLmkm50gJu/Zl7SWEoe+aJIZKv1+00mSyZqt1GJTAYatc96BgOzwG/Y
	kxNim/e4BbHvYwaPS4FIV6lr+F6b6Ova6n9Jzvdmti12gQEvtN2AwjZFXVvCxxS8GZJaEdLB35R
	ENKzLjPeBhkorQvgw97fZz5aU7jTUp/4HpWk6hVoOYfF8q26e/zMGU5UC1BO4ajSKCyrrZPS7jb
	iihf8RUtvB/cbeA==
X-Google-Smtp-Source: AGHT+IHN0V6Vi0aPAu1d9d5AS3VfCD+ATABqrtHWzbt7i5cNrr6oVnwEDNT3Dh/t9jYOyViBE3w5uQ==
X-Received: by 2002:a2e:be15:0:b0:36a:6540:3ba3 with SMTP id 38308e7fff4ca-36f7f932d9amr49253481fa.39.1759155923254;
        Mon, 29 Sep 2025 07:25:23 -0700 (PDT)
Received: from xeon.. ([188.163.112.70])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3728c23e6c1sm13201001fa.52.2025.09.29.07.25.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Sep 2025 07:25:22 -0700 (PDT)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Douglas Anderson <dianders@chromium.org>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	Sam Ravnborg <sam@ravnborg.org>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-tegra@vger.kernel.org
Subject: [PATCH v1 4/8] dt-bindings: display: panel: document Samsung LTL106AL01 simple panel
Date: Mon, 29 Sep 2025 17:24:50 +0300
Message-ID: <20250929142455.24883-5-clamor95@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250929142455.24883-1-clamor95@gmail.com>
References: <20250929142455.24883-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document Samsung LTL106AL01 simple LVDS panel.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
index 5542c9229d54..93ddb3823d3d 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
@@ -268,6 +268,8 @@ properties:
       - rocktech,rk043fn48h
         # Samsung Electronics 10.1" WXGA (1280x800) TFT LCD panel
       - samsung,ltl101al01
+        # Samsung Electronics 10.6" FWXGA (1366x768) TFT LCD panel
+      - samsung,ltl106al01
         # Samsung Electronics 10.1" WSVGA TFT LCD panel
       - samsung,ltn101nt05
         # Satoz SAT050AT40H12R2 5.0" WVGA TFT LCD panel
-- 
2.48.1


