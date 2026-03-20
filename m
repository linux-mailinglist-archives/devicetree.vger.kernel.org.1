Return-Path: <devicetree+bounces-278106-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gKPaBsgCvWkO5gIAu9opvQ
	(envelope-from <devicetree+bounces-278106-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 09:18:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B38F02D7195
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 09:18:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9CE65311F3C4
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 08:11:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4954C37419F;
	Fri, 20 Mar 2026 08:10:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="j6hMmT+b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDE07371CE6
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 08:10:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773994219; cv=none; b=OSRu1j+2cLmBcWQ81Q+3r5VAZ3LaH9iluQw2wUNZ+fbxy/P11EFw8HCI6VsWg/padI+ql9RqZZ5SAZiTIDUo1zuocDDjB7uzLml/K9nIVViE24yrtdGI5AgiSOo0Zfr4EraOvECCGfALcv1SbxKGLyLnhUuWXpVimA68KKLqvi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773994219; c=relaxed/simple;
	bh=bBA9pKoUJKha3vUXE6G0Kb2Gc2BDFVqLpsU2Mg4m+lI=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=dKVNeAtXVj48zfINO44t6hjGkOWiLgnxs4iyr39St4bEiFyG8e6UMDYOIi4NbSd0GSdq9rKeuX6ehutzGDyREu0exOsmPZq41lRnnWxwTbNrqoTJcY3HoLVLTRMnJUhl8TrNb0l8wqwENKFxwsy8zNSu+JTsOzSBMOE10bAoyrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=j6hMmT+b; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-b9841aecf72so404566b.2
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 01:10:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1773994216; x=1774599016; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=R/rKZmv4tm7FrIRlQTBNSC1pd0UoGmIofomQN9HS2j0=;
        b=j6hMmT+bTNkAawk1E/+cVQHTGKk3Um03yCAqhf86TZq0yNnHNjoxqdxK5+eboN5xDc
         MzhJCsxU97j9rYIGlBcXkPemydJs+ZoL1VI77EQES4clv9KKRDVeoTFuZoChZ/h5vWds
         sXKP2yXe+ONszl80grbcAwWmapmm9XYSUnojZH5oGpOC9ZDiSc86fEYCoCkkciepxZTL
         w6lNtm8arOnX3pbTwMWvtMVUvs5ADnRHjUulNAgm3FTP9RoOHsk6fMCSJooWEfian/CK
         axQYjoGGbpAgW+pGKX/a7L5fqXcVAQZAcpmckyI16aLL99g5WQ5LEcY6vwOOtdfWfja1
         yWqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773994216; x=1774599016;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R/rKZmv4tm7FrIRlQTBNSC1pd0UoGmIofomQN9HS2j0=;
        b=j8pfDGebgyoTcjWKqVrRnqPmedmZR26uQWzUqpTkOjf1Wieqo6tVC2I9mavqEIMFTL
         0szaZrWPPHT7CTRxjOizlHFSmZJ2XeQoLwVuCizoYrmAuXjIYVgbkrgE6owFYC7tlukD
         4s4RE7c72wIac036FUUI5sM6us1VS3t7HKf7WFkJjBL9HL5QVba7AAhA4VUdUSJGgSYn
         Y03IO94+Ggih9eYqA4FA1G7EbSe0ZDogKmYG+MZcDAY0J+FwGezP8pt0b8K13ptRf/4Z
         s2j2Kqk5hZGSAM9EmFWzPnPj1jSfgR+5dW35I9XeJkb4E8db6vdelxgeZaIuwiW2V3to
         TKvg==
X-Forwarded-Encrypted: i=1; AJvYcCWLthGMCXz/69nhEcA2y8bIB8fyIJ9SvLsM6AsPlbPkmlAPBusNdT21LGOvbr62tNCxApeHrku+C/wu@vger.kernel.org
X-Gm-Message-State: AOJu0YxhkTVS+b3zfwBTpNVRw4oCErBBK+bARBpsZnKZVI05IKYIlrDL
	o1ux02nS6IDCePoxg00ET3iU2CxrBsvFBmsrn6r7wqnhvtFoXuzQvt4vGHwahLhUDWZGq1+1xPj
	wz4g0
X-Gm-Gg: ATEYQzzpGIvsbgaeGm36zb+Jf6iRJmwU4GmWOgmnmdmCQxkKrvGjPnNyjZFG+87zw7A
	dsR3/awOxzPPykx995PWJU+icBoCPFWWNRWREzQ4WA4EBPa6TvBhzTilUjwKrJBQ/z+3E6Nhrck
	MZ6q1erfAF83uWcYqGMMtkSikEPbs0qFSAGZpJnAuTMyUI4f2T0fOBLlgeGk1x6Zz9Yhu/IT9R6
	//nACId061yt9hScbm1Kiav5KdOt09y+/umf4H1t2gfbKqHsUgnOe31e9Ra+Qy1BFeu01nOeMwh
	OOt/v4BeQcCowYmwYGtK7dJyQyvoHozv0A2cnyEsRNlcMIZYCVzlIzVmEYF2eEpTnCgea7aUW9i
	i+0ehB7mQ9mup1Ru2YUmz1RmwMlCkynMxTP713EXVtlIrhJpiPTxrpvjOjngPvYkDqOq34hruBo
	15DBRNRpk5DWgJNwCWUfWyaDo1Fo61XULg699DjKWe+DYijB58Dz0kn5jty4lh6TR2bSW0eYKGS
	uCphw==
X-Received: by 2002:a17:907:6c10:b0:b97:bc6b:7f21 with SMTP id a640c23a62f3a-b982eeec4b0mr159336866b.0.1773994215876;
        Fri, 20 Mar 2026 01:10:15 -0700 (PDT)
Received: from [172.16.220.101] (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b9832f43b5csm121016466b.1.2026.03.20.01.10.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2026 01:10:15 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH v2 0/3] Add CCI support for Milos, enable on Fairphone
 (Gen. 6)
Date: Fri, 20 Mar 2026 09:09:48 +0100
Message-Id: <20260320-milos-cci-v2-0-1947fc83f756@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/12PQQvCMAyF/8rI2chaRetO/g/x0LWpC7h1tnNMZ
 P/dOEHEQw7vkbzv5QmZElOGqnhCopEzx06EXhXgGttdCNmLBl3qXanKHbZ8jRmdYwz7sPXGaEV
 mD7LfJwo8LVmn80cnut0lcviYUNtM6GLb8lAVHU0DLrEbdYBfnuAXmvrSbOscsozfqtqHsFEUT
 DUqeHMazkNMj+UFsd6g/3tpOyosURsSWxtvD+4YLKe+iR2tpRKc53l+AeI8Hw4OAQAA
X-Change-ID: 20260106-milos-cci-f7f4d8821e87
To: Loic Poulain <loic.poulain@oss.qualcomm.com>, 
 Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773994215; l=2118;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=bBA9pKoUJKha3vUXE6G0Kb2Gc2BDFVqLpsU2Mg4m+lI=;
 b=Fvp7K2KmT6A2FsRajwRv5mfxCQyJ9PQFCwYRc+AS3h3uqsslLGEOR9HNDaM7Wbeq82TEzpwhf
 BaCdCaSDvuKBl+h1vxquOXkhvcSvnvHRk2g04r6UDOghu/hl2/PB6AI
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[fairphone.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[fairphone.com:s=fair];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-278106-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[fairphone.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.weiss@fairphone.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.996];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[fairphone.com:dkim,fairphone.com:email,fairphone.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: B38F02D7195
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add the compatible strings for the CCI busses on Milos, and the EEPROMs
found on the Fairphone (Gen. 6) camera modules, and add them to the
milos dtsi and device dts.

This series soft-depends on https://lore.kernel.org/linux-arm-msm/20260116-milos-camcc-icc-v1-0-400b7fcd156a@fairphone.com/T/

The patches can be applied without the dependency, but the final dts
patches should probably only land once the other series has been fully
applied, otherwise the CCI busses cannot actually be used (unless some
other component turns on the mmss_noc) and you get a kernel warning like
the following:

[  291.055839] ------------[ cut here ]------------
[  291.055860] cam_cc_camss_top_gdsc status stuck at 'off'
[  291.055878] WARNING: drivers/clk/qcom/gdsc.c:178 at gdsc_toggle_logic+0x138/0x144, CPU#4: hexdump/1995

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Changes in v2:
- Keep pinctrl nodes sorted in milos.dtsi (Konrad)
- Rebase on -next, drop applied patch
- Pick up tags
- Link to v1: https://lore.kernel.org/r/20260116-milos-cci-v1-0-28e01128da9c@fairphone.com

---
Luca Weiss (3):
      dt-bindings: i2c: qcom-cci: Document Milos compatible
      arm64: dts: qcom: milos: Add CCI busses
      arm64: dts: qcom: milos-fairphone-fp6: Add camera EEPROMs on CCI busses

 .../devicetree/bindings/i2c/qcom,i2c-cci.yaml      |  18 ++
 arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts   |  50 ++++++
 arch/arm64/boot/dts/qcom/milos.dtsi                | 194 +++++++++++++++++++++
 3 files changed, 262 insertions(+)
---
base-commit: f6eb9ae8b9fc13c3971e4a6d1e8442f253001f36
change-id: 20260106-milos-cci-f7f4d8821e87
prerequisite-change-id: 20260116-milos-camcc-icc-d41bdff31ef8:v1
prerequisite-patch-id: fc79344d381fea48318bbf62ce7c16b5687df074
prerequisite-patch-id: 323271b304b98b6ac0e98032f355de26c8e4fa6b
prerequisite-patch-id: ba8a70f210c54a14c69a60c26eea22d384b0397f
prerequisite-patch-id: de6e7d9f90ce4d8b37342e5198f042edee4b81a4
prerequisite-patch-id: aa3dc6c12366d6574b7e85808fcb107deddb8435

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


