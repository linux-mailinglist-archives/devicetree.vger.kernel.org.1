Return-Path: <devicetree+bounces-83093-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D86C2927244
	for <lists+devicetree@lfdr.de>; Thu,  4 Jul 2024 10:56:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8D0E21F256C6
	for <lists+devicetree@lfdr.de>; Thu,  4 Jul 2024 08:56:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC08D1AAE27;
	Thu,  4 Jul 2024 08:56:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="CjHMUhDF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 290411AB501
	for <devicetree@vger.kernel.org>; Thu,  4 Jul 2024 08:56:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720083374; cv=none; b=hjNiNYysnSr99QoM5eeQ3reRnzWWISoT93qbxaqH6uNYhpW0rK/xtcdTaCIMfjnLEbyDK8kcYoBzepwf9H+bN7mdy8rnF/NiupL1ZHx7oRhURZTX/5bvMKakIrlnqnNcf7BWjQFdfPpBEiV3cmvKkeUhSJFCdKgR5Pu+LEBanyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720083374; c=relaxed/simple;
	bh=9rbo2ZRBzodp82ZciMVusZrttJF4hyK822ekrX/stwA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=lCJoMev8EXbKNG5qf5jHLKOHJQ7RVsBwwfsmjS7ou6LLpExxM0o1WyvTdvRyrf9bf9O1t91NInaGD+hQu5smKmsT/yucrAjPWQSZ4NOQMynzVi9OCFlCf/wHwOvnX6W4VUzbApfc1Dfg6MjaJJheR+kgOjhZ6PYLtcEF4kjOUSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=CjHMUhDF; arc=none smtp.client-ip=209.85.215.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pg1-f175.google.com with SMTP id 41be03b00d2f7-7276c331f78so1092307a12.0
        for <devicetree@vger.kernel.org>; Thu, 04 Jul 2024 01:56:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1720083372; x=1720688172; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=HU6hvuxuaxwFr3kU7mCJAsHrIdHyV6zPoRNePKzbdwk=;
        b=CjHMUhDFMiCl0cCEaveOfKfeICaIBlQ+68LCEsJEru/lPnuBeAGRFaeNIPqz3t3LhV
         vbBR8SiOOH9/anic31sNwBJKYuF1oGE/oGD2kK3EzuaV1cvZcXmWvgQVu8TFlwfKg7Wa
         Mu5/pGQye2PLeeU19tma4vJQKYPbj0xrTKBlhtTGLYH2wWL4b3U9Y8e02V3UYZNdXFL9
         UOaU4cK1sh2mXVF8FgXhv+V9le3Xf2irKGdetrxHYdY5SpPg0Z69zdDZNlyieveq/7Ic
         nkYjygU8da7cSZ166b9a7Y5Ccyshq1qoq8F5S67dLDfQVjVWvEQqKzi9cCWeF4zjfBL1
         1Iig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720083372; x=1720688172;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HU6hvuxuaxwFr3kU7mCJAsHrIdHyV6zPoRNePKzbdwk=;
        b=r/4GOCwG2pn1MWW9Jm6Z5BW/gUcsw3bZRKJeFQu/AHddIDsH5dD2ams7zLBrrPq3H7
         HoW6eZnjUOidS3xUYjdMXTgItO46WiAh9QyDxeZVn/7fd/9wrsZ8x7/Ie4whvo5ueMCo
         v2rm1+oPIUk9sWkooVCkM71bXjEASRmRUeUeys6QrccnF0kBVV+eAGYq4bq+0ZDjKo0Z
         TdDjON3ouM2Ekpsabuv5JOg/OdQepH4iAczASek34nXxU5mUA3CbteiBk2WthLsMe4Hz
         q4yQd6s7ItdQwfSMloLVHa5AGds1FzxYeFMVEfYGDdikyI9pU+8D9xrQfwHlrE1kPwAi
         eaJg==
X-Forwarded-Encrypted: i=1; AJvYcCXu0wVoGE+FaltofQcmgrUw6IH/0IEu7M9aNKtfqMPaEE+2MJR1AcfzUDJ7DwwFMUVcfWlMFTmKm4MJwDUYxy8HaVJqTkcs3XFe3w==
X-Gm-Message-State: AOJu0YzE6LhkbldsJnYzMnI9qbBmymrciPPW55e7C5r6rbf7JhQ6yed6
	0Q8ZeGBcU+CticFTsRie/U4ydt8ZaToBFHSWXAEUhvgzLj37MYSD0HqW4ZC1pbs=
X-Google-Smtp-Source: AGHT+IGpMVM87ZSRHOmVDMb+jxuKrOdkzBfFepNQcYRIQF1P/x7zZM5uBxlC8GAU8SWrioNhjW/vDw==
X-Received: by 2002:a17:90a:898e:b0:2c9:6abd:ca64 with SMTP id 98e67ed59e1d1-2c99f325530mr1191127a91.9.1720083372432;
        Thu, 04 Jul 2024 01:56:12 -0700 (PDT)
Received: from lvzhaoxiong-KLVC-WXX9.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2c99a97282csm962572a91.20.2024.07.04.01.56.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jul 2024 01:56:12 -0700 (PDT)
From: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
To: dmitry.torokhov@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	jikos@kernel.org,
	bentiss@kernel.org,
	linus.walleij@linaro.org,
	dianders@google.com,
	hsinyi@google.com
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Subject: [PATCH v1 1/2] dt-bindings: HID: i2c-hid: elan: Introduce Elan ekth6a12nay
Date: Thu,  4 Jul 2024 16:55:54 +0800
Message-Id: <20240704085555.11204-2-lvzhaoxiong@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20240704085555.11204-1-lvzhaoxiong@huaqin.corp-partner.google.com>
References: <20240704085555.11204-1-lvzhaoxiong@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

The Elan ekth6a12nay touch screen chip same as Elan eKTH6915 controller
has a reset gpio. The difference is that they have different
post_power_delay_ms.

Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
---
 Documentation/devicetree/bindings/input/elan,ekth6915.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/input/elan,ekth6915.yaml b/Documentation/devicetree/bindings/input/elan,ekth6915.yaml
index dc4ac41f2441..0bbf9dd7636e 100644
--- a/Documentation/devicetree/bindings/input/elan,ekth6915.yaml
+++ b/Documentation/devicetree/bindings/input/elan,ekth6915.yaml
@@ -20,6 +20,7 @@ properties:
   compatible:
     enum:
       - elan,ekth6915
+      - elan,ekth6a12nay
       - ilitek,ili2901
 
   reg:
-- 
2.17.1


