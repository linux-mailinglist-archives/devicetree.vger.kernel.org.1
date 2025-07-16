Return-Path: <devicetree+bounces-197078-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FB03B0809E
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 00:46:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 204393B398F
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 22:45:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33D032ECD20;
	Wed, 16 Jul 2025 22:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="U1lJ6bFD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f43.google.com (mail-oo1-f43.google.com [209.85.161.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D9D5296153
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 22:46:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752705983; cv=none; b=UJOb6YqVTGmKc9jp8vGskyu3gXZhykjp9r5HxqMska99Q5IvUDdPGNhAsggieMD7gTjr7XZ1sF9k2WKcOLV0nzW8ObNMwSCwcg9Falx2Y42m0EqbamyJ80zPW6EXV0BUAwu+4sx0J1oIeOFhSrCaoP7jEqbzgcYLpB2jJujR9sI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752705983; c=relaxed/simple;
	bh=egIk+/LQ4iaDf+RLDIDJAcGByEdkupEuWlBMyV1IjQc=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=uoxFLpTAe33h35tbFOxc+wew1bhPvj48/Z/a+u19PewcWOpapS3mJd1VXUxeCylCmVkLG8y0NG/Zg91gNl1538gwY0pxx9cqIqvCtD02UcbQi5nKc/p80XEdW1Aptl84TgOSCaOXnvIVcpUqkihFiDEqp7noFVP6UGyhxYNiFGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=U1lJ6bFD; arc=none smtp.client-ip=209.85.161.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oo1-f43.google.com with SMTP id 006d021491bc7-60bd30dd387so168164eaf.3
        for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 15:46:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752705980; x=1753310780; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pgJcNNaIcB7VF2rGgBtMbF7MjrWDu7+HbpybgI/inbs=;
        b=U1lJ6bFDIKcQf23veWIV9+bvDsFMOsD2ySRdq+QdwVQnsuoRz1zQxTwPRqlrsHLVtS
         WfNdYvnqrIn+3/eag9jeuw1lo5kLKqrdSgHuHPhoAH7OxtQ/KWR1mxSvHGxvlWcrmfY0
         FVGmBLFf2xCVn56Jb+dMVP6rxf+EmvAHi2MNVRaoXBvXG6tvgtG+JCVK/8JnIWI/z8NG
         wHIsu0kfyJ7WM5ehTTxKpl8WxCJ3i1U3yhci7+g7K3QjmWnpjjzIM2q2ovVG2Ms2shY0
         MqfXMzaletrEnui2/ebUdfHDZo/BUjtBj+5oGYz9f6tUCUGG14xt3cdo+qxN5iaq20WU
         B9wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752705980; x=1753310780;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pgJcNNaIcB7VF2rGgBtMbF7MjrWDu7+HbpybgI/inbs=;
        b=DwvG9pVuA+VUtp6G7ePdgXybYz2A1zgkEDCQcrPG5tIYSlGLVyhmSMynbPBfF3o57b
         w7cwP/0jcHdOp7TSR/ILaukTbOrJHkdFM5j9j4DGIXlWqFGGhfAL00x1QlTZ0P9yRKu/
         wAQZd8vzfHm4DrfZ71UjYElkC8HFJydkppS3xlJZeLUAeD2Hu3Y6l0QZwns/os2IkmFZ
         ggMecdXrGTWXKgz+Km+zoGamg3K7oFNpehLgdgEKW8AugSzYoSNnMhe+ySXKjiv3v7iv
         wagCtDGdiCTZqkLJPd7VS5Hnaas0rqEqrREL49XaCbq9b7YZurd8yYkQbe+pmimnA7Kt
         PXbw==
X-Forwarded-Encrypted: i=1; AJvYcCVmcerjAQs2oKyqVGohnS1IShvNJMpMkwBP0f6/oWhlmOOEabUpJdsbi5t/oaRJjBU/+dCPyN4/mH8Y@vger.kernel.org
X-Gm-Message-State: AOJu0Yx44eTGyiYSsNZxMBnMjnpvoMPJras30/hfKo2mx/KGcvn1lW2H
	PK0PHfEJCvPh9UCt3g8kKUBjCp6sz8tiXCttSAkYj5EMueEJe3N1xdCeC2EPpN/bkp0=
X-Gm-Gg: ASbGncvjxdkJviK3kLG1zIWfE8mtAlDvYYOEV++MSYPVtALySl0IJEwZfLsu4ULbo/0
	apeXtJzsj7FJNPoz7gwD+p7uAK9igFa4IlFZct1vOa8oV12oiAdxNDifagcJgVcLW3Y3YmEypXT
	Fu2O4sazYBqzM2yZ6R31DZuLGgzAVriFI8e91BNjQG8Huz4pikejIBdP8fE3CM+92RuzBQFVZzJ
	tJcyyN/MQkrP8a82wnGDxW7tVIgUuP10DgKZux+mlg8qJ1du1pbsLZLxniyERiq7T7rwQGV/e/D
	e8yHUABmlCfSvGdJWyVrCoYRmvMkbRqIvqoaDDJTWn814OR/ZeWRKo9e3aQa1jMBXpxqqrlgJHF
	TTHL3heabwPg91+wtCISsz6ZiMjo6qQ==
X-Google-Smtp-Source: AGHT+IHhOFmUmhBidSkZlxAn7V6wq2jgbTir2wDMQeNvWS4TRSC8XLkdd89dV6UDIvXMlv0ZdC5Okw==
X-Received: by 2002:a05:6870:5b9e:b0:2e9:9e9:d94b with SMTP id 586e51a60fabf-2ffb257d356mr3201213fac.39.1752705980494;
        Wed, 16 Jul 2025 15:46:20 -0700 (PDT)
Received: from localhost ([2603:8080:b800:f700:3f28:4161:2162:7ea2])
        by smtp.gmail.com with UTF8SMTPSA id 586e51a60fabf-2ff116dd664sm3898775fac.42.2025.07.16.15.46.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Jul 2025 15:46:19 -0700 (PDT)
Date: Wed, 16 Jul 2025 17:46:17 -0500
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Xu Yang <xu.yang_2@nxp.com>
Cc: Peter Chen <peter.chen@kernel.org>,
	Chester Lin <chester62515@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	Fabio Estevam <festevam@gmail.com>,
	Ghennadi Procopciuc <ghennadi.procopciuc@oss.nxp.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	imx@lists.linux.dev, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org, Matthias Brugger <mbrugger@suse.com>,
	NXP S32 Linux Team <s32@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH 0/3] usb: chipidea: imx: Fix style issues
Message-ID: <a5f4c53e-98a2-4eb0-9f30-55313be27f86@sabinyo.mountain>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Xu Yang pointed these style issues.  Sorry for the delay on this.  I was
out of office last week.

Dan Carpenter (3):
  usb: chipidea: imx: Add a missing blank line
  arm64: dts: s32g3: Fix whitespace issue in device tree
  arm64: dts: s32g2: Re-order usbmisc device tree section

 arch/arm64/boot/dts/freescale/s32g2.dtsi |  2 +-
 arch/arm64/boot/dts/freescale/s32g3.dtsi | 32 ++++++++++++------------
 drivers/usb/chipidea/usbmisc_imx.c       |  1 +
 3 files changed, 18 insertions(+), 17 deletions(-)

-- 
2.47.2


