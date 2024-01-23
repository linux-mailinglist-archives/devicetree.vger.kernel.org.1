Return-Path: <devicetree+bounces-34417-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 60F25839AF5
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 22:21:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 03A4B1F21BFF
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 21:21:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 347FD2C682;
	Tue, 23 Jan 2024 21:21:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hzEbAWf5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2EB82C1AE
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 21:21:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706044880; cv=none; b=IV6icwIK8lorT8RHjm9NRzCaHi/PWindnUdE+pvBzMkrLKJ3opibRYkNmqDh6BJuQXgeEoWbUG19AKu8ZjLV2XYu/2M8fCrk2vG21taWkY72l0xGMq55kXPkTyiSw0ROTgwKBm5wu85ypjZyQCCebTbzLZRrH6v0m1po3nZWcYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706044880; c=relaxed/simple;
	bh=6ZcFAGxsXfBuE3ga46oXJ6I/U3rBa9vgh9Zg57GzUrQ=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=iR86XItwPCkaMyCPtcJaNn9JYYSLmaLmUoDFvw4Ju4hfcMhKuDmn0kW+Gp3Ro4+bCGY9JyIVo+qj7CqQZvhGDbN2lO1K3M4IIb8KknaQ6n0YEpKElSBcOV4DbG/ieAodYQ3zaW8JA8A2BOdpy2oQkehpIpguViIv2Fdyjkj/zJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hzEbAWf5; arc=none smtp.client-ip=209.85.210.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-6dc20b4595bso3613241a34.0
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 13:21:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706044878; x=1706649678; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=AHAGkFwxLewCCCdzfxQpaTguak4yI4GrECprCWhB9r8=;
        b=hzEbAWf5IvUUZBkA61rO3zcp7b31W5OgVTIsso7KAQ9S2z8QhNa2sGs6bLK8SeJxQ5
         2SMsp6uZrRI5jC2keq779xNWqETFzdBRuwxpMXZaUGkX53ck6hui/+FR2WKJELSNXMvm
         ebNj6+q4fQAmSrm9viI4GujIkTesHNNTWX1Hqb8YjLsXnTWjngyAlz6jkpPvdmdul6W6
         yah4uO1QH9+EY/mrMwqtjbBwVIN1ejrh07AglBWzkrU+L+RIgmSiGSesnU5mj1Rdb8tj
         FHfz8KRgnJNWXhQ/nWkSVzZdlk+kmx20FUMaluZthv5wmSNs3dxBWJ7m2BYFu2eNzvul
         Xvpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706044878; x=1706649678;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AHAGkFwxLewCCCdzfxQpaTguak4yI4GrECprCWhB9r8=;
        b=jfW3tYY8/VRHaGGv2AxH4wH46zWLEx2lT00hLQT8AxZahWb/NfaXYVruT1uJPjg8gA
         MnN7S+3zUFl68bsK90tN+c2TuEgpQJSZTw4Tcng9JtafcjdLZgThWW6OVpwlsd2uIOsb
         1d6wFgzc+5Q4RNAKgDuSbLkmw8lOVITizvUbuKv/M2BrFVvqpC18if/mzl49b3qEm5LB
         TFghX/igLK3v5aWOiIB6beaoR3XmGudbfY5BYUqiddO9EaTZhZMU+6lvS6atoCBnwsEA
         BAKqzpgIwTm91EVB4eDaUcCJhhMd/EyPRIv9ZpUUdKujuQnf20iWlSAYkuj2VmFg6qF6
         +5CA==
X-Gm-Message-State: AOJu0YxbJiHop75znN7xd1bVS6fY6wfrrRzcSLE7mf9dMm2OTENyxFCV
	pQBV3VW/RJ4GhX13iTnsJzvQtkZ9DW4uaWJ94crayLR1U7ZTD1NO9AsOeSy5
X-Google-Smtp-Source: AGHT+IGkxYUjValEXECGEiPKxSkIveHC+S7J1r3MOep0Caq0PQhXCD5g8WzFDheWBpkldInCCYB4hQ==
X-Received: by 2002:a05:6830:1e0e:b0:6dd:de84:2626 with SMTP id s14-20020a0568301e0e00b006ddde842626mr573131otr.58.1706044877797;
        Tue, 23 Jan 2024 13:21:17 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id w2-20020a9d4502000000b006dc6e40ba97sm2265770ote.72.2024.01.23.13.21.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 13:21:17 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 0/4] Add Support for RK3566 Anbernic RG-ARC
Date: Tue, 23 Jan 2024 15:21:07 -0600
Message-Id: <20240123212111.202146-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the Anbernic RG-ARC S and RG-ARC D handheld gaming
console.

Chris Morgan (4):
  arm64: dts: rockchip: Move device specific properties
  dt-bindings: arm: rockchip: Add Anbernic RG-Arc
  clk: rockchip: rk3568: Add PLL rate for 128MHz
  arm64: dts: rockchip: add Anbernic RG-ARC S and RG-ARC D

 .../devicetree/bindings/arm/rockchip.yaml     |  31 +--
 arch/arm64/boot/dts/rockchip/Makefile         |   2 +
 .../dts/rockchip/rk3566-anbernic-rg-arc-d.dts |  42 ++++
 .../dts/rockchip/rk3566-anbernic-rg-arc-s.dts |  19 ++
 .../dts/rockchip/rk3566-anbernic-rg-arc.dtsi  | 237 ++++++++++++++++++
 .../dts/rockchip/rk3566-anbernic-rg353x.dtsi  |  74 ++++++
 .../dts/rockchip/rk3566-anbernic-rg503.dts    |  74 ++++++
 .../dts/rockchip/rk3566-anbernic-rgxx3.dtsi   |  74 ------
 drivers/clk/rockchip/clk-rk3568.c             |   1 +
 9 files changed, 458 insertions(+), 96 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-d.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-s.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc.dtsi

-- 
2.34.1


