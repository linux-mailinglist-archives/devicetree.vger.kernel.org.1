Return-Path: <devicetree+bounces-87999-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8250493BCD3
	for <lists+devicetree@lfdr.de>; Thu, 25 Jul 2024 09:06:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 389421F21DB6
	for <lists+devicetree@lfdr.de>; Thu, 25 Jul 2024 07:06:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13E9316EC0E;
	Thu, 25 Jul 2024 07:06:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WxfjqiOy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3529516DC1B
	for <devicetree@vger.kernel.org>; Thu, 25 Jul 2024 07:06:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721891163; cv=none; b=Y/KkilNAqFXaW0n5h+ieREb1R6Hqi6eUtWj5dGbmTdOEZjLE9sNs9fqxDknFC750gyr3Y/w5FtmWJo78q4qOFzoZYUg6+GDg0CWGwoq18IN+GpuJtpfeaFZOWkhcmP/ykKUUzjCMzNgp+KpUUqSy900G7NUKYnLCMe94g23PeAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721891163; c=relaxed/simple;
	bh=MLYuxF+x2eABGaFPWMN34FvIWccwv9Fi+GUQwVm/QQU=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=dBPmSzEP/tiDWc2GhJioEtlJoMh1gXzCRgB4rl7E7FgjbZjfdjQwMmeXLbvfOBxA/5PgtsFwVDmcPE1VoyoVwhCccn236dRvkBkgKGqk8e0a833sIqSpynTd5SGyC/Gfl2W2MbyDzgFFBeHLB/PsNLeScuaZAQWfltJEG99PgV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WxfjqiOy; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-a7a843bef98so17376466b.2
        for <devicetree@vger.kernel.org>; Thu, 25 Jul 2024 00:06:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721891160; x=1722495960; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Tg+YuDiaDe8j90OxE9HnFuCfbmfa372RPc0H9GceT8Y=;
        b=WxfjqiOyhsx2DwyO4xjNMIfiYSkRGqaZAxHwK/jDGaH/xwt+EOOyNKxtutdfQBLqLG
         imi47GYn9yIO36RxmwivtrMcZ7si5OoT4SFpyL9oKimQ/HlrL5YV8W7vqtSPPqC+RisN
         RTlffjRsrwnn8APSlsslVFr3mbeTHrspjE6mEsVq40DTeXLKlLJBIjMyqjedHdAnYAev
         F6LYpt2ahvqdZ1lyleWepue6oPtvUucK6bnn635DlPzLRG62uE9UcwwK+qA1/3+RAxqw
         cggn45nm44Fo4bBCxoa5xJvD+gq/LIAxHPsdGaorfyafz1x8ypG53NkAaS6fTfM8zg0z
         oOnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721891160; x=1722495960;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Tg+YuDiaDe8j90OxE9HnFuCfbmfa372RPc0H9GceT8Y=;
        b=hTgUQ8xd3ieUo77BnGZ3wM/wq/+eYSl0B2/tRB71aRa0Xqj9wYXkw2jKMAjyX8rVgz
         7EGa7WVZj5v7uW71oLh83Baxyr2BHgHAH/mGCyo0bK0W9N7LeNIIJIffeeoSTCADsVyT
         bBQjsr/u8fwIin7KQLxv7e2Ax0o/wrxwpy6Dg4pwGo8kqukQKo7wOsYd/+PfspT3y+Yy
         6qIddERW+0Z4KPgFr05s1f30lv/UAo6xN8JDyhFbzRDuaxXA+6Sd/izgMZq8Wax2DjoT
         LQrpDAPQDJbeCAp0/8DjptgQPDF7cWzDl/9v526I0ahWP5NHAWTfekj73gFtEqNTzmE3
         25hA==
X-Forwarded-Encrypted: i=1; AJvYcCVl5vtZhoi/E6ejZutRbfdukB4nsmj6MQU6hdB7iFWxVcnm/BvR5furezqWHBgI+pBe92lx7Sl8j3pLBKClNZr4puTkoI3PSxZDpQ==
X-Gm-Message-State: AOJu0YzoMCDleFKklC7Xdq8+01ARAwV/h9u89m0hVReS+MsI01m6ovNX
	rvZh5zY2/xTF4ycBWlVx1PKfN9hz8L17WfMSzXe5kHqvxOaNVDLXAQcuweqFBx4=
X-Google-Smtp-Source: AGHT+IHlzKZD6dVFu3OsmAb5gHZz1N4DytQsLg4PHeR8NjL34aay8nTlp4qj2DMZ1Ncqrk1J61H5Uw==
X-Received: by 2002:a17:907:7296:b0:a7a:abd8:77dd with SMTP id a640c23a62f3a-a7ac532fbfdmr145030166b.59.1721891160637;
        Thu, 25 Jul 2024 00:06:00 -0700 (PDT)
Received: from puffmais.c.googlers.com (118.240.90.34.bc.googleusercontent.com. [34.90.240.118])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a7acab2311asm40253566b.18.2024.07.25.00.06.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jul 2024 00:06:00 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Subject: [PATCH v5 0/2] dt-bindings: serial: samsung: style and gs101 fixes
Date: Thu, 25 Jul 2024 08:05:57 +0100
Message-Id: <20240725-gs101-uart-binding-v5-0-e237be8253a9@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAFX5oWYC/32NTQ6CMBBGr0Jm7ZhSqlVX3sOwaOkPk5iWTJFoC
 He3cgCX7yXf+1YonskXuDUrsF+oUE4VTocGhtGk6JFcZZBCKqFbibG0osWX4RktJUcpolU6dEZ
 qMXRnqMOJfaD3Hn30lUcqc+bP/rGon/2bWxQKlMpfw8Up6wZ7f1IynI+ZI/Tbtn0B8M24BbUAA
 AA=
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Jiri Slaby <jirislaby@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org, 
 devicetree@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.13.0

This series started as a single patch [1] (as part of [2]) to fix a few
issues with the UART on gs101.

In [3], Rob pointed out that the binding here shouldn't be duplicating
clock-names all over the place.

So now we have a patch to do what Rob suggested, and my original patch to
address the incorrect number of clocks.

The whole series is marked as v4, because patch 2 in this series used to be
v3 in the original series.

To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Jiri Slaby <jirislaby@kernel.org>
To: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>
To: Conor Dooley <conor+dt@kernel.org>
Cc: Peter Griffin <peter.griffin@linaro.org>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>
Cc: Will McVicker <willmcvicker@google.com>
Cc: kernel-team@android.com
Cc: linux-kernel@vger.kernel.org
Cc: linux-serial@vger.kernel.org
Cc: devicetree@vger.kernel.org
Signed-off-by: André Draszik <andre.draszik@linaro.org>

[1] https://lore.kernel.org/all/20240710-gs101-non-essential-clocks-2-v3-1-5dcb8d040d1c@linaro.org/
[2] https://lore.kernel.org/all/20240710-gs101-non-essential-clocks-2-v3-0-5dcb8d040d1c@linaro.org/
[3] https://lore.kernel.org/all/20240711212359.GA3023490-robh@kernel.org/

---
Changes in v5:
- drop now-meaningless top level clock-names description (Rob)                           
- collect tags
- Link to v4: https://lore.kernel.org/r/20240712-gs101-uart-binding-v4-0-24e9f8d4bdcb@linaro.org

---
André Draszik (2):
      dt-bindings: serial: samsung: avoid duplicating permitted clock-names
      dt-bindings: serial: samsung: fix maxItems for gs101

 .../devicetree/bindings/serial/samsung_uart.yaml   | 70 +++++++++++++++++-----
 1 file changed, 56 insertions(+), 14 deletions(-)
---
base-commit: 91e3b24eb7d297d9d99030800ed96944b8652eaf
change-id: 20240712-gs101-uart-binding-b47f3a270c36

Best regards,
-- 
André Draszik <andre.draszik@linaro.org>


