Return-Path: <devicetree+bounces-21869-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C08E8056A1
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 14:58:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C53E2281C89
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 13:58:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BB925FEF1;
	Tue,  5 Dec 2023 13:58:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zE3+v8Pl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 05CE8BA
	for <devicetree@vger.kernel.org>; Tue,  5 Dec 2023 05:58:33 -0800 (PST)
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-a196f84d217so599208266b.3
        for <devicetree@vger.kernel.org>; Tue, 05 Dec 2023 05:58:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701784711; x=1702389511; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/5Oze3/1RDszWMpciOU5HHEZVBDC8CTTQ6maphqjCpk=;
        b=zE3+v8Pl4FyaKTnJaicGogKNVZWUgSOQesuO5YGvmZsC+42Am0sTtc4D767AqauTgJ
         xN6Pjkh89fTr0Fit/O0zO+O581bbn3GuQM3Ibgfw4vGlgGAI09EkfsgR8/nwkbNZWT12
         te/rkQ5ZqHVdFwcIOtcAmmcukIAzIOTM+60pYDyMU6Hc/uOb2UDYKpUL1HoC8YSgVr+a
         FdrS6Urd4qNUHJ4mKlKgP+ncv9p8qFh9PIXJzeOLorGk+QLxd++SA9/K+9Txd/4chkS1
         BZP4j7LQ22nqCIub16+Fne5dUt8dndUPxQbC4UacBczRcVPyxxpNxZRou3fkUo2NZNjJ
         8nLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701784711; x=1702389511;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/5Oze3/1RDszWMpciOU5HHEZVBDC8CTTQ6maphqjCpk=;
        b=uRNOWoVfQOPtePZ3nuMXMMDQ35bfDoLa5Q7IVndwwU9PJTJbuppN/ufvzalgOhjTQA
         Gq6eMuhBRGWB9tNlayUzVCfmPHFShZ8UKs0FhvwhK2w6SoY2si6EI9SWymXZO4zQUBS+
         0Qt2+5Z8THNQSpWF/1VDScHHCd5fD8EOOqiI+krR2TpjMT6Hx4vvooBGNzbB6nFC8Nyu
         RfbiY1ZbJgwUAtD2AAYRVhLBK0jMGHm3q70M830fqVPpIhXJ2BAq2Q3OJgVMlYzTAOMs
         Qbh+KeeFWYk/5SLz9i6U1Vx+l8VvktkclA2G6R3Kb7QR3nbDsbUWAW9UC+NdyKDlkgUF
         gRNA==
X-Gm-Message-State: AOJu0YxrA2ZWQ4xbJSEYJ9XP0cZiOeTdmILT5VzSXVFgIsdcPQGKewww
	LZSngicA3hmjQLC4R4FkmyJfZA==
X-Google-Smtp-Source: AGHT+IH8wju8GD5Zx60pHtilWQSmGAaG7mcnh/RhurUSWf5JLiDlXK8tl9XAaYjvFRrkmybVIUDznA==
X-Received: by 2002:a17:906:811:b0:9fe:3d74:2b62 with SMTP id e17-20020a170906081100b009fe3d742b62mr3713369ejd.12.1701784711500;
        Tue, 05 Dec 2023 05:58:31 -0800 (PST)
Received: from hackbox.lan ([82.79.186.233])
        by smtp.gmail.com with ESMTPSA id e20-20020a1709062c1400b00a1c7b20e9e6sm833583ejh.32.2023.12.05.05.58.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Dec 2023 05:58:30 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	sboyd@kernel.org,
	abelvesa@kernel.org,
	"Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc: kernel@pengutronix.de,
	festevam@gmail.com,
	linux-imx@nxp.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Peng Fan <peng.fan@nxp.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH V4 1/2] dt-bindings: clock: support i.MX93 Analog clock module
Date: Tue,  5 Dec 2023 15:58:23 +0200
Message-Id: <170178465116.22654.4507616023393071038.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231121063446.155300-1-peng.fan@oss.nxp.com>
References: <20231121063446.155300-1-peng.fan@oss.nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Tue, 21 Nov 2023 14:34:45 +0800, Peng Fan (OSS) wrote:
> Support i.MX93 Analog module which contains PLL and OSC for Clock
> Controller Module
> 
> 

Applied, thanks!

[1/2] dt-bindings: clock: support i.MX93 Analog clock module
      commit: d24ffddd1071dd3bb348b010f1f9b780722ae90f

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>

