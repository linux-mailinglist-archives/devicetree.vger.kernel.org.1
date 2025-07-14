Return-Path: <devicetree+bounces-196252-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F11FB04A73
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 00:21:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 93ACF7AF1BF
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 22:19:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A7572857CA;
	Mon, 14 Jul 2025 22:18:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=scandent.com header.i=@scandent.com header.b="ZZEeYIqB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B805327FB1E
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 22:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752531500; cv=none; b=dYiWDo7h77OVj3ix6CYbLyvk3YWJfKvY3jFKCbKaSN9FNlKEzKl9Jr24al6LR/K33Fw3hZO1l+BqL5IgkANXaPDW04DtoinmUp+m6hgKiTsiAnZrbQmnxyZ7bqEdD/UUQnpLRhG4kLRrdqvFiHb+xYqrjqgBx2RqiT3LGWgj/r8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752531500; c=relaxed/simple;
	bh=YLR0dTVZfAu5LlRsEWmmg9empbYzMLHU1znVEa4gBwA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BX6oBK4cyWJ37e0n1jxKjvK3ADb0xpMNC6uV2NQKd0A5Wt3offZwO4NOnKY4RB9bJ7YnFVuGBZ+Edl4DieRY8YBItSspw1ZGxoHXK5jbcIE2JA1LhLcUj3HFInt8xvX/K1TwaxIi8UdsnaF4FenSc41xo9PpsR/xVvRYv6ExGoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=scandent.com; spf=pass smtp.mailfrom=scandent.com; dkim=pass (2048-bit key) header.d=scandent.com header.i=@scandent.com header.b=ZZEeYIqB; arc=none smtp.client-ip=209.85.160.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=scandent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=scandent.com
Received: by mail-qt1-f178.google.com with SMTP id d75a77b69052e-4ab5e2ae630so22421951cf.3
        for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 15:18:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=scandent.com; s=google; t=1752531495; x=1753136295; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ouMuj11MjFvdwjVughz3WZjGk79DPdwniSFwLLOcIJQ=;
        b=ZZEeYIqBcQTgIfCa7EZ+2JZkzc697MgW21NmoGf8sMRzZrOZRb4ocHJ0P0QLcNs6At
         4XaJe1fw9lIALqCbV20LF2fc9FjG3kMovAunQxEDwPKS04u7tpTQOMh1US86UYpo38xp
         s6R1hLG9irtS1eTVbXFwWhYiUkr+46x1hhZYZnWGwRk0mw5RVu8sKmMLgZEOQhlQe/3I
         CB/+a1H4Y0vCRyg1i4gJTW4uiIWmFVFQJch6Ci8/I3yJrgGXXQ0557jWNds2bUmnjIKb
         ENIbvmVcB/azqRsBXLjEtMciQiRPe1uhF0NjE451AWsgbfhevdvG9id3gtnjesSwiyH7
         1i3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752531495; x=1753136295;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ouMuj11MjFvdwjVughz3WZjGk79DPdwniSFwLLOcIJQ=;
        b=StxUx5GmlR0zZ1vK5hx0i0v0MJMnytX5VBWL1kITyOXPatHr0EEva/OcTGyU65kjRi
         cl4c8yxR3dNdpHMyjbOYmvefq4S4ImDmX2XfINokTDS2wnyIhsCnnYkpEpoPFackV19v
         Ska6fMe1W4JlnHOuVU4vmsgq5PrOkjquQFkeL5CFCvHeQZVTEUkiSCNOXuR3JqLVWwLy
         HhGFS3HUdCFJf7Dhkhouc/n0bSCgo3AP0WhiFDYh0rU5MkOFDht4jpLbAEDl94xiy6O0
         VpmvJ7ypdWlr0PNRUoqrcteq5v57E8CU+vYBfoY0ov/tq82raWbFVjX5S3sX3N7VtHrz
         6/IQ==
X-Gm-Message-State: AOJu0YxB89V1a555V8P7yanlC8wCXF9NfblIMP4fxjCoXcL7mAB9vYAW
	NcGVPqNFFHidAcULMjvwDB9k97s9FS8QaHpy0qRyhyLABhD9TcUnKc75Gu4kDF+lC1Y=
X-Gm-Gg: ASbGncvxDCw4jtbR8M2t/GBzEsuG6p8XhzLBw4P5qlGq5XvY2/o6gD7b9AiyS/ebIua
	s0L6Z/mhyjDNlDv5Ommkv5Af4mBm7Yha+Evt54AwbD/YEeJFH4cONvNKkeCJuxBN9RMy0ElBfos
	cpxAwU4I74BtJu+Ldph5E9mOLXVlRpbMsvoVT1+B1Yw4yMXuuYQYO66CATlGNflfqMoxo//azd2
	Yg271Hha7Ul61MGmnqbNRc505wQOhBgoAv84RE4hBnS5reFxcx1rylm0SY18acjqEI7tM/OfOaz
	WvWTQlBjV/U0IRUlZX/gFV9MF/X2ysbToSWj6xabsc2kGLKCN7Tg6DsIhnGdCwr7MV4RnvjD2Kh
	E33hLaCtaPognmqoT/kDg+05BmDX0a6C2unR6m1srh9u52vQFNRdYh2jThfw=
X-Google-Smtp-Source: AGHT+IGSSrEk0sdISqge7G0djRIjWuuV30fns6i4QsiVDwWMYt0jZAnn6a3hXxiBvovc3VD+dN/cfQ==
X-Received: by 2002:ac8:6909:0:b0:4ab:80e0:955f with SMTP id d75a77b69052e-4ab80e09e16mr13247631cf.34.1752531495432;
        Mon, 14 Jul 2025 15:18:15 -0700 (PDT)
Received: from vserver (ool-44c5118c.dyn.optonline.net. [68.197.17.140])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4ab3a1ceae0sm37822021cf.25.2025.07.14.15.18.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Jul 2025 15:18:14 -0700 (PDT)
From: Richard Yao <richard@scandent.com>
To: dri-devel@lists.freedesktop.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Akshay Athalye <akshay@scandent.com>,
	Richard Yao <richard@scandent.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH v3 2/3] dt-bindings: ilitek-ili9881c: Add Tianxianwei TWX700100S0 support
Date: Mon, 14 Jul 2025 18:18:00 -0400
Message-ID: <20250714221804.25691-3-richard@scandent.com>
X-Mailer: git-send-email 2.50.0
In-Reply-To: <20250714221804.25691-1-richard@scandent.com>
References: <20250714221804.25691-1-richard@scandent.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document the compatible value for Tianxianwei TWX700100S0 panel.

Signed-off-by: Richard Yao <richard@scandent.com>
---
 .../devicetree/bindings/display/panel/ilitek,ili9881c.yaml       | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/panel/ilitek,ili9881c.yaml b/Documentation/devicetree/bindings/display/panel/ilitek,ili9881c.yaml
index baf5dfe5f5eb..28d5fff79992 100644
--- a/Documentation/devicetree/bindings/display/panel/ilitek,ili9881c.yaml
+++ b/Documentation/devicetree/bindings/display/panel/ilitek,ili9881c.yaml
@@ -21,6 +21,7 @@ properties:
           - feixin,k101-im2byl02
           - startek,kd050hdfia020
           - tdo,tl050hdv35
+          - tianxianwei,txw700100s0
           - wanchanglong,w552946aba
       - const: ilitek,ili9881c
 
-- 
2.50.0


