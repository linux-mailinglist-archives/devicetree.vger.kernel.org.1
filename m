Return-Path: <devicetree+bounces-182930-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CF159ACE8CA
	for <lists+devicetree@lfdr.de>; Thu,  5 Jun 2025 05:59:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 49D713A8D94
	for <lists+devicetree@lfdr.de>; Thu,  5 Jun 2025 03:59:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DAB01F8725;
	Thu,  5 Jun 2025 03:59:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=inventec.com header.i=@inventec.com header.b="GUoaivs9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6C651F4CB1
	for <devicetree@vger.kernel.org>; Thu,  5 Jun 2025 03:59:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749095991; cv=none; b=E61aLzZ1QSy2pcaJDEBHJ7VGMkbAw8T/76eIg25eSMoaTm7Zt+QwUfZN+j4IZCRZE+SE/oMLQJQ/+q6+PUxlcb+PHGw+gn7wnmz2SG+Z8gRd86hvLf7Xy5m5CtBuZ+Mfq99bQLuoH5vdUHsff5zB05nncWhz1MvepbGk/KTfjls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749095991; c=relaxed/simple;
	bh=a99DJB7kgqKr/Mq3XFCGHLdwCFggirioNhGpFPuOmrc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=DqLhFsJmxBbZ8XQW+qd9fvumzTCicsW2PoSMTvtTTuAZ7zDQxR+3fGFGPan03dzUaExOFJ1Xf05Sr3j6WcKCwIJcA/RdzcK7Z5Vih9MDBsYm2Gg+zzC3QKMNbUCraRknyfFtpYG8YX63SM3GiOqAwMWhRJr7pvwlUPW811Io5cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=inventec.com; spf=pass smtp.mailfrom=inventec.com; dkim=pass (2048-bit key) header.d=inventec.com header.i=@inventec.com header.b=GUoaivs9; arc=none smtp.client-ip=209.85.216.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=inventec.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inventec.com
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-311bd8ce7e4so482385a91.3
        for <devicetree@vger.kernel.org>; Wed, 04 Jun 2025 20:59:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=inventec.com; s=google; t=1749095988; x=1749700788; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SzkZstCCrPCWPsZ455Qf8TsSyXtheVsZkxKhV0y9aO4=;
        b=GUoaivs9kiZYpzwlYhipgAbl+2mUua5o1Bx68wK1PfOd7ujianyReMF6esYRs6UyXt
         phfbKOWiKiJhJv8eSneKtwh3fKAp9wC1yvo6Ir75cnqWk8X9mAuwNVNRiLfaiOeGOa9E
         yxPB/z9q25hVBcHrvcU8LoiTU0jKlr8ICGkeDKnjWTp+pH1gM0yiBadJqPVRrzYK6jzB
         DYACxj+sGvOME5fED7QuIO+sCrLppUd5IphfwgazXz24kJeHJh0JrWv/aGdIpcApsFl9
         2oYLknrAwLI5kbrEM2LXOJowH3zFNl5wzw85fqMN6TxJquLmS3WXBUGHGg4FUuKHQsgX
         Mh6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749095988; x=1749700788;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SzkZstCCrPCWPsZ455Qf8TsSyXtheVsZkxKhV0y9aO4=;
        b=Q2RclGBkIsu2/U/1YmzVM2s+7slr6HCrY+Ir3vvySRaV3KysEFKm9wg5fNx5JgZOPI
         LCOfyou4yCiy+X9FkCqZ+rJNoqhXBq2S75HyLPlKau3s7Or4hGblWyRoCuaacavWwjat
         4Yfwlc9xPC8AWwBr2QRfmQ3CPRT/Bx4XcfB8FcjsOrr9S6d4Jc0YqVO8sjEa+2e/dGJh
         /3dgBqL8/7dJgzRORsQxPiRcsd0VRtefVYZJ5xhE1nXoDy7EP+mjUhz+V05RIeVclb6l
         c9JalGnGK8LCOUFZGZsegW+uEZWS5cE1Fb/o2GGQz+4bvl7DQUJ5NCdnpGuTJOMPcthh
         IjIg==
X-Forwarded-Encrypted: i=1; AJvYcCWZ2TbzgSb9a88+qojIHpVXXiVY97oJtgREfNA0Auu1I+RepI3UiqChd9d/ofhjDX3hIDdVyokxQI0B@vger.kernel.org
X-Gm-Message-State: AOJu0Yys7oqxQGAE65HYxMhDwogOS/dKkqhLcYOMdq6FnTxm7R4xOxHF
	84jgqg1AE5Q7Sxqc12p+cxiBGuMK8yASEgmZKfdDxqMZLoqsOqC59zPYloAhOrVDkYQ=
X-Gm-Gg: ASbGncvVm3dAT1mO+42hvimyjNF0bbtNhh9qQ/H2y015VBN3rkS4d6uOnUhJ6VvoPDk
	HmrYnMBw5uqbE7B4W3Q2SGirHOZ1WSrr9xsCA3Q4yf7BxPq9RylmEjsDE3EZiSymXzp/8m5UTvj
	LG6EvwsPa9MRhb16mKGLSHtRFF9zTf9dvt3rr6PYWsxgDNNREePIcaxS2CapsN1B2+8y6Q6DlcU
	uocqKvdV6Wb2WwA6ZfpvKOWYQuOATme5NszlidtSHOLyqGj1oq7BWjnXpk+zIZ/4Z02AssfrQoW
	eSr252MegBsCfMeP7oa11gB+zCdUr2AxutrwFGoxRGcrcQKE0pPpZYlnxoo4ycltpAZcsHPM
X-Google-Smtp-Source: AGHT+IHwOv1nfgRYxTOZRYlHLTPEDAVKxSayaPRlTfw7ratzj7blGucqQmZiYitkUOV/1EwZKzf8Ew==
X-Received: by 2002:a17:90b:55c8:b0:313:287e:f1e8 with SMTP id 98e67ed59e1d1-313287ef202mr2764388a91.8.1749095987904;
        Wed, 04 Jun 2025 20:59:47 -0700 (PDT)
Received: from localhost.localdomain ([123.51.235.216])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3132bff66d1sm495400a91.7.2025.06.04.20.59.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Jun 2025 20:59:47 -0700 (PDT)
From: Chiang Brian <chiang.brian@inventec.com>
To: krzk@kernel.org
Cc: chiang.brian@inventec.com,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	geert+renesas@glider.be,
	grant.peltier.jg@renesas.com,
	jdelvare@suse.com,
	krzk+dt@kernel.org,
	linux-hwmon@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux@roeck-us.net,
	robh@kernel.org
Subject: Re: [PATCH v4 2/2] hwmon: (pmbus/isl68137) Add support for RAA229621
Date: Thu,  5 Jun 2025 11:52:33 +0800
Message-Id: <20250605035233.3394026-1-chiang.brian@inventec.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250602-elated-aspiring-squid-d27ee4@kuoka>
References: <20250602-elated-aspiring-squid-d27ee4@kuoka>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

On Mon, Jun 02, 2025 at 07:55:37PM GMT, Krzysztof Kozlowski wrote:
> 
> On Mon, Jun 02, 2025 at 01:04:15PM GMT, Chiang Brian wrote:
> > The RAA229621 is a digital dual output multiphase
> > (X+Y <= 8) PWM controller designed to be compliant
> > with AMD SVI3 specifications, targeting
> > VDDCR_CPU and VDDCR_SOC rails.
> > Add support for it to the isl68137 driver.
> 
> Please wrap commit message according to Linux coding style / submission
> process (neither too early nor over the limit):
> https://elixir.bootlin.com/linux/v6.4-rc1/source/Documentation/process/submitting-patches.rst#L597

I'll wrap the commit message body at 75 columns.
Thanks for the pointing out.

> > 
> > this patch depends on patch:
> > dt-bindings: hwmon: (pmbus/isl68137) Add RAA229621 support
> 
> No, it does not, please drop this sentence.
> 

I'll remove the incorrect sentence as well.
Thank you for the patient reviewing.

Best regards,
Brian Chiang

