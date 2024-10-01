Return-Path: <devicetree+bounces-106881-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B3E0298C1E1
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 17:42:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7DDF62857AC
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 15:42:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A09B1CB31E;
	Tue,  1 Oct 2024 15:42:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Pt96CmIF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com [209.85.167.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 562BD1CB304
	for <devicetree@vger.kernel.org>; Tue,  1 Oct 2024 15:42:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727797364; cv=none; b=BrgvS8BDfBjIHJaaawmbjWco4diW7bl+R9qX1VpBFAP8p0YIDdvHSlg1z4IETKbQvlilzvpRkjyJREmEkXAUTpNME5YyZOQATFEtyZ1NjOVlMghXyWtM+fof3o/YzWALqoY2thqLobmtwYFsQZbC8ydUbQ+d+35e5ZBC2SX1shw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727797364; c=relaxed/simple;
	bh=7yVfnGzmNyrirVVahMt3CAoEfTExqJ3H8hgRqYh6sL8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Ff9JG1DyMuMcsgPMCknKX6P7tshYqAJZIHIu+CRYz11hEyDecOE3YsfGzdDXR2CmFSYvQ+0mJiqP4ul3/rmDbfjdyYJ4AIiSI3+tLTZz9V5GHKgcMumcDuVC+FYYYRa6Vq/y3Fy5tnJXBLZT/Cu3gfOi0sEKzJD6DaaTYa6/vqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Pt96CmIF; arc=none smtp.client-ip=209.85.167.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f176.google.com with SMTP id 5614622812f47-3e049185cfeso2126992b6e.1
        for <devicetree@vger.kernel.org>; Tue, 01 Oct 2024 08:42:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727797361; x=1728402161; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+aTQoAFuJz1zyLJojlJXvxUZfbLTbgOl8RgfLwHTN3w=;
        b=Pt96CmIFrkwW+lBmRU7jrPN4i91HtGpcb1ubutYUDL4BRNYCVtonOF9MK74SyDVBJS
         NAz0SeiijO8WvDpXbPwzdDNi9ch7prFJ/tVEYsL6aFU+xmOIxHTfs3gYDHirtsuK9npL
         F+8KWVvRqdHK7hLgc9TFV9uaVEKnBXQgryg6tgabGxsB4J9IaDX/QWSULJI8iSpzxplh
         +bIJwOfg4iCEDAtCr4TBzPhaIzlBG4cRSkv97drH/gLwM03Dn4V4FUDtggaerjXw7AMh
         PZ2oUnQJHqgxuqXHhDC96Kc+qKXQhDZ/oHeqxp6XS5mAa/5d9BupwB2dEDnB2lkJw8vX
         tFpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727797361; x=1728402161;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+aTQoAFuJz1zyLJojlJXvxUZfbLTbgOl8RgfLwHTN3w=;
        b=Pe5wOUjKUzYSY7Xe99xa+N8CHjVA+XOj1NG3K3EotJCH8S3vU1YCxW/TrVsGCj9lOb
         COotKuubt0ypKGRBKLCObnqJro8RH+xJMhDVdiQ31KgEzlajsKVUuQg92ehSryufTkIe
         L6UK+yiv9gyla8uR9O/xi/lNDDu5Ua/H7uhjvl3BGh1jOB113f3ZHAXFHMGl4DpmZ85q
         B3B0CipgbMPF4HkF8UKLMwMU2tncMC/VXaWtMk90s25yvrQxFZ2oB76kSzmrmF/SmxZi
         XbftcOGD9b56otPtyW22qc2E1DGT2FuPnNf/WMgoUFHB4V6CtC2+a564XbWQ7PzfrGgA
         GhKA==
X-Gm-Message-State: AOJu0Yz3EjjSkIKBb4XlDO29ch67KqQmf0P3kxwO7EISPHqaKsO8cGxd
	hDGrTxHvtmQHQ94XxaiJQ4PhfpwZedPqmlVC53PFCmAlilk3YlbQ
X-Google-Smtp-Source: AGHT+IF1idztXvqQuOq83eYq7ncv9IXF1MC6zB0YgYdjXv5LvqmVsVWcYvGuurXlOwiQbf8pFrT8sw==
X-Received: by 2002:a05:6808:2116:b0:3e0:41cb:fe5b with SMTP id 5614622812f47-3e3b4187609mr95275b6e.45.1727797361244;
        Tue, 01 Oct 2024 08:42:41 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf::54])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3e3935c6293sm3120485b6e.53.2024.10.01.08.42.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Oct 2024 08:42:39 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 0/2] Add Powkiddy RGB20SX
Date: Tue,  1 Oct 2024 10:40:14 -0500
Message-ID: <20241001154016.87386-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the Powkiddy RGB20SX handheld gaming console. The
device is mostly identical to the RGB30 but with a few key differences.
Namely, the size of the battery and presense of a function button
differ from the RGB30; these changes cannot be detected at runtime and
necessitate a distinct devicetree.

https://powkiddy.com/products/pre-sale-powkiddy-rgb20sx-handheld-game-console

Chris Morgan (2):
  dt-bindings: arm: rockchip: Add Powkiddy RGB20SX
  arm64: dts: rockchip: Add Powkiddy RGB20SX

 .../devicetree/bindings/arm/rockchip.yaml     |  1 +
 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../dts/rockchip/rk3566-powkiddy-rgb20sx.dts  | 89 +++++++++++++++++++
 3 files changed, 91 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb20sx.dts

-- 
2.43.0


