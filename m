Return-Path: <devicetree+bounces-303857-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QMuIKspHGGr2iQgAu9opvQ
	(envelope-from <devicetree+bounces-303857-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 15:48:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 052AC5F2FCC
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 15:48:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A010C304166A
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 13:48:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C44C826E710;
	Thu, 28 May 2026 13:48:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="m26X3gKO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3CF826B2AD
	for <devicetree@vger.kernel.org>; Thu, 28 May 2026 13:48:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779976083; cv=none; b=jUMQNqsZSGl9HQvDhyz6nLh4iLhW5YACcdIl3o9eFuSc7uuUoFLlGBtaL5hPRVq1rt5zC3h47Al/UaZTeI9Vu5D59+XjC2A7Lq2VKeHUpNXDZiigvL2NKuOj/wpF93bFOZL+NWdAi1MBgQh3kj7dezvw1/ZP7ZMb029AmEmFjWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779976083; c=relaxed/simple;
	bh=QM1KqMmMRfC26rUCvX1demSMslohlgn5rMQ6uuYxhhU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=knkcMXrOWTEY0tpmECSSvRHPlCiFtg3LbveysZGVGbHORyuIN5VxwGpyG9276JiyYEDGM7Ry6/mOafGXa/MW5UzbPx3m1Q04quTyhCGeHeHlm9/UflDC51UHxILWR1q49Re63rEsQinQZFgDVMgKEZZc2fBfirRRBUtbNXiPZZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=m26X3gKO; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-43eb05b1875so6771228f8f.3
        for <devicetree@vger.kernel.org>; Thu, 28 May 2026 06:48:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779976080; x=1780580880; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nFAs9G8K7hBAsSO9D0cwbog2rhWylbdkwwqHdcYV8Cw=;
        b=m26X3gKOHq9hm/9uw0f6tnRkLBgRsc35iBnbWHQ3ewAeQjRdAioY0Cm/zDcbffSW0r
         kEiAUeYiV+/S33dvJ5hyousS3SaJ4PXgJr+ExdGsE/yW8T6Wvo5Ozjwt/QawsBHMDcei
         ixcu9sOqeuhvnLhhUcxL/9+4EVbR19aZvqrYRRaiAF6h6zaSkaExDFbGIQxmevqcrCqK
         HOXXzOAvIBUmgnFMcGJ2+o17yoSWIyTsIBJ5zoXvpbdoWjPaVPG9qfZeLCixlPrOMKk0
         FqoCrp3pg2NKfBvoAfz5ZQ3Bi31/OEjGKgU35sj1Iu8ajoWtBbFVZhOvZq0+RawyghfR
         PIwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779976080; x=1780580880;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=nFAs9G8K7hBAsSO9D0cwbog2rhWylbdkwwqHdcYV8Cw=;
        b=ZwdSjb/nZMGUtar4EdebWEXz15MIObea4SdRD9jwW3QFSzz626/6FzaUliZqfUXaLc
         +ebCNSDxnvRWcLR5g9tE10t18W9UoQ2KGWMzLUgQ5Q+P8X/YhjqZveof3MIncv0f5NeL
         fWDfbkxelOGFam5vLEhRMPAWSmUATLJw8VXFVUpj9XhtATCRr40+A2YIOXO6dj30qBm/
         cq+k4MtY7pEQvvbcyYsoINVSwezy2KcFx9MNe6q2gRGk4JhspvoJA9+Ma+J1cJ4THPqq
         n8sBrwC8IjEZFJAGSdis9eY+Jbb7LNKljW/N07FpQ7M/eNcLHlHuatDSNc0w45bhUyhd
         OsZw==
X-Forwarded-Encrypted: i=1; AFNElJ8XflCVlorBS4uC718u8JVOfDwvNDTsE8bU+LhXokDxcD6oMvUfmIkjPCu/BvObq/baG6e0s6Oj1Bxy@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7sGnyiFLORjjPIgiXZUW+cvcspYTozRoHgPpJ/yWSSsY+PHNq
	tTuQ/3DtIDReAsSR/s5UIi3qW5nzyj3wk9q0a4W0mwthsSaG11Ft+QcQ
X-Gm-Gg: Acq92OH0YdW2w/3jwKsbdYy3ij143e0l5ypBTBs2WZzkJLMzqVb2bfHEPrdeMq6feIU
	woaRGwTzbd+fDwrd4VEASWN9qsxbqjFnqZUuP2CA386Iow1zf4YHfIq7cppY242YXK12gQRMiVm
	Z/Ugya8Ck7Mt+MAG6ZGcPh9n58oHfYS+h+0popNDSwGoe2S9IDD70w4Zn46xxdx1mCvoMKlfQCV
	I8vjPTUOWK+cofofLaBo1cRK5ZYhF2UzduCFur9pL5PhDGzULwBxqI8FhXUZFWWxGADv7/+G2yw
	DjkqhUQA70BZdYH0BZV7J8kWB2bBTNc2PQfsh3lnPb5ccN6BrEzUvfLXAqNgzCjPXQr0KiQxSXq
	ZNxZ2oquSwntBi1sHUGoe7u82EFKNhwQ//zC0pLEuydH3Q+7IQFxzer7HN/92Jcha+LjnYNSQXa
	Txm4f7VDuYy11d4jIrYPuuIJtL/wdikKa41uedQpmAPICaE1+gvghh2ImBP2x1GpHEu6Waf2q2b
	AczRppRFUeP99W/3JqHAepZvJ0TqonNJ7jL0WG3yg224xg=
X-Received: by 2002:a5d:6346:0:b0:45e:e3ea:1101 with SMTP id ffacd0b85a97d-45ee3ea11demr3969891f8f.17.1779976080125;
        Thu, 28 May 2026 06:48:00 -0700 (PDT)
Received: from iku.Home ([2a06:5906:61b:2d00:e50f:a16:236e:f9a0])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-45edb54903csm14013775f8f.6.2026.05.28.06.47.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 May 2026 06:47:59 -0700 (PDT)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH 3/3] arm64: dts: renesas: rzt2h-n2h-evk: Configure SCI0 pins
Date: Thu, 28 May 2026 14:47:52 +0100
Message-ID: <20260528134752.79813-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260528134752.79813-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20260528134752.79813-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-303857-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[glider.be,gmail.com,kernel.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,bp.renesas.com,renesas.com];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[prabhakarcsengg@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	NEURAL_HAM(-0.00)[-0.999];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[renesas.com:email,bp.renesas.com:mid]
X-Rspamd-Queue-Id: 052AC5F2FCC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Configure the drive strength, slew rate, and Schmitt trigger settings for
the sci0 pin group shared by the RZ/T2H and RZ/N2H EVK boards.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 arch/arm64/boot/dts/renesas/rzt2h-n2h-evk-common.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/rzt2h-n2h-evk-common.dtsi b/arch/arm64/boot/dts/renesas/rzt2h-n2h-evk-common.dtsi
index e86e6d3aa8a3..ceccddb92d40 100644
--- a/arch/arm64/boot/dts/renesas/rzt2h-n2h-evk-common.dtsi
+++ b/arch/arm64/boot/dts/renesas/rzt2h-n2h-evk-common.dtsi
@@ -257,6 +257,9 @@ &pinctrl {
 	sci0_pins: sci0-pins {
 		pinmux = <RZT2H_PORT_PINMUX(27, 4, 0x14)>,
 			 <RZT2H_PORT_PINMUX(27, 5, 0x14)>;
+		drive-strength-microamp = <9000>;
+		slew-rate = <1>;
+		input-schmitt-disable;
 	};
 
 #if SD0_EMMC
-- 
2.54.0


