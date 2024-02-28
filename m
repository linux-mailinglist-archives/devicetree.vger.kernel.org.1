Return-Path: <devicetree+bounces-47021-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B9D986BB05
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 23:54:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 12A6928976C
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 22:54:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E636271EAA;
	Wed, 28 Feb 2024 22:54:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="FHVPWPLR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D27B1361C4
	for <devicetree@vger.kernel.org>; Wed, 28 Feb 2024 22:54:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709160860; cv=none; b=mnainbuFO/Amq0QgkYaFc24UX7N9HvFdDizHzeYhEU6nLXVqGAphyQD232pWANQvfdlypXgsNAsVGvaCwb/AcTJR4oaSCj0ElHOlCRVILJNZeiM8/ELJ7+93ii6TGUwOyq8wh8TO1QpPnGcG+ipJoRFK0g/OGjIeR1SVOt4s4qk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709160860; c=relaxed/simple;
	bh=0t558KIr9J6f+WfCIbOtj0Vw8IQgA3xCKYR8oU5r+fA=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=LhZmw8qf8WV+OZf5MhTTDoDdRbhJs3p5Rh6M3hnTNPvvnRFYtx0n2nZJDfTWlmLnzi4kfob5nKKRG8phlXMyefITO1yGGib1a3xsknQKNrzIAbylAAGyXDdLyMeN+Yt7K9pnQu8hxtrscpmKeFRaksiFTOq28NiUlRBvX3LLAmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=FHVPWPLR; arc=none smtp.client-ip=209.85.160.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-qt1-f179.google.com with SMTP id d75a77b69052e-42eb3a8f4bcso1835261cf.1
        for <devicetree@vger.kernel.org>; Wed, 28 Feb 2024 14:54:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1709160858; x=1709765658; darn=vger.kernel.org;
        h=mime-version:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Jsu36SyBAbLpK6yiorKcuT1/WNkpnMjDr3qCK05/GuY=;
        b=FHVPWPLRO7+/whjwSvD1wu98E+JZkAUMQUAqWxdhp+qLKHGCBORtqzjbZOZ2zhnfYp
         MV1t36TQbScg9AFhVkTQVfFdgV1ebYMKLqlObckkBcp76Q2VWtuW3IIkZoljlC1nvAci
         FxDyJ6gW7feQmlC1e+quA3QneGJQUxtdZOSOY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709160858; x=1709765658;
        h=mime-version:message-id:date:subject:cc:to:from:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Jsu36SyBAbLpK6yiorKcuT1/WNkpnMjDr3qCK05/GuY=;
        b=FqXF20m9ZnGI+U0Z0wXJLF5BQ+TDMfyfbgb3gqfYVNI30Z8vyRZ9yVbQ9hJuAi/CWd
         lc7iufuWM8GskzNWfoGhZrypkkvFmAjemmGkEvnHsTiIN28CDArxvnG1XXav6s5RCb/O
         DGq6I3mINjBsNvbS7BNGZ95UlfAdjDNvygOzYqVrmwSrETD87284XY2cKqyVvM7H1GRv
         oXLTK3GW2Ml3pU1VMTnT62L2frVn8st32SYGlEG85IpdSbXf3Z8dqYBQFIXybkjbajyH
         NexY5ENvDJw4uCWXSvaOXkcIHEKFnVmZZ6R0z93XMLCy24A5j/9yKV3GJ8NkK0FeLcTJ
         TesA==
X-Forwarded-Encrypted: i=1; AJvYcCVkk9qJKzB6xgKCiJgVJN6x7QBIubTlZ3roSXlyMZNqfCMEMBvvJoiVM/1mOKeS1ZV9FUZeacUtNx5/bh8ew72UyBDfIk4GMb9yiw==
X-Gm-Message-State: AOJu0YyHthULVNJLjEbg7Wwh7UQqT/mI/IhGbQqV2J7zYN3YNfu2M4bC
	W1hl+qRv4iGyfrG52ns4aFqXWm9mp3CidxGV8AkOH/ALlfjimIy9O4KZ9UFuCw==
X-Google-Smtp-Source: AGHT+IG1szzt9+azs90UiHREGlw65UV7sS/b1JE/5oIAcdngQjQDEJ9DhnhJnUsDPNR0f+e6qi3Q4A==
X-Received: by 2002:a05:622a:1646:b0:42e:5a10:27f0 with SMTP id y6-20020a05622a164600b0042e5a1027f0mr444519qtj.8.1709160857995;
        Wed, 28 Feb 2024 14:54:17 -0800 (PST)
Received: from stbirv-lnx-1.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id b1-20020ac812c1000000b0042e3468a98csm95036qtj.4.2024.02.28.14.54.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Feb 2024 14:54:17 -0800 (PST)
From: Justin Chen <justin.chen@broadcom.com>
To: netdev@vger.kernel.org
Cc: horms@kernel.org,
	bcm-kernel-feedback-list@broadcom.com,
	florian.fainelli@broadcom.com,
	davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	opendmb@gmail.com,
	andrew@lunn.ch,
	hkallweit1@gmail.com,
	linux@armlinux.org.uk,
	rafal@milecki.pl,
	devicetree@vger.kernel.org,
	Justin Chen <justin.chen@broadcom.com>
Subject: [PATCH net-next v3 0/6] Support for ASP 2.2 and optimizations
Date: Wed, 28 Feb 2024 14:53:54 -0800
Message-Id: <20240228225400.3509156-1-justin.chen@broadcom.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="000000000000d40ed10612790589"

--000000000000d40ed10612790589
Content-Transfer-Encoding: 8bit

ASP 2.2 adds some power savings during low power modes.

Also make various improvements when entering low power modes and
reduce MDIO traffic by hooking up interrupts.

Justin Chen (6):
  dt-bindings: net: brcm,unimac-mdio: Add asp-v2.2
  dt-bindings: net: brcm,asp-v2.0: Add asp-v2.2
  net: bcmasp: Add support for ASP 2.2
  net: phy: mdio-bcm-unimac: Add asp v2.2 support
  net: bcmasp: Keep buffers through power management
  net: bcmasp: Add support for PHY interrupts

 .../bindings/net/brcm,asp-v2.0.yaml           |   4 +
 .../bindings/net/brcm,unimac-mdio.yaml        |   1 +
 drivers/net/ethernet/broadcom/asp2/bcmasp.c   |  90 +++++++-
 drivers/net/ethernet/broadcom/asp2/bcmasp.h   |  23 +-
 .../net/ethernet/broadcom/asp2/bcmasp_intf.c  | 203 ++++++++----------
 drivers/net/mdio/mdio-bcm-unimac.c            |   1 +
 6 files changed, 204 insertions(+), 118 deletions(-)

-- 
2.34.1


--000000000000d40ed10612790589
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

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
NhTY3E+cXCB11wty89QStajwXdhGJTYEvUgvsq1h8CwJj9w/38ldAQf5WjhPmApYeJR2ewFrBMCM
4lHkdRJ6TDc9nXoEkypUfjJkJHe7Eal06tosh6JpAgMBAAGjggHZMIIB1TAOBgNVHQ8BAf8EBAMC
BaAwgaMGCCsGAQUFBwEBBIGWMIGTME4GCCsGAQUFBzAChkJodHRwOi8vc2VjdXJlLmdsb2JhbHNp
Z24uY29tL2NhY2VydC9nc2djY3IzcGVyc29uYWxzaWduMmNhMjAyMC5jcnQwQQYIKwYBBQUHMAGG
NWh0dHA6Ly9vY3NwLmdsb2JhbHNpZ24uY29tL2dzZ2NjcjNwZXJzb25hbHNpZ24yY2EyMDIwME0G
A1UdIARGMEQwQgYKKwYBBAGgMgEoCjA0MDIGCCsGAQUFBwIBFiZodHRwczovL3d3dy5nbG9iYWxz
aWduLmNvbS9yZXBvc2l0b3J5LzAJBgNVHRMEAjAAMEkGA1UdHwRCMEAwPqA8oDqGOGh0dHA6Ly9j
cmwuZ2xvYmFsc2lnbi5jb20vZ3NnY2NyM3BlcnNvbmFsc2lnbjJjYTIwMjAuY3JsMCMGA1UdEQQc
MBqBGGp1c3Rpbi5jaGVuQGJyb2FkY29tLmNvbTATBgNVHSUEDDAKBggrBgEFBQcDBDAfBgNVHSME
GDAWgBSWM9HmWBdbNHWKgVZk1b5I3qGPzzAdBgNVHQ4EFgQUIWGeYuaTsnIada5Xx8TR3cheUbgw
DQYJKoZIhvcNAQELBQADggEBAHNQlMqQOFYPYFO71A+8t+qWMmtOdd2iGswSOvpSZ/pmGlfw8ZvY
dRTkl27m37la84AxRkiVMes14JyOZJoMh/g7fbgPlU14eBc6WQWkIA6AmNkduFWTr1pRezkjpeo6
xVmdBLM4VY1TFDYj7S8H2adPuypd62uHMY/MZi+BIUys4uAFA+N3NuUBNjcVZXYPplYxxKEuIFq6
sDL+OV16G+F9CkNMN3txsym8Nnx5WAYZb6+rBUIhMGz70V05xsHQfzvo2s7f0J1tJ5BoRlPPhL0h
VOnWA3h71u9TfSsv+PXVm3P21TfOS2uc1hbzEqyENCP4i5XQ0rv0TmPW42GZ0o4xggJtMIICaQIB
ATBrMFsxCzAJBgNVBAYTAkJFMRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNhMTEwLwYDVQQDEyhH
bG9iYWxTaWduIEdDQyBSMyBQZXJzb25hbFNpZ24gMiBDQSAyMDIwAgwj8BKLXNpALfemdRAwDQYJ
YIZIAWUDBAIBBQCggdQwLwYJKoZIhvcNAQkEMSIEIPg4KtvAkc5hRzLTe6sWL8rrl7K3Zb/ho44Y
DRrcamxLMBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTI0MDIyODIy
NTQxOFowaQYJKoZIhvcNAQkPMVwwWjALBglghkgBZQMEASowCwYJYIZIAWUDBAEWMAsGCWCGSAFl
AwQBAjAKBggqhkiG9w0DBzALBgkqhkiG9w0BAQowCwYJKoZIhvcNAQEHMAsGCWCGSAFlAwQCATAN
BgkqhkiG9w0BAQEFAASCAQAUALL2aFlzpB6F/8u8yYGG4Nz1dDvScLBRhz8T0ZqGMQsBL1dbL1qe
QmMqJvBwd0ghN+DB37rG8DBpFYMFJC5KDn26ox4HdR5UtXJUlPjOrr+/0YzLl8L7SJqUS2NK+cp8
7KPigU+HZV//CunVoxL4qO/Wumn3wF3aeiaFZg+Ofarvq6R807ucn27mO52O2aqCk9xndKOGLtFk
u1OyYY1uo5HRMfCtzj8Ix/KPz0XxPxFUNZjCR9SfkNgZlfJW2Wc/uq+oML2+rYzvonqsFXbDzfj5
CxB+D8bMZl4ZNOIjhscfqLlL82UHHBsfYM4o3y709UtF8W72O9aQ6lkPAxPe
--000000000000d40ed10612790589--

