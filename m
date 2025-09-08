Return-Path: <devicetree+bounces-214498-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C22E1B4951E
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 18:23:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DE44918904D9
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 16:23:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37BB330FF00;
	Mon,  8 Sep 2025 16:21:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="hwuwIUja"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D61D630ACEF
	for <devicetree@vger.kernel.org>; Mon,  8 Sep 2025 16:21:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.84.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757348476; cv=none; b=W2SJrSI5VVfd/WR10JIDFQm29PmD/hu1wgX0Q1ZL3gXpvOC8EWjJ3uILHHbkIFB6/tzd3fmHx3HqkssbhdhpP5qVQJO0Cjy6xHDlq+CS91hJZ3l/qvZ7JG1/Mn1YiBao6IdcaiFcV3B6LKyEx4WFlugAhNWJ7o97iRt1pZunFXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757348476; c=relaxed/simple;
	bh=CxhtcWFOqB/3crGFNrb/zODeeqpMlXwf5hN3B4IO01E=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=DO8VxT+5XUgFY3MWKCN6xsqA/R5s8Vg7lzkXpP3eHhRaxXcSH9mGDD4NinoWMAJGKqUXz97QJMjot1IbxYYUaotlccxPGrZ2VtP2kDyUofYn4d0+KZiAiwklIAFMkLVczyu8q06HifIlw5ya+pyDrRBihP3LLa9glQtiKxGhfJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=hwuwIUja; arc=none smtp.client-ip=185.246.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id C0BF51A0E23;
	Mon,  8 Sep 2025 16:21:08 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 913806061A;
	Mon,  8 Sep 2025 16:21:08 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 079E7102F27D2;
	Mon,  8 Sep 2025 18:21:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1757348467; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding; bh=enYDIFRj8AFyUbKEH7cvYkwYYEkfFE7ESezCSgRmQoA=;
	b=hwuwIUja7WXxA1EYGHujFywZ/jIqGDvtzPaH/dORR/l5I7lh2tO9e1OwzCO+rZB0QpwZKR
	YO2rSKCtG5GV4gDJ2Wpl0hCQdOxw85ISdtB2fcuWm0u3Umibvec7//GoIxrjotCrzJr4iB
	4F134K9jjgx4Yp2luLOFoBuFjFRdoQSdgI4JsvTjBZGRx2Bm2oanUwx+8PJNKgvbPCpgz1
	J1GjDVF66i/c7O1Fzv/Zqtvfg4Eraty5uBZjkziFsAtZOHCf7i9+T1/ZUjtrrsNHa+0RkZ
	zjSVEh9XNHBD2S7EnHALniOSDCWKjxTJri7Juj1cN7crTjQxDQHYsTb3J6NqcA==
From: Richard Genoud <richard.genoud@bootlin.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>
Cc: Aswath Govindraju <a-govindraju@ti.com>,
	linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Richard Genoud <richard.genoud@bootlin.com>
Subject: [PATCH 0/2] ti,am62-usb: introduce ti,lane-reverse property
Date: Mon,  8 Sep 2025 18:20:50 +0200
Message-ID: <20250908162052.355341-1-richard.genoud@bootlin.com>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3

This mini series introduces and uses the ti,lane-reverse property.

dwc3-am62 USB PHY supports swapping D+ and D- lines which is quite
useful when a mistake as been made in the design, or even if the lines
were swapped on purpose, to facilitate routing for example.

The first patch adds the binding and the second one uses it.

This has been tested on a am625 Soc

Richard Genoud (2):
  dt-bindings: usb/ti,am62-usb.yaml: Add ti,lane-reverse property
  usb: dwc3-am62: support ti,lane-reverse property

 Documentation/devicetree/bindings/usb/ti,am62-usb.yaml | 5 +++++
 drivers/usb/dwc3/dwc3-am62.c                           | 5 +++++
 2 files changed, 10 insertions(+)


