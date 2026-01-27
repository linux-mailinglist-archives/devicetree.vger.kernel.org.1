Return-Path: <devicetree+bounces-260092-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UGQiOIwNeWmHuwEAu9opvQ
	(envelope-from <devicetree+bounces-260092-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 20:10:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E98E99A7A
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 20:10:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 02B77304D905
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 19:08:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FB3D365A1A;
	Tue, 27 Jan 2026 19:08:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AtC9lN+s"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AD94366049
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 19:08:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769540934; cv=none; b=RZDbnYDpZW8GFQaYTSlbBuRgxEit0KZXSq9d54DU60Kn7B5kv6czaLb4edTcdqx86fxq7ZWl6EkZ/V++boBjghisXCqRu5fibQ62cBShltL3GzGyt3gfvhfwmIJyKVkwlunjq93X5RqrLP7i3TmIUSNaCvcfu0pRmFGZX6hjqi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769540934; c=relaxed/simple;
	bh=H84erZxT2MlAaY5J3iUKm8PxILlu1jOlSTZ53NjhBCY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=VLyaSy456IZHIbi5Q4RoluVTH1gGPsM7ZfZdoWNEdjCfSRUm1SBaRIuzZ1bkUR5A7PTmMEP9K/8IgCskvURmY1rQmdGFIXSCCDe6c9taonpEo98gCP6BDCS15I/Ex1zdzKhWXonFvRbcfsXzFNeXEhT4JMbr8AczeFxg26cuHLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AtC9lN+s; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4806bf39419so792845e9.1
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 11:08:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769540926; x=1770145726; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j6l444t6jpG+w7dlEITp6QEjvTc4ukc4CjhdbSiVZ9s=;
        b=AtC9lN+sHsLqm03PvmDYsqVXoRYXbokVERW+B2u7LEZTy6X2WAylbngBnHdARIOtuF
         gaYwl0ayGp61uRZNiUAn299pmOXuF5yjFCCQzofxOjCyrfD9gN3K2U2xD6qaBz1BVt6N
         o503+sFHsfhSKCmj5yUZMbsJUKGIg82K7sguimoMx+ow6yPq7I2F+tQqdKGSLgIfilni
         zJTK2nol/amS/bZD8UdaOm1OR6IljlRVT9AEhp8IKBVTN+SE+Cw3sXEmS5BY51dcx3ct
         gBsMx+y1mts2foG1qUI0p/IEDtdpWlCHBwRA71fbBnmShGXT6MB3x2RIRouwvz7mobXl
         vVmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769540926; x=1770145726;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=j6l444t6jpG+w7dlEITp6QEjvTc4ukc4CjhdbSiVZ9s=;
        b=O25GC3SgWWmXKlsm6Lsin5nX3X8nmdCcT2FB47SLFiFvUL6R5opiIHW+Qcdzarw0rU
         dhAMe6s8paoZCd6Y/WTa5xCfuWU+NOTFkqleXTGZoxqWVNVzETLNuX7U3iONeGcya3Ar
         S1x6/A+mIBatFrqVA3x3QXpv3P0XiweHNADld5dDWgTvGvwIg+PiXCMb21fjL+s4dQIk
         s57GCMKfsAiEFLpO5TT9CJz/EKCRJ1wQspLLCuVFh96PFR0XLhPmATQZDDhqLWSFp/WM
         Qcn4fRlfLKoiLaAp3uue+EbwPwwA6yEvhloUaXyuQIOItjLUMlIuGJqcT7KW8HCAlZAp
         luYQ==
X-Forwarded-Encrypted: i=1; AJvYcCXcmtVnN2JS4DaHl6AAzQKOfgRhHjGq+lNrTTGXZ8/PDtaH+wuZdpg7MBF82jgMhxWp4CQWZikY8AeZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4EvBCcFZZ+hPKAMy6NxelS+vQZwjQLIrnz7PvqghTt9ronvoW
	ICVM2iVk6TmIy9qeG6SxV6N97/TB5rDM6gtQNLEkDSIW9Mx69D14JYC4
X-Gm-Gg: AZuq6aJ8291jy3543hFv0WM6tl9q7CrwdUJV8Ywk4K61BzZ9NjI7G1jXyYD1UARXaWc
	0dF2eWMthYJ2CQtO6WpxzINJOTPmUtf2QaTAI7bfy4Xd5MpE453MHi6H3oLhvGZRnap27inXm62
	DkMJvu7G/eIcfhb/dtXkv7nXS1eFTvf4cBLEevhbLsYhwIJZ17EX4QksOKozr1ofmUT5r8cBMxS
	xpvBFssy+57h7syTVzAbJh5x5aMXvXfaicRHmbNxruo9lGzsOZkqMlNwYmv+1nBik7fUBocKXH4
	2cqQT0vVt61Ic1jZ0OeC0mSm81YcOjID7zyMEIAidv6ATHcvX79nwBXYY3kLutZBiUcLr9SKnxF
	qVj6MTaNEcSSpCa73aCK6nVGonrhkCU/ANisnadGFku7DGSwbdPyBwCHjxAcTuqcoj1zi5w0rpR
	dTVmpNnfMKxApWJkXscc4iQu6tlxF09G9uR5WIGwuD+fqk
X-Received: by 2002:a05:600c:33a6:b0:47d:52ef:c572 with SMTP id 5b1f17b1804b1-48069e0fd24mr22092945e9.1.1769540926002;
        Tue, 27 Jan 2026 11:08:46 -0800 (PST)
Received: from [127.0.1.1] (bba-94-59-215-181.alshamil.net.ae. [94.59.215.181])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48066be77b5sm74577805e9.2.2026.01.27.11.08.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 11:08:45 -0800 (PST)
From: "Anton D. Stavinskii" <stavinsky@gmail.com>
Date: Tue, 27 Jan 2026 23:08:20 +0400
Subject: [PATCH v2 2/2] ASoC: sophgo: cv1800b: tidy Kconfig spacing
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260127-incremental-for-i2s-dvier-v2-2-5f66b841f63d@gmail.com>
References: <20260127-incremental-for-i2s-dvier-v2-0-5f66b841f63d@gmail.com>
In-Reply-To: <20260127-incremental-for-i2s-dvier-v2-0-5f66b841f63d@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>, Chen Wang <unicorn_wang@outlook.com>, 
 Inochi Amaoto <inochiama@gmail.com>
Cc: linux-sound@vger.kernel.org, sophgo@lists.linux.dev, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-riscv@lists.infradead.org, 
 "Anton D. Stavinskii" <stavinsky@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769540916; l=698;
 i=stavinsky@gmail.com; s=20260115; h=from:subject:message-id;
 bh=H84erZxT2MlAaY5J3iUKm8PxILlu1jOlSTZ53NjhBCY=;
 b=/rD5GXHuEV3Sch9Z9gONegfTboapMyzZ1kxLPbu0BxspfEG4J5ZGlb3BJaQZ1f5WUa+G/K3eS
 KFadRcvrmSsDhGovRx87GE3yJ9CT++kOJFN6LW4GVcq35PrmpLbd6BN
X-Developer-Key: i=stavinsky@gmail.com; a=ed25519;
 pk=2WxGZ1zd1vQwSPFCSks6zrADqUDBUdtq39lElk4ZE7Q=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260092-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,perex.cz,suse.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,outlook.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linux.dev,lists.infradead.org,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stavinsky@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 7E98E99A7A
X-Rspamd-Action: no action

Restore the empty line that was accidentally removed earlier

Signed-off-by: Anton D. Stavinskii <stavinsky@gmail.com>
---
 sound/soc/sophgo/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/sound/soc/sophgo/Kconfig b/sound/soc/sophgo/Kconfig
index e4786f087589..9b454261bcfd 100644
--- a/sound/soc/sophgo/Kconfig
+++ b/sound/soc/sophgo/Kconfig
@@ -28,6 +28,7 @@ config SND_SOC_CV1800B_ADC_CODEC
 	help
 	  This driver provides an ASoC codec DAI for capture and basic
 	  control of the RXADC registers.
+
 	  Say Y or M to build support for the Sophgo CV1800B
 	  internal analog ADC codec block (RXADC).
 	  The module will be called cv1800b-sound-adc

-- 
2.43.0


