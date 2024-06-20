Return-Path: <devicetree+bounces-77758-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B601C90FE40
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 10:05:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C04ADB2150B
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 08:05:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2BFC7C6D4;
	Thu, 20 Jun 2024 08:05:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="tyTmmk6T"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB5B61D543
	for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 08:05:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718870728; cv=none; b=hixUTEqo3DAobq2/ICJH+Nzl1QybvPZwWUq49WoQCqYV/BKqCQ6VEc1mZTfJGfisTvtUMt1Tim+EKNlXaCZJszTIgC8dzGgdgeG2q0dlxHDasVQnGFANerGlm9ZMaak/bkw9m5i9GepORL7ZWFJ5qf55QEGCBnGK307aWjg0hlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718870728; c=relaxed/simple;
	bh=3MS/fDinUzLcQBuQetJjFfyvmihQTLwKbO/j9gykQg0=;
	h=From:To:Cc:Subject:Date:Message-Id; b=ONsmhkXyiOTQO5PvLlOQDmP/+RXzxnnalQHRcPVNZRt3eqs0IxSqa2g3WPmkyqPOeWay937X5aOsj0ExKGz/LUaPUaNLZj+3fqVanakanYnYI5LTAjsfNc5cai4zeCcgkO7Bjh5Cnres2I5RHi8o+E/31AfNi1WvY1Vjv67cnSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=tyTmmk6T; arc=none smtp.client-ip=209.85.215.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pg1-f170.google.com with SMTP id 41be03b00d2f7-6eab07ae82bso419635a12.3
        for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 01:05:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1718870720; x=1719475520; darn=vger.kernel.org;
        h=message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gNCgvVlOOifZF9apQvtNhD1L3e/9RH0OWo8h9OSyfUg=;
        b=tyTmmk6TBAG+wjOBVN+iikRLmx2k5FPeNjlRsA8+UKT416noYpikryx4iUhTrblMDE
         4xDxbCcZXeHHXLMeOqOv5RYtBmwCjVdgRfs5cfnetylK9LajWUHJuxzZmLlGXYUKCCBv
         FaZFZpnBEGYmM++cgDlmk43k+I/bOBPxZ0WH0qW2Iux4U3Fa1oBZzBffHKFMoruM8ZDJ
         hrHWXpn4uI6WR6l0ka0q5M4CN505ThSmVUEa2LRSQC5X3umEApu4TU25UkqOPoJeu3z/
         4NllObYJ0UjekORqh8mz/4CWO2/lCAN7ef6dzLGK+iCrQajTugw7GmhXthWDi7BQ6fKv
         4R4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718870720; x=1719475520;
        h=message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gNCgvVlOOifZF9apQvtNhD1L3e/9RH0OWo8h9OSyfUg=;
        b=BIq9GNIESp7oz40H/R19/aqEQgGpzX2C5Aea8nvlwbCU6RLAxB4nFL3ckRMWoroWPS
         12I5kZ/CwAd+4hRSp/Q1npdDFy1tw9B8VUy+cFIP0jjd4kBogVf6aW6jCSfSxb2UhFES
         wDv8nftr2OZ73lTLxI/2Q8iUfV2JfeZolTA7ULFK5jX+xEe7PPy3FX9kCOf4WIGTgpyq
         vJHa/B955/ICBhEFT9GWeDhk2cGmPd2Japt9+GvzIndAQyWUvfazbHpJN/tSE9TdK1wg
         pCtoNLo7nBavA/dl1DSQCaU3PUR8eogUARg8Pk0oGHcjqdJsxWQPdLSw6kHFB0Hd1wCZ
         +fXQ==
X-Forwarded-Encrypted: i=1; AJvYcCUY61Wx3TQVbyrcq5WmOeQ6N0xfdoJjtXE6g7ihnwVxjn082D5GQxpekAvYOLhjHOKMYA4Z5NxaHOLWy3BlETaKVZ4r+/oHM5Dc7Q==
X-Gm-Message-State: AOJu0YzkuhLZtwGtesVQRZHTMz00PGtEZDzchn9GVMi7tvYDdjqyc7FR
	h/XH9YWYbGok9yym+uNjwK60JYUzoKtFuk3q8RGWeIwa3k+sqs8OyT5j6cw7/d4=
X-Google-Smtp-Source: AGHT+IE+Z7VKBsNNqQi0ACz9IVzfEKfuILFymkOWQsu8QUPWCLCQZXQCJyw1PEROQqPaIVEZCFiY4Q==
X-Received: by 2002:a05:6a20:af81:b0:1bc:bade:e8c with SMTP id adf61e73a8af0-1bcbb6626b2mr4070049637.51.1718870720115;
        Thu, 20 Jun 2024 01:05:20 -0700 (PDT)
Received: from lvzhaoxiong-KLVC-WXX9.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-705cc96c8c5sm11805889b3a.58.2024.06.20.01.05.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jun 2024 01:05:19 -0700 (PDT)
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
Subject: [PATCH v4 0/4] Add kd101ne3-40ti configuration in driver jd9365da
Date: Thu, 20 Jun 2024 16:05:05 +0800
Message-Id: <20240620080509.18504-1-lvzhaoxiong@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

This kingdisplay panel uses the jd9365da controller, so add it to 
panel-jadard-jd9365da-h3.c driver, but because the init_code and timing 
are different, some variables are added in struct jadard_panel_des to 
control it.

In addition, since sending init_code in the enable() function takes a long 
time, it is moved to the prepare() function.

Changes between V4 and V3:
- PATCH 1/4: Only move mipi_dsi_dcs_write_buffer from enable() function to 
- 	     prepare() function, and no longer use mipi_dsi_dcs_write_seq_multi.
- PATCH 2/4: Move positions to keep the list sorted.
- PATCH 3/4: Use mipi_dsi_msleep.
-            Adjust the ".clock" assignment format.
-            Adjust "compatible" positions to keep the list sorted.
- PATCH 4/4: No changes.
- Link to v3: https://lore.kernel.org/all/20240614145510.22965-1-lvzhaoxiong@huaqin.corp-partner.google.com/

Changes between V3 and V2:
- PATCH 1/4: Modify the init_code sending method
- PATCH 2/4: Add binding for kingdisplay-kd101ne3 in jadard,jd9365da-h3.yaml
- PATCH 3/4: Add compatibility for kingdisplay-kd101ne3 in panel-jadard-jd9365da-h3.c driver,
-            and add some variables to control timing.
- PATCH 4/4: Add the function of adjusting orientation.
- Link to v2: https://lore.kernel.org/all/20240601084528.22502-1-lvzhaoxiong@huaqin.corp-partner.google.com/

Changes between V2 and V1:
- PATCH 1/4: Delete some unnecessary information.
- PATCH 2/4: Use the new mipi_dsi_dcs_write_seq_multi() function, deleted some unnecessary functions.
- PATCH 3/4: Add compatible for Starry-er88577.
- PATCH 4/4: Add starry panel configuration in panel-kingdisplay-kd101ne3 driver.
- Link to v1: https://lore.kernel.org/all/20240418081548.12160-1-lvzhaoxiong@huaqin.corp-partner.google.com/

Zhaoxiong Lv (4):
  drm/panel: jd9365da: Modify the method of sending commands
  dt-bindings: display: panel: Add compatible for kingdisplay-kd101ne3
  drm/panel: jd9365da: Support for kd101ne3-40ti MIPI-DSI panel.
  drm/panel: jd9365da: Add the function of adjusting orientation

 .../display/panel/jadard,jd9365da-h3.yaml     |   1 +
 .../gpu/drm/panel/panel-jadard-jd9365da-h3.c  | 317 +++++++++++++++++-
 2 files changed, 304 insertions(+), 14 deletions(-)

-- 
2.17.1


