Return-Path: <devicetree+bounces-198581-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CF935B0D768
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 12:37:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DC6CB561648
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 10:37:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2ECF2E093E;
	Tue, 22 Jul 2025 10:37:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="aQdW4ASG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97B2422688C
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 10:37:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753180637; cv=none; b=UXJQra6ikqGibphI3SEHJG4RgYGYjHrDdHiRhR6lo3tY+PQp7fD1MgRfLG2SBIN9tXV/tBwrv2QPSDbbVzqY4Lzhy0ChDj9Cben7soikbbWzgPv+KInVsWb0gCvX4MZPbCy42QbrQK91HNRcYzALiB7mjG2cttnyJtnHA9PV19I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753180637; c=relaxed/simple;
	bh=fzd736V1k3v1vCZM3Ch2IkXksn65O+KzpQBR36Q5RZ4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=J849q3l6gMaT9BSG2MjB7rq9Ugm1X7j255sXNQP+uWc5gBKitYEPuu1JglU78bEIHjMxtwoIGrJxPN3UuQQTa7JdLr7tM7V5RpxSAd53x4aqVt0UQ8nzHjxSbvKv8IzYkghupYF/MEwEPML+Pdno88N4sMr09BBIL97y0rGwwwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=aQdW4ASG; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-6129ff08877so8404593a12.1
        for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 03:37:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1753180634; x=1753785434; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=F1iQ+DzVo9DQ7ELRKT5wsmUCmjLHRUNTNjWFoL4XTeQ=;
        b=aQdW4ASG1bp0gqACBVl3iJjxfuEc5eLH0pdzr4+7sYUZoWWmbEH/UeBlxLudj6sCSO
         06QfNhJCbypwXm+PEQJ+pDJ5ExOqglUTqvb8NX0OCgeEsYG4qNju3oH+7Ii7SixLb4tx
         305wuJR4ktHZ2RpkPhk78rP/4zoJ7UG4Ea/Dg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753180634; x=1753785434;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F1iQ+DzVo9DQ7ELRKT5wsmUCmjLHRUNTNjWFoL4XTeQ=;
        b=MIW42CwHYVMN/LvpwUQ9nk4AtzBNHfGULbEGX1PbSHDSMWv5k7aG5viWeKeR/Qd2Tz
         iehnTVqOdPzwny/UbsTVS/MoOD12MJy4TXgCfUDEShWkO0DmRAdiFzRz7CPN3vzXjQb8
         qnDuxAfofRLUwHF0q6JRKFySbA1FcXI2n+FOml3XtNdVPtpovtUKWLKDzxEbWopLWcni
         yVanGZll87jTiOz37F+ZuQLLrSAK/aA4qyqCgOKOlCwNLNfKkdJ7XtMs7GVCWzW0/+p2
         b20BtvkXJLBXS7HLIxL6lk7gv3pVwHiSWPpPrLkFerf0B2oWjl7rKEF6NdtSiBSxfPHa
         P34g==
X-Forwarded-Encrypted: i=1; AJvYcCWiooYfneU+M9bqR8jgnJYgNp66rYcrFFztV8fJMl8QD30HuVlmmNQDkKzhezekVBt+Sm4/HRHrh+/X@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9TvRsEc0REknl79MCTDaKJATRdpLbMr842+E+CnvGH4ucWtRP
	3HVWFmBKuIPN1ehBmayCYvXbUvJXFYYlfpeYF+45rnDvd4SxXDhHeUR03/fRltXcuB8=
X-Gm-Gg: ASbGncve0eB7Wa4KgDudG6x0+cm+Dss9joFBq5I4TogFA5RXDNshkF+eoycY5/aiGOo
	kJ4OnBVVDVIRLehat7PBunmV1SlNcUiMYe8B9QeiOY3Q/pLny2XQhqtNb3DZ+6rtIPnSvo3FjLO
	ijvY4MsFioHCDLPS/DggOY6ZP6/IR1WHb1PaNZQ5l27rpMKFvFMw3XNvM4GeGH7QnRVeDE2iFbx
	s2KDcIZJ+APvUaniSO1ZZcdn1uK/ZRKQFSyA4t13dMTSWvJbJu3YzrpjAIEiC3RFnktyKfftf7W
	AVc29BSN5/2zFvtRP4TJqYHTu9g5rBpNNrYEpKx3UVVF6MAMBzY6TGrM+yuqZj4W6I1QjJ2hOuR
	4415TMoUoWe/oG3iGjE9EVpPbu6xdePLHQmEaDm0qbfUBcRYVYBQekC7iQao=
X-Google-Smtp-Source: AGHT+IHSThhFTO10wKsOhlI2B+/WINETFfgihIq5+JjYua7ZAoLLp3FbG8jE6ltycXzk2pFdKzcM2w==
X-Received: by 2002:a17:907:3f15:b0:ae0:5137:6d6 with SMTP id a640c23a62f3a-af152bf63cfmr214633166b.9.1753180633782;
        Tue, 22 Jul 2025 03:37:13 -0700 (PDT)
Received: from localhost.localdomain ([2001:b07:6474:ebbf:2bba:d7b0:8e79:c982])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aec6ca310e2sm844568766b.79.2025.07.22.03.37.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Jul 2025 03:37:13 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Fabio Estevam <festevam@gmail.com>,
	Haibo Chen <haibo.chen@nxp.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Michael Trimarchi <michael@amarulasolutions.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-input@vger.kernel.org
Subject: [PATCH 0/4] Input: imx6ul_tsc - set glitch threshold by dts property
Date: Tue, 22 Jul 2025 12:36:14 +0200
Message-ID: <20250722103706.3440777-1-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The series allows setting the glitch threshold for the detected signal
from a DTS property instead of a hardcoded value.
In addition, I applied a patch that replaces opencoded masking and
shifting, with BIT(), GENMASK(), FIELD_GET() and FIELD_PREP() macros.


Dario Binacchi (3):
  dt-bindings: input: touchscreen: fsl,imx6ul-tsc: add
    fsl,glitch-threshold
  Input: imx6ul_tsc - set glitch threshold by DTS property
  Input: imx6ul_tsc - use BIT, FIELD_{GET,PREP} and GENMASK macros

Michael Trimarchi (1):
  Input: imx6ul_tsc - fix typo in register name

 .../input/touchscreen/fsl,imx6ul-tsc.yaml     |  18 +++
 drivers/input/touchscreen/imx6ul_tsc.c        | 112 +++++++++++-------
 2 files changed, 86 insertions(+), 44 deletions(-)

-- 
2.43.0

base-commit: 89be9a83ccf1f88522317ce02f854f30d6115c41
branch: tsc_de_glitch

