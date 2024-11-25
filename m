Return-Path: <devicetree+bounces-124177-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 81A1D9D7CEA
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 09:31:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2CF4CB226B1
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 08:31:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B30DF18D622;
	Mon, 25 Nov 2024 08:31:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="VM5qWAB7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D58A18C33C
	for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 08:31:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732523494; cv=none; b=B2N7wQSRgviNubvOy7OSqqis088/TTqD0Eguczn7kr5Szg/nYkC2bO+bgYYzIn/952AffYluKyVu3YZk+hw6afHuYo8gWXjnOzcWOgOVRKPf4oJVbK2i2E2wRWznmE51bmaMa6GKwVK71goFoohgc7vhJ/VNGC4xoBP0QvD7MS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732523494; c=relaxed/simple;
	bh=ktJPK16HT87IqUYNk6xW4DxEM+thEREPtW8kVjrlImY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=iR/7YNlKYu2bdFlqj/nrpysru/82tfYNOc1eBcHMMSMLYYyQBuzez2wdhCjkDhJK2r/ECFXrmD6RKVG6l5p/ibZcwVxnzzN3cHzHNQxjxxBM12geuGqfUQm9UE+xllhDWCaouuyLnPxdRnE6stR7Q8SREJ+7cfFtSDIoGMI6l6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=VM5qWAB7; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-2129fd7b1a5so24271355ad.1
        for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 00:31:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1732523492; x=1733128292; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=POCxcDAs1OPhEdapqaVu7R6Wv3Kn60gIQbQM6aiBFqA=;
        b=VM5qWAB78aQWuRBbdou8G1Lxim/wNWk60mcDRo60vJLSYcU2bsc3nTyJ6M8rRYc+rL
         P11itXOS/f3ubQpn7G3qFhp4Bwj3lBru6Hfirx0dR+e7VOOcens2t1IUh9eRpuh+bi4a
         5oq3Vkg6xqAdT9G/6zVRXYAgjrAo0+RvSEiao=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732523492; x=1733128292;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=POCxcDAs1OPhEdapqaVu7R6Wv3Kn60gIQbQM6aiBFqA=;
        b=pelQ2/xLawRxmUcCsPh8wDYfb32S58mZHzvp5dY5wEq0LWNoOIhmmiDxES3eRuGI8W
         iv/mblZ+FxhU2JrKW3Y36R0OVCJTVROm0fEOES3KUlfM2JBHBzr8TXbbayQKiU7ofTkh
         ZV5dyO5T4ioAh5R43QUSz9aOSPajAAhGwu+POUy05+bRkC1eO50+hqOOI+FGgktootgN
         B4xELlF09EbLaHPDWkP2T931q3qbvuMqLBGilj0B7OrtNT8eHspzDswl/YA/gPTiR2JD
         1z41liojuEh2ZdMAVsFNx8B4lZbDzsFDEBj7psa0xU1eFHEsTsq97st9i3b/jdXCgwAD
         DIZA==
X-Forwarded-Encrypted: i=1; AJvYcCU7fIJIlPsYDZc6ZsW1im/UMD5RZMJ3yWY+jlRNjYQl8OLRf0V5uktTiqBVOJd1Vc2DLHLTSP6XnIyd@vger.kernel.org
X-Gm-Message-State: AOJu0Yyvwr5SKVD0yj6ZnnbdAo8IiMl0XOfn6GDIBnyg/lp06/1V2G9o
	K6qZ4paeoOA8fpjBHQwbVF3zCT7zH3EAaquRJWf6jD73EfX3Oh7fCVShvACNBw==
X-Gm-Gg: ASbGncugtmXfOq+NAlkltr16X84mMe7DHTx7qz7Rr+4Dm1L60xebdQ6xxnGns4x839O
	VEtbNX4zdFiHaraBbaZEPv+VYl0eOKK3ZIVmkBuihS0FnD98g+zUlLLCH21E718WHz65jIkFrQj
	cvtSsRHXZmHiKet0x7yuuIW3rW0MYxB/fznXEUtqnlLTVjWsDpggx5+uEMwrUijnFkhTHRPSBJ2
	OePdkUETua6z/sVRzY/6h0Ojvx3Y6OxjmPb62u0+Bol7b7dZXGZZzU+bMkgVMmU63/s07Ud
X-Google-Smtp-Source: AGHT+IHSb4l363kSqeAiiJcrwoOGnozawSDBYK+oCcUIkkFt6/AtetpUnMMRtlfX7k/Ckh1KEU4bSg==
X-Received: by 2002:a17:902:f685:b0:20c:9326:559 with SMTP id d9443c01a7336-2129f240de5mr179893455ad.29.1732523492519;
        Mon, 25 Nov 2024 00:31:32 -0800 (PST)
Received: from lschyi-p920.tpe.corp.google.com ([2401:fa00:1:10:66a3:d18f:544f:227a])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2129dbfece2sm59090025ad.157.2024.11.25.00.31.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Nov 2024 00:31:32 -0800 (PST)
From: Sung-Chi Li <lschyi@chromium.org>
Date: Mon, 25 Nov 2024 16:31:17 +0800
Subject: [PATCH v2 2/2] dt-bindings: mfd: cros-ec: add properties for
 thermal cooling cells
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241125-extend_power_limit-v2-2-c3266a86e9b1@chromium.org>
References: <20241125-extend_power_limit-v2-0-c3266a86e9b1@chromium.org>
In-Reply-To: <20241125-extend_power_limit-v2-0-c3266a86e9b1@chromium.org>
To: Benson Leung <bleung@chromium.org>, Guenter Roeck <groeck@chromium.org>, 
 Sebastian Reichel <sre@kernel.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: chrome-platform@lists.linux.dev, linux-pm@vger.kernel.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Sung-Chi Li <lschyi@chromium.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1732523485; l=1439;
 i=lschyi@chromium.org; s=20241113; h=from:subject:message-id;
 bh=ktJPK16HT87IqUYNk6xW4DxEM+thEREPtW8kVjrlImY=;
 b=FpMKgfM5p9IzbPe7guqbp4Vjag/aqYKH4JxQjr2hWl48PN/wyJux8YdE/6fm8+fY0+2OLaW7c
 ohiglj075PQC4cCEHOJcL5SCqRAmB2aBhq+byXp6ug7DAA8KeGSGApQ
X-Developer-Key: i=lschyi@chromium.org; a=ed25519;
 pk=nE3PJlqSK35GdWfB4oVLOwi4njfaUZRhM66HGos9P6o=

A charger chip is connect to the ChromeOS Embedded Controller (EC).
When external power input into the system, current would go through the
charger chip, generating heat in the system. The EC supports limiting
the input current, thus reducing the generated heat. As a result, EC is
a simulated passive cooling device.

We cannot reuse the existing charge managing mechanism in the power
framework due to:

- The power framework requires the charger to expose its thermal status,
  which is not a supported functionality on EC.
- We need to use different thermal sensors to run thermal control,
  rather than using thermal sensor on the charger.

Add the property '#cooling-cells' bindings, such that thermal framework
can recognize cros_ec as a valid thermal cooling device.

Signed-off-by: Sung-Chi Li <lschyi@chromium.org>
---
 Documentation/devicetree/bindings/mfd/google,cros-ec.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml b/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
index aac8819bd00b..2b6f098057af 100644
--- a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
+++ b/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
@@ -96,6 +96,9 @@ properties:
   '#gpio-cells':
     const: 2
 
+  '#cooling-cells':
+    const: 2
+
   gpio-controller: true
 
   typec:

-- 
2.47.0.371.ga323438b13-goog


