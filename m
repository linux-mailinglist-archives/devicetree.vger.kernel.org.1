Return-Path: <devicetree+bounces-308373-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id nOv9GkzUJmpGlQIAu9opvQ
	(envelope-from <devicetree+bounces-308373-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 16:40:12 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 02583657616
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 16:40:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=OfnFSW7V;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308373-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-308373-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 97C2D3153280
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 14:30:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA2903CC9EA;
	Mon,  8 Jun 2026 14:28:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00A6E21B9F6
	for <devicetree@vger.kernel.org>; Mon,  8 Jun 2026 14:28:57 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780928939; cv=none; b=s7FeRRjkrus81WuJo06qPbNdByouls59jrufOsfYkkgHeSyBXeVGZSQqosTfFZKV2aJWZthqoQGBHkAOK757J0aN6thXqTDcKH5TPxiuFKhUcmCWNYYrr2+9hXDRMqLHCQX37F6iuSH3NrybYkW79lBu5nObT44gaFsSP/pxQDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780928939; c=relaxed/simple;
	bh=luqgOD4RGbZf7aivTx5OKHrey1l1rG2sZFjtaq982Wo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=B+1dPlEe/5A1NTjzXzW5+8KoS7EP8txJcpExx+UDrBbtDmo72jo+y+8E8ibJ2EGcRxevyng2Qrc7dHXRv4G4Jtc8r2k7Ep9SLtMeFAdXUOVGVYw3GwbD+nM27I9eAXqPsij2CxLQXWkCPoTQbMEE6pSrzpX0fmTkTsSljA11N7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OfnFSW7V; arc=none smtp.client-ip=209.85.221.53
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-45eedc94d37so2198133f8f.3
        for <devicetree@vger.kernel.org>; Mon, 08 Jun 2026 07:28:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780928936; x=1781533736; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vOtt259AiIcPipuJsaJ8iKxiDpMZGY8IewGo7CSvhw8=;
        b=OfnFSW7VxjnLvECEbgULkwll4qRgY+Xex43E+BbQiDh4vkc7E1kk9c3cbcW8N7LLeO
         FGflqSlfeoit4nlPLKzX1xbC4DnussLjVPwJR5tsvRigk7K4XyKsOFSCiRjQpq/slKdG
         S1TAELKKRFQtejYm+XTuNZ1nrKmGPI3PAq5uBpP7At81U/Ubc3N9i7DytaA2LJ4MsItQ
         A9cSM+UeiUbqQVQNIjQYHYV0JYeMqEyIDweq/Dq/rAr06OGVvHHbv2zl+XaU8+Cl9FFO
         Pn+ciWhXA6vII1odh9KT5i90MBhqsF+fuIpnITTY/pmzI/aV4gj3FJ4lKtRwBRAqgETx
         XsDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780928936; x=1781533736;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vOtt259AiIcPipuJsaJ8iKxiDpMZGY8IewGo7CSvhw8=;
        b=FaxSOZfnaH7sYGRaAHhvPZYiIyqK+ZWng8q5R/9RvRpHXT/B4s4T2AVfmwZgib4uWJ
         TFTChRR+JAR00ydPW0BZHDOus+PAtkVKa2JnacDd8ChFebpVV1UKbvzaU05G1QEK6TM5
         Y03jeCvSBHqURXxaz9yFGrcC4yvFIF/3buoGNRUmBk3auSZX3jbz78m2jQRhQTRAFQOd
         pfnwTEiPBdGJHC99R3Ti0oopGg//vnilbNrcYP9TNP3WefeEMMHxSw1CbyyALvRfTwC+
         EsiZVQTHvjXvOIY2mMhXiJ6+zwTCDxQzrAS8sgwHk3B1gYkWGk/RZBYOMvcR6PntEmjC
         5k9Q==
X-Forwarded-Encrypted: i=1; AFNElJ+FtDUDg/dMHfPkxOjZ7I+enSrhfA4LOtzTYOCUKgiaKT4tfc/gsmFtXgEEIcw5HAcdfxzQEv0yfUUQ@vger.kernel.org
X-Gm-Message-State: AOJu0YzHrYKBMEcJbAGdR88kPy4oT0VO06KSoI+EK/DY/AtBpjELmk5C
	QyRGkX8VPNdj6Hf5FDMUnuCCy0DAmK9/Szc8b3OSkdbAoetGNS8VAP4/sG75CVbm
X-Gm-Gg: Acq92OHjX5w9Q2QfLB6y8PYhaa/5imJD5jnK8dYf8P3R0bfLmJMolzB8QB678B/domH
	pziOQKYODSXtT4Xv80IZP8Zd5b95+X/idX8MKJ1VS70neswJMfWvygMj2Mrit4YIKDuDnCKkewD
	B4T/4mfdS/fOWvwcs8CcbeJp5B8Aho5dGY/djeHms84swZftlfMPJgDk2rDEyRQKadkcY6ker7T
	U81sALHIYDeJlPjGyON0907fVtNZ8EfU41rzXmTVb5+iRoZU8cnMBXqPHtKlfS1toNdrg9VUZN+
	822J09qYyTOYr0LG4zwgtOgvqdExlF0lIBG32e5hQYlr5b35JZ69e9KNgAKK3Faezd0LkWLkJKG
	QXwjBUlEQbCaKRz0nHNpiN2e0SQ3PyLFTsnAeVMdX6xZVlWgZ06BYXxvE7aAVucIUSr3u//c4ah
	fSjwwpuBebOX8bHO/iW2p6adm2h1bmd2MFFlutIP+039McOWL+ZTlmNNjJI+j64QIoyIv6msE5y
	Pib
X-Received: by 2002:a05:6000:181a:b0:45d:817c:b8b2 with SMTP id ffacd0b85a97d-4603065b5f2mr17122343f8f.30.1780928936383;
        Mon, 08 Jun 2026 07:28:56 -0700 (PDT)
Received: from [10.100.102.82] (46-116-185-113.bb.netvision.net.il. [46.116.185.113])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4601f351d40sm52065463f8f.26.2026.06.08.07.28.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jun 2026 07:28:55 -0700 (PDT)
From: Yedaya Katsman <yedaya.ka@gmail.com>
Date: Mon, 08 Jun 2026 17:28:37 +0300
Subject: [PATCH] arm64: dts: qcom: sm6125-xiaomi-laurel-sprout: Fixup panel
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260608-b4-compatible-s6e8fc0-fixup-v1-1-303606b53c1a@gmail.com>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yXMQQqDMBBA0avIrDuQBDvYXqV0kcRRp7QaMiqCe
 HfTdvn48HdQzsIK92qHzKuoTGOBvVQQBz/2jNIWgzOODJkGQ41x+iQ/S3gzKnHTRYOdbEtCss5
 T667+Zmsoh5S5hN/98fxbl/DiOH+XcBwnNzXXZH8AAAA=
X-Change-ID: 20260608-b4-compatible-s6e8fc0-fixup-612a6d25a914
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 phone-devel@vger.kernel.org, Yedaya Katsman <yedaya.ka@gmail.com>
X-Mailer: b4 0.15.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1780928934; l=1089;
 i=yedaya.ka@gmail.com; s=20260113; h=from:subject:message-id;
 bh=luqgOD4RGbZf7aivTx5OKHrey1l1rG2sZFjtaq982Wo=;
 b=qmgM/DS7uv19nRKNxCGl5Nx9UryyEW2/g1jYt2EP4xTHuC9SChsGmIyERekvMHFsfVJ7DSkpu
 JxEtfuSiV7lDuy5Si0ME2cMWfC1ObKV/8m/aK5Cr+feUeO2rXJa/Ang
X-Developer-Key: i=yedaya.ka@gmail.com; a=ed25519;
 pk=CgNmxD3tYSws5dZfpmJfc6re/bV/f47veVijddHLytk=
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-308373-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.sr.ht,gmail.com];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[yedayaka@gmail.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:andersson@kernel.org,m:konradybcio@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-arm-msm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:~postmarketos/upstreaming@lists.sr.ht,m:phone-devel@vger.kernel.org,m:yedaya.ka@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:yedayaka@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yedayaka@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 02583657616

The change to the panel compatible was missed, fix it. This compatible is
already in the driver.

Signed-off-by: Yedaya Katsman <yedaya.ka@gmail.com>
---
Link: https://lore.kernel.org/all/CAHuF_ZpTvYmARzx2_be1foM6XUVCdE0bNmb+YcHkH7tFhrYF8w@mail.gmail.com/
---
 arch/arm64/boot/dts/qcom/sm6125-xiaomi-laurel-sprout.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6125-xiaomi-laurel-sprout.dts b/arch/arm64/boot/dts/qcom/sm6125-xiaomi-laurel-sprout.dts
index b9d9439e230b..139f2b401af5 100644
--- a/arch/arm64/boot/dts/qcom/sm6125-xiaomi-laurel-sprout.dts
+++ b/arch/arm64/boot/dts/qcom/sm6125-xiaomi-laurel-sprout.dts
@@ -198,7 +198,7 @@ &mdss_dsi0 {
 	status = "okay";
 
 	panel@0 {
-		compatible = "samsung,s6e8fco-m1906f9";
+		compatible = "samsung,s6e8fc0-m1906f9";
 		reg = <0>;
 
 		reset-gpios = <&tlmm 90 GPIO_ACTIVE_LOW>;

---
base-commit: 6e845bcb78c95af935094040bd4edc3c2b6dd784
change-id: 20260608-b4-compatible-s6e8fc0-fixup-612a6d25a914

Best regards,
--  
Yedaya Katsman <yedaya.ka@gmail.com>


