Return-Path: <devicetree+bounces-143174-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B860EA285B6
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 09:40:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D7C171663FF
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 08:40:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A066E22A1EA;
	Wed,  5 Feb 2025 08:40:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="x/bFPTko"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5AC522A1CA
	for <devicetree@vger.kernel.org>; Wed,  5 Feb 2025 08:40:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738744827; cv=none; b=IXWcOQPCNvPK3ax1MLtpCQHPpFq4pes56zpAiacjsGNKOrako7nXc6ySFeJA6Rs2GYUTqUKFbcS5mWUl+0RTE4Ol0foy96BWATQRLVEZ0VN9vLWz9lSauCISKcUQtv3hwq8CIPGfj4v9jg/c8SROme/eH5GR3ALMIvjUbXmEthw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738744827; c=relaxed/simple;
	bh=M2MVI8iALnKpJXMVChrCSiUClSCLtLgDztXe680Nrzk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=hi0rcaecVXseMUuMQyXN1ALWp3grR4ycf14LFmjKU8f4hddOedw3aeTstdvXc1dMJeJ2b24Qp/SNtUTiTYyKsRx+9YwFIwN/rwuzQV1jYGSgtImG1O2S2NNN1XahrrW987Vcw8sSH6C2MglGliyMRmPTKJ5MpjIL/XB9SmHdinc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=x/bFPTko; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-38da713b9daso1537470f8f.3
        for <devicetree@vger.kernel.org>; Wed, 05 Feb 2025 00:40:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1738744824; x=1739349624; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+es5DswhUHJuqnAtb0R/kgWj5lIvrRgBlmdAByRuO1k=;
        b=x/bFPTko+vx6Pm+bmmT7pmpTeZ3JiwfE5oDBEwpc4KngjteYF9TbDP1bctxBAWoSWl
         LvlN3V6zXy3LzKoYlxgnOB86pj0PE7QQkVxXvcEoGB8nZrnNEsEMMbiTSAlVaKNEd4c5
         ft+KO+wu2IFFM0s1qmnZbo6rFWBciXh5ragUKKtyKjWv0z9DBrtDYO2Jkn+jCCI3jUYY
         /XHcL08ag/NDhWguh2bfA3eSeoEfAHpw8C68nhaRmhdYRl4NjfKWBRHEohK1oB5JUIfz
         21PP5Y+8jg5KuoQWKodEaN9V1BgUeUZswUxA5nT8+dMWwm6RMXWTamC/2Aegmfq+2DXc
         4aTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738744824; x=1739349624;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+es5DswhUHJuqnAtb0R/kgWj5lIvrRgBlmdAByRuO1k=;
        b=Pp0tdQ6Y/oqaHFHbW5ToQLrNAXUMU5tbsUCt3ToOgYpqXCoQAuHFKW5jMNz+p2LYGi
         udirL93dHa2isgPsUAU0TfSV55psn1aJkjkEuQbfUJrZre9lD0nN3X/hwQ0ZuGU+058h
         RjA39IkdKy/PLmgJjD/VP+Ya2ZGhKC9QlPdGwm/cU+Tj5/uQ1RAE103LgStwLud/fg4a
         RyerSZ9LmvrvroupAcv4seU6DUVzE4lyqoPokyOSQTUSMM3nd8cxK7czb3suZgDEX6Bi
         xew976g8lu9DaH7QdRdDeQT2Nsj5cFTLGA4z48V0uvYrL36IZN8pwQDSOz+ZC02baL6w
         BV9g==
X-Forwarded-Encrypted: i=1; AJvYcCU7sj85joIqY+AUEsZQngfDsnjeFiIUUOBksi9k1FInmaCfXZWB5HbbmlQWQ0Z2eKkxMVrN5R7ySvI8@vger.kernel.org
X-Gm-Message-State: AOJu0YzVy/NNTDmSOsI2APhm/At5X0+k2KShZSQLDCGzLuf/BjdehsE+
	JdKn2YBW3BouiIrh2JEtKGktheejsSHPoc8ufe1pbuh6XIK+lEQho2HpVDVmj+U=
X-Gm-Gg: ASbGncuyWyopB3q9zB6fu4dRaTS2VaTveVkX5SIzb1+MGyHb5cprb/3fDBBK/5Y8s1x
	028Vtyoe5iD20dBDioGSIjmmd8X/5+jWRq0uwp5kuthPfYcOL0shY+p/j9h4xJoT5FCokZJGbn4
	O2wdcZHMTClmprWqrSmpVl46YWDOkuKYhERiN64FvUAWbgpXk37qPwZZ0Tx2lcYKk3RNqR5sLIC
	/T+IulbW9AHxBFHKzIZj0m846vpMegBXSHKbgIScy0D/4GllotGzXTYHz14FgmsswgGLd1gewBM
	fFDEEfEyh19fZkQ=
X-Google-Smtp-Source: AGHT+IHufl43yH4h42TNeRNb4pIxJfhWtSlcWpDN/3IHQPb679izKuQl7RiI9837Q+o9LDGQeygmhQ==
X-Received: by 2002:a5d:47a4:0:b0:38b:ec34:2d62 with SMTP id ffacd0b85a97d-38db48a0aa1mr1427352f8f.24.1738744823940;
        Wed, 05 Feb 2025 00:40:23 -0800 (PST)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:a766:1fb1:99b5:1d5f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38db6d7fb3dsm704259f8f.72.2025.02.05.00.40.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Feb 2025 00:40:23 -0800 (PST)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: brgl@bgdev.pl,
	linus.walleij@linaro.org,
	minyard@acm.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	openipmi-developer@lists.sourceforge.net,
	joel@jms.id.au,
	andrew@codeconstruct.com.au,
	devicetree@vger.kernel.org,
	eajames@linux.ibm.com,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	Ninad Palsule <ninad@linux.ibm.com>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	andrew@lunn.ch
Subject: Re: (subset) [PATCH v9 0/9] DTS updates for system1 BMC
Date: Wed,  5 Feb 2025 09:40:21 +0100
Message-ID: <173874481706.6250.3472033617115260753.b4-ty@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250204194115.3899174-1-ninad@linux.ibm.com>
References: <20250204194115.3899174-1-ninad@linux.ibm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


On Tue, 04 Feb 2025 13:41:03 -0600, Ninad Palsule wrote:
> Please review the patch set version 9.
> 
> V9:
> 

Applied, thanks!

[2/9] dt-bindings: gpio: ast2400-gpio: Add hogs parsing
      commit: e8f2ca6be61f1cae2ff12932fa03224581b6b231

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

