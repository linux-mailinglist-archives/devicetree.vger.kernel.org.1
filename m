Return-Path: <devicetree+bounces-38277-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A73508486A7
	for <lists+devicetree@lfdr.de>; Sat,  3 Feb 2024 15:15:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D9DA41C210C6
	for <lists+devicetree@lfdr.de>; Sat,  3 Feb 2024 14:15:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B6515DF10;
	Sat,  3 Feb 2024 14:15:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BYGI+Vlw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2D5B5D8F4
	for <devicetree@vger.kernel.org>; Sat,  3 Feb 2024 14:15:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706969714; cv=none; b=RtNKgUx1kCDSWWKZdFJsgcKGlJzP+NInr8Tz82LMZIgkuDMgaY5mQH7DeehgNBmCcgJx8P9qPprnmIeEWfoq1W9Wg3l1DMP50UQpFMjjRBMtzvZqjz1kLUSF4ymDvWm0DJvy46gyZj38kp3MqAfP2DdNRozv43jMtiElAZLxQ+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706969714; c=relaxed/simple;
	bh=H5ZwK0jhYE1mtsYyIGOSXC3sCpA0AB014TNeJfwYiBk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LUo94Z3/hYdzVf0gUViXANWpksNU0sBft/yMsRddl5IEruQ0NLQi1ELsnQir3sSh5s/MV446sUultZRzQZGSx2RNUu3IVtE2f5mCS82uQY6l/ZcA+788IeYpeJRtConJ6/bRF1quLN8u1Pq24oujEpod5W+OcZ0//e+XBom/Jqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BYGI+Vlw; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-6da9c834646so2370929b3a.3
        for <devicetree@vger.kernel.org>; Sat, 03 Feb 2024 06:15:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706969712; x=1707574512; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=bw42H79cE+U6ywMpCs1nKE+K584CAj9MEAMy3JeNl90=;
        b=BYGI+VlwJtX1qT5RTgm61OWJipJN8dHO4zRCySzjbEzJFXS8CrQaCo5a59NWNo9PLv
         gnQ2VAi4wk+m2staFzZuidTP2oz9Dn/q7Ct4FLYpkLK67pT7EBX6M1OYlnt8D5x4gKVQ
         7E4yLAPzctJr9xGkxFH1H+eQcDNFHUUoumLssp84kethOEAuRyK0nPQQ6RKCkEr8ZBaJ
         SUS3DcBMibL9Lp1WjJe3Yrz+8XL2EzD+M/2ZVwpR29m+lOZGv2xPOEZFEvMNmOnYMhPy
         W1DcxNh01iLu58+Eikm6V1lTvm6imtKc/jxEx/6Q4ezfHGoQuUx6KY6xOiE+cPzm6MV1
         Z2XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706969712; x=1707574512;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bw42H79cE+U6ywMpCs1nKE+K584CAj9MEAMy3JeNl90=;
        b=aK0MI2sFGEnEW4rrmUPVPeaJnJKF0x56d6K5FlkFI2YnooGRjvWp3/zUxnYXNu1viR
         Rbcj9VelMpTeOlzP54NotfKXjoFyv1/KWgE//IwKUkc/P1Ce+j2mscIJBHTtYbxExNgz
         x0vdpLRX9BiW9XREZfjt7ZWqOi94ecw9RrRwbRkzTa36fOufqTq20A4ndptIrcE/PRBh
         31s6Jkldz1wJqynWH39ifUzSwFUfCE3jrsmD1GYXhi5rYEcN3FlbcSPtv+ItfqE45lc5
         9wuSzC1arWhhxhMS/8K+2DJ6JOCKWNRHhXpSAP4QwjQkW2e8N59Kv/b+irzYWymVSwl6
         RTTw==
X-Gm-Message-State: AOJu0YxQr3CS2/EvwUK32tHzeNftT9kKRapxOk0KmKG5FUvkWBPd+bp7
	AV9Hx6Vl4V1OCmsWmtX4fNswchliM1qJbwXhJiX9giKWAP6nm+WF
X-Google-Smtp-Source: AGHT+IFPqWbk2GRCX/47Eb2vR2sJKwqpvb3/TIjAgt0xS2mIr5Po4pv2s2wi08OkrP43ZGzti8tBRA==
X-Received: by 2002:a05:6a00:1b52:b0:6df:b941:f599 with SMTP id o18-20020a056a001b5200b006dfb941f599mr5348409pfv.33.1706969712044;
        Sat, 03 Feb 2024 06:15:12 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCWhV1/NiWc6swS0DJFlB9clI/lKV0JDos2bl2QEhHhTzJmYwgu/f89H+wDw9NVifPwkK7kLFNFJPA8TW2XulcCZDXMvkLnPcaf3XhXH+GMQQvrDL2bbXEubycF37viF6zyFMG7/+y1+5nvGPWKOOUT/Cu2v3IuwBdNFlQpAAJnMco+0CicgzymuGVymWHyodVXpObNm0VYXMKGlo33zFWvhYmsom5P9LxDIOFntKQ5OaDQeBfrvT1h3KIzO0nVKwE/6yVSFnuoleJG9CtxNj4uY7gMKR9df2I+jLKGREaJCEOH81uz2Exj5WOI86CFL6WJG8ytlA4/x8RYjj3/eVUdpVQ==
Received: from dragon (45.78.63.125.16clouds.com. [45.78.63.125])
        by smtp.gmail.com with ESMTPSA id k11-20020aa79d0b000000b006dde36aaae7sm3411050pfp.64.2024.02.03.06.15.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Feb 2024 06:15:11 -0800 (PST)
Date: Sat, 3 Feb 2024 22:15:04 +0800
From: Shawn Guo <shawn.gsc@gmail.com>
To: Marek Vasut <marex@denx.de>
Cc: linux-arm-kernel@lists.infradead.org,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	NXP Linux Team <linux-imx@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: imx8mp: Disable UART4 by default on Data
 Modul i.MX8M Plus eDM SBC
Message-ID: <20240203141504.GH463595@dragon>
References: <20231220000345.42593-1-marex@denx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231220000345.42593-1-marex@denx.de>

On Wed, Dec 20, 2023 at 01:02:42AM +0100, Marek Vasut wrote:
> UART4 is used as CM7 coprocessor debug UART and may not be accessible from
> Linux in case it is protected by RDC. The RDC protection is set up by the
> platform firmware. UART4 is not used on this platform by Linux. Disable
> UART4 by default to prevent boot hangs, which occur when the RDC protection
> is in place.
> 
> Fixes: 562d222f23f0 ("arm64: dts: imx8mp: Add support for Data Modul i.MX8M Plus eDM SBC")
> Signed-off-by: Marek Vasut <marex@denx.de>

Applied, thanks!

