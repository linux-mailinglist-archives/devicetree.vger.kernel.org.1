Return-Path: <devicetree+bounces-75839-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 28070908DF6
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2024 16:55:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CF2571F24239
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2024 14:55:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C53773A27E;
	Fri, 14 Jun 2024 14:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="bVChjnLq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5386228DC7
	for <devicetree@vger.kernel.org>; Fri, 14 Jun 2024 14:55:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718376933; cv=none; b=FQxqqtwkTyTrHRgdGtwXjMLIKBOnNFFxaTcHxSfsLip/THsxSB8H8h5Iv0KRDmabyqMZMPQ3KIiarzvwckQzIDil9mMoZDD1UiPhUgouxgwYUFhs5TfyUCtd1E9f0SPEBL+hGwStudWHqdDmfis4HvZ5YNSmon3TzKlwkr1+Oa4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718376933; c=relaxed/simple;
	bh=j7C9ndRbv2cuR6g3h/5nj0s71A1LC5LA+DFYILC5I6w=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=MtikKqMGuPx8kRruveu4Zph5UjKnX96QHAy3OWCy5Dh4v5i/np8sZ/p84VKwibtEhysxSROr0n49B+Es7V5qmgoNXHKdG6g0fufE0WlQbiVfLeuujeBnA61dBMCNRYU5ajV6nt0Z9Xfqdf9JkgshW0NWO+w5IjwExM4BbiKySZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=bVChjnLq; arc=none smtp.client-ip=209.85.215.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pg1-f176.google.com with SMTP id 41be03b00d2f7-6818eea9c3aso1824587a12.1
        for <devicetree@vger.kernel.org>; Fri, 14 Jun 2024 07:55:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1718376931; x=1718981731; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=N/AP/1V40+BXRCtoO+lC+4Br3T26yIArvUV1nzkpXog=;
        b=bVChjnLqGUQ9cMqPhhitild93hHbC0ytbwLCFa7M1Bggvp4PT+aPQGOwrd94IuQLwP
         CgI7HkVDBKDwx4WFccuku+XwlmsMQDPxWyBr0ypiwo/sYA47Hsf1k32Hnu3I6CBpCiqj
         Cwu/idhKkhvMZO3YO7usdBhj4HjxS3rZtHyfWSpq0Ij+5LElH/q3Y8FyGr8cGW/flaJi
         viBZerqR0c1EpMGo+RUFnm6YHEuyXjJxyolI8dIraEdHVbKWOk/n5NJQZpjFMfagP6hm
         0p4c4ikryAMobEOw6EGZjXFx5/CvmhfGtRIfVwAwxUt4ZsFlqshGlIOQqyxGrhIJAQD/
         0Mww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718376931; x=1718981731;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=N/AP/1V40+BXRCtoO+lC+4Br3T26yIArvUV1nzkpXog=;
        b=HMZdxCWnDJG8cZjphzsIkb3uRzSpM+ARN7SM1qGDdoRl4GXbpXgsBcr2t+xebibA+D
         9PMYmNrv/DA02ns+tfFBLkYOjTPQzBrpV18p+mtkOW03NouWVZ6WcMq1Q2RL0OBRUS2L
         X2nHQwr/COdCQYEFDf4dhN7hy0XKIp5aWC7iBtJYccseFmIXHMpATxEhvlAu8tsR8jJz
         5OrQCxg700DtPdlSgSm8MuQOTtKq2076dVZizWZsYYZ1VY6h7flX6ShcconGZ85H15JI
         Jh6UPz1ouLuCGewv/+8g18LvoV3peXknObSJ8736OpGFHny7ce+NL5zexjuppgMdlke6
         D7ag==
X-Forwarded-Encrypted: i=1; AJvYcCWNseinSkStTeHshNEKNYlhZua883oYo8Pe1xCJ1TVhn1csZIq0mQ9jfVfDTJmxcZJ3YzwPDNxfT8thI59+s+s3AzTEgh8KlV+uxw==
X-Gm-Message-State: AOJu0Yw1J8X7u5hbARWmNMGCDEUec8wmBHF0KQXNRYx8i1pZ6T6KFT3q
	FdBxHg5jfWRa0FHG4WlmvZXujCno0rUXQiFViikwP8XolUrBqCzM0SVoAobOVLo=
X-Google-Smtp-Source: AGHT+IF2LhG6H8q2Mm/Niu37KRm24BCPEwk6H9tjmqhMSFmBKJ18yVkB6S4FTD6erB7IdCv2lO6EhA==
X-Received: by 2002:a17:902:ec90:b0:1f8:69ed:cfe1 with SMTP id d9443c01a7336-1f869edd7c5mr19731945ad.53.1718376931373;
        Fri, 14 Jun 2024 07:55:31 -0700 (PDT)
Received: from lvzhaoxiong-KLVC-WXX9.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f855e739b7sm32914495ad.93.2024.06.14.07.55.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jun 2024 07:55:30 -0700 (PDT)
From: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
To: dmitry.torokhov@gmail.com,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	jikos@kernel.org,
	benjamin.tissoires@redhat.co,
	dianders@google.com,
	hsinyi@google.com
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Subject: [PATCH v3 2/4] dt-bindings: display: panel: Add compatible for kingdisplay-kd101ne3
Date: Fri, 14 Jun 2024 22:55:08 +0800
Message-Id: <20240614145510.22965-3-lvzhaoxiong@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20240614145510.22965-1-lvzhaoxiong@huaqin.corp-partner.google.com>
References: <20240614145510.22965-1-lvzhaoxiong@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

The kingdisplay-kd101ne3 is a 10.1" WXGA TFT-LCD panel with
jadard-jd9365da controller. Hence, we add a new compatible
with panel specific config.

Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
---
Chage since V3:

- 1. Abandon the V2 patch and add kingdisplay kd101ne3-40ti binding to 
-    jadard,jd9365da-h3.yaml again.

V2:https://lore.kernel.org/all/20240601084528.22502-2-lvzhaoxiong@huaqin.corp-partner.google.com/

Chage since V2:

-  Drop some properties that have already been defined in panel-common.
-  The header file 'dt-bindings/gpio/gpio.h' is not used, delete it

V1: https://lore.kernel.org/all/20240418081548.12160-2-lvzhaoxiong@huaqin.corp-partner.google.com/

---
 .../devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml    | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml b/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
index 41eb7fbf7715..6138d853a15b 100644
--- a/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
+++ b/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
@@ -19,6 +19,7 @@ properties:
           - chongzhou,cz101b4001
           - radxa,display-10hd-ad001
           - radxa,display-8hd-ad002
+          - kingdisplay,kd101ne3-40ti
       - const: jadard,jd9365da-h3
 
   reg: true
-- 
2.17.1


