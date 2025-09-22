Return-Path: <devicetree+bounces-220256-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D900B93913
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 01:25:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id F129F4E1B18
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 23:25:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70C252F1FD3;
	Mon, 22 Sep 2025 23:25:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XH6EpV6B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D098A1F4191
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 23:25:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758583550; cv=none; b=ba6w3wOjFrumhT/Etc68DQPb9IWnntjGQpp1FnXdHaP9guxovyGnNw4e1QpFK8avuNtGoJc6X5tURxESigAfSTA63JT7OsCc6259MlUN1ltB3+snykaMnhdtPdhhrrFfzKiufpN7FGybX9/ydKZWZ16wx0FvSWkA2PX0i8SDPGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758583550; c=relaxed/simple;
	bh=JLZ6zJ1daf0+CDFQwAvOjSOsjU7qluGVOxSDdjbTdGQ=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=KgM3dGkcMysYlAHzx2dJGBxNHnI6/jnOEb6sGgGP5G3mUQYKCjEByK9a1p8AuXbcKghJWW5f66SZAEEgllM7Zy/uWBYPykrAyrjRLcyF3m79YQj+jQWK2wwuOLbh4D5PDhdAXg5+6W1jpjh8GX7iU3HJwOMtUjOM31mcMq/u70Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XH6EpV6B; arc=none smtp.client-ip=209.85.219.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f48.google.com with SMTP id 6a1803df08f44-78f15d5846dso56063376d6.0
        for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 16:25:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758583548; x=1759188348; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=F8P93O7mFuM2RNG5Gl6sjJK4baF70StwSvvALSzglIM=;
        b=XH6EpV6BHReVvprvhMpDJIvi4VCnqHWcSO41mk/v9YeSE131IcMOJ6aiE6zO7f4vPv
         f+5ZdQrtuKrJV9tVVMnkHpG/t/UKqABY6567YqPBh1vj/EifwJnuMWxqYURHxz2V4o7h
         iQKVcwlSMNsthevnbAw3mYa82yBzMPj7QqtFiEQlboFImQIWtn6+Zs/De2bPjjHwHE8O
         JVDE3X1VYlDEOeAhEJ0SQUXQWR5YvjHfDpBr8UxpD5lDp9bk7e/ISOFK3D2QfuM1HhEM
         n37htnbwdhkyi+B+1mI5s3K4C0MvSjTNU+HcRNOQvSy1hTiK20kIrocacoypio4UCRHi
         tH/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758583548; x=1759188348;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F8P93O7mFuM2RNG5Gl6sjJK4baF70StwSvvALSzglIM=;
        b=au5l9YLH3KaL61giPez85wJwY03KqCWVkmiNr5Qdbjz2rxxOlF8xJISuxvXb+EgX0Z
         Vs0pzLS5hme8fB9pW9iiC5HBtBh77PbX2QbF0/DNAtpL4aEz+yq5KVoJwSxvwHm+A3W7
         VNm8XT5MWH0SSksX+sjuDbLccOQtqLCvph/iBFDHJccaTX4PkIB/VZyDedhnQf81au/k
         JDrlQAbUyZYyQIylBu6WirvVDjKPm0r+c/IC14cMcQVlhcwwbNBUAkEwmE4fCCl81C9S
         2hsZQ7ACKbBlQ2mZlQAKGZyZCJBzW6uFnB2uOw56+BHw1MPiV6JqP6SioWge65pgkBpD
         J9KQ==
X-Forwarded-Encrypted: i=1; AJvYcCUzmS++EO9NKAA29oI67bSGAtOpAaXvXdpUmHKEyZ3jMU/s35WYOjG9vUs8yNmqVVzbSFSc46QIf10I@vger.kernel.org
X-Gm-Message-State: AOJu0YzuGQNVrchCQ65QaKQ1N+cO+zRmDA4q7jZNSE8qMANisIJBAUvZ
	+1pH/N436paadYhcnx11/wLvfSu1cUN5tH3ZNFc3f5pKNvR5U3pGOEm3
X-Gm-Gg: ASbGncsIqyE2/kZmc5qmeeC/D+W4kaIra2cMmG3bG92qJflRuvDCzw3M4dfqZXZdA1X
	8wtI3OStI7vZUD1ltEgUbwuR22ivx2uBquOIBH7nI1xYZcyWlSS+INdwvUS1kre+0q0I4SwpFLn
	mY3fkzil8Bl/zYCtpjAI+hrMAjq8V7jfu+E2ke1k02RPMqF4Qqq6Z/TOwWm3OBbGIzJKYtEUUyF
	IthlZfA3oUlmci7eu8IoshH/1MR3rqihd4vNWjbFNVFIvVMbvqmpA21bwXaNyU7EdbQKDP246Yd
	sDLxFrW0VC+L6B3J3EmP4K12haAuEaKu3FVsV6EJwlpkRFLKqbYofzYQKiZB5n22/Pf2dlN133s
	hJO9cLUg8PQRUojIEcKooyTmGoklqFU6H7bWlHdVB
X-Google-Smtp-Source: AGHT+IFbSBgrLxfeIQurMy9quETHgDR5erLT96k/GtUBVfyP12lxyT/MwQ6vyqqabYOGY6hcIz9rTg==
X-Received: by 2002:ad4:5ce1:0:b0:777:2f9d:71ca with SMTP id 6a1803df08f44-7e719766627mr7924456d6.56.1758583547736;
        Mon, 22 Sep 2025 16:25:47 -0700 (PDT)
Received: from rogerio-laptop.home ([184.148.194.86])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-793548c63desm79417226d6.57.2025.09.22.16.25.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Sep 2025 16:25:47 -0700 (PDT)
From: Rogerio Pimentel <rpimentel.silva@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de
Cc: xiaofeng.wei@nxp.com,
	kernel@pengutronix.de,
	festevam@gmail.com,
	alexander.stein@ew.tq-group.com,
	dario.binacchi@amarulasolutions.com,
	marex@denx.de,
	Markus.Niebel@tq-group.com,
	y.moog@phytec.de,
	joao.goncalves@toradex.com,
	frieder.schrempf@kontron.de,
	josua@solid-run.com,
	francesco.dolcini@toradex.com,
	primoz.fiser@norik.com,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Rogerio Pimentel <rpimentel.silva@gmail.com>
Subject: [PATCH v3 1/2] dt-bindings: arm: fsl: Add i.MX8MP FRDM board
Date: Mon, 22 Sep 2025 19:25:22 -0400
Message-Id: <20250922232523.844633-1-rpimentel.silva@gmail.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add device tree compatible string for the i.MX8MP FRDM board.

Signed-off-by: Rogerio Pimentel <rpimentel.silva@gmail.com>
---

No changes in v3

No changes in v2


 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 00cdf490b062..8bddf1f8a78d 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -1099,6 +1099,7 @@ properties:
               - emcraft,imx8mp-navqp      # i.MX8MP Emcraft Systems NavQ+ Kit
               - fsl,imx8mp-evk            # i.MX8MP EVK Board
               - fsl,imx8mp-evk-revb4      # i.MX8MP EVK Rev B4 Board
+              - fsl,imx8mp-frdm           # i.MX8MP Freedom Board
               - gateworks,imx8mp-gw71xx-2x # i.MX8MP Gateworks Board
               - gateworks,imx8mp-gw72xx-2x # i.MX8MP Gateworks Board
               - gateworks,imx8mp-gw73xx-2x # i.MX8MP Gateworks Board
-- 
2.25.1


