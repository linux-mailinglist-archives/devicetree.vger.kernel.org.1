Return-Path: <devicetree+bounces-8495-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A1C67C85E5
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 14:37:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5254C282E25
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 12:36:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF56410A31;
	Fri, 13 Oct 2023 12:36:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bsEIHLW5"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CDB415E95
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 12:36:57 +0000 (UTC)
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23C78BD;
	Fri, 13 Oct 2023 05:36:56 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-9b64b98656bso327556066b.0;
        Fri, 13 Oct 2023 05:36:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697200614; x=1697805414; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yPUcDogZoxv+9qoWSr+Jd6nwhK6vrMS0eNESyhxSlpQ=;
        b=bsEIHLW5MW21DqGoO5kqhQSm8s/qktsh2mj9Ktkytl531re+99P0pqNBP7eKoN8TiU
         Rulp3+y6+a3J5/Ysp5+u5bXSp+HEWKH+y69L32Gaq4I60dw+lrtlGFJn3mHKCD7Y/Ygy
         OXqSvGz6Ftq5xXoRIwFFxxN5B4EnZlGdjNxA/hSyvPSIt/AYaTCkHQs6uEsGM1eHbFQf
         rxcq+kzpt7HSIRK4l+zqunLruqh35sctumnbYEvGZqn1bmO5IE8S1uNUFjCfhcrqYuBr
         zdFr3WB12Vsp5o3JvfhX50zGJbzqFUzId/3MSDTK4f/NzEgtQD75kms1Xm1vMrimU4t0
         CKHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697200614; x=1697805414;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yPUcDogZoxv+9qoWSr+Jd6nwhK6vrMS0eNESyhxSlpQ=;
        b=cIeVdDuxRg7wOfbEmnQg3EaVbH7utIYCogca71DbagYvgUSdc8UFPdKa336QEkplFK
         paUbFmEn+jnYyNXtXG3XV2ekzK4h6O4ZB84ueyOvRep56Rj7rnGJYSz/KxHG3/5VZ016
         jyT/fFriULZEELoFUBO/tx5KNr0Gd3LuXBrj8xDivklBGBDxHGJHlAmkYBN/ozgrXhst
         ZKTqU9ktbXhOTdYZVkY3r+KEDm0SP8Jt6qxOPKqtpWWat+cfQF/dUYFM7JEk0oucMQ0L
         3R3OySbPg3EJAajHrNspxALIXdWYgaI5W5F+47dwzo6UV5CdWkZT9H/jL7jUo8SSBLV7
         +IgQ==
X-Gm-Message-State: AOJu0YxbMUy4j9SWhtSt2Zsx79pF1CWjpiTuSnC4tzT7hnoQrLyNr6+N
	Dsz9/Q7oSfU/qXY+aApwjLc=
X-Google-Smtp-Source: AGHT+IEDip9KM+Yfeztq9tmwTTKvaC4vUJoFJ9zFcRh14JMCnP/oHKIIH1al61kjPW/DrFHHzRffKA==
X-Received: by 2002:a17:906:74dd:b0:9ae:5a9f:6aa0 with SMTP id z29-20020a17090674dd00b009ae5a9f6aa0mr25002366ejl.33.1697200614532;
        Fri, 13 Oct 2023 05:36:54 -0700 (PDT)
Received: from localhost (p200300e41f3f4900f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f3f:4900:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id q14-20020a170906360e00b009a5f1d1564dsm12196796ejb.126.2023.10.13.05.36.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Oct 2023 05:36:54 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Jean Delvare <jdelvare@suse.com>,
	Guenter Roeck <linux@roeck-us.net>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jon Hunter <jonathanh@nvidia.com>
Cc: linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org
Subject: Re: (subset) [PATCH V5 0/4] hwmon: ina3221: Add selective summation support
Date: Fri, 13 Oct 2023 14:36:52 +0200
Message-ID: <169720050117.3883097.1886873024797633177.b4-ty@nvidia.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230929103650.86074-1-jonathanh@nvidia.com>
References: <20230929103650.86074-1-jonathanh@nvidia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Thierry Reding <treding@nvidia.com>


On Fri, 29 Sep 2023 11:36:46 +0100, Jon Hunter wrote:
> The current INA3221 driver always sums the shunt voltage for all enabled
> channels regardless of the shunt-resistor used for each channel. Summing
> the shunt-voltage for channels is only meaningful if the shunt resistor
> is the same for each channel. This series adds device-tree support to
> allow which channels are summed in device-tree.
> 
> Changes since V4:
> - Moved dt-binding comment added in V4 from patch #2 to patch #1.
> 
> [...]

Applied, thanks!

[4/4] arm64: tegra: Add power-sensors for Tegra234 boards
      commit: 9152ed09309de1a876680e6309c8eccb509b44b0

Best regards,
-- 
Thierry Reding <treding@nvidia.com>

