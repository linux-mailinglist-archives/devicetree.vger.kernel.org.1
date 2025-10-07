Return-Path: <devicetree+bounces-224294-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D1787BC2908
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 21:57:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C39BF19A12A2
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 19:58:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 504C6239E67;
	Tue,  7 Oct 2025 19:57:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pinefeat.co.uk header.i=@pinefeat.co.uk header.b="HSQ4TJX2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA38822156C
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 19:57:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759867063; cv=none; b=rsp0TJgX+Ac7rY+zJNS/352QIV4IpW2JExjqhuxVgih7RqU9+fQisya0ba1qHHGUrLwXeErWwdLoujV1t8YH3LU3Ilgz+x/48ltegjCm05uV8mNiH9s99tJj7BQLwSXTXmMTszM1OmQ0HBeI9khPNMbzrgCfwzhz2slQKoM+xIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759867063; c=relaxed/simple;
	bh=LLFoPlsqXZ6cVvc1iROcimhAMsfDr/77J/uNnPt8xZ8=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=Ft9tOZ+yvkIVAmZrAuKk7TBIWUtr1JaSc1FMgH0ZaL6IIy7HYaOt84Fykcl6jrWntJkC7vKwJTygRj/kuEi8ywCM2nuBcJZMZGzrVDt8pAvFnwbcTHVPMwrCZAB2m7mCxpn/Z+AE+M8mFm9hVNpZOhijE5+uDrIlb10z3l1zr20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pinefeat.co.uk; spf=pass smtp.mailfrom=pinefeat.co.uk; dkim=pass (2048-bit key) header.d=pinefeat.co.uk header.i=@pinefeat.co.uk header.b=HSQ4TJX2; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pinefeat.co.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pinefeat.co.uk
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-3f0134ccc0cso4092037f8f.1
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 12:57:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pinefeat.co.uk; s=google; t=1759867059; x=1760471859; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7+qx4RaKoGovMIC4vNJLjFd56LfO6/L90wBU+eqHXZo=;
        b=HSQ4TJX2O6cUh8iVr48fLJla1S2tqFm7CmIPMdpNGlhD/n2+dwCduwU0krxVGbSId7
         egsF0AoPLJQ0AI77pkW+QURNoG+FeN61Hv2CPSvbljFly3d5Aomn6rqy/vvmlJRQHb/n
         9TDFodWMsAyu4sJ9CSDr5RZzpJOVApfVqfSj+c5ibvwWIOtyASFbaHmB5irUWxojZcPF
         iFfxB4NCx/a4ZuwmN0NU5lbFjI5iHA4qtbNZIystXl6aIRD90p/KF30Xb7A5E7g2OhN1
         pgdlem5jo/1Y5cuja6r1h0ITztyd7pfFFsDWr8eeU6/AiURybN7YfCiueYIhi4KfdiOg
         clQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759867059; x=1760471859;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7+qx4RaKoGovMIC4vNJLjFd56LfO6/L90wBU+eqHXZo=;
        b=djyFM60cxjNeWtP7sK0YdQtvdvtIs4gPGp+5BYIdmDZ3ZO9ov+2DZ6GlMc0UFP3bbX
         jJOPI0Geb6Do2XVCloyl5/Mfmuy2i7uPBIXGOjzpVLNV/iq2bGGnZEivpP3QVHZ/PsK7
         SCEpRt4ZCKyaNqH5Sq+RV0Bk8sNhLpVYD5N5mSSC+3OkID66BjlWyl78a2fP3zuTZcsK
         a0Wn9nUhvuodgtt8LQb8UfwTa5m0ZjmvXa8CwFefEA+PncxJjFtqa6GPl4FjjZTZbDCG
         Tll1ZmP2ocq4WSQT/pVM1cEXkx8OazbuMS0h1dSilZKX/sfQuRoA4rf7u3XIO/RpV1E5
         Zp/w==
X-Gm-Message-State: AOJu0YyXDhqENAun+nNKnny0lBfKNau4igT7pKK9MKEZMmVgyDGBN6ZT
	pplOnwFJNGs7BcI7raeidQFX5lvvuRMDx1uaFt3mJ2tr9sEKcwsy0bAmXThxfpfftksXATSwPsq
	1fguhTNK1pA==
X-Gm-Gg: ASbGncvdR0LuQMwmFgYrMB/kSWOK78pmODQafUpla49ab+n1rWlohAscsHaz8z8Uu7E
	XujLfvEE+scUi83QbL8UR9NQ11xUxfCPp0rYrXoFqdusiwRDiir5aFeI9Ci88Av2lH5TAVM8Pwv
	QpsufUp2YiD06RtwwArVDE0bF3r+rm5PBYejr9u9wG/dquGcJSRJ8qkvabUM6aM2/dcAl9Xw/HF
	6SQBpj4+t2h/0dS2JRdvyu47W9bhvW4FOE4EuG54cv1LuMIMJ5ZLxxk7aPum62GLJn+4VGnLN1Z
	du2pFfBRDle+nQ7XztqGXTuINEMv3nBl02ZxuS3KNDRzBrKIC+IetdLFPGTu99DaTpl+AfXwaPA
	A+i7myuiRn8v4EkSZIrZF+anvJ4IGOIWXsEhduzc6b0lAdPwNYHXJjQEnTTW8p15JuNm/TY4yKF
	A=
X-Google-Smtp-Source: AGHT+IG+/J0gFUNE9o2hpPt+WBbb/cdcTnJFI5jfr4VSMTfm5DuIbrq+63b/Wf83a/Mm/bMhowHzng==
X-Received: by 2002:a05:6000:4284:b0:3f9:1571:fe04 with SMTP id ffacd0b85a97d-4266e8de175mr353643f8f.48.1759867059042;
        Tue, 07 Oct 2025 12:57:39 -0700 (PDT)
Received: from asmirnov-G751JM.Home ([2a02:c7c:b28c:1f00:bdb:8f55:60a1:c8ff])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4255d8b0068sm26830896f8f.26.2025.10.07.12.57.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Oct 2025 12:57:38 -0700 (PDT)
From: Aliaksandr Smirnou <asmirnou@pinefeat.co.uk>
To: jacopo.mondi@ideasonboard.com,
	hverkuil@xs4all.nl,
	mchehab@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: devicetree@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Aliaksandr Smirnou <asmirnou@pinefeat.co.uk>
Subject: [PATCH v6 0/2] Pinefeat cef168 lens control board driver
Date: Tue,  7 Oct 2025 20:57:30 +0100
Message-Id: <20251007195732.16436-1-asmirnou@pinefeat.co.uk>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch series adds support for the Pinefeat adapter, which interfaces
Canon EF and EF-S lenses to non-Canon camera bodies. The cef168 circuit
control board provides an I2C interface for electronic focus and aperture
control. The driver integrates with the V4L2 sub-device API.

For more information about the product, see:
https://github.com/pinefeat/cef168

Changes in v6:
 - removed "focus_range" custom control, instead modified the range of
   the standard "focus_absolute"

There were no changes in dt-bindings patch.

Link to v5: https://lore.kernel.org/all/20251005133228.62704-1-asmirnou@pinefeat.co.uk/

Patches:
  dt-bindings: Pinefeat cef168 lens control board
  media: i2c: Pinefeat cef168 lens control board driver

 .../bindings/media/i2c/pinefeat,cef168.yaml   |  47 +++
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 MAINTAINERS                                   |   7 +
 drivers/media/i2c/Kconfig                     |   9 +
 drivers/media/i2c/Makefile                    |   1 +
 drivers/media/i2c/cef168.c                    | 317 ++++++++++++++++++
 include/uapi/linux/v4l2-controls.h            |   6 +
 7 files changed, 389 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/pinefeat,cef168.yaml
 create mode 100644 drivers/media/i2c/cef168.c


base-commit: 6093a688a07da07808f0122f9aa2a3eed250d853
-- 
2.34.1


