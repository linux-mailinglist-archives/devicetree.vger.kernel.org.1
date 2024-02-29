Return-Path: <devicetree+bounces-47221-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8276386C787
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 11:58:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B41691C22CC6
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 10:58:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 704837AE59;
	Thu, 29 Feb 2024 10:58:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="Nw0K+k7S"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (www.zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE6EA7A704
	for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 10:58:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709204326; cv=none; b=l8RQjWfYjTlBW3a4hwpbYeALGbSR3jS+UtXgdM23JShh5a9XhRA643Jqx941Mjs8d1rz47isEbpXI2MWyT8TgFEhDcZdLl0n4aS44hLPI6G0V065IBbGON9Yb11VuxrNuyGIYI2PGOpTlGwT0FelccnW7Tczisk9A1AUempve/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709204326; c=relaxed/simple;
	bh=Aspv0G+YG9614QQAmWGdnPtXhOIvyhPuhr5UY12xlXY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Pxt5q/3pa6EkNm39d8F6NXyfX+qXu4k91IkALqYhtYad3+xvOlgPlxruY75D5Vt8Kq06LahaK+O7m3Xlud8X1TqFuQzWuANBZi+R08RAdih5jWsT8pnID6x238UqrHMzwoqQTVgfDgUiiBq6VdiDU08/PUgAbPC0ojOLaTdtJkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=Nw0K+k7S; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:mime-version:content-transfer-encoding; s=k1; bh=4eke9AvP60x46V
	nmjd4TBJ7DFqyFYzBhCdKdqGcDHmc=; b=Nw0K+k7SmNbMyafANJF4722nBDDkAZ
	0Ze+RcEjaxKrUnSR7D78LG9TfWECbQvvYKu1GS7v7bT/5bh80dzVGUM2nSGreUwF
	tseEO05KXB57Y9NaIuFFXM2lSHuewTuFZSGF3Z6oJFVC0HLlLYYWJm4tx8fhlTuz
	fdkheIywGwv3rBnXozXUpx5Dk6O7CKcAbRmTYe7m1Bqq9fJKgKKxn2KUULlfRaSe
	00QYYfiv7IMtW8HIvFtqRXz/GvpUGQ9H8Iqoovy56yf6noX2jZ8q1xERNY4ygunK
	22+pUleTSAG3T/8nkQ6bhUkwXqI0Pb5qfU9sy72Ky3BoHRMbY8nZjl2g==
Received: (qmail 2277949 invoked from network); 29 Feb 2024 11:58:40 +0100
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 29 Feb 2024 11:58:40 +0100
X-UD-Smtp-Session: l3s3148p1@jH5VJIMSejltKPFZ
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Chris Packham <chris.packham@alliedtelesis.co.nz>,
	Rob Herring <robh+dt@kernel.org>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>,
	devicetree@vger.kernel.org,
	linux-i2c@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH RFT 0/3] i2c: mpc: use proper binding for transfer timeouts
Date: Thu, 29 Feb 2024 11:58:10 +0100
Message-ID: <20240229105810.29220-5-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

To clean up the confusing situation regarding I2C timeout bindings, here
is the series to fix up the MPC driver which mixed up clock stretching
timeout with transfer timeouts. Plus a minor cleanup while here.

Only build tested, so actual testing is welcome.


Wolfram Sang (3):
  dt-bindings: i2c: mpc: use proper binding for transfer timeouts
  i2c: mpc: use proper binding for transfer timeouts
  i2c: mpc: remove outdated macro

 .../devicetree/bindings/i2c/i2c-mpc.yaml         |  2 +-
 drivers/i2c/busses/i2c-mpc.c                     | 16 +++++++---------
 2 files changed, 8 insertions(+), 10 deletions(-)

-- 
2.43.0


