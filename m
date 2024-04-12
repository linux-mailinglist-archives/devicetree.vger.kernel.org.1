Return-Path: <devicetree+bounces-58605-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B50BA8A28AA
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 10:03:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E6AD31C21DAA
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 08:03:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA5724DA13;
	Fri, 12 Apr 2024 08:02:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="W5UiR/xZ"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49F1947773
	for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 08:02:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712908970; cv=none; b=M8o3xhrR6NSrnaMZx9JY3VeOvJBspkywv58+6jAb8g3fSHASNDjCbZLtXxEOdlMI61TX7madlG33Nj7SDoDYcqdpK8wvOSRZ4cJTMJDh50MbmRC7QtrziA48jtFjJwpp6KSyDfvEhPMlHvd/0hboQFxk3YWkkBav9y3n44R7pww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712908970; c=relaxed/simple;
	bh=uSijoLi8d3vfXjAlGsR0KQFQF4ugS0o0mh5TrBrRpeg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=PU5rjaH34EEJwUhEjA25FhWl2596zlFzxjzuMLS2BKb0WpMpWoiLVZWBkwLkEstr+0+hD3M5bdE2fqOdMWXSK3BFf3UVh7x0B/y/hns+jT3M8JIq8zG2jBzN8gKQpne4WkT6tPQq7HbdVjfKoRI41Or8qDTrmXpcw5SmO3rTG0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=W5UiR/xZ; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1712908968;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=k7/OapXEM9hlZWA7yCBRs/93mN3l17NGNZqV6UA5j9E=;
	b=W5UiR/xZlLtCachcXNO69WP2ocePekWFlSoOL7lOWpuJDFjZuhV+4DLGw4PN9u5ItS1DQ7
	/RuiLVeWGwfc1+HImPI7Hu0tIQg81driuvsbLmLmfmvodj9zduvgO7vRKe7RBWa22EAT0P
	JfPTw6wMsHHJN8Y1PF9UjmG8NoFf5SQ=
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com
 [209.85.216.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-396-6APATCbjNxyavNp0W3LhYQ-1; Fri, 12 Apr 2024 04:02:47 -0400
X-MC-Unique: 6APATCbjNxyavNp0W3LhYQ-1
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-2a2f7048a7fso625613a91.2
        for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 01:02:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712908966; x=1713513766;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=k7/OapXEM9hlZWA7yCBRs/93mN3l17NGNZqV6UA5j9E=;
        b=ewNGSBju4QSIy4M0spwero75YxB1xd1zsiARHkJ2i1B4b+jqhBY3IBZW268a/udbOi
         GjOmO6CsMOvzbdFGuoGKL3zkjvDL0YyJBd9FlkzdM7+RQ0WJ0X/C6moWYGXnKv1+seFx
         FplCdlZjhcB4gZAE2zbNBxbGOTcZPE4Pkc05h1e8H/sjhRLgb9u2KGHJCn1aI/QUGgvv
         fiQ0ALz0MW7J6tT6qpdQeUVLNCVE/eBW9HZqbc6U5UGmqYeM4B6MMU5PUyqaquFf1YQR
         ITFk1Sfbu/NBaxsRv6uKuwjNjh/oBMPIdMuifwA1Gi4HD08ES5jefZXRqNbVt2+DLbKI
         Tm5A==
X-Forwarded-Encrypted: i=1; AJvYcCVhiv43cd+/5ieVnohhtQuS+2Kv4Or3e1bOFpPwbkm5y66TkhZ4K8yhv8Zuk05+PPVNsv3Mqkl8tuAtH6165FbnKry28kEMNC8MIg==
X-Gm-Message-State: AOJu0YyDll+3Go201GxeHAZ5BSjW0vYK+7lp9U0L32bEWbi5/Yltx3Rl
	f10bpFnxdJUCU+TmAfEHoQd09QDpdYtTzSExD8z4AxJXWCyqF3aPGFulj8fvhHe3hzfhj1nD7HE
	RTYTxRkNBy2X03dWasE0Luf97j2TK7VC0p3w9Ufw6CVl+ONypGx+J5DM+nt0=
X-Received: by 2002:a17:90a:e501:b0:2a2:616b:f3b0 with SMTP id t1-20020a17090ae50100b002a2616bf3b0mr1913803pjy.35.1712908966019;
        Fri, 12 Apr 2024 01:02:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFSc4T0+QC9jHg1hidzbPxP03+A7jHsSw9GJe34xPb1pjDLvNStx2JhXJsXAeuWkfAFN1B3Zw==
X-Received: by 2002:a17:90a:e501:b0:2a2:616b:f3b0 with SMTP id t1-20020a17090ae50100b002a2616bf3b0mr1913709pjy.35.1712908965676;
        Fri, 12 Apr 2024 01:02:45 -0700 (PDT)
Received: from Samantha.redhat.com ([43.228.180.230])
        by smtp.gmail.com with ESMTPSA id c9-20020a17090abf0900b002a610ef880bsm2601514pjs.6.2024.04.12.01.02.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Apr 2024 01:02:45 -0700 (PDT)
From: wefu@redhat.com
To: jszhang@kernel.org,
	alexandre.belloni@bootlin.com,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	guoren@kernel.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu
Cc: linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rtc@vger.kernel.org,
	Wei Fu <wefu@redhat.com>
Subject: [PATCH 0/5] RTC: update APM X-Gene RTC driver by adding the pre-scaler support 
Date: Fri, 12 Apr 2024 16:01:42 +0800
Message-ID: <20240412080238.134191-1-wefu@redhat.com>
X-Mailer: git-send-email 2.44.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Wei Fu <wefu@redhat.com>

This patch add Counter Prescaler support in APM X-Gene RTC driver by
getting prescaler (Optional) property value from dtb. 

This hardware support can only be found in DW_apb_rtc after v2.06a.

And adds the optional property "prescaler" in bindings for APM X-Gene RTC.
Because the clock source on some platform to RTC is NOT 1HZ,
so we need to prescale the clock to make the input clock become 1HZ,
like (32K/prescaler) = 1HZ on the XuanTie TH1520 AP sub-system RTC.

This patch also add "snps,dw-apb-rtc" into the "compatible".

Since XuanTie TH1520 is using the same RTC, so this patch enables 
APM X-Gene RTC driver for XuanTie TH1520, and add a device node in 
the XuanTie TH1520 Soc dts: th1520.dtsi.

Wei Fu (5):
  drivers/rtc/rtc-xgene: Add prescaler support in APM X-Gene RTC driver
  dt-bindings: rtc: Add optional property "prescaler" in APM X-Gene RTC
    Document
  drivers/rtc/rtc-xgene: Add "snps,dw-apb-rtc" into the "compatible"
  Kconfig: Enable APM X-Gene RTC for XuanTie TH1520
  riscv: dts: thead: Add XuanTie TH1520 RTC device node

 .../devicetree/bindings/rtc/xgene-rtc.txt     | 16 ++++++++++
 arch/riscv/boot/dts/thead/th1520.dtsi         | 11 +++++++
 drivers/rtc/Kconfig                           | 12 ++++++-
 drivers/rtc/rtc-xgene.c                       | 32 +++++++++++++++++++
 4 files changed, 70 insertions(+), 1 deletion(-)

-- 
2.44.0


