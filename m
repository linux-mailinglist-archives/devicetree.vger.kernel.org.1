Return-Path: <devicetree+bounces-259246-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id PfiVJCYedmkoMAEAu9opvQ
	(envelope-from <devicetree+bounces-259246-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 14:44:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 2151B80CA5
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 14:44:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 468F83009548
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 13:43:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2A9231D74C;
	Sun, 25 Jan 2026 13:43:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KkkAQa8p"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com [209.85.221.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C424E322A28
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 13:43:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769348599; cv=none; b=A0etYDD583OQnwOWUIftnKR6f1SDMqAyLi16iYO/BTQFSYb9x1scM3DANBekLz0SsX/DbWJsrsJhZOc4Xa6AsjgxBoVQudQG/39F0gsU3RBT7/4xZjuX+OUjsZ3Acc6jlt7+SVQv9h4YkS+DMpvO6WAXaNV2vwyhLbMz8peRNRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769348599; c=relaxed/simple;
	bh=hHWILRyUU54F+w7k7JPriQ6DmoCAg8TcBCDlQKA/teg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=PSMUgsoIb3vP3Epg9JeTamYIdFOBG1j10KXWZKwfb4A300VgLKltiZzeGZYYXk7WjY7OfWn5TJ6+f+AH+6ZN2Ip9xw9mfsp2mbikMqTdblFYorC1S+VVQDYEo5xlgDYSNWVs4BUDhhDt6QtTwTPn5udw93dcJxC9CzO7aeyBVks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KkkAQa8p; arc=none smtp.client-ip=209.85.221.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f65.google.com with SMTP id ffacd0b85a97d-432d2c7a8b9so3626142f8f.2
        for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 05:43:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769348595; x=1769953395; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SM6Glg7veqcWlsyKtZF2bdqamcvshEMVFBWJQkCFRkQ=;
        b=KkkAQa8pk+K6A4UYfw61ESplTSO1FwqHE9aWvDVpOPFwJQUIV+ln1LAaxk9fNgE+/R
         YhbIncZI9Pw98gLno0610Y7X0NQoHNoQ3lHfnAk0iibeXhmb1IPqq9KG/c2Zf6n7Tfwe
         qN9bfojsh3di8hOMJZFAS6w6/EzcXzB4Ee/+VZxVQN6vlvLxwBcn6zaNniQ/CYEiTmtM
         0JWww2zno2CHh8zFkVEJQtdgqYqIPwIm19S8s+kbceNAumA5ImVckrxzgGXsOcBSMdId
         gNJKd9WT2DQGKHYKDbBwrA9RxSpjEeVvgJCCofbrCLUI+79fEISSdkb4VOWNcucjMD/K
         Ou5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769348595; x=1769953395;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=SM6Glg7veqcWlsyKtZF2bdqamcvshEMVFBWJQkCFRkQ=;
        b=AAa7IAX235QE5xpd+dKVZmMN6T40TMJS8RMDWZjSvvio7A5Z8VACucL521QsvHBEUJ
         Vzcw1V81XiGQFKSmMwHnClgkXaGrGsd24lHDX3bwWk0dh2SKM7n/wnmpq6rFk1gVwwm5
         mPmAjq4FK/9hEWqHd8YjgXovZ4Z/1i56BsOVNFGs1oWXgwVk685+z4jsjnfTnviS2Gh/
         ZmkP0w+HlUSpRGHIPkcSedC2JI4D5RqvO//mnTNS+imKFafMz6aczxxeMuuRPEn7WPJq
         mlaQknXdoHTECFU8eMEdV5kGpdRJ1vzSxiRzZTCEUHioymUxcIEuVoZsf+EBhrE6bqjh
         ogHA==
X-Forwarded-Encrypted: i=1; AJvYcCXT/voLVXJmyE11co05gyRtAZi3ySwO31S3XK5hp+8zLpoxgehfeV51Rh1apmxEHTfRfDFXIBSCRwEf@vger.kernel.org
X-Gm-Message-State: AOJu0YxLyIepxNArvAvsIcCOl5FKHdY+2fh/7R6nm5Bs64rzQ8IV7zZw
	ThUnnO5GjsPfIs/FI+2kvc8A38USCOlhYxCJ3gPhE1DEEn6CN3a+bibh
X-Gm-Gg: AZuq6aKZ8lzSj1T43IGH27WsHZfieT61w8Ho9xsZ2x2nMkpPd+uGZJUWaTSNuRrlIJp
	0734uiZbVhZJINOJNngti4OTFGuDa5OnJ2EN8LSTTcHZYSSzW7tYkdhxAt+TXgjrngvAqR80aQH
	RU4dD6xnsqMioZ4J0gdwOIpqdu2xQOzwutm/vVc/qJKPH3qAX0jquPOOXGpPashAYtHXDUBvt8r
	SmzQ2BMkDcMqvcxMTGiab4gYZwmSd7P+51UTOqZuJDThIPooWKexJYrej3GEI53RGK8O7ulR30Y
	Glpz38Pv3m5MiHpv0tdirg6qdn19/GuP2s1Fb1ANvR4UGn9yezTcf2xxIHAVD48Ox3uXnouo843
	MQ3i/0+kPGDfYsG4Rbe+E3Fj5Qh0u1QKkK5ZsCZDplNEBKy8Cmd+3F1031AJCSknPZLG2fU7aF5
	JI
X-Received: by 2002:a05:6000:2506:b0:435:b020:30a3 with SMTP id ffacd0b85a97d-435ca39b3c7mr3408860f8f.54.1769348595045;
        Sun, 25 Jan 2026 05:43:15 -0800 (PST)
Received: from xeon ([188.163.112.49])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435b1c246ecsm22459688f8f.10.2026.01.25.05.43.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Jan 2026 05:43:14 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Lee Jones <lee@kernel.org>,
	Pavel Machek <pavel@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	Dixit Parmar <dixitparmar19@gmail.com>,
	Tony Lindgren <tony@atomide.com>
Cc: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-input@vger.kernel.org,
	linux-leds@vger.kernel.org,
	linux-rtc@vger.kernel.org
Subject: [PATCH v1 03/10] dt-bindings: iio: adc: cpcap-adc: document Mot ADC
Date: Sun, 25 Jan 2026 15:42:55 +0200
Message-ID: <20260125134302.45958-4-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260125134302.45958-1-clamor95@gmail.com>
References: <20260125134302.45958-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-259246-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	FREEMAIL_TO(0.00)[kernel.org,baylibre.com,analog.com,gmail.com,bootlin.com,atomide.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 2151B80CA5
X-Rspamd-Action: no action

Add compatible for ADC used in Mot board. Separate compatible is required
since ADC in the Mot board uses a unique set of configurations.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 .../devicetree/bindings/iio/adc/motorola,cpcap-adc.yaml          | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/iio/adc/motorola,cpcap-adc.yaml b/Documentation/devicetree/bindings/iio/adc/motorola,cpcap-adc.yaml
index 9ceb6f18c854..1f77da7f8e06 100644
--- a/Documentation/devicetree/bindings/iio/adc/motorola,cpcap-adc.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/motorola,cpcap-adc.yaml
@@ -19,6 +19,7 @@ properties:
     enum:
       - motorola,cpcap-adc
       - motorola,mapphone-cpcap-adc
+      - motorola,mot-cpcap-adc
 
   interrupts:
     maxItems: 1
-- 
2.51.0


