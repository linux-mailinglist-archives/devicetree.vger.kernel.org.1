Return-Path: <devicetree+bounces-197555-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D1A84B09D2F
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 09:59:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 19B221C28649
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 07:59:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 404702BCF70;
	Fri, 18 Jul 2025 07:56:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="LmK9Wy/v"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E44C293B4D
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 07:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752825396; cv=none; b=ZqOfIK6As5EUBcqe4eL/Ucc8GsV1rVS3Mx3Ge0qM6VIHxHnNdN/G8RYJMgELbf0aWU/4lnmqnrDnDSVxqr3+2ELeiE8dw9FmqrG6/2WaRLJdjsddeV61SdcWmPR7JUgytvijlFGkwzWdYGNmii/8Sos0wSmYFlwhrTPFZHE4m30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752825396; c=relaxed/simple;
	bh=PwuTsPsOI9bcEcs74QRkQaUqtP5pEnUywVzKLkjeu0w=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=pHkH4VaSUv6W3h18y+MdhgWcOWZeAzNfrrDvaCb8XwpYrzYwYYN7VlvF3ikeoqOL3a3Hm62+Nv0V6KmqChF0lYLW8PMn4aCq6Ans7yoU2FLkY7kcjA94SlY4T8TYioe8qbz0HfXzY+iyWphmN88JNyKdbWqoh2WmD+g1d8Edwt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=LmK9Wy/v; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-3a6f2c6715fso1436874f8f.1
        for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 00:56:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1752825393; x=1753430193; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yIkRard6W+E126nlrFH68FBbJJING0uBmwMIZSswXsA=;
        b=LmK9Wy/vWSfdoQaFT8qg83f4PRZFbiHGkso/yZKVBgPP4PaEBTqm7Uf65DSPCkjne6
         oiocn+uJ/AbMPNUGCPhlD+Gbtho83/Zv9mb9EroK5/eZMDNIUJc6atRBPllWHmHypLpB
         kzTy5nvTWMy2iZwOTIwQ2ARXB9vLCQkfzSpdY6kFjRU8RH/9BQ3PgwmVp/ANXpHkcf97
         G5OjlImsCBQ6tSWaYW5WPyV5KSEI7fg+5Dv7H4PXmEtfn1xX8fLgOUeO2i1Ymrv0I1YH
         Kw6msFj+m7684x2Lpvbe8mzNxUD5tPzpM3/20b1Lqgzghil2rpzQz5zey0e9G29M82Fn
         bEzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752825393; x=1753430193;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yIkRard6W+E126nlrFH68FBbJJING0uBmwMIZSswXsA=;
        b=H+VPKH1J0kg0vQx2WTOU7NYxQt6KFat9jKbRsnhktsXQeizaQRm3h3eAbcT9MNaqDv
         /MH4LPhORviR/2t7+cNUslPqB4rwGiHGSj8VK4yAcd1u7LYoTuZBlQ8YHKoBiuX1ptmL
         oh4Zcpvy3oXTMXOkssJyOR6PsUvxabg6HMaTBMLml+7HJ7lDUR0NRUWEeqIrWWeA9zN+
         FcxKFk0RfBW3OQ/Hsx9gOY7ySW/F6wboqDEdD1ADsItZO2CUy+rKlEQtOZCCOC6R2R3D
         HShRN5a6uL0WoUnfDD4peih9/tTS28cAd037Md8pKIMFbHmFpXIpDtC2ohPPQvLwItDU
         sM5w==
X-Forwarded-Encrypted: i=1; AJvYcCVfwAK0LbZubK0Df0YzevRc0vQwNpXgi9z1YGlAl8h7KwK9O5iibwKF+fXmcnrriaP4AiVYs25qO0N+@vger.kernel.org
X-Gm-Message-State: AOJu0YzUzp8XphsVp4Xyvk1rvJZktO8O5kjdT/uB69ZQMATK6BLUjEsz
	6Pl69eJ8nxHqGrj5/22ATm08mFKblSyBXvHgDuBYICIZH4+FH7ROdbrgS3A0COQ86bA=
X-Gm-Gg: ASbGncsY3ydX7QYMM+iV/URTRFTypfaQJ9wJaN8TKo9bE3uBWJoCcuzgdO37ctuxPr+
	Yo2BKZ63lHjpW7NlmXTBcCli2+VFCTX93KTarKbSoj5RSF2lCuIgs11Gl9AU0Wo35tDrK78H8g9
	OQ+6rb2PJZIHVNxyYWoKcJ8eTcIYOjqMCorctJj5FgOaVx1VNnH1+PaMVHZ3slH4ZpiDPYzegSr
	RU3q0xsqpRWYiymkP/PzvimHMK87vg5CS+zLmzToqchKTjZGCC/f+lYpIZqJW+coZnq7gzqtiVi
	QOVgjl0Yzqx+JM+4DQvgB/nVn0vg+m+dlTHt16bNyTlQXDqloRPoNvoogV8lTm8/dy5gueWTNuK
	s6saVBab4VGLlEebCeQ+t
X-Google-Smtp-Source: AGHT+IFR7z0xrtW7kV+L/PWsVn19Mve34KO13llGmq0De9UTBvi6IEowVSVAnjHLfBTTi45HhGu+EQ==
X-Received: by 2002:a05:6000:1a85:b0:3a4:ef36:1f4d with SMTP id ffacd0b85a97d-3b60e4f2c6amr7520566f8f.38.1752825392621;
        Fri, 18 Jul 2025 00:56:32 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:be63:a233:df8:a223])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b61ca48a23sm1080851f8f.54.2025.07.18.00.56.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Jul 2025 00:56:32 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Keguang Zhang <keguang.zhang@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Lee Jones <lee@kernel.org>,
	Madhavan Srinivasan <maddy@linux.ibm.com>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Nicholas Piggin <npiggin@gmail.com>,
	Christophe Leroy <christophe.leroy@csgroup.eu>,
	"Rob Herring (Arm)" <robh@kernel.org>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-mips@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linuxppc-dev@lists.ozlabs.org
Subject: Re: [PATCH v2] dt-bindings: gpio: Create a trivial GPIO schema
Date: Fri, 18 Jul 2025 09:56:01 +0200
Message-ID: <175282531516.45055.8482528409833116992.b4-ty@linaro.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250714201959.2983482-1-robh@kernel.org>
References: <20250714201959.2983482-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


On Mon, 14 Jul 2025 15:19:51 -0500, Rob Herring (Arm) wrote:
> Many simple GPIO controllers without interrupt capability have the same
> schema other than their compatible value. Combine all these bindings
> into a single schema. The criteria to be included here is must use 2
> cells, have no interrupt capability, have 0 or 1 "reg" entries, and
> have no other resources (like clocks).
> 
> Note that "ngpios" is now allowed in some cases it wasn't before and
> constraints on it have been dropped.
> 
> [...]

Applied, thanks!

[1/1] dt-bindings: gpio: Create a trivial GPIO schema
      https://git.kernel.org/brgl/linux/c/2ace85b5bbd065a4e037970154854dc2b41d7b31

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

