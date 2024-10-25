Return-Path: <devicetree+bounces-115564-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 570039B006E
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 12:46:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 03FB61F22FAA
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 10:46:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98DF32003BC;
	Fri, 25 Oct 2024 10:46:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="F4wPASpT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B524B1FEFB6
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 10:46:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729853172; cv=none; b=s8dUpPJIiED1dDMhpq6T/fxWwf3fQSNRl8BKfxcz9Rv9ijn/O4LEPJ3RHl/eGfYIHP5Cz47XHA1LI/krNNL7rVQuW9pbhTDEahX/uTV/uD4dl9A2Ulf8yru2m7bhqMaEZ/v/VBPoczeUej+29Vs1DuwVt/A6O5KP/voG5p5rJLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729853172; c=relaxed/simple;
	bh=49/xKwp90A3nUA7tjT2wsW3FlqT957A383Rxrkqteo4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=iCWJV1bAiwTKhEn0RO2nTn6iuCpPYzxwl4xKfNZegVF1hwHgiyw8eqwT358FE+9dnsrluFiOu5T+aANyclRN/XajoJKE9NnhIIexC20cdb/uiY+BVkYiPDl/3YaGTrfnSpyYleRgF6Mr+0z/od8/ELAM/9xCENjFwc3ReX6n0fI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=F4wPASpT; arc=none smtp.client-ip=209.85.215.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pg1-f180.google.com with SMTP id 41be03b00d2f7-7edb3f93369so1035081a12.1
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 03:46:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1729853170; x=1730457970; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=x425G6dEYUoUHrFlVfLmksWom/x1l9U5kI5PEjY+YTY=;
        b=F4wPASpTRpww9QXezOSUTGHhiQakLAUMNhw2+Aj59S6w2gD4MVGnyJOSn3+pyFUD89
         z+qKkmXqOjHLAMNQDSYEEibzbB13RFfzCPPgrSw96APtvFVXDV6Aqyc+dPIcagQauOnv
         gryZKu589FyMkbCOzAdHlvGNndO5GwfbF6czM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729853170; x=1730457970;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x425G6dEYUoUHrFlVfLmksWom/x1l9U5kI5PEjY+YTY=;
        b=jUauEsR72ZkgQBx3J+ZynJfgJ7QlmvUxrhOD6BEICGKE8G22ctypMcLEjj8EXKKbN4
         EYkMN/kHdWBFfICP4fkDshm1MKH6/en0TJW82sMnVe0EhcqXRxLT6qYGppiD7UkrLz0c
         TUFq6RfUi4jB68eqTHtuOSB59s3nr7P22FHnwc+NPk/j08OjXQHFv7FtUD9JKzgrlQU9
         v4I5Z/pV9wERVpy8ambQoQr+RKfPtKIkoJbU5ZsvJ9xoNHCGgOwvhrMOEmsamyQvoLh7
         F4GmWwumqdmrcCBxiY3lW1eCppblyPhUcP9y1/t7zZHiGcdDZXWxWO7/i9Lfld4yjtCS
         aqBA==
X-Forwarded-Encrypted: i=1; AJvYcCWEvuoVGChOMmaVHjT5jJ11y614dNEZLMX63DDsdxr2wWYxWemu0lJsQDnl1KDIe1cq340/sYcoP8Yw@vger.kernel.org
X-Gm-Message-State: AOJu0YwOK+vl090JRLZaEgtvrZ5kg3ZTULopFRUU5BlQLN6mqUMKhl13
	TnPhdWXhajxdmFyvBkOk1FHKcr7pbUloS4L69WHq80d9nuV3BZ17fAccJ816ag==
X-Google-Smtp-Source: AGHT+IEMFtoeeLC2uQXYFxaWamey1ztw33rudPnMqbRU3YeS/y2Io32Jyg8kyssaMwHSNQ2DL5ZuzA==
X-Received: by 2002:a05:6a21:3942:b0:1d9:2bed:c7d8 with SMTP id adf61e73a8af0-1d978bd541cmr12258372637.43.1729853170180;
        Fri, 25 Oct 2024 03:46:10 -0700 (PDT)
Received: from fshao-p620.tpe.corp.google.com ([2401:fa00:1:10:ebe1:dd63:343d:8a4c])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72057a0d089sm829548b3a.99.2024.10.25.03.46.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Oct 2024 03:46:09 -0700 (PDT)
From: Fei Shao <fshao@chromium.org>
To: Mark Brown <broonie@kernel.org>
Cc: Fei Shao <fshao@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Steve Lee <steves.lee@maximintegrated.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-sound@vger.kernel.org
Subject: [PATCH 4/4] ASoC: dt-bindings: maxim,max98390: Document maxim,dsm_param_name property
Date: Fri, 25 Oct 2024 18:44:44 +0800
Message-ID: <20241025104548.1220076-5-fshao@chromium.org>
X-Mailer: git-send-email 2.47.0.163.g1226f6d8fa-goog
In-Reply-To: <20241025104548.1220076-1-fshao@chromium.org>
References: <20241025104548.1220076-1-fshao@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the missing "maxim,dsm_param_name" property in the binding.
This property specifies the customized DSM parameter binary name.

Signed-off-by: Fei Shao <fshao@chromium.org>
---

 Documentation/devicetree/bindings/sound/maxim,max98390.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/maxim,max98390.yaml b/Documentation/devicetree/bindings/sound/maxim,max98390.yaml
index 5bd235cf15e6..fa4749735070 100644
--- a/Documentation/devicetree/bindings/sound/maxim,max98390.yaml
+++ b/Documentation/devicetree/bindings/sound/maxim,max98390.yaml
@@ -32,6 +32,10 @@ properties:
     minimum: 1
     maximum: 8388607
 
+  maxim,dsm_param_name:
+    description: The DSM parameter binary name (e.g. dsm_param.bin).
+    $ref: /schemas/types.yaml#/definitions/string
+
   reset-gpios:
     maxItems: 1
 
-- 
2.47.0.163.g1226f6d8fa-goog


