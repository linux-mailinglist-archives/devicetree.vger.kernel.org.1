Return-Path: <devicetree+bounces-54709-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 04D998924C9
	for <lists+devicetree@lfdr.de>; Fri, 29 Mar 2024 21:05:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 047621C21475
	for <lists+devicetree@lfdr.de>; Fri, 29 Mar 2024 20:05:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3061F13B2B6;
	Fri, 29 Mar 2024 20:05:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="jGBkqM7E"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8909A13A3FF
	for <devicetree@vger.kernel.org>; Fri, 29 Mar 2024 20:05:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711742712; cv=none; b=ZGkTWAn5A/vM8Vj5pE7ke2ZQcaJXmco/fXRPtxvHszRwbrZ9Fr2NnABTGVuZv1xNS89URCziThcSnB7wvt2cgMOa5z9mJSgc345Y9/OYx7bs+8Kc7ytnGdn76Dv9ZUHfIvsQX8jbScEQqdMat6twq4HtPStUF3mOYNDKOGKs3XY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711742712; c=relaxed/simple;
	bh=cIbe2NRCQP7djfpbM+11L+WlZLa/v/ScA4ZubIQlJek=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=A6YBEL2yEEKOus75+c+EtnC14WfCM+XieEdOKwnHodCzkIVvb5Sx4TwUu9B4POMO/xyEQHjO/NSQdSHFW8oQ++sRlgl3CwLGAL7ZgmWZ7BArbujaV/goGudXbkdklJETe5fbN3HW8E3VO461Lg09zVLchS87zCO0uvoK9RHHY9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=jGBkqM7E; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1711742709;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=SnHjQH48YnJt749mCO2kgMTpPbKk2F0bzExQRDPnK30=;
	b=jGBkqM7E1xdvT4WuSlrGo/FzGu+P323MbZBaxuPBkD6BVidOEECBc5FiSaZ3Flgs+sNivd
	WxzaOig01l+HEvsEaVA4e1SJ+4VYao/m0ZwNIBPO/1Q26hvb4igK3EHgiN/A1aOO3aw8KY
	ZRKUrOMr5/jjk2XWOe9nkCFsed9qpmc=
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com
 [209.85.215.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-284-DU70Q936Ps68XCmT613AmQ-1; Fri, 29 Mar 2024 16:05:05 -0400
X-MC-Unique: DU70Q936Ps68XCmT613AmQ-1
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-5cec8bc5c66so1518601a12.1
        for <devicetree@vger.kernel.org>; Fri, 29 Mar 2024 13:05:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711742705; x=1712347505;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SnHjQH48YnJt749mCO2kgMTpPbKk2F0bzExQRDPnK30=;
        b=LCZErtaQeowlAMwnCIVe/pcU5/+cegjKIUPjUNWHJo93dYp9hVRaaM4yeCoz/0BBf2
         GgHYKf5eTsFdTFcLyLsVzP+eFcidAK2Q68zo5H1D7YEoTWZ+cgLyYT+975qjaIVDso8k
         0R9FZ4fioJoxLvj6h5DX38tF9SKL2LG52dRbiA8SOLBulCQqTRvazEzJ0dO580EaS+Pk
         ADHKgLUZHaHqKy6okCMwH4od9spsW9tPmDCrPefjjChOEeZXlgXta3Ep2pbdCzrKqoh0
         uk+y5YKRAsxtipYHM8vP98GALdb+9PqY54GwKcXI/aGRY07BjV/XYnpsv26bk5GNgFWW
         868g==
X-Forwarded-Encrypted: i=1; AJvYcCU4JNvqlQb3EQznfrRpEqqxTiD7Ke9l9PNZl1cfjvAlzQNAGzMgqryLIJ90wpNoKvC5cnXyaIvt893LA+o4/qIVwgop0rWV2KXY/Q==
X-Gm-Message-State: AOJu0YxrRCp3fyWSt4+r7pzAEfGKH6Sihyf09Fo44Dg5zVM1GtIP4PVj
	9gqc4834lA7B6bgw3MM/Rq/y7QLxLEnODbMbDlLE5dmg2cqeW/EovoFK4kRUgWG3IYkWHONsqn8
	kLX9PpFTl7+6nOY9gyhdm9tJGMFhfsfhwhjN5mAHiFwyuGu2suVJNc8HiaOk=
X-Received: by 2002:a05:6a21:193:b0:1a3:c8d5:707a with SMTP id le19-20020a056a21019300b001a3c8d5707amr3325574pzb.7.1711742704925;
        Fri, 29 Mar 2024 13:05:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHzus5TYmyBQIJzw2X4oGKdRnzm+fHezhgpcMAHRkbhzjBiVvj5MPNNZHf4gEN4NnQQtcePCw==
X-Received: by 2002:a05:6a21:193:b0:1a3:c8d5:707a with SMTP id le19-20020a056a21019300b001a3c8d5707amr3325536pzb.7.1711742704523;
        Fri, 29 Mar 2024 13:05:04 -0700 (PDT)
Received: from localhost.localdomain ([43.228.180.230])
        by smtp.gmail.com with ESMTPSA id e4-20020a17090301c400b001dd6ebd88b0sm3830017plh.198.2024.03.29.13.04.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Mar 2024 13:05:04 -0700 (PDT)
From: wefu@redhat.com
To: jszhang@kernel.org,
	guoren@kernel.org,
	conor@kernel.org,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	jic23@kernel.org,
	lars@metafoo.de,
	andriy.shevchenko@linux.intel.com,
	nuno.sa@analog.com,
	marcelo.schmitt@analog.com,
	bigunclemax@gmail.com,
	marius.cristea@microchip.com,
	fr0st61te@gmail.com,
	okan.sahin@analog.com,
	marcus.folkesson@gmail.com,
	schnelle@linux.ibm.com,
	lee@kernel.org,
	mike.looijmans@topic.nl
Cc: linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-iio@vger.kernel.org,
	Wei Fu <wefu@redhat.com>
Subject: [PATCH 0/3] iio: adc: add ADC driver for XuanTie TH1520 SoC
Date: Sat, 30 Mar 2024 04:01:23 +0800
Message-ID: <20240329200241.4122000-1-wefu@redhat.com>
X-Mailer: git-send-email 2.44.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Wei Fu <wefu@redhat.com>

This patchset adds initial support for XuanTie TH1520 ADC driver.
This is modified from XuanTie TH1520 Linux_SDK_V1.4.2(linux v5.10.113)
The original author is Fugang Duan <duanfugang.dfg@linux.alibaba.com>

Wei Fu (3):
  drivers/iio/adc: Add XuanTie TH1520 ADC driver
  riscv: dts: thead: Add XuanTie TH1520 ADC device node
  dt-bindings: adc: Document XuanTie TH1520 ADC

 .../bindings/iio/adc/thead,th1520.yaml        |  52 ++
 arch/riscv/boot/dts/thead/th1520.dtsi         |  10 +
 drivers/iio/adc/Kconfig                       |  13 +
 drivers/iio/adc/Makefile                      |   1 +
 drivers/iio/adc/xuantie-th1520-adc.c          | 572 ++++++++++++++++++
 drivers/iio/adc/xuantie-th1520-adc.h          | 193 ++++++
 6 files changed, 841 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/adc/thead,th1520.yaml
 create mode 100644 drivers/iio/adc/xuantie-th1520-adc.c
 create mode 100644 drivers/iio/adc/xuantie-th1520-adc.h

-- 
2.44.0


