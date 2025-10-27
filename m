Return-Path: <devicetree+bounces-231365-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 794CFC0CA92
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 10:32:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 3A39D4E0547
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 09:32:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D7F62E8DF5;
	Mon, 27 Oct 2025 09:32:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZR8i7B2f"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 542EB245012
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 09:32:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761557546; cv=none; b=snnuwp8GB45+boDxtFw0NUQquUY98FxDGqGmtm20QHu+/HJ6scCyvqAsRci/IkjLV5aW5rO5HH9KnGAgsMtNFIBDds3HPeO1xV5JtoZLigSgwCxvADLuc78Bd7qDP6LTLwiE2OKskX3LdJmPOjcSoGJdPeZyKwGxx9drQXWuhdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761557546; c=relaxed/simple;
	bh=PwYvVZbDfnjUt+9q3Vs352SJkjyRc6eTPU+alUw/55k=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=VUIN75ee3lL9w7B8B61W0Sz7PByLGZLHnx4yXHTS9vmXFSlk4snxkBUfsWsMjA2Niew//SmTvMq8Nb40lxo36/R9ft3vcKpZmcdFVqcBcPA2VBKM9lt3CzR0QLCz/Sscp65fObgkIUpZHW5kwUzrTKtfyfhCQW2VsAfJ2Xj3UhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZR8i7B2f; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-63c3d913b3bso7479773a12.2
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 02:32:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761557544; x=1762162344; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HFXNnIoPUffpq5LRnYNe5XZlozI/CQ/SXlZWm3Cx7lg=;
        b=ZR8i7B2fz72zXk7BGPY6Se5KUQGXiBPZ+UFCkqGj+02HV8HI9MvPn335Y3PjAbHC5d
         9DuO12LGk09owUr0Fx96x1R4dciqDEI+LVLy1plQWvexb1N08RWC/G8hkeKhXmUnHmvW
         EdjYrjX2UlFvVYDXT/uJgpEUhbGDEgmjJjHrDsNCdm8sjp8guZga/9fN2lA1MylXT1G2
         aIJYL58v2vicBaAQ0GooeU5zg5JEhq5wMMnNnux74SjNEPzDfp217UZ0T3JNcaELW9JY
         y0kx/HQ8ehe+y2qKwEwKuWFZz3gT6qD6tFjE/kpJ/mqYM6F15Bsg7f3dDT+5tlWRLPYl
         lgrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761557544; x=1762162344;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HFXNnIoPUffpq5LRnYNe5XZlozI/CQ/SXlZWm3Cx7lg=;
        b=vhJ2/mVpEd6XC2+FYLsKSJz3ceO9znc9T5oe1zBBczzllPHSvkbuOqvZTDUAbojIqF
         Lh94MPOqfNAtyarRJjU2KA+SrmCLEX2IOmdG00KCIEkgbLa0IEykLERcNWT0NDMraThb
         iAXAPsKLAkl+xo9glcsVeFo44PwnMqJWm1K8cQRqM3rKeB7DMnIOb6KViKpKELjQ87hf
         qT/H1yHSxgLZqZzgfxzCJKcbgvnXRHkfK0nM8ZO+hWLBXQTuMCH7UqZ61WcOXri7DwOs
         haF7WvFkO3wF1PyQQLYgRMAe514AiI+WtzJ2FhQYGZwCXlHD53XTiIeRSz603gP9OQIP
         1sCw==
X-Forwarded-Encrypted: i=1; AJvYcCWaw0bLJJXbf5yLYifnVUDX3nXLqoHe6DSzQEqvMrgb8WeNAMdWkXYdkesGqa55SEVdeVeqdohDnXa0@vger.kernel.org
X-Gm-Message-State: AOJu0YwYjFWeOtJFMbtFhI/PTxbj/DiqMWyYCdlpo2ded0t22m3eGzOn
	q7TRF4bDl/qb/sbI+aRpyW6ccLl7yyS+vCaLcV45dWnCr+0UYyZ3PwtH
X-Gm-Gg: ASbGncsEQNbU8CnnhkVdi6ZNOvs0C/0cWSVfgQHyeW0EkSlTEZ0PZCVVkuL5+N0BIb3
	1MU2dPBoQmCbBYhuPqLzmWCx6xByFjA11YqcEix9CLiYny9BbNK763KhfddSmkY3QTnwDjvQ0qX
	H1RATSe48zmu7Z8Q4TXC9GNMbVocrZ6B/+maHpj6VIQPRkLho0ovZbE8z3xpgCy+dpVrFwP12R7
	HDaWkjg1nbg/CGBaGV6Mw0j/xSzSF1yrWTFad15g/H/0pd00s96ryLsInMQN+A/GoJ2Rqa7rU0h
	bkc5146Otx+foUvbrc3MGJDV3jkCP/osBFXgXK3qa942DRENyy3HQekQ1XTZwDS2tXGN1HuwDLK
	mTumxT1+JXpghibK/sSqehmj3WR0yViH+gN4WwYYdiYMLEHd4nwo0BsYvoI3ZG63LC8W/f0cIo8
	qTD8avS4tqfXAceQkadsTRE+fU8WLKfc5GGmmfoCfq+diUv5BI2HWMD99j3CwYToghVPlBANGRW
	dFLW1IB+uPwwZJx
X-Google-Smtp-Source: AGHT+IGfPIauWeOpslI13bmvAnHqIt73uiqSk5b04/1UOaUS+qZFr7MvAFxL/2NZS2hRKHY7Dz10qQ==
X-Received: by 2002:a05:6402:5206:b0:63c:1f3e:6462 with SMTP id 4fb4d7f45d1cf-63e3e479149mr13612800a12.23.1761557543459;
        Mon, 27 Oct 2025 02:32:23 -0700 (PDT)
Received: from toolbox.int.toradex.com (248.201.173.83.static.wline.lns.sme.cust.swisscom.ch. [83.173.201.248])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63e7ef6be28sm5681014a12.2.2025.10.27.02.32.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Oct 2025 02:32:23 -0700 (PDT)
From: max.oss.09@gmail.com
To: Max Krummenacher <max.krummenacher@toradex.com>,
	Stefan Eichenberger <stefan.eichenberger@toradex.com>
Cc: Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 0/5] arm64: dts: imx8-apalis: add additional functionality
Date: Mon, 27 Oct 2025 10:30:06 +0100
Message-ID: <20251027093133.2344267-1-max.oss.09@gmail.com>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Max Krummenacher <max.krummenacher@toradex.com>

Cleanup the regulator used for the Wi-Fi module.
Improve ADC node by specifing the used reference volatage.
Add thermal nodes and cooling devices for the PMIC.
Cleanup TODOs no longer applicable.


Max Krummenacher (3):
  arm64: dts: imx8-apalis: cleanup todo
  arm64: dts: imx8-apalis: add thermal nodes
  arm64: dts: imx8-apalis: specify adc reference voltage regulator

Stefan Eichenberger (2):
  arm64: dts: imx8-apalis: rename wifi regulator
  arm64: dts: imx8-apalis: use startup-delay-us for wifi regulator

 .../boot/dts/freescale/imx8-apalis-v1.1.dtsi  | 44 ++++++++++++++-----
 .../dts/freescale/imx8qm-apalis-v1.1.dtsi     | 10 ++++-
 .../boot/dts/freescale/imx8qm-apalis.dtsi     |  2 -
 3 files changed, 41 insertions(+), 15 deletions(-)

-- 
2.42.0


