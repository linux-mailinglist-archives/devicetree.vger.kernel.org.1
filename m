Return-Path: <devicetree+bounces-40122-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B27684F523
	for <lists+devicetree@lfdr.de>; Fri,  9 Feb 2024 13:21:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3671B28350A
	for <lists+devicetree@lfdr.de>; Fri,  9 Feb 2024 12:21:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04D5431A89;
	Fri,  9 Feb 2024 12:21:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fcRgWBur"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C91931A82
	for <devicetree@vger.kernel.org>; Fri,  9 Feb 2024 12:21:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707481304; cv=none; b=rJ3h9jCHdLpTYWSAzOzv9hbAONxfF5ICk2/FegQFr6Rn9wprAVvvW/29GB0WGey+rpbf8r6nWyOfxTpZoGy1E648WGeaoYZIsM0AZ/qmX6Q8oZJu+Zu2sOkzTFf6Dk5Qe56QJ63+b7VERYTyTpSGZkMFyGKsVnsOkz3jTluk9eU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707481304; c=relaxed/simple;
	bh=xkJ2IoMqXO7ojN+a8UNzT1TouSyMOCFtrHGj+yqnkhk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=pXlxXs6MdxDZojxpWJHJ4YWIzQDVKZh9lBhC/a7HtApPrWHDTAuetwctjD/2qTbOfrvly4rCYCMgMgbXI7+5we79j11ObFiAWsopXfMGav+cdRsjgKm3pboZBgxz/Ropm8EBXSDqhT2v561n1I4RrFZg87P8B9GNgdd65ZLOEE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fcRgWBur; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-5611e54a92dso1186372a12.2
        for <devicetree@vger.kernel.org>; Fri, 09 Feb 2024 04:21:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707481301; x=1708086101; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PKPi4zPxIhG/N5fdp+pYAmcapEcDw+SDHxFi/+s26io=;
        b=fcRgWBurDtdVKJzbBmsLoQmT94Jwj/G7yQkkzvSazYl2ls++hyTY+pH9eP1a4Eid21
         qcOq1iZneXWtG1yiZbNOmilW+vH1Xg2XWe4ONLBJrgtfM+CfZFqQrfEsqYe+5BbcKooX
         Wj1zNqNsGr0LLC+m/KBs7uKyIJATFxNUWx007y5+fg4/ZfU/4UypMx4X3ScB5jZlfpVh
         7OayH3vRbYA+vzwqd6uZG6C5cDp+MV+dc1DRbxLNWXtMbsv5WRsc2ee+ECe4TXxZhqvT
         0B4M3Kg7YP/XTBWYiPd7IhDqX6FoObdYLGaljQuB2mcRlI9CQgZjxPLD9Pc3ElhhnVF1
         GCTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707481301; x=1708086101;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PKPi4zPxIhG/N5fdp+pYAmcapEcDw+SDHxFi/+s26io=;
        b=m7p8/6WVSSKeidgyKdKgdnEGQSqKrq2VYpoulrsx86L2QG3+YqpqpG/lzmSx3rKZwg
         ICKuPRFFFjLwkeURdAPiVEtZuRZxXOTFd2+cVfbHq/MmT+OZEJ77ymBT6d26SEzQKC2j
         VEgTJEmOw3ft71GegHaItuB8C+s9ZMoQ1AM+4ezeH6qASDZNLqpoG3V371G1IPrYctOJ
         YErr1zV3eFLgJbb+OLwIrIP+ovUg5o6bo1IHOLKrNrtRp5Y2c6tpyq5bND7AzyW46a++
         sqc0xsmwAlajURNb1G16ETW5tVn8hfehysZCR1vxlS0faXA54HRd3G0v3IJLgseB2Arh
         OFOQ==
X-Gm-Message-State: AOJu0Yzty6m8WIk+iKWb0aRxfnxH/7TAAnwAQAFsUa59b4OzexJpWowP
	e1nIyO3KBE55BX3LoR3VxQW3rE7jXlE0XFM9kl7MSWzYeTimAhGo
X-Google-Smtp-Source: AGHT+IGpj2kP7b9IxRiH/P8koINgLxDZ4g4wiJ2ziJsnvotXZME97MjOJDgICHT3AunmEVq6mjJrYw==
X-Received: by 2002:a17:906:13d2:b0:a37:2932:df1 with SMTP id g18-20020a17090613d200b00a3729320df1mr1159787ejc.29.1707481301606;
        Fri, 09 Feb 2024 04:21:41 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWAEI6z43i/Szq7oP+stO2wELDI6t6MceoOfZAaa/xBLToHbqkz92CxvMTaoYoJMrp83XMS6mZB57hRTWSbumpjaymvh5MPk1x6WG2/ObCwnthfsA+Md74csh112Bq3gHCJE+cYUaNx1z/cez6NA9wY0+QvCIM3T00SRKGLGHo6uTVs1z21FrQ2xFeFcpqYXZGzaCVTiwZW9Tk2F6GtCLImNISeEHuKJEI1IUa78adptoQcsmfRuP8QTAmC3kd8JCRfgRPiRJg/jmIaEsSZAfdhH2KQ5hp7w9g/IuGVD4pSaGmXQEWvuMwtpkMAgaSOPTrD/krIecthi0pAkAtCOg==
Received: from jernej-laptop.localnet (APN-123-244-98-gprs.simobil.net. [46.123.244.98])
        by smtp.gmail.com with ESMTPSA id m21-20020a170906235500b00a36c5b01ef3sm709277eja.225.2024.02.09.04.21.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Feb 2024 04:21:41 -0800 (PST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Chen-Yu Tsai <wens@csie.org>, Samuel Holland <samuel@sholland.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Andre Przywara <andre.przywara@arm.com>
Cc: linux-sunxi@lists.linux.dev, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Nick Alilovic <nickalilovic@gmail.com>
Subject:
 Re: [PATCH v2 2/2] arm64: dts: allwinner: Transpeed 8K618-T: add WiFi nodes
Date: Fri, 09 Feb 2024 13:21:39 +0100
Message-ID: <5751321.DvuYhMxLoT@jernej-laptop>
In-Reply-To: <20240209115759.3582869-3-andre.przywara@arm.com>
References:
 <20240209115759.3582869-1-andre.przywara@arm.com>
 <20240209115759.3582869-3-andre.przywara@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Dne petek, 09. februar 2024 ob 12:57:59 CET je Andre Przywara napisal(a):
> In contrast to other devices using Allwinner SoCs, the Transpeed 8K618-T
> TV box uses a mainline supported WiFi chip: it's Broadcom 4335 compatible,
> packaged by Murata.
> 
> Add the required DT nodes to let DT users know about the SDIO device.
> There is an otherwise empty MMC device node, to receive the MAC address,
> that firmware might want to write in there.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>

Reviewed-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej



