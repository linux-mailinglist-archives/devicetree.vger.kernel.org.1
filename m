Return-Path: <devicetree+bounces-162671-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D1E90A79578
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 20:52:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9744A16DF2A
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 18:52:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 636741DB92A;
	Wed,  2 Apr 2025 18:52:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="b6VsaGM1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com [209.85.167.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF7561B3F3D
	for <devicetree@vger.kernel.org>; Wed,  2 Apr 2025 18:52:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743619931; cv=none; b=V3a1Kd6ump81wuqbx95pVdt3prLMKHJvwNpPULjwqy7ADMpDmHcGGQl0EEQ2GZIX8JuFIRpR8IiEqpVanIsnR4kbfuPgqEuKNe+1MJCuCTTg99fsXMBvK30IO/6W3ReKaYT/is2Gy3qUqiWhcVOdzFDX+7HnZ/xG0nGA+TBEQMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743619931; c=relaxed/simple;
	bh=n2sN5CaJWuK6R06Nkyz9xwrKnRiYA0E1p41viYwEYQM=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=QNUD3acl68tz2OtJOrSM+b6hAJKi9Bf/mvmjC2MHy8XbxfVQtdynZUCtyPWdKoai2vrM6Z64DVWQa5WfxONz42ptWMZ+qYTe81EaGx1FdlvTV93zOrOHvwZk1YyWNO+vcSzy3AY8xgRYBI0PwcWPurPIICk7HUoaPBGqNUtlalw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=b6VsaGM1; arc=none smtp.client-ip=209.85.167.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-oi1-f173.google.com with SMTP id 5614622812f47-3f6ab1b8fc1so71646b6e.0
        for <devicetree@vger.kernel.org>; Wed, 02 Apr 2025 11:52:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1743619929; x=1744224729; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=aMSMxtJGALgtSMPuvM+es6h4Iyyq5oXkRDZi7PrpWMU=;
        b=b6VsaGM1l+U+LV3qN74eOrv3SlsUEp+Y34E7WzZ4tnnWS2+XPtGmdKuhScmiKasyRn
         iQKBQ3LkdKbBezLaLbnQkI9Z0m2xPvsFVNPyMgXOaD65mImgMAy9H4nzTtT4Vb1yCU/Z
         aHRGqFTiD/Ppjt7q/vXM1NBsl1UajMgtJbcGg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743619929; x=1744224729;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aMSMxtJGALgtSMPuvM+es6h4Iyyq5oXkRDZi7PrpWMU=;
        b=tqhAGh/7cx7nttU+wVFcx4GNv7WVOFzenDLQ8Czcrq9wj2oHedosPHBz704hXr2I/Z
         uMQC4On7IOJ+xdyO4XExNPmfuFhQ1f7kgw4VY/L9eWEvJuOwChtujAjFpznRI5WfkSn/
         FEYTt/bSur7QikQs26ym146tyez6xXDNQh9bU6TNzX/h2zDhK6TtthFA6SIdCI9q/hvP
         l8NOOzo6z2GtzBU6aJGI0yVRQHaukgV5k+U5qF0WGVmmfQy1EdKh2c//vljH/FYc7RQS
         cfBYeo2+2/S5TCHhe9RWoM+dQeXTiOLLz0mtg6UQAyOPdkjLkFix4hbsFnzRYsq5uhFm
         PqYg==
X-Forwarded-Encrypted: i=1; AJvYcCXMgYBQSDx4KqC6MrHIXpeNa6/PwgViP7TOyd0RJzePxyefnB2CBTCE1dNUk3lNTitU2HwDHQFc3vm9@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6ENUNs1kpeiHOGi0lBapctGx8b9k1dujfbj/ioOnVDWzff131
	51xjtMP5IxMfkQblyx6YS0zsS4YZUqhaWmGy7/DazY7WPV4JRDr1uqt58YOI8g==
X-Gm-Gg: ASbGnctkktQNww9DHPPd2uqAp5fkvldKzeme4c1NdG3ejgT0FbROZZWf/KX70iUnizr
	yF8EWRlJ50FOFn5wpnHqZM73QgMMu/40B3YcFnQmbTd4kd7yEHOSBBICuXB3CoVXxpkIvTkyYDB
	eRl5en3VwGrQ7MihJxR+1pTxdD3pSSRcnDRpMaIfZm+JDPKqw98HgbNmd7Tz1JVw1raIQASy80+
	1VMe0/IU21SZXI4qM1sZ6DdsbDo8J16vm+N19w0PqjS1+jLrJWgORvnd04/Wy8GYeYNC1D0eDB+
	dNvUoEanAcqU/NJZJ4HdKkQePpmA79Uunsvu38onshA0nocCVofGeLHPu2jgXh+OKVmYm2u1oqp
	wXQQOaHw8EwwY3jbYkMZyzA==
X-Google-Smtp-Source: AGHT+IF2oyF+SZAWZtK8dqvuEYk7hltRuj0cB3ZM/AI20F98RrPPB5PiVuTkMpiL1IWiNu1BJ9n9SQ==
X-Received: by 2002:a05:6808:191e:b0:3f9:a187:1f5d with SMTP id 5614622812f47-3ff0f64bcf8mr11348947b6e.35.1743619928688;
        Wed, 02 Apr 2025 11:52:08 -0700 (PDT)
Received: from stbirv-lnx-1.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3ff051aaf60sm2470462b6e.28.2025.04.02.11.52.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Apr 2025 11:52:08 -0700 (PDT)
From: justin.chen@broadcom.com
To: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org
Cc: rafal@milecki.pl,
	alcooperx@gmail.com,
	bcm-kernel-feedback-list@broadcom.com,
	florian.fainelli@broadcom.com,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	kishon@kernel.org,
	vkoul@kernel.org,
	Justin Chen <justin.chen@broadcom.com>
Subject: [PATCH v3 0/2] phy: usb: add support for bcm74110
Date: Wed,  2 Apr 2025 11:51:57 -0700
Message-Id: <20250402185159.2976920-1-justin.chen@broadcom.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Justin Chen <justin.chen@broadcom.com>

bcm74110 adds a freerun utmi/ref clock that saves furether power during
suspend states. A tune is also necessary to pass USB compliance test.

Justin Chen (2):
  dt-bindings: phy: brcmstb-usb-phy: Add support for bcm74110
  phy: usb: add support for bcm74110

 .../bindings/phy/brcm,brcmstb-usb-phy.yaml    |  5 +-
 .../phy/broadcom/phy-brcm-usb-init-synopsys.c | 61 +++++++++++++++++++
 drivers/phy/broadcom/phy-brcm-usb-init.h      |  1 +
 drivers/phy/broadcom/phy-brcm-usb.c           | 14 +++++
 4 files changed, 80 insertions(+), 1 deletion(-)

-- 
2.34.1


