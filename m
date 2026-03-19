Return-Path: <devicetree+bounces-277733-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +JfeE1rgu2lXpQIAu9opvQ
	(envelope-from <devicetree+bounces-277733-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 12:39:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E1B2E2CA6AA
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 12:39:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B3FBB30066B1
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 11:39:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9108538F22A;
	Thu, 19 Mar 2026 11:39:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Fl7o5D2Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC64B3803D4
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 11:39:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773920343; cv=none; b=ROrBBbfnLZ3O7SUlNEqyC7czDpubbOcOR8ANoerfr2/DqMNkQ2Q3k4fYcXFMjTkboW6zpU7fI0q2rKZdJ6H4Cqfc+arz4p0nhdYNIlnU8tPhZ4RUKQYO9XXpmRDpLhTj9t4cC316aWY6KpxVYYO9XkWq84UE5grgVKFBKVaNkAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773920343; c=relaxed/simple;
	bh=r3l83g1ue4UI4qfae6/Uvh3dLsFN9DQXctSf12imHsk=;
	h=From:To:Cc:Subject:Date:Message-Id; b=AgmiM+Tf3BJRraNXawOIZOaOAQKbrm1vQm3NzczDVRSOgd2ofY0gCGATmtbGesmXCK3qeo2WNAPVHV/3iSSSn49RTPHZTtJRMmHLSIhLF4pj5bf6ER0O6tDkHiTqe24V+tgY7Oezs9L+/X+zrAQg86xf0jTSMyJrCw3LJgWhBcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Fl7o5D2Z; arc=none smtp.client-ip=209.85.215.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f176.google.com with SMTP id 41be03b00d2f7-c73e9e4cdf7so355913a12.2
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 04:39:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773920340; x=1774525140; darn=vger.kernel.org;
        h=message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/nLDJ1VX2gC6oV8YYtAKoiukMuK5S0G4NkcPdE2NmXg=;
        b=Fl7o5D2ZtPrmIp59NBjWBXsY4dLbuaiuzQfG64jCll7ovJnJd0NGtRnd75nq5WB/+z
         a+EnNJ+EsUdwvTmFJvh2dHx8a6k0wyf5yRSti7jumjbjfz6jj3F4dg5fj0377bYQWb43
         pONwlPYU4VN8AEc172Lq7tHH5K1/ylo9MZ8jy/kQZEVlHd9jLUMCqY5iLUWAi7RWwoAJ
         0cLiJHzPKJFNaomJ7jwM80WepIFMVEio5q9Gfi9zXBR016A/ZhruyD7C3EcBGXssN4La
         AbmFaw0DJUmibYvw/8UWTnW8gRumivgMrJfEtto1tzTzo8+SVAsn0UPBY5dEhy57VlmV
         qeug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773920340; x=1774525140;
        h=message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=/nLDJ1VX2gC6oV8YYtAKoiukMuK5S0G4NkcPdE2NmXg=;
        b=CSAdHF60ye+JAIUgZgg+El8i9gsOGAKR1OFe4TDsSwVAE2DG3GUAu4BVUwjsamX8NI
         dqukn0IfIvBaRdRtZJ+54nIcvYkT0qWxpZ2NJ7D3lMbEKcmuPjnjpH2yK0+oujQF9GN7
         AYPzBejbZyUgubDDvw934biukB5QYA1Ao/2MGP/Df24C1Tn0ABrixn4c16IPTRZ9c6DT
         7Niu85dk4n6+gl99VjAtI2gpIIXvBA60lZlr7eolbNMx3H4VaAbsD9hJ+870Q8+DU+Sc
         ym2bcdUvOm6hpF3zbPy8I4hQipnsgZqy9H0OvqsqBva/bjqDA0IaxhPyBggso0mVP3S0
         nZng==
X-Forwarded-Encrypted: i=1; AJvYcCUm4Dc4xFnJ0Qkj/331l9jyLthQalg9rvwki0+LTW3AENEdKJP2fsvjQx6nkl4Xk6LqkmfL5/YvbYiZ@vger.kernel.org
X-Gm-Message-State: AOJu0YzqKHv80DHk5p8JHeV0lr8nhZyVdekrK8HvQGB2qJwKFmMbkcYK
	Hgw/iJdp0pbTr8MoQxBFA+V0hLuMtI59LdJbTQWacD4wFopPN8iAS9y/
X-Gm-Gg: ATEYQzxlFp5qWa3S92/cCfEui74exloNP9HzbX+Xhr8GAFreuYmMNqliCkXZjSDK6BH
	yJ5KRf/bNf2QDpR+OX37deP5ZJsmzD+PUvud2PKVkGT8J7YT0uqkOki/xyzixK9itH3fjt3Qxlq
	nSNmRkGRyIAEMfB0x9Hw2pS4eNhCsEtFgjYZcjoyV+zZY09FBZINdlBuGSU9/ozL9kZLwR2Doxi
	tXYhPvNxI1H9LU1UKVommPmEHW6U1FR5Coc4VMfZx4pyXGYgwleEaASt87Car6+Pln85CXJqzub
	WHTSY5b0PA4sli+2TWXhSmn4eMJ0jsyIMeXpJ3T4WrziqExINhRC6PX+65GMhsFOv5pP7tr80bH
	aTTafCSYfdE0ihSVumcLmBe902FUzLLXysh7n6rSRYOWjrAy7Clk6Y+RLriEPmAg6kPSnx28rL6
	LugJq7WjWdr70P+uu/DJ5UIOKVvAJvWmTf4apk1H+/kvTEjO/qYxc5
X-Received: by 2002:a05:6a21:693:b0:398:6b26:dbfb with SMTP id adf61e73a8af0-39b99fdad0dmr6549918637.49.1773920339944;
        Thu, 19 Mar 2026 04:38:59 -0700 (PDT)
Received: from ubuntu.localdomain ([27.217.83.168])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c741e545d38sm4985706a12.19.2026.03.19.04.38.56
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2026 04:38:59 -0700 (PDT)
From: Zaixiang Xu <zaixiang.xu.dev@gmail.com>
To: linux@roeck-us.net
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	zaixiang.xu.dev@gmail.com
Subject: [PATCH v2 0/3] hwmon: (sht3x) Add support for GXCAS GXHT30
Date: Thu, 19 Mar 2026 19:38:31 +0800
Message-Id: <1773920314-17755-1-git-send-email-zaixiang.xu.dev@gmail.com>
X-Mailer: git-send-email 2.7.4
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,gmail.com];
	FROM_NEQ_ENVFROM(0.00)[zaixiangxudev@gmail.com,devicetree@vger.kernel.org];
	TO_DN_NONE(0.00)[];
	TAGGED_FROM(0.00)[bounces-277733-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.925];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[8];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E1B2E2CA6AA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This series adds support for the GXCAS GXHT30 humidity and temperature
sensor. The GXHT30 is software compatible with the Sensirion SHT3x
series, using the same I2C command set and conversion formulas.

Since the SHT3x series was previously undocumented in the kernel's
DT binding schemas, this series also introduces the missing
sensirion,sht3x.yaml binding file.

Changes in v2:
- Fix placeholder "Your Name" in MODULE_AUTHOR in sht3x.c.

Zaixiang Xu (3):
  dt-bindings: vendor-prefixes: Add GXCAS Technology
  dt-bindings: hwmon: Add Sensirion SHT3x and GXCAS GXHT30
  hwmon: (sht3x) Add support for GXCAS GXHT30

 Documentation/devicetree/bindings/hwmon/sensirion,sht3x.yaml | 44 ++++++++++++++++++++
 Documentation/devicetree/bindings/vendor-prefixes.yaml       |  2 +
 drivers/hwmon/sht3x.c                                        | 16 +++++++-
 3 files changed, 61 insertions(+), 1 deletion(-)

-- 
2.34.1


