Return-Path: <devicetree+bounces-258623-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yPx3LE59cmmklQAAu9opvQ
	(envelope-from <devicetree+bounces-258623-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 20:41:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C6AEE6D24C
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 20:41:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F0C9E3038AD8
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 19:36:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C6C939BA28;
	Thu, 22 Jan 2026 19:36:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XfdMYZjG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com [209.85.128.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47A1533F8B3
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 19:36:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769110568; cv=none; b=J/ZaUPJZhq8kCav+l0feHrdD0tov7AKxSp9pjWnwZdUPHE4GIJZUc9SHecAbwLEpk4dCe+y/VqcMvMW1a1r7CGCrTes7SjLRWjsfRNO4RhSjEGADCmQ2D6M+vknJDXCL+ADO8oH+3VVpllVW+/aGlXLDQu53IP4ZkyrNkIIVXbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769110568; c=relaxed/simple;
	bh=6bcOzK12X2n239i0z2HYrans52sIg6wjGl8x+aSjd6c=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=YYp8unyAOVc/BlKDZxduNtUjfptlEM1j7iR7P12suJsh9YkU0ubomckiZvCz9umaomZ2ZcNpMpdaMTFKbf7SCQu4VJXWTFtjE195/wuhrsqm04nkVfj/N5K/siwmiQgxJ5eEBxNmr57guBKjd9McDvkJM9VeaI7JuvMOTjPpkPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XfdMYZjG; arc=none smtp.client-ip=209.85.128.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f65.google.com with SMTP id 5b1f17b1804b1-47ee3a63300so15431295e9.2
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 11:36:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769110560; x=1769715360; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Kwi4ZRaqC0fLP1GDcRU6oR980s6aWRwXFTKbG3IWwZ0=;
        b=XfdMYZjG8R3OOWYd0TwAsNMqvuEnUG6PTMHnSDc9fWYqJWgmGuQ+8l8zcV9QXm6Ee7
         rvvEaAa15aNufjEjStqtQ1a7wsPzwegI8rcpCBpYMwBe1uC0YW6P5wXJSUkEzd2WcyzE
         XO7JwKfBxlKt3B21pRIG9g9o8VPuQqAGxLcZWNjS2/yjDOZlaXjcqzbHm/vB8TI2lEnI
         bXgKMImoRSi+n2nJ+pB64w6InsrUEc+SK7mjA7T4njUhVuG56PyJduPi99t+VbYXXxD1
         zbOxKgAi1Qx5ApjjhEl62RpXcoOpMStuhBGh6fTVTIOYoDzgaDecjwbF5MOF/nBOULgq
         bafA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769110560; x=1769715360;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Kwi4ZRaqC0fLP1GDcRU6oR980s6aWRwXFTKbG3IWwZ0=;
        b=uIG4fU4mZMWK3T76c+tYJvBK6RMNrp9FYc81Cm1+fGe2juklTHetz1tEoE3PiKK10E
         dw3qvPnJG7r/MMcaoxZRAT0I81FGdVjofVzlf0fQ8FXzPBnK/boj5Vmhe3CTQLuPwqzf
         UJbTZvUrpzRekH8twFi+XjVlK6Xi1sqUFLpg1fakTTk6gOsum8lpC5WHy3fOLh11N/Un
         HLXVSO0RplWUhJEpR8GUXvJ7HFjNCzMBvIUHWJQYqBA1+liMTgSpS/UrcxZqxozoL6zO
         Q8dL5vHW9rZRG8jwNsX9x4wYknzqV5xKSXAbq4nEuINz3QsgOMERg8iGGXzPH1Hc3vTR
         DmdA==
X-Forwarded-Encrypted: i=1; AJvYcCUBvt0ptcHWO74TE2t01uXCtTrfAz1hOgaDSET7TsUXMUG0Sb2MXW9UgK4vg7TufVaDJSr0/CU+aN0l@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9tS45HoEs57nYTP1FrBtKIricFoO31T6sl9Cvim8s46qRImiv
	XNRehtqyklJCY+Tiib5JxOuT2y8boqZVbfTN1Ceg0gKP2D4o7zG2ze0e
X-Gm-Gg: AZuq6aJJJRCSYhMoMtGvuY3sFB17nAigIef6Ttwh0iXURknAewA6ZEsw4mHiYWOv696
	VbDQsRgFmT8DsCxY4Bbu+znBDwJeFy5doFyFo3aKWcCyG5yeGsrelmX+izvgMYXLjIHEBoOmj7T
	Q1RwS8tRHpe/ZRNZmcbUXTuCLNlS7tHyPTkl2kk8X1K45MkEVkgZm5sz9BKEvIJsuc+yv+vOwyl
	lhA/34UO2IjkAZzifQaa4DhwBFAy3yQeLEWRjP7CN0eqT3exK6Ta3YUUw6qU+1Gs8iaSlbXbgkX
	jTGFfAbNeisOzM0oicBVZrmwPXulEAJTC/nqzaukcqdvXY2obfEP6qmO/unFp1MhrhDAsE1Rc8L
	dDT6oig/u+vR5wImizjisIEGdwHcFpKsqxod/3TZE0Zpee7EwwlwxZ93rUsWIWCZCHZkHtwmMK8
	+L
X-Received: by 2002:a05:600c:3f0f:b0:477:7975:30ea with SMTP id 5b1f17b1804b1-4804c9c0ba8mr11723685e9.29.1769110560378;
        Thu, 22 Jan 2026 11:36:00 -0800 (PST)
Received: from xeon ([188.163.112.49])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435b1f745e6sm843027f8f.33.2026.01.22.11.35.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jan 2026 11:35:59 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	Frank Li <Frank.Li@nxp.com>,
	Fabio Estevam <festevam@gmail.com>,
	Andreas Kemnade <andreas@kemnade.info>
Cc: linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 0/1] dt-bindings: input: touchscreen: tsc2007: document '#io-channel-cells'
Date: Thu, 22 Jan 2026 21:35:48 +0200
Message-ID: <20260122193549.29858-1-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
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
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,nxp.com,kemnade.info];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258623-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C6AEE6D24C
X-Rspamd-Action: no action

The tsc2007 can be used not only as resistive touchscreen controller but
also as a ADC IIO sensor. The second use case requires '#io-channel-cells'
property, hence add it.

Svyatoslav Ryhel (1):
  dt-bindings: input: touchscreen: tsc2007: document '#io-channel-cells'

 .../devicetree/bindings/input/touchscreen/ti,tsc2007.yaml      | 3 +++
 1 file changed, 3 insertions(+)

-- 
2.51.0


