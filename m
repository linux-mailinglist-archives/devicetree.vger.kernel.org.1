Return-Path: <devicetree+bounces-93664-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B1A7951CE8
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2024 16:20:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BCF931C218F2
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2024 14:20:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFCFB1B14E6;
	Wed, 14 Aug 2024 14:20:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CLp7Izp+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AB711B013B
	for <devicetree@vger.kernel.org>; Wed, 14 Aug 2024 14:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723645236; cv=none; b=mnh+84TkP59YwFbE3S9zHiKbProtUrO7dU6TDANMAPbWlHssTje71rCcS14bpVniBFDV1XbnF//GggULqLm/pCnBCckTFh6tdjeiMwKasDwbEBP1boGHF3vpsPbUw32zdbZV/A1Ya1ye44YaC9Q6Bxpp1r0j1ylWoC26EbCK2LE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723645236; c=relaxed/simple;
	bh=kQXtCsbcW1E2mqktxyuGPlJlJ1MWdF+o/ajZNUtbKBg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=XpINIVVzc+2CTX0LNfS+OzuUJv8emqGE1TU87HmNcnAL2uN4pcFmPSu2mURK774bBN6MYpx51ZV+Zyhnjyes46O1iDdUpckOPpBsF4yWnwuiJpkhEMepZg5x+eWj8qpF5rVMUfGvdjRHuvs/CI9mX4AXlR7U7IAlZd9piNBHYww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CLp7Izp+; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-428e1915e18so46012845e9.1
        for <devicetree@vger.kernel.org>; Wed, 14 Aug 2024 07:20:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1723645233; x=1724250033; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vPjxl5kTZIIxJMPolljKattpkaQsrwWjxNNU7Z8L9/U=;
        b=CLp7Izp+ukPsaxrOKTHjRodgEP7CyOJ3Lp4vQFGnccC5ZkQGZG/JwyPQfqRHpszoVh
         ap+SKXmBzbMLRF57uOgpr652bD179ZiDwpxFjuiQpN+IozTns5aL27ZkQ0OZehJAFcwJ
         yd1zR3HbRGyuMnvVf+iBBfHaGDW/njPSY0flEbVmfETC1w05N1XTtWv1g/397kdXYKv/
         liTnuW4hG2AT3Vbs/DogQNfZFskdB53HsVy1FtkXNLvO6205CeBBCheh1JjETfALyV6l
         G3ZEzE37Mq1wjFsuFMmbteZsn5P11p/78rb2pJgtHcEPR311aLvBvYb/xG+B8qcwxBld
         HXQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723645233; x=1724250033;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vPjxl5kTZIIxJMPolljKattpkaQsrwWjxNNU7Z8L9/U=;
        b=HT6pQG38Z8jKEAg/icDZfPZpgxxaNFrK3RyMACdhVmwwNtmPnB/SaxEmw/J2mKyDmJ
         FOU3a4ygDtApMYTqUQOq8Zx53ytnME/wIu0Qh2MrLykYx66ZXWyuDTCp52PA5JzxsGWb
         LlzccTdovIJz+DnvTitIVMdL/i8yaCxYtCQhQdQgJzYMqQWzWoa3esaYgRiWKPDi6zF9
         kvVrIvSoZ3wmLS203pB0jIigBg8iF0VjP5w/hCZoj/JucA8IYwftMxABxVEs2uVBrsNZ
         kSbap+v1Egd2DFJuN53NQtAxsXwg7c2nRPTqjgl3sbn3D5H5eOtvsjVOXw4DmwncstW4
         4O4g==
X-Forwarded-Encrypted: i=1; AJvYcCVQrXq9D/bPowVNbC0Xv+bbcyccu06ozuFjLSuFNbJ3r97qBEHbEdhWAcpK7dUftJmJvPUmF6UNh7xscavwzo1uROqAQJg9+6WnYg==
X-Gm-Message-State: AOJu0YyXKHWPf/fYxseDEtc5OC92Zw/aKYxy5HXOyAjk516lNmRLknHC
	b0hmbl8ZmcyU84/JDnUAVrFWRf9V1fR4537A8DmBmnjlSZRpfBVtJw/kNpCrcg0=
X-Google-Smtp-Source: AGHT+IGeTWmsPZWGcLLAVdlY2/7R56m/GeHnCL0IxTTmrXSrUbJKSfhGtU98wAypnLkpho3RDTqrbg==
X-Received: by 2002:a05:6000:b44:b0:368:334d:aad4 with SMTP id ffacd0b85a97d-371777696d6mr2139027f8f.4.1723645233409;
        Wed, 14 Aug 2024 07:20:33 -0700 (PDT)
Received: from krzk-bin.. ([178.197.215.209])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-371832ea116sm282433f8f.65.2024.08.14.07.20.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Aug 2024 07:20:32 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Orson Zhai <orsonzhai@gmail.com>,
	Baolin Wang <baolin.wang@linux.alibaba.com>,
	Chunyan Zhang <zhang.lyra@gmail.com>,
	Stanislav Jakubek <stano.jakubek@gmail.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH 2/2] arm64: dts: sprd: sc2731: rename fuel gauge node to be generic
Date: Wed, 14 Aug 2024 16:20:29 +0200
Message-ID: <172364518667.95114.7859805701643557423.b4-ty@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <246c0c7763a432d4bebcb0e99b90dcf4cded333d.1720957783.git.stano.jakubek@gmail.com>
References: <cover.1720957783.git.stano.jakubek@gmail.com> <246c0c7763a432d4bebcb0e99b90dcf4cded333d.1720957783.git.stano.jakubek@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Sun, 14 Jul 2024 13:57:00 +0200, Stanislav Jakubek wrote:
> According to DT spec, node names should be generic. Rename the
> sprd,sc2731-fgu node to a more generic "fuel-gauge".
> 
> 

This also waits for something... so I grabbed it.

Applied, thanks!

[2/2] arm64: dts: sprd: sc2731: rename fuel gauge node to be generic
      https://git.kernel.org/krzk/linux-dt/c/e06e908dba9fed62c9493ea5cea2e4cbd306d23c

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

