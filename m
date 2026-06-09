Return-Path: <devicetree+bounces-309201-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id DT5yFEk/KGrbAwMAu9opvQ
	(envelope-from <devicetree+bounces-309201-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 18:28:57 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E7D8066261C
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 18:28:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=SgaPRNEt;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309201-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309201-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C2B5E30E659E
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 16:19:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B86543B5302;
	Tue,  9 Jun 2026 16:17:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f49.google.com (mail-oa1-f49.google.com [209.85.160.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E1113B5310
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 16:17:28 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781021849; cv=none; b=NXddJpqe6qW0STSUJMFHEfoKXNC1mlAmbRLFppZoANHhJopu4xQo3kW8M9zu86LsnYNKnb7vBoZEhEn6APZI6YY5wkwTpo+9xwp8ebHCs0196hnU9XwHZevU6R2Ik2tX5CiWrQuAqcARtVoxbeqEaImcQd/QLBuJ0VSyMItZQqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781021849; c=relaxed/simple;
	bh=iGsfYaqqPaggYpWFXvV7wMfdK7JOLFerDStcNgsImFU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Sni8F3SwH8DCAMASrto6xVohf/KAoWGWr+Wxr7HQHSyM1J3MEV87NmyXLx2qFCNcL8lfYnWoQ6reVM6RUtXqQx6OrWPzPF2vTGl6kNQLC+2/w+pyhANx9QAJy1RdBoru9EhFWFmvF4JPdWmL/8jx9W/FKyiO6mn8g/tbaX7mixE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SgaPRNEt; arc=none smtp.client-ip=209.85.160.49
Received: by mail-oa1-f49.google.com with SMTP id 586e51a60fabf-43d133d9a28so2192695fac.2
        for <devicetree@vger.kernel.org>; Tue, 09 Jun 2026 09:17:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781021847; x=1781626647; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=uYl15/ixnkO8fppgHDZZ9tihfmZdCVJsYU8HZ5wS+/I=;
        b=SgaPRNEtSLpbQl07cHTi8gtXIdnKkml1FEXtDskZftpgDIRKyIzzGb6TWnbfm+OGnR
         PaxOK9dJ+zJLITd2f/PEEMBooAduajcLyXX/sAxmbnhaVBfQy3togpawbt3oM7V1QW66
         JhcgREU9y22H+x93ZICR8Efu75kOH35cP+/XYTONZy0Lfxn9fzkKGR1JILZ8g5Z7SfVn
         XL6D083gXQdl+S5GmPXHVGF04Tb51BhTINyDi9hDcNYTwQhznlhblPT9MZ/4LaPMwgLZ
         M2niZLruMthNrlwBILnGxChGqAVI3gUnkw3WgmNrsjvOOluwI4wAxP6BBiuBfx0kjQJQ
         quVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781021847; x=1781626647;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uYl15/ixnkO8fppgHDZZ9tihfmZdCVJsYU8HZ5wS+/I=;
        b=SnqzrjEqt4HRZsPPezxrT8avHdZXmo+wast/AfpJnnqssboDDyfkLXPDktinOKC1wp
         iWZ3ZWcPkNRRxkOsxsuBi1aRXWAyCeqpeNVJamAyRIujC3Z0LtWrc6PvcOyNVeVsFxNv
         8S3eCdCrBOmTrh/lSB3vyTnKPu32RYEoHrTowpic8MuydKqwubBa7G3UgHs2QboWHwEJ
         xkgyicJMskP775lg6THVVIfnDbfZWBmRyjGyTi/3zpbQG/Xof8nvBGqN9PyuiQkpeT+V
         u8uIpn4L5plVwI3kZoGcQYPc+awelAasdNp2wdcPv4svfptfUuFG3lwQD8yVdsZwgMRx
         aMEA==
X-Forwarded-Encrypted: i=1; AFNElJ/oGapcAZ497gpkacFkpdqVKCZPJ9ogsmGj/tDZbci7w4b9491BqQEpL9frV6Emq3vmtuKSJW5cq43l@vger.kernel.org
X-Gm-Message-State: AOJu0YwflO63orZj5B+NnqMUJm7okWqpSVZY1cvbGWo1+wTO9K+OrEID
	IMBD7Ttc0LOLN62kDbDCP5eSZJ6oJ1SRtqekpwFAMZ0lKxpvDSspJjMD
X-Gm-Gg: Acq92OE++GrwSE85W/zD0gj3SfFbE8ezTwpnO5b6OMZ4Q23/3J8w6KrzhV2gFudPi1z
	Jpxc4lUPNV6lbScj+dEtRZHq6BGSiUH1+5OGmp8htm1DrdhB8ozN5Clss9HZA7yo/AsSSTbGsTg
	z2D4eu1xQpvLV2fdpCbLzzDk5KvGhpj0VhEnxiPMReADgFr4KQy00gNAO22mKnfBBAiCNUNWPm2
	WIKLcD6Eb7kf9XzGkfra04ckcX9kFS+fQM8GHviztwNlebm6ws5XB8q9ffbssuYLar+GJuxCulU
	jbc43pmCDCRl/38HvxQ5W9Jlux9/JBLujFhrx5ShWk6rQTt2MSGfV0j+wdQcvwEUMWerUd9jYDr
	pSeJ9W6Yw/SaLzyRGuCuF4x0maI6F4vnM6ccV67XXv0gWVZj0ytpWkrkSqxrMzLCImgZh0HmE/c
	E448dr9rSLKjpv4CSHFIoSnT4UFdpQFKk3dR+LXVZ3p2KUlLFzleLpROMVUgmUHpmwUTQS
X-Received: by 2002:a05:6870:558f:b0:43d:7b24:7c with SMTP id 586e51a60fabf-4413da479aamr11950799fac.20.1781021847366;
        Tue, 09 Jun 2026 09:17:27 -0700 (PDT)
Received: from linuxescape.lan (23-88-128-2.fttp.usinternet.com. [23.88.128.2])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-440d8448e3csm18797906fac.13.2026.06.09.09.17.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jun 2026 09:17:26 -0700 (PDT)
From: Maxwell Doose <m32285159@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-iio@vger.kernel.org (open list:IIO SUBSYSTEM AND DRIVERS),
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-kernel@vger.kernel.org (open list)
Cc: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] Replace Tomasz Duszynski as maintainer for SPS30
Date: Tue,  9 Jun 2026 11:16:59 -0500
Message-ID: <20260609161701.52513-2-m32285159@gmail.com>
X-Mailer: git-send-email 2.54.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-309201-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER(0.00)[m32285159@gmail.com,devicetree@vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[m32285159@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E7D8066261C

Hi all.

This is basically the 2nd half of replacing Tomasz's entries, once
again, in the SPS30 dt-bindings and his entry in MAINTAINERS. All of his
entries across IIO appear to be dead, which is why this is being sent.
Jonathan Cameron's approved of this [1] so his entries in iio are being
replaced and an RFC regarding this topic with Tomasz Cced has been
sitting on lore.kernel.org for about a month now.

Maxwell Doose (2):
  dt-bindings: iio: sensirion,sps30: Add myself as maintainer
  MAINTAINERS: Add myself as maintainer for SPS30

 .../devicetree/bindings/iio/chemical/sensirion,sps30.yaml       | 2 +-
 MAINTAINERS                                                     | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

[1] https://lore.kernel.org/linux-iio/20260609140712.2e5d1640@jic23-huawei/
-- 
2.54.0

