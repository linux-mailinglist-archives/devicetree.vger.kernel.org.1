Return-Path: <devicetree+bounces-172659-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 436E3AA5D33
	for <lists+devicetree@lfdr.de>; Thu,  1 May 2025 12:25:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1C8B67B45C0
	for <lists+devicetree@lfdr.de>; Thu,  1 May 2025 10:24:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB084216396;
	Thu,  1 May 2025 10:25:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yCpvCu8h"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 200CC2DC79C
	for <devicetree@vger.kernel.org>; Thu,  1 May 2025 10:25:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746095107; cv=none; b=bmarEITF0KYJdpCAO8Vo4z55/NvOxJYKoJW9roPVrEa4PZwwMv9TSa1kAKn1ze5lqQWDmnbhlRPIPTKp8goOwfC/4leHQUqVFcwquUN1+P+ZlI+rtoOabN78/f8rKn5QR38kuJ0dwtmljNJNpXcPik+Xr1Gq+f8gZtxKDVQ3RCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746095107; c=relaxed/simple;
	bh=BhoblDqBHVUUyUhbEC1LkECmrXU82C0SL2bPhbZN/hQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=GtoKCk5zs7TFzCJkbDUdgYIcMCZkHuwFuNZ1n+qqwg7UPWgznTQ4sMgSsexR2szJNnSYeGnVev46o9bon/Lvbe24Ds3850IeWWaClgsKpyiBUlkJ5aH+t/WI1KdPxJJVhffdrsffVncp+lW1fn/m1KspABABkQKWAruavfkZWnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yCpvCu8h; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-43f106a3591so1024255e9.3
        for <devicetree@vger.kernel.org>; Thu, 01 May 2025 03:25:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746095104; x=1746699904; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6MIodJ5IDGhYTeeTGgFSpRGjIDd2wRYWZ2Vq4Xdl/N8=;
        b=yCpvCu8hbZUQgHu9Y7vpjIR9Gg8MkuYvq1D5e1IynQiC96jAo9/PRbcMbtMbFu5OEl
         I4uYuWiFEPAEdr7n9DaA6YIN9qc/q6q4oLTEBjyuAmDkui/w2mH7dBeOQ+1p++/hvth1
         gNI9aAk7vN3k5oxt2O9PUZ1HKg9vUPnikenqQ+eLcSwiFm/CBe498tp6SyUCYzbplxGh
         5Fg7OC5Cn6D4eyBupNLjDbaWLB16VSOEdDfIfST6mgZSg4NfkermOryzL6pAEmQjp1m5
         cUu6K0yqf6b5FcOcsR9VE4TDUKaiiIXaRIlPoUMjTv1ohahu8I3T35WMKEeyOKoSdqO/
         9I2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746095104; x=1746699904;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6MIodJ5IDGhYTeeTGgFSpRGjIDd2wRYWZ2Vq4Xdl/N8=;
        b=K2DzyUPqJRAFN48oMSYl/Nb1gr3P3YSZ7v276zjhV4Q5WojgTpMYSKVoD0e2mGNTTE
         jXrHQVz90LPMgxhThyw/XpuuFrXMRlmQ4AxxZhiT+7Ve/n3bG+qRxI3lpTyW42jh0fQW
         3UqYsRLDRsJQM+B61JyXmvybEx6zqZduzpa7hjkQjqicIYnaraHRx1r3YM+0bEtei3YI
         fCwqJYWfcQCL9FJY0NdwfHnTf+M1spRqFaMjk73tvxLrpAo9dKxMhSrbbVEE+Ztdwfq1
         RymBPZkcsOVSu7+aG6bNOcnWciLRMaX9ZGx69CSUVVNS7w7hcOYgNEdJg172p1cpFLvo
         weFg==
X-Gm-Message-State: AOJu0YyZwoo5yfPmVkjr7oCeXk7GlTL11QuGpbAjM/yDUIm8N9Zlw8j9
	5qN9dZLxNM4hAGrv7wOx5WzTwPCOC/20BqFjLVmxca+t3q/l5XxHqJ6BI+JSpr0=
X-Gm-Gg: ASbGnctSqxApRAOgiZLKl/6ptmet9adiULnkUAVLiOsnunGL7CD5FNAf/8REeWYbCPL
	AxZwuxB25F9sv+78ImX4GpO+y8o+JWiTsGek/9g9JQnC5RnSyb+ZgE2BpDx1G320v/VBLnoEugM
	LwRN82AHnHI1pXwo4ANZyWHJp2dWABHq8Grvv0dBSGWpxRPS16cQxAscQOslOquXoq9fo92eJZ/
	PD1DU98l6MuSmyRcIq3fCmRM7Vpab5OH26Qkbu/QEqbsnaT136/oQVP3VY9szBXFKukHffplDC5
	XSDn65IIM2BOR70vGDkVDOR68ob7l3YFsOxQg0/ov+P6n9p6iBTmQqnkFBcOd634j0BR3Q==
X-Google-Smtp-Source: AGHT+IF862ljQnmjlwjmXKdAi6NbsB+aCBrKDaWDsMaY4FgB3qNsHTi6/SEHCYWy7Mccphx1QQnsfQ==
X-Received: by 2002:a05:6000:420d:b0:39c:1efb:ee87 with SMTP id ffacd0b85a97d-3a09007d8bbmr1625605f8f.12.1746095104439;
        Thu, 01 May 2025 03:25:04 -0700 (PDT)
Received: from [192.168.1.28] ([178.197.207.88])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a095a8f7e8sm460820f8f.100.2025.05.01.03.25.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 May 2025 03:25:03 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Mark Brown <broonie@kernel.org>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Magnus Damm <magnus.damm@gmail.com>, Biju Das <biju.das.jz@bp.renesas.com>
Cc: devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
 Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
 Biju Das <biju.das.au@gmail.com>
In-Reply-To: <20250424090000.136804-2-biju.das.jz@bp.renesas.com>
References: <20250424090000.136804-1-biju.das.jz@bp.renesas.com>
 <20250424090000.136804-2-biju.das.jz@bp.renesas.com>
Subject: Re: (subset) [PATCH v5 1/7] dt-bindings: memory: Document RZ/G3E
 support
Message-Id: <174609510312.12307.13872226786395816413.b4-ty@linaro.org>
Date: Thu, 01 May 2025 12:25:03 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Thu, 24 Apr 2025 09:59:49 +0100, Biju Das wrote:
> Document support for the Expanded Serial Peripheral Interface (xSPI)
> Controller in the Renesas RZ/G3E (R9A09G047) SoC.
> 
> 

Applied, thanks!

[1/7] dt-bindings: memory: Document RZ/G3E support
      https://git.kernel.org/krzk/linux-mem-ctrl/c/b2d25905366b4e6791f60e6bc76a636d1b88e6f8

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


