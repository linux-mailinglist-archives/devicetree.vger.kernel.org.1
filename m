Return-Path: <devicetree+bounces-56071-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AC37897ADE
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 23:39:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 147DF1F2726F
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 21:39:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0C27156868;
	Wed,  3 Apr 2024 21:39:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="FBsGBO9D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5662818AF9
	for <devicetree@vger.kernel.org>; Wed,  3 Apr 2024 21:39:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712180349; cv=none; b=YdYDpgRMQ7G+AtGOBEZtMzGYo0cgmbqb5BMi6NpK5YqCz4Rqoiyfz9k4GRToctliUQOCCtgjHRxnciaGxrv052ug+1hLz2irgXNoOpGTLcq9PfiMGTODZcE9O9FBTJx4UXo1NkPccm2zefI7S2/2siQyoSRBuP/U8LxA9hPgHDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712180349; c=relaxed/simple;
	bh=IVQYPk1s252I47NjZIx7g5oUxGOk5MteJXVTVpe42SU=;
	h=From:To:Cc:Subject:Date:Message-Id:Content-Type; b=f25fcenI26ZrByfGXyXrLzBHDKbHjHBZw/s4XRmNrn9CsPn/7D/p10H0Pw5dSY4H2yvNDuc6jpCpkUenqgFW7Kn4hIukOWDq0qMo75Y9/j6dStZra6eRMPLbyVhpjmqX1ZLCBt4pCMQP0rMeNSRNBf4vFngHLzDxn2GKan/z8Wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=FBsGBO9D; arc=none smtp.client-ip=209.85.219.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-qv1-f47.google.com with SMTP id 6a1803df08f44-696609f5cf2so1417716d6.3
        for <devicetree@vger.kernel.org>; Wed, 03 Apr 2024 14:39:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1712180346; x=1712785146; darn=vger.kernel.org;
        h=message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0z5Ze8OcuU5SJHAx3IlsTdj8Cm5Qp+mF5Ssh5F+nDE4=;
        b=FBsGBO9Dps4cWY2BxhE91KmsLI2hxYNFgUZQLkLNNseMKbuRPvUaqs2OMzZn4niHLl
         prNWiuZ2/9+UbaEgUE7A9aGiriE9CeV0rVnF6xvuijJTJ5NxbZNN+hbcLbbZlT2w9egP
         9vn+h6KKUME1fkexJbRp5RROMeAq+VHlP82Z4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712180346; x=1712785146;
        h=message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0z5Ze8OcuU5SJHAx3IlsTdj8Cm5Qp+mF5Ssh5F+nDE4=;
        b=Jcm66OslK26KaXdolWqNz8tv262oxe6Bg3DSiu57BTfHDKSgyhO0HxT88w5UetyOzJ
         njLLZyUyxEXL0UCR07/yVxuH0Q0ZhOs27wH0fyHEwPeq7rZzM2hK24/PQtiqCnbt+XbE
         RZje831HaI6rd1dWrrWlqwwrTsUvt4d898ktm0kWn0S11OIJ8/cOGPL3ikzJ9Nz4k2bf
         v/dNfzqpN2Vjk6kMQU/PgDcqBocUnyrXSesiuE/dcfT/iubuvn0gglT9eZMJ1zbaWMwA
         q3j9Vpavg3VYab+HDMPRwzDsR3weVz7FEH1h2g/ytNc3tjbF3Ugx8a1qrm5it2nz+evU
         8PaQ==
X-Forwarded-Encrypted: i=1; AJvYcCXsGD+zOp4IfFoYjFOgznKyiC2jmPPkPothF6O54+SAn2Cyds4bZpkZfYyQXuiUQdLgKAlRlXGXwIiQiSYIxYjM92ePD7/YUgeCGA==
X-Gm-Message-State: AOJu0YxD4X3jb9+LdPKdTwv2XW5fjBK2RHk/5gilOSGmitTXKrStQv4I
	3sBK+u2pBKEVu0uoQD0y1gBBu2WR0MSTBn7dvYQhqFBWb37z8pCTimC4CU9LIQ==
X-Google-Smtp-Source: AGHT+IGni7gUlENPqzNkj4V/aInZkN+dBK2xlOx2HZCXjX4JhCqOiBtP3UpMHcyGVCDFWcHfeVazag==
X-Received: by 2002:ad4:4eef:0:b0:699:3051:a7e5 with SMTP id dv15-20020ad44eef000000b006993051a7e5mr624650qvb.30.1712180346234;
        Wed, 03 Apr 2024 14:39:06 -0700 (PDT)
Received: from stbsrv-and-01.and.broadcom.net ([192.19.144.250])
        by smtp.gmail.com with ESMTPSA id pi10-20020a0562144a8a00b0069903cddc96sm1750739qvb.18.2024.04.03.14.39.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Apr 2024 14:39:05 -0700 (PDT)
From: Jim Quinlan <james.quinlan@broadcom.com>
To: linux-pci@vger.kernel.org,
	Nicolas Saenz Julienne <nsaenz@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Cyril Brulebois <kibi@debian.org>,
	Phil Elwell <phil@raspberrypi.com>,
	bcm-kernel-feedback-list@broadcom.com,
	james.quinlan@broadcom.com
Cc: Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Jim Quinlan <jim2101024@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	linux-arm-kernel@lists.infradead.org (moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE),
	linux-kernel@vger.kernel.org (open list),
	linux-rpi-kernel@lists.infradead.org (moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE),
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v9 0/4] PCI: brcmstb: Configure appropriate HW CLKREQ# mode
Date: Wed,  3 Apr 2024 17:38:57 -0400
Message-Id: <20240403213902.26391-1-james.quinlan@broadcom.com>
X-Mailer: git-send-email 2.17.1
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="0000000000005a9e8d0615380d1f"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

--0000000000005a9e8d0615380d1f

v9 -- v8 was setting an internal bus timeout to accomodate large L1 exit
      latencies.  After meeting the PCIe HW team it was revealed that the
      HW default timeout value was set low for the purposes of HW debugging
      convenience; for nominal operation it needs to be set to a higher
      value independent of this submission's purpose.  This is now a
      separate commit.

   -- With v8, Bjorne asked what was preventing a device from exceeding the
      time required for the above internal bus timeout.  The answer to this
      is for us to set the endpoints' max latency {no-,}snoop value to
      something below this internal timeout value.  If the endpoint
      respects this value as it should, it will not send an LTR request
      with a larger latency value and not put itself in a situation
      that requires more latency than is possible for the platform.

      Typically, ACPI or FW sets these max latency values.  In most of our
      systems we do not have this happening so it is up to the RC driver to
      set these values in the endpoint devices.  If the endpoints already
      have non-zero values that are lower than what we are setting, we let
      them be, as it is possible ACPI or FW set them and knows something
      that we do not.

   -- The "clkreq" commit has only been changed to remove the code that was
      setting the timeout value, as this code is now its own commit.

v8 -- Un-advertise L1SS capability when in "no-l1ss" mode (Bjorn)
   -- Squashed last two commits of v7 (Bjorn)
   -- Fix DT binding description text wrapping (Bjorn)
   -- Fix incorrect Spec reference (Bjorn)
         s/PCIe Spec/PCIe Express Mini CEM 2.1 specification/
   -- Text substitutions (Bjorn)
         s/WRT/With respect to/ 
         s/Tclron/T_CLRon/

v7 -- Manivannan Sadhasivam suggested (a) making the property look like a
      network phy-mode and (b) keeping the code simple (not counting clkreq
      signal appearances, un-advertising capabilites, etc).  This is
      what I have done.  The property is now "brcm,clkreq-mode" and
      the values may be one of "safe", "default", and "no-l1ss".  The
      default setting is to employ the most capable power savings mode.

v6 -- No code has been changed.
   -- Changed commit subject and comment in "#PERST" commit (Bjorn, Cyril)
   -- Changed sign-off and author email address for all commits.
      This was due to a change in Broadcom's upstreaming policy.

v5 -- Remove DT property "brcm,completion-timeout-us" from	 
      "DT bindings" commit.  Although this error may be reported	 
      as a completion timeout, its cause was traced to an	 
      internal bus timeout which may occur even when there is	 
      no PCIe access being processed.  We set a timeout of four	 
      seconds only if we are operating in "L1SS CLKREQ#" mode.
   -- Correct CEM 2.0 reference provided by HW engineer,
      s/3.2.5.2.5/3.2.5.2.2/ (Bjorn)
   -- Add newline to dev_info() string (Stefan)
   -- Change variable rval to unsigned (Stefan)
   -- s/implementaion/implementation/ (Bjorn)
   -- s/superpowersave/powersupersave/ (Bjorn)
   -- Slightly modify message on "PERST#" commit.
   -- Rebase to torvalds master

v4 -- New commit that asserts PERST# for 2711/RPi SOCs at PCIe RC
      driver probe() time.  This is done in Raspian Linux and its
      absence may be the cause of a failing test case.
   -- New commit that removes stale comment.

v3 -- Rewrote commit msgs and comments refering panics if L1SS
      is enabled/disabled; the code snippet that unadvertises L1SS
      eliminates the panic scenario. (Bjorn)
   -- Add reference for "400ns of CLKREQ# assertion" blurb (Bjorn)
   -- Put binding names in DT commit Subject (Bjorn)
   -- Add a verb to a commit's subject line (Bjorn)
   -- s/accomodat(\w+)/accommodat$1/g (Bjorn)
   -- Rewrote commit msgs and comments refering panics if L1SS
      is enabled/disabled; the code snippet that unadvertises L1SS
      eliminates the panic scenario. (Bjorn)

v2 -- Changed binding property 'brcm,completion-timeout-msec' to
      'brcm,completion-timeout-us'.  (StefanW for standard suffix).
   -- Warn when clamping timeout value, and include clamped
      region in message. Also add min and max in YAML. (StefanW)
   -- Qualify description of "brcm,completion-timeout-us" so that
      it refers to PCIe transactions. (StefanW)
   -- Remvove mention of Linux specifics in binding description. (StefanW)
   -- s/clkreq#/CLKREQ#/g (Bjorn)
   -- Refactor completion-timeout-us code to compare max and min to
      value given by the property (as opposed to the computed value).

v1 -- The current driver assumes the downstream devices can
      provide CLKREQ# for ASPM.  These commits accomodate devices
      w/ or w/o clkreq# and also handle L1SS-capable devices.

   -- The Raspian Linux folks have already been using a PCIe RC
      property "brcm,enable-l1ss".  These commits use the same
      property, in a backward-compatible manner, and the implementaion
      adds more detail and also automatically identifies devices w/o
      a clkreq# signal, i.e. most devices plugged into an RPi CM4
      IO board.

Jim Quinlan (4):
  dt-bindings: PCI: brcmstb: Add property "brcm,clkreq-mode"
  PCI: brcmstb: Set reasonable value for internal bus timeout
  PCI: brcmstb: Set downstream maximum {no-}snoop LTR values
  PCI: brcmstb: Configure HW CLKREQ# mode appropriate for downstream
    device

 .../bindings/pci/brcm,stb-pcie.yaml           |  18 ++
 drivers/pci/controller/pcie-brcmstb.c         | 161 +++++++++++++++++-
 2 files changed, 170 insertions(+), 9 deletions(-)


base-commit: 9f8413c4a66f2fb776d3dc3c9ed20bf435eb305e
-- 
2.17.1


--0000000000005a9e8d0615380d1f
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

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
mOAplh6h3nMZUZxBguxG3g2p3iD4EgibUYneEzqOQafIQB/naf2uetKb8y9jKgWJxq2Y4y8Jqg2u
uVIO1AyOJjWwqdgN+QhuIlat+qZd03P48Gim9ZPEMDUCAwEAAaOCAdswggHXMA4GA1UdDwEB/wQE
AwIFoDCBowYIKwYBBQUHAQEEgZYwgZMwTgYIKwYBBQUHMAKGQmh0dHA6Ly9zZWN1cmUuZ2xvYmFs
c2lnbi5jb20vY2FjZXJ0L2dzZ2NjcjNwZXJzb25hbHNpZ24yY2EyMDIwLmNydDBBBggrBgEFBQcw
AYY1aHR0cDovL29jc3AuZ2xvYmFsc2lnbi5jb20vZ3NnY2NyM3BlcnNvbmFsc2lnbjJjYTIwMjAw
TQYDVR0gBEYwRDBCBgorBgEEAaAyASgKMDQwMgYIKwYBBQUHAgEWJmh0dHBzOi8vd3d3Lmdsb2Jh
bHNpZ24uY29tL3JlcG9zaXRvcnkvMAkGA1UdEwQCMAAwSQYDVR0fBEIwQDA+oDygOoY4aHR0cDov
L2NybC5nbG9iYWxzaWduLmNvbS9nc2djY3IzcGVyc29uYWxzaWduMmNhMjAyMC5jcmwwJQYDVR0R
BB4wHIEaamFtZXMucXVpbmxhbkBicm9hZGNvbS5jb20wEwYDVR0lBAwwCgYIKwYBBQUHAwQwHwYD
VR0jBBgwFoAUljPR5lgXWzR1ioFWZNW+SN6hj88wHQYDVR0OBBYEFGx/E27aeGBP2eJktrILxlhK
z8f6MA0GCSqGSIb3DQEBCwUAA4IBAQBdQQukiELsPfse49X4QNy/UN43dPUw0I1asiQ8wye3nAuD
b3GFmf3SZKlgxBTdWJoaNmmUFW2H3HWOoQBnTeedLtV9M2Tb9vOKMncQD1f9hvWZR6LnZpjBIlKe
+R+v6CLF07qYmBI6olvOY/Rsv9QpW9W8qZYk+2RkWHz/fR5N5YldKlJHP0NDT4Wjc5fEzV+mZC8A
AlT80qiuCVv+IQP08ovEVSLPhUp8i1pwsHT9atbWOfXQjbq1B/ditFIbPzwmwJPuGUc7n7vpmtxB
75sSFMj27j4JXl5W9vORgHR2YzuPBzfzDJU1ul0DIofSWVF6E1dx4tZohRED1Yl/T/ZGMYICbTCC
AmkCAQEwazBbMQswCQYDVQQGEwJCRTEZMBcGA1UEChMQR2xvYmFsU2lnbiBudi1zYTExMC8GA1UE
AxMoR2xvYmFsU2lnbiBHQ0MgUjMgUGVyc29uYWxTaWduIDIgQ0EgMjAyMAIMSO43VW7D5NP1X/KD
MA0GCWCGSAFlAwQCAQUAoIHUMC8GCSqGSIb3DQEJBDEiBCDok7LjDv3EEYRXAFCcAtHpyHwZ/YC4
Tq2oKAfJYbchUjAYBgkqhkiG9w0BCQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0yNDA0
MDMyMTM5MDZaMGkGCSqGSIb3DQEJDzFcMFowCwYJYIZIAWUDBAEqMAsGCWCGSAFlAwQBFjALBglg
hkgBZQMEAQIwCgYIKoZIhvcNAwcwCwYJKoZIhvcNAQEKMAsGCSqGSIb3DQEBBzALBglghkgBZQME
AgEwDQYJKoZIhvcNAQEBBQAEggEAl84orDErLki5m8kMEMM8kSHFHr6+F0fEQUpJJame71dl9BtG
jyDQcIexMhR8hwAI0gjoqd8rM3MxECAkO9ql+sEZTy/LuHkcVMR/5AgJafdANonUrv659Tc5f95w
kIfPbprSNc/2mmgl7fRAsBe8TUFUKqleBxHrEdwuGMlGxqfybqaV3eo6NLD3BYtMi5vngnoPuf4e
aINcXQzl1vSxxwQlZkHgNL0D/5mDP5Ux9Od7y+yI47EMnQgRsu0lFRIJiRbufTrLRqT9Ju7GLEUl
OoS1kwaUWNlMobqr+CGSFmxl58IeAc3p+El1tn23AxBFWeNAN+j86RS6G0zvU4H2kw==
--0000000000005a9e8d0615380d1f--

