Return-Path: <devicetree+bounces-218245-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 30D67B7EB24
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 14:58:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C6FBD189EBBD
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 08:06:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9AF3E3064A2;
	Wed, 17 Sep 2025 08:05:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="RPVvRIyz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA3F6305E01
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 08:05:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758096341; cv=none; b=nlgHcSq0ntmtyVNK6uVaw8T1UpttSEJk8Jg4hIS+4pbdQYY98A1/ggLZjtN1tSoRh8kD0fxAfKu6Un6krG98EtnYD3YpwAdtyLbALELRb3ozRK5i3xFwMAzYI6w0TckvuWmIkZ0MuoVNghfWnlJqdpelAg1hPz07dzeLtvB7i2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758096341; c=relaxed/simple;
	bh=gDFOJLDzxUDcqovn2642JdV5yxcGbUHiv+uQIwqON84=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=RHnSuPsJdqDbASNlS9Kg9yQk2ZxgPLhLhymrvQeA6Clt4TqknizkO1c9M4eMtd8wwtcjzBSSAaA+g4RMM8o/GdL79u14p71yqVllJX+C+ZT7wdLNm7GFd8Y+mfynSIclLrfgX0zOkiOPk1UnYXj4Ka+OPO0xkieZU9EPevEWNvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=RPVvRIyz; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-b07c2908f3eso762300766b.1
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 01:05:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1758096338; x=1758701138; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=NPuegdZHn6x7l8oR57Kwdwve5Qd3dUF765nGwdELATA=;
        b=RPVvRIyz0Po+TpogKbe/ED501XtNnZxe+SMBAB8282cQcwXjdIp9JTIT4dNOFTLJDz
         YQwTXN5edzdwAli8bqm+ElRnJHbWlTRyrE3AoyfFtZuiII7wQ4n5yuTKWCatuQbKhklS
         HIQdhKk8wLJB8za2zfRY6qrGnN+GNWXQHzcnI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758096338; x=1758701138;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NPuegdZHn6x7l8oR57Kwdwve5Qd3dUF765nGwdELATA=;
        b=v923edqJgSLdz75ujps1jW+AiWyg7/pj9K8ckSyden1xJ8B2ZPlaDZ+3tVSB6oM6cq
         15FlFGGe2QgVW9EnU9QNVt/GDzdcYBbC9kFefYlZiIffSh0qiX3pIrrJkKoFBZoH02TG
         OsBuyfehtZKDyXIySvSxmpmp71b5isZQMZTYMYGBRcWuZn0E/gpk/X83J+yBN5qvXVtV
         R2BriMnon11oxIoOW+IxhqUDlImPZYSwIyWWKYZt+4ReiyFAC7FIgANhYjoZsQvgvVs7
         QFHZhWkPB9t/zY2Y+c4az2Yfww311nuvrrMXlhEFGQx4YlzzhTsSAso5d4+3aY1aG49x
         /Lyg==
X-Forwarded-Encrypted: i=1; AJvYcCUnPhu+03w5O/YFdaXpNuCvMT9T3sFOCP79SzPIYMTRj49SHuClPR4Gs31IUoXMAAuD5cXCPQvHmLGq@vger.kernel.org
X-Gm-Message-State: AOJu0YzuY7grWkjE4kmAOQYGmSnFWtzNmAZOviOEBOY3y/3K43XlbkEN
	AO030y5+U62g3rxBM0wwHBZ9u7NOsyaPyEeNWOO/OqBxRtEEM0k/qqksziQOufh4n1k=
X-Gm-Gg: ASbGncsl55GyUrgdiLK+hsbUoKqafY0yA+fl2Mmzp3BN4bIzAqfFq7oCMMqWOJvW9ye
	UecADf7blIBKcxwH6SFjuMzC7LZ78STbPiAvLd90L9YpVYNzJXECh3ha01qHya1RblN/j56c74W
	RIjOMTnLgpVg2GEGY5484bL9gIUFUgC51j2jIwWw36I4Nrr0EIMYnqKkE2XwT5SjYiZkxaNYwWk
	vLlP74MP+dFokOaYjxagehcVimRFZqkM74byLPV3ydaTy4N8S32MLzcfunW86+FXE3Kfs0b6xy5
	D/5OfPgCoNuzUSQRKMOWBmS/V/eWkL6BsQ1yC62bqsXR+USwP6AAIeOGR4FhezrI7rvn6p5i2R6
	QJw7hFbbJEhKgZIlbXDNwy5h1vsoIcslcfN2Z0aHL8U1MA49/v+YTKIbLtVu+bUqmUF/iHQ==
X-Google-Smtp-Source: AGHT+IHVO4VaMS/G12IQZgMNriTBY++2CzCi4uYICi3wwhLDtof1MCwW7/7vKBLZtIfrjjavAGmS1g==
X-Received: by 2002:a17:906:d54e:b0:afe:6c9b:c828 with SMTP id a640c23a62f3a-b1bbebbb0famr156412566b.61.1758096337795;
        Wed, 17 Sep 2025 01:05:37 -0700 (PDT)
Received: from localhost.localdomain ([2001:b07:6474:ebbf:1215:4a13:8ee5:da2a])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07e1aed5ffsm924936766b.81.2025.09.17.01.05.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Sep 2025 01:05:37 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Frank Li <Frank.Li@nxp.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Fabio Estevam <festevam@gmail.com>,
	Haibo Chen <haibo.chen@nxp.com>,
	Javier Carrasco <javier.carrasco@wolfvision.net>,
	Jeff LaBundy <jeff@labundy.com>,
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
Subject: [PATCH v4 0/6] Input: imx6ul_tsc - set glitch threshold by dts property
Date: Wed, 17 Sep 2025 10:05:05 +0200
Message-ID: <20250917080534.1772202-1-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The series allows setting the glitch threshold for the detected signal
from a DTS property instead of a hardcoded value.
In addition, I applied a patch that replaces opencoded masking and
shifting, with BIT(), GENMASK(), FIELD_GET() and FIELD_PREP() macros.

Changes in v4:
- Adjust property description fsl,imx6ul-tsc.yaml following the
  suggestions of Conor Dooley and Frank Li.

Changes in v3:
- Remove the final part of the description that refers to
  implementation details in fsl,imx6ul-tsc.yaml.

Changes in v2:
- Replace patch ("dt-bindings: input: touchscreen: fsl,imx6ul-tsc: add
  fsl,glitch-threshold") with ("dt-bindings: touchscreen: add
  touchscreen-glitch-threshold-ns property"), making the previous property
  general by moving it to touchscreen.yaml.
- Rework "Input: imx6ul_tsc - set glitch threshold by DTS property" patch
  to match changes made to the DTS property.
- Move "Input: imx6ul_tsc - use BIT, FIELD_{GET,PREP} and GENMASK macros"
  patch right after the patch fixing the typo.

Dario Binacchi (5):
  Input: imx6ul_tsc - use BIT, FIELD_{GET,PREP} and GENMASK macros
  dt-bindings: touchscreen: add touchscreen-glitch-threshold-ns property
  dt-bindings: touchscreen: fsl,imx6ul-tsc: support glitch thresold
  ARM: dts: imx6ull-engicam-microgea-bmm: set touchscreen glitch
    threshold
  Input: imx6ul_tsc - set glitch threshold by DTS property

Michael Trimarchi (1):
  Input: imx6ul_tsc - fix typo in register name

 .../input/touchscreen/fsl,imx6ul-tsc.yaml     |  14 ++
 .../input/touchscreen/touchscreen.yaml        |   4 +
 .../nxp/imx/imx6ull-engicam-microgea-bmm.dts  |   1 +
 drivers/input/touchscreen/imx6ul_tsc.c        | 122 +++++++++++-------
 4 files changed, 97 insertions(+), 44 deletions(-)

-- 
2.43.0

base-commit: 5aca7966d2a7255ba92fd5e63268dd767b223aa5
branch: tsc_de_glitch

