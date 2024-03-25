Return-Path: <devicetree+bounces-53083-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1931488B507
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 00:10:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 94390B60230
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 18:19:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 822925A0F5;
	Mon, 25 Mar 2024 17:51:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KCOPKmei"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com [209.85.167.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8F3412E7E
	for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 17:51:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711389105; cv=none; b=sqfmBu7kClzVpPorddqgkNIMV4fSahj2s1Ldtazv8qZ5X66VMLFKbcfPM6/JD6wwmyFFvVeyiVmuDHBpS87rhCKoS3twSohomzHqeJQ8a5lpVnewmMHfxNcUH3D7qFKkIix2pkZuCSh3cKZfNV8d9v82a4mQEfnpl7teyVT+siM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711389105; c=relaxed/simple;
	bh=wPxTQ6L5hQ1V3kyCgCwmlYGOnI6xMxC4dA6ZWmf1aj8=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=A7rSuvsIpTGTYk5vyTdvg46VNJ7CxRBw+5oyijS+ZNKLL9vKCQOQr4LTUTHHGhUijiYO+YFMc6qd3P9ZHJPotiopXy2617Z4q4bvxsGUJIKwpzLdMt4vt4ja5mQdoAWfAXNTuYC20S3OXdAnF9aVGpxmmTkFaMSg6T5tHO4kYA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KCOPKmei; arc=none smtp.client-ip=209.85.167.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f171.google.com with SMTP id 5614622812f47-3c37e87756dso2828053b6e.3
        for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 10:51:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711389101; x=1711993901; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/r8vljI0U/6T7iQFumI3En0jSQqfhVb0aBnuodSXerk=;
        b=KCOPKmeiMtYyILaSlFNxCo6NyWTRXoFlU45PAuMpoQW/Z2xgKRT4QP5/nB/AQ7vXKh
         K9SUFzvHPhyHFXzifQeNLC+7j6EKylLbec512daXDRSc+miCjEemH05CpbkNfBP5tV2J
         s6JSsvExc9o9ZjivCX3sWdGLqsXczke2GmJZchkLUcPu3cUqogV3cSFXuIBAq/TZVczR
         /Q3foOrpSNhoSmxN2uZuFTjBfzZm2wtCQBJwwbzU9Cx6oICh7up6YGKZ/r+wglL7n3AT
         0/Ndiej9r14JpuL1NKmEbT1EDAaEmaJAZqmdFUDJgHIYjie+cZBr8TAAspWUcJFAU107
         m+iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711389101; x=1711993901;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/r8vljI0U/6T7iQFumI3En0jSQqfhVb0aBnuodSXerk=;
        b=DDHzs1XD4ddh7dWF8imvOAClPWjImnNS/DRDXKYgI530uKI3KUpFrSnASJKlgpWz5+
         NI6CftaPkWKP4PfmSATc0TY1irhpcpOFT7Q327As8OT1HS4ixTdnqykSzn05eozpgfEa
         l0/Szsd3zpR6+edFBLLC2wTk4i6L6eI4NtVwLyuFqdd71znAvT41iqPV7L8/DHtW5ovj
         dtI8czlWVVuwIovIB+p9OsKzPKjMWi/xfe2mz5sEQxfyuy+DzlpHsaW0IEc3lGMOQ1pp
         tPJk0gUmdnVluwAlmqyrsMmrwAHtapVPoZ4iv4CPoE167x3MMvDSADEGjFhghCTmUX0j
         duUg==
X-Gm-Message-State: AOJu0Yzkijj878bI57cr9YDGbihUZltWyjvulKMBNk/6yD7NDRuQFucm
	nzW/2x1TbvM4I3fxGVWEzmzPXxNJK9ZUsWIiuUEEWibARemkahKE
X-Google-Smtp-Source: AGHT+IGQhBj0/vZKeDLja/qFooAeE9BRme6iskuqmtEcG8UmUih+LrVCq8mb2vqEH9Xyw9PtPAys9g==
X-Received: by 2002:a05:6808:1209:b0:3c3:b392:4b87 with SMTP id a9-20020a056808120900b003c3b3924b87mr9100054oil.53.1711389101079;
        Mon, 25 Mar 2024 10:51:41 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id u17-20020a056808151100b003c3d3fc607csm212505oiw.26.2024.03.25.10.51.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 10:51:40 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 0/4] User Requested Fixes for Powkiddy RK3566 Devices
Date: Mon, 25 Mar 2024 12:51:29 -0500
Message-Id: <20240325175133.19393-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Users have requested fixes for Powkiddy devices to help with some
intermittent WiFi issues by adding additional properties to the
SDMMC2 node. They have also requested that the model name be
represented consistently with both the manufacturer name and model
name. Lastly, there exists a second configuration of the RGB30 with
a slightly different regulator layout we need to describe.

I have added the new/additional property of "chasis-type" as well.

Chris Morgan (4):
  dts: rockchip: Add chasis-type for Powkiddy rk3566 devices
  arm64: dts: rockchip: Update sdmmc node for wifi on powkiddy rk3566
  arm64: dts: rockchip: Correct model name for Powkiddy RK3566 Devices
  arm64: dts: rockchip: Describe Alternate Regulator Config on RGB30

 .../dts/rockchip/rk3566-powkiddy-rgb30.dts    | 30 ++++++++++++++++++-
 .../dts/rockchip/rk3566-powkiddy-rk2023.dts   |  6 +++-
 .../dts/rockchip/rk3566-powkiddy-rk2023.dtsi  |  4 +++
 .../boot/dts/rockchip/rk3566-powkiddy-x55.dts |  4 +++
 4 files changed, 42 insertions(+), 2 deletions(-)

-- 
2.34.1


