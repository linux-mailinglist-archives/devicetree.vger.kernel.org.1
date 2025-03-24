Return-Path: <devicetree+bounces-159970-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 94651A6D280
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 01:09:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1CBFB1891D80
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 00:09:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47D091373;
	Mon, 24 Mar 2025 00:09:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wV9rqLZ3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80917184
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 00:09:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742774960; cv=none; b=GAT7nD6jKMoAo3nrzm1AfIyyRNEEB6FsyYzTvM0KqsF5GwzWldjKKhGeRrfUYrrZRvi2ljjBAClnoOO7wRTNO2DoAeRpHzCFd+2JLDFQpow8qeIkuwB7FA6j59lERSpC1BkDqxuf5jrqQNa8GzfoDWGAi8wAeVbJDXYvfDHUbOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742774960; c=relaxed/simple;
	bh=4SE6Vemd7wCvaQkb0zYO/4W5da96PGXTFuikVtM5DMQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=hB/y8ErCXuRKv1zMwv2xddChcoQzUvskJPoZ9M0WjfFrT3XEIU3U0dPtb0CEOfpPO1uzlOyRNJIfFXN1+yBAv2kkIQY974KFxS/zWQ9FD+KGI+olKysCx1SXCtSUBD2mlHf0IxMs9vtX3Yvrf0dC4DSPKCWNQ4OMp5u2LFdoSxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wV9rqLZ3; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4394a823036so38346715e9.0
        for <devicetree@vger.kernel.org>; Sun, 23 Mar 2025 17:09:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742774956; x=1743379756; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gauWOuFMhrQoOGnZl7R840UuLn45kjs8rhjq8TVBvu4=;
        b=wV9rqLZ3zdKTASl+lMLx4pBUKy/BUtgv4M0p0bYluRmaeKHw89dO1Ps8pWzwOeQBNI
         Er06OSzxDOCD9VFtdE7A8/ncsa5VMPnhN2vUHw76f9VzQZdVMwXtWz+ViBGvLoy/0zUt
         0UR+8BseIC4WRpvCv9YxxKqdqiN5LY2LDIiz39n68kz4Dj/eQX6YMXBzGcqwmTH9r8lM
         lWJrfakvSr7X5eLbtVN0pjqMuU8PkrRXQ4rUYAlvNMWJ8XQ4DlglhX+bBj/B6tAakgIL
         c7fnpy9TsQ2nEZh1SeB7+qrKARLo6fDaXOseKeXjk2c1NMxH3c8MSD6BfyCVB1yVJuMN
         TL+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742774956; x=1743379756;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gauWOuFMhrQoOGnZl7R840UuLn45kjs8rhjq8TVBvu4=;
        b=NUbKMaYz//OKapL/xXSMS1IMHMxJbhIrasfXArtq1NShy2I5W3tjgPchZZos8z3EHw
         pScraFjnnIpiANIzUvwyP4M8d3KRAQeQRkvLr8VzHoCVqQobX8SmRfdU2FHJFQfeEzDT
         LUEgr9LuxDYbkNC8oCMPZONyPDvwTBBvbojFDhSQIbfaqUMFDIrRyJ1sPJv172XWlTFL
         FqHVduH0YyaDxUPSy/vxF65SFFYaWOk3Zw2n+kuql5/nQL7dN9SGRZJmmru/gAEdwewK
         YVfoyn6OVZ3fg2YiDf0waGicPVcnyPmWCuyQvX859WozkgE7pmEL4kusCvQJ8//2UeS+
         eRuA==
X-Forwarded-Encrypted: i=1; AJvYcCVPMyAmOPLqgRIbpCTbLH76IpLwGsxesMuSkAnBH5chS2q0cVGWIGMkCa1PP0UpCaBOwzOlnnz/XUyP@vger.kernel.org
X-Gm-Message-State: AOJu0YwIp1mFr5ZhwSurGcEOLvmT5fF4y8PfBDaLU39HJ7Qy8vSL0/BN
	MN+kjACzl28Ml2xlFnGS3WdVx+Tvl1Kd+4PaiP0k7h8+uKgwH+kbtQvib/LVPGs=
X-Gm-Gg: ASbGncsGVJ05ZSbg+MRAgaAM3R5PSLDL591U1mulyMy7SUuSM+f/IJvrhrbW78Zhae4
	OyDM0bCusCCHzpPhPPqWGtZGgC1mpR9dJClraCDa+B697L6pl4JmKAtytqsg5JoXgY/1xBAbU97
	DhuQcZtGXj5ViURT2KbD4EJIM1Li4Ov79CApuTXJBGPuVCH4fWW+SIYWaE/T5s2l43eeg3KofAK
	jwG9VNzUMcXPx6aJxCjAUhg/GAoiy5hbyN4aGuUDbd+clkal6DM2OgjERNxHUeWKeWZ5qd8IwrY
	SeSr/iG1vkIAc3CUWMPUjlh2GBli2vzgd8tNjEniKkGIAEXNKfiZBTI1zJiO0iMPEb1qqrPcfXQ
	x0YjppfP3ZGv9uvFrCoCaWO07
X-Google-Smtp-Source: AGHT+IER+yqN/cM6kd9faSy6V83DVxh7Xz9oy23ZPLx/sUlAswJ8Qvfspc/M7havH/WOMCaE9dvfCw==
X-Received: by 2002:a05:600c:1c18:b0:43d:7a:471f with SMTP id 5b1f17b1804b1-43d5ddec8f2mr43639035e9.18.1742774955623;
        Sun, 23 Mar 2025 17:09:15 -0700 (PDT)
Received: from inspiron14p-linux.ht.home (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43d4fcea6ecsm103160875e9.5.2025.03.23.17.09.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Mar 2025 17:09:15 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To: hdegoede@redhat.com,
	mchehab@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	sakari.ailus@linux.intel.com,
	hverkuil@xs4all.nl
Cc: linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: [PATCH 0/1] Add OV02C10 dt yaml description
Date: Mon, 24 Mar 2025 00:09:11 +0000
Message-ID: <20250324000912.105662-1-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250319145927.70534-1-hdegoede@redhat.com>
References: <20250319145927.70534-1-hdegoede@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Here's a yaml descripition to accompany the V10 OV02C10 driver currently on-list.

Link: https://lore.kernel.org/linux-media/20250319145927.70534-1-hdegoede@redhat.com

This yaml passes dtbs_check and dt_binding_check against the following dts for the Dell XPS 

Link: https://tinyurl.com/4a2w3vje

This patch should probably be applied before the driver patch to fix

Applying this patch before the driver will fixup the following warning

WARNING: DT compatible string "ovti,ov02c10" appears un-documented -- check ./Documentation/devicetree/bindings/
#1030: FILE: drivers/media/i2c/ov02c10.c:991:
+	{ .compatible = "ovti,ov02c10" },

Which happens because of the OF compat code I added in.

Bryan O'Donoghue (1):
  media: dt-bindings: Add OmniVision OV02C10

 .../bindings/media/i2c/ovti,ov02c10.yaml      | 117 ++++++++++++++++++
 1 file changed, 117 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/ovti,ov02c10.yaml

-- 
2.49.0


