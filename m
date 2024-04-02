Return-Path: <devicetree+bounces-55403-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0973C895140
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 13:02:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2A8E91C20AF5
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 11:02:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4909D79DBB;
	Tue,  2 Apr 2024 10:59:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=shruggie-ro.20230601.gappssmtp.com header.i=@shruggie-ro.20230601.gappssmtp.com header.b="2cB7ino1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D60D79B8A
	for <devicetree@vger.kernel.org>; Tue,  2 Apr 2024 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712055595; cv=none; b=shbgHNzibqNkBtmXxhu8r5Xn4e7EDRUAKILWG3PNc/YHKCzIMSTiJnE4/0aw7O61d+rR98o1eJ64GL5v4NGBUBnFG8A60DDYdrg7fnMf2kHIWfYttHqB0GZAAZHDm7umeiC+FY/+eYYXkq6vEbsjfCOwhtZuiJYCizPfeRsDFhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712055595; c=relaxed/simple;
	bh=M/JrPBvxetINCCou/eRacoJQbFxOmj7iZt9HrM/ekyw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=bL9LfDjSxfRSsTom/HorRvvdB7fFL9UDc6B99HfyFarpyS0eeQbWJLisWRmTrK/W2403uzf8/P7J8xf+nL+QL273A2bx6U3jp8Q+ptg3dFADyJaH+/Qg1QB+umqX9LCRrQqcWenEYnW3axXWqXKloA33NKcDi/8DSj4f1P04vYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=shruggie.ro; spf=pass smtp.mailfrom=shruggie.ro; dkim=pass (2048-bit key) header.d=shruggie-ro.20230601.gappssmtp.com header.i=@shruggie-ro.20230601.gappssmtp.com header.b=2cB7ino1; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=shruggie.ro
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=shruggie.ro
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-a44665605f3so559584166b.2
        for <devicetree@vger.kernel.org>; Tue, 02 Apr 2024 03:59:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=shruggie-ro.20230601.gappssmtp.com; s=20230601; t=1712055592; x=1712660392; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rXpPcJrb0/c9fFyOw1QyBw93a9H0uLAjKgu80GZ/xnA=;
        b=2cB7ino1xunuiX2uxi4eTHlfaOldOx7dn15w2CnilfHVrqvaZKYWc1Igh9sr6xqoFp
         0fFw5w0rcxGLyIAKsc7a/PURpMahscBq23c6+4mTCRXWWgVTtllx35qW2cPUspTugnr8
         UzXJ4Wb9yheyf/wSCT7OF7c2mwvEqg/QxsMpKcrmdMxmUXeqLSLYy0o5yY3wVup3/OSI
         37+6hQ1bdvVq3P6AIJr8chzhsqYiWvI7DjbZ7+mF+F4p2ZNeL29+uRnxs56Eh4if5mLt
         TDpF1sanmvqZvPngcRVXPdiRpIPuKjAxYlGgVSkeXrjNqg+FH1RcU/7/3ygm2ZSWpnmF
         4kHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712055592; x=1712660392;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rXpPcJrb0/c9fFyOw1QyBw93a9H0uLAjKgu80GZ/xnA=;
        b=IMQ/ft9t3pa6t7SlnWjJNdiC5p1xqA6PMygR0qyBHxqIGP2Wpx4zsly4Cz17Itwj8f
         +JyODjAQGlDJKQ7mTfBl1hLpGqrQGqP/6VUT+mxX60NL1d7wd/VXQMFdQMJRhZlNf2WM
         34JntmAaUaLePkfpayuiozpSs4p2Z+aUa2kSrsf33P9Risz70PMtN4exznec+AGDWy5M
         vhEurqHlWobvv7n1xh+DbEwExE81sadYA3Qf5cDOBCMOLcIXCMHTo3IQt0WsTkkMFlu9
         vtsVwmgUFyMwVGUX8gu2vC3NkPp4ED5SESkTasWX9e50R7E/tTgh6Uh19nsAODIcPwid
         u3/Q==
X-Forwarded-Encrypted: i=1; AJvYcCVznjLfz9Y1CotjRLFf0DErsSD/ch7JHCEGALrU/SO24u2xSOdbEFD1oK1X3jzK+O9i+OklXJ/gir5iUGCe4GpaDBepWNF90prmoQ==
X-Gm-Message-State: AOJu0Ywz6ct2Rlw4nIkx+zgWNyZw78u3+bvYGI0hhftUUP3oCJO+hUIM
	WOlGPppKNdV+VdH7aamukqLzwKPKHmWeWcAflzXNi5XDm3qjTJ35XzJaNd4ngxU=
X-Google-Smtp-Source: AGHT+IGGSoJIA97YOgNxCukuxcOn+f/JIPX2GrbHrot9689BBm4pd2Nezt74kHJqHep0H3+kkPIVRQ==
X-Received: by 2002:a17:906:d8e:b0:a4a:3557:6be8 with SMTP id m14-20020a1709060d8e00b00a4a35576be8mr7750846eji.53.1712055591722;
        Tue, 02 Apr 2024 03:59:51 -0700 (PDT)
Received: from localhost.localdomain ([188.27.131.149])
        by smtp.gmail.com with ESMTPSA id a17-20020a170906275100b00a4644397aa9sm6398780ejd.67.2024.04.02.03.59.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Apr 2024 03:59:51 -0700 (PDT)
From: Alexandru Ardelean <alex@shruggie.ro>
To: linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org
Cc: adrien.grassein@gmail.com,
	andrzej.hajda@intel.com,
	neil.armstrong@linaro.org,
	rfoss@kernel.org,
	Laurent.pinchart@ideasonboard.com,
	jonas@kwiboo.se,
	jernej.skrabec@gmail.com,
	airlied@gmail.com,
	daniel@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	stefan.eichenberger@toradex.com,
	francesco.dolcini@toradex.com,
	marius.muresan@mxt.ro,
	irina.muresan@mxt.ro,
	Alexandru Ardelean <alex@shruggie.ro>
Subject: [PATCH 2/2] dt-bindings: display: bridge: lt8912b: document 'lontium,pn-swap' property
Date: Tue,  2 Apr 2024 13:59:25 +0300
Message-ID: <20240402105925.905144-2-alex@shruggie.ro>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240402105925.905144-1-alex@shruggie.ro>
References: <20240402105925.905144-1-alex@shruggie.ro>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

On some HW designs, it's easier for the layout if the P/N pins are swapped.
The driver currently has a DT property to do that.

This change documents the 'lontium,pn-swap' property.

Signed-off-by: Alexandru Ardelean <alex@shruggie.ro>
---
 .../devicetree/bindings/display/bridge/lontium,lt8912b.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/lontium,lt8912b.yaml b/Documentation/devicetree/bindings/display/bridge/lontium,lt8912b.yaml
index 2cef252157985..3a804926b288a 100644
--- a/Documentation/devicetree/bindings/display/bridge/lontium,lt8912b.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/lontium,lt8912b.yaml
@@ -24,6 +24,12 @@ properties:
     maxItems: 1
     description: GPIO connected to active high RESET pin.
 
+  lontium,pn-swap:
+    description: Swap the polarities of the P/N pins in software.
+      On some HW designs, the layout is simplified if the P/N pins
+      are inverted.
+    type: boolean
+
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
 
-- 
2.44.0


