Return-Path: <devicetree+bounces-161430-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 98F91A740A2
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 23:16:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 35DD717AE4C
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 22:16:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EE261DE4E6;
	Thu, 27 Mar 2025 22:16:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="JKtNFBuz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com [209.85.167.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8872512EBE7
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 22:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743113796; cv=none; b=AsNSG859+67mxmCbDas0t2F1qAfkX7JZpj1pzfN3EjPFC7wOQD8neOhzDMmDnlKgl4+uznp8BTiu/7UGIqBsbqhiXMWRFoenBm1+g3EsKJAu4Rq5RnYSHMXXFxHCYvVPVA9pj5KE7CGVIMLGnOgQGjOdBfRAyawEh9Vfy0+YlHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743113796; c=relaxed/simple;
	bh=fUh5GtfQfAAlwST5jSRPJgKqT0/rr26Ag5vsqVYRX5U=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=hapMR+Iqt26DC3W3wcwVThOLVMyzDcpv2NrY3+PDqd+8yVVjC7QDvucswa+RfliQn2Z9qWSnK7PyWD2gYQGBBHbma3PdXB08Lmi/w+WC7XYmp72Bf0QQHH6Nq5ASqgPIQ6TullBv2zvfFGr2Ifd8G/RhD5qqhi+iXzUoaH3IJSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=JKtNFBuz; arc=none smtp.client-ip=209.85.167.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-oi1-f169.google.com with SMTP id 5614622812f47-3fea0363284so869442b6e.1
        for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 15:16:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1743113792; x=1743718592; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BUptK6otSzyjdHzI4oMLC0OqmBTlOuKhDoyHAoxCs+4=;
        b=JKtNFBuzRQTGLnosCcD0sF4fHNh+yyvM6OgTRRPAoeqhsqoYCXVdNi+Bh7w9AhVXxE
         tr0EknKwA7kCRoxQNFMBSeM5HfW+IIsrheGxCHMJGcQpdaXSZEesDX2Tmk+WrRdYrBoh
         wPAFcEPEfjrfhrgCgUYnN3aPBV7vS2tpmzH+w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743113792; x=1743718592;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BUptK6otSzyjdHzI4oMLC0OqmBTlOuKhDoyHAoxCs+4=;
        b=Uvm+FXG7LpKYaXkEJ6PxRzXLvhBAR9u8QJof6kVyi2afcPPsNPaYtDfp/xJBLZFufP
         /r67Kk2SKf4jRnnWJVNjon+GznG9tn0TsEiyaLNvscob5xaCRxMLa1iMaxE7mYsji0WA
         W/4A9gHvAWByN1N+z+u0dMaUx9y8nMW152yPqK5xTaJNQ47S8/ZqLV1hx/nhOqm1vfWP
         8XFPVM6P1unjqDAy3XuYRf1QhPLv7NYjMhwl34Vj0I5Q5+fIUsrv+NX44hx0v8x2uuKj
         O+eaXzmO1DCNA37BhhkVSAOJe14TFkTEGaHpmrlgjureJZMSYEqlMoDamrnPcmU9HDgG
         YzsQ==
X-Gm-Message-State: AOJu0Yyoijzmhq6pwrkQsz3LypEf5W4NFlJVQSiLbIggil2dm/QO8nV0
	o0xz35NTD5wbQ7/3wtGzlMNzGyjIbW7yXLnR6MsKmA8XKZjvYeJBnN0Rpw4zxtQe/d8uO9AMEpX
	6eq/uSZiq00wSjx8hoXhFmaTvY1lerthwlBzgzI84WytWSyIzrhj3zV9lr1QAqS21J7iOPa7p5h
	kRcGJHiD91orlobUVxHbCHIfVgXH5+nm7dtBQ63gEHqent
X-Gm-Gg: ASbGncv2Suu+rdGjtRWw27yp+tkWOb2zZ5NQT9eVN8HBUsbvxjrs5kn/3trehEMZ7PZ
	kjLM3A9+0ghbm7segIzGR1+tWSp8wXCrjKEoqveiQ0BOdWbzVneHqjSYetT9TOcuM+Dm5i7+WL+
	Q7OIjN0EVxR9DEHfUaLUhC2YvgV8HCaRRpKyIiYR/CrHZpv4qJ01cTgvHyciNEOvjMZ6p0Pf5NI
	R80gvUwvSF0o1WfzeaEp0+a8NorTnDJnnY5pHedLIu31X2qeLLZHJwHsaroy16qfT899azN+ZVQ
	IcZMYJzrI3apC6iwJu9uhQLxLZ3Y7IwpNsuTm2n1IPj8DQztnaEeblOg/0ND5xMDJI/ZWTwHPFm
	r07OPPnOYgMjZ+1J+Dx6W8Q==
X-Google-Smtp-Source: AGHT+IFe9UwBGyHMUR53G94gdFaI8rhRZjDtkIMFykUA6r0ba851ZkOMzNTzDnJ9RtmV6lkufrRjbg==
X-Received: by 2002:a05:6808:3a15:b0:3f4:bc5:d47a with SMTP id 5614622812f47-3ff05f39b4dmr330200b6e.13.1743113792272;
        Thu, 27 Mar 2025 15:16:32 -0700 (PDT)
Received: from stbirv-lnx-1.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3ff051680a8sm105031b6e.1.2025.03.27.15.16.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Mar 2025 15:16:31 -0700 (PDT)
From: justin.chen@broadcom.com
To: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: florian.fainelli@broadcom.com,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	jassisinghbrar@gmail.com,
	bcm-kernel-feedback-list@broadcom.com,
	Justin Chen <justin.chen@broadcom.com>
Subject: [PATCH 0/2] mailbox: Add support for bcm74110 mailbox
Date: Thu, 27 Mar 2025 15:16:26 -0700
Message-Id: <20250327221628.651042-1-justin.chen@broadcom.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Justin Chen <justin.chen@broadcom.com>

The bcm74110 mailbox driver is used to communicate with
a co-processor for various power management and firmware
related tasks.

Justin Chen (2):
  mailbox: Add support for bcm74110 mailbox
  dt-bindings: mailbox: Add devicetree binding for bcm74110 mbox

 .../bindings/mailbox/brcm,bcm74110-mbox.yaml  |  68 ++
 drivers/mailbox/Kconfig                       |  10 +
 drivers/mailbox/Makefile                      |   2 +
 drivers/mailbox/bcm74110-mailbox.c            | 661 ++++++++++++++++++
 4 files changed, 741 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mailbox/brcm,bcm74110-mbox.yaml
 create mode 100644 drivers/mailbox/bcm74110-mailbox.c

-- 
2.34.1


