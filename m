Return-Path: <devicetree+bounces-71748-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D15F78D7D4C
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2024 10:25:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6EB061F221C0
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2024 08:25:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 107525A788;
	Mon,  3 Jun 2024 08:25:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="mNRUEUJv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C03D57CAB
	for <devicetree@vger.kernel.org>; Mon,  3 Jun 2024 08:25:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717403149; cv=none; b=MrzS/OUmxueAGwMRC9XToXrp1zR81WXeq1kX4jvvsMw80ZCE0rPdt86HYF9SiRAIb+QHkzDKyYGT70ZWGpjODekiQi0ZdwjQH5vYduetnnDbVo2lndB2KKJQjakM8KRqNJP8t1iPZy67Vzd/q+DYCSUDESZnxbNbthU9m9jbtFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717403149; c=relaxed/simple;
	bh=nMrzAHRYbaM0CPzFYJoIrikgtExLbpIG/tDhr8hm/0Q=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=kpIlNLfWuEuIgSOtmO8ry+370OALGxtnxmx0kb1lV+Xjnib339flD4syPNDwhm2qBt2JW78EYspuUyfK1kRloYKNqtq83UQb3vwp+U/CRpz6qzOQ75ACIHjhv0bQc8xE1fKzgz7TyytSm2DbTKUHgKGxwM7UJ7eoB4y39opIReg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=mNRUEUJv; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-52b936c958dso1807641e87.0
        for <devicetree@vger.kernel.org>; Mon, 03 Jun 2024 01:25:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1717403145; x=1718007945; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zvxlVn3WbqZZhkrp7NY7W//mMZJXucYwAeoohXFNboM=;
        b=mNRUEUJv9A6mykWnpIHQ2HKgXAx7PojPFI8yLR+nFUGOh8qvBDhbHrb7li9cbA1MgD
         Iv9aBYEj2TDcWFzLNpWU/FsCmQWfsm6OW5EUn62ptHqu3dKlgCLZW4E1V5z4BF6C80aN
         ZBKtbnRfAuUNtKBtk7wEDk4Yaw4Kba85WSqvGiZuwM7tx9IOnc8CdnYvAEraroxszDNF
         +T9YvB6LOeTH43OgmCRj/qlfd/RwyDBtr8Fdi1QPxmIEozLQDYCC+hxUCyvX7wR6M/zg
         YqTL6UWBRi/cwogCQIZa8eBP/5c6Hcx+ucinb82OkIl2A0hx4Y/0ydO8ltXfHvydAy/0
         RpYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717403145; x=1718007945;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zvxlVn3WbqZZhkrp7NY7W//mMZJXucYwAeoohXFNboM=;
        b=n4/fTj84cuJLd/M4UpXyonYr+tkV2cBw04skC5//GPNjEN/4mqmVV34CGgFvxCOxXe
         ZLmXbUBS82naWkh151wq/I4rknjpIzud775JUtrAgdUWopXivWAQyvktzASOEhNjWqvu
         Z22pLnI4M9Gh5eIi2CAiLnFAPaMlIymEzC0PnmZZzQLN0SYerMY3iQPXRQ3JNXDTFInj
         ogOHUMGc/K1mJCOQiwJFPX0oF/fUY+KU05sMtJjPNuDEBY8zSb36S0Kmoi4WRqAPGfx1
         6ZvwCAhuRypJZUNX0GkWNoEfxEWAqF+Ca5ahlvpiunpXhkEJGShrsj/VHMqefAQmaQTX
         kaAA==
X-Forwarded-Encrypted: i=1; AJvYcCXib297fMZbpY8Xieq2QpT3Ue2784DWj8hXW1FVJlkFPN/kRBBExwXz8VpZU7rFvQ0jjFlP5GbnmtX+gKR78in346QKnQRcvrmIMA==
X-Gm-Message-State: AOJu0Ywzsy30UwoaqgzuDIjaoBMqW4qyilYEoxrs8PN7+3jldZG2BarX
	yXBHsnDBKqsiGCOx6c5uHRun1t/P1ui2y+iOpT8sK9EsoPqU9jHfiSp4Nga5vRg=
X-Google-Smtp-Source: AGHT+IHvhGIL9bagwIEIWKklEMO2niJwNdydUNxk7jfjMiblsReyAbr8xDnjx9dhW5olJB7JFIJNmA==
X-Received: by 2002:a05:6512:158c:b0:52b:98ab:6100 with SMTP id 2adb3069b0e04-52b98ab619dmr2154272e87.15.1717403144788;
        Mon, 03 Jun 2024 01:25:44 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:75a:e000:5b1:48e9:27a3:7085])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4212b84be78sm108641565e9.17.2024.06.03.01.25.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Jun 2024 01:25:44 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: alexander.stein@ew.tq-group.com,
	krzk+dt@kernel.org,
	Frank Li <Frank.Li@nxp.com>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	brgl@bgdev.pl,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linus.walleij@linaro.org,
	linux-gpio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	robh@kernel.org
Subject: Re: [PATCH v3 1/1] dt-bindings: gpio: mpc8xxx: Convert to yaml format
Date: Mon,  3 Jun 2024 10:25:43 +0200
Message-ID: <171740314108.11298.15004161310238771393.b4-ty@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240531164357.1419858-1-Frank.Li@nxp.com>
References: <20240531164357.1419858-1-Frank.Li@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


On Fri, 31 May 2024 12:43:57 -0400, Frank Li wrote:
> Convert binding doc from txt to yaml.
> 
> Remove redundated "gpio1: gpio@2300000" example.
> Add gpio-controller at example "gpio@1100".
> 
> 

Applied, thanks!

[1/1] dt-bindings: gpio: mpc8xxx: Convert to yaml format
      commit: 77e1ea9e9913df8c23ac102c9c2b7c49a5d224da

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

