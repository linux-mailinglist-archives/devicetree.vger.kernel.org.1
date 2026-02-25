Return-Path: <devicetree+bounces-268235-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4FGoJTvDnmkuXQQAu9opvQ
	(envelope-from <devicetree+bounces-268235-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 10:39:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BBEA195254
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 10:39:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C35493105CBC
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 09:29:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B7A838E5CF;
	Wed, 25 Feb 2026 09:29:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b="f9oUVzbc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B95032F9DB5
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 09:29:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772011767; cv=none; b=gUbdB+J4Wk7X3Y10a2+SVJbA07lfEolbOWWlNyWUIgQAvcqNdSrDnB6+Cg/WdSyr68hBoNIGMYp03x7exixXCtw0xoOHlE9yqyTw/FKI2lUqgk8sqr0/bgmHmDpnmdo73hk/0E3txBewZFUgq8atnIuMekMReSHIGPBBsu9kd8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772011767; c=relaxed/simple;
	bh=zR3niyRBpiKpurs1dczTgt7o9pgCj8N5Cp38Sp6DFbg=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=M8OVyGvDD9mUKzX5VqTArb4U82QBhzcJ3270jqVY8JiBpAW62gBGJnEaIgNcFfsygpslX/EJH3/pILHmIRWlMaXuoSxiRi284cdGwcmxeouNmbbWnN1Ez6xH18uzHInhKAWNSw3hcVTeHOfiNX6L3QmMkQZhJX5py089Pd7E3/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net; spf=pass smtp.mailfrom=flipper.net; dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b=f9oUVzbc; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flipper.net
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-436234ef0f0so4378104f8f.1
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 01:29:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1772011764; x=1772616564; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=33V8jmhyWf3FJayStb/RFEHOZof6HOLk7BpuerYJxU4=;
        b=f9oUVzbcNUaCCUp8szbi//rmmmtY3Awf0hbhSRkl7dXeOmzmgo7mUVVX0TB/zCOfZX
         2iiu95OzZSO/S8c7oFaYH6yyjZxfkImc2QKNq2ykOuoUw5mLGOM5N4RnXKCk2Ic3Aytu
         1cry6AlfWhtpxVk0ZwekJw736+LFvMXVMWiPcKiwUK0h8VxGrCyxPSUgcTHN7FhlaEo6
         OtPqf9TnIS4+f3cH4JFJMCwCfQwZecuB842drm1OShhl+VqPQauZIzbpVYfmQCPi2eY+
         AzwB3sAxVJdFLxWbYOUC8BWLfh3MHCgdeLKwPmYmKuXKHT8/bcKTAELovhzafXe7G8Jc
         +Bag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772011764; x=1772616564;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=33V8jmhyWf3FJayStb/RFEHOZof6HOLk7BpuerYJxU4=;
        b=hRCrhlsW2cVcYjiUSKPQhP0XT/aY6l/cOppnWZpk/D1DXx8ssfWDh0+jCGmYKdXtJK
         +9pXNuJypXC5CRbUd6Wskpbe1pw48SgGTWsBhnhgc/E72OAxx/2i3AESbM5rvjdI3mFF
         Rsqs5h7pmsNUCOZegvXofvyfBF5x6vm6Quczf+1gqE5t6TrQxrSFlxZ8CXRKwaDQ68sp
         3oQwDpSKJj6zgs6147s/mrYCRH0hiUTD/4SA1yMNqAVieTHj3X4y9AgNWulLxOzxRRyf
         FZDZzUrxpt4QBBATMzPYYTXdouEwd8GZBeigywWPQfq71eC2OBhczH3kBxT1/P6M888t
         iclA==
X-Forwarded-Encrypted: i=1; AJvYcCXCs0K/AqTSu2lmlXxtpis7nCnRXGYL5q+ZQzmdljYaQC1OF/NZXLmbzFgfZgl5notl1h2dLVBZ40P/@vger.kernel.org
X-Gm-Message-State: AOJu0Yygx99oam05mTcxi16OSqb/Q8UokvO0T62etrtnBnRnlH2rugTE
	eD6ULfkAMUHquX51i7HyS6dJAiQi5Kn5ja0jezaYVIacMn1jo4xClyn3m9q7GjYaRQw=
X-Gm-Gg: ATEYQzwMkfqqFUWcaF6MV2oc+31BUm8rtrZ2XNIdztBXM4WnB362gO8DXcPWI/+CdsA
	M+xMCXZfY5oofXeIrIqJNQI5iuy1RpZuKRo1KU3snQwPuIi2J7t6+GjaPuXul0ZWXtMtbqvhh1W
	olUvOPZK2i7s3Ca7AWCE+CwoblPnQUYvMF0tZVxyOlir9ekA8s/SXXFoLCMpFdEb00rN4AWJfiw
	0mOxPYTBPjt5MMXbo3AiEEEmttrAt+4SdrTSbVXi94QCTESokFoPrIlO4WNr9noFqiJ1/9g4MOi
	935EZdKMTH2SxtQq5QXZFSOWMKABQYhiI8aXCllKeYcCIjc94T2q/ylVGKjHPhdAbKZzZpowKQz
	rGFxudU+hJsdHmsX0jJKARWeEK87w79RfBJKSHD9xbyZ37wGsqOAYUvvj6an7+RVWQ/3yku+NA5
	lHBpFZmTixpM8X3ROEavlVbZ/sqYlRQFDCXsV5Z4V0igp2zz8nlTZRIj2yfSnpAn+DsJKZxCiY0
	M8=
X-Received: by 2002:a05:6000:615:b0:432:84f9:8bf9 with SMTP id ffacd0b85a97d-4396f194d4emr26153557f8f.57.1772011763625;
        Wed, 25 Feb 2026 01:29:23 -0800 (PST)
Received: from alchark-surface.localdomain (bba-94-59-44-101.alshamil.net.ae. [94.59.44.101])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970d54c5csm33027463f8f.38.2026.02.25.01.29.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 01:29:23 -0800 (PST)
From: Alexey Charkov <alchark@flipper.net>
Subject: [PATCH 0/2] Add support for Texas Instruments INA4230 power
 monitor
Date: Wed, 25 Feb 2026 13:29:10 +0400
Message-Id: <20260225-ina4230-v1-0-92b1de981d46@flipper.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAObAnmkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDI0NL3cy8RBMjYwNdc5NEAyMTA0tDU+MUJaDqgqLUtMwKsEnRsbW1AEG
 LzxJZAAAA
X-Change-ID: 20260219-ina4230-74a02409153d
To: Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1800; i=alchark@flipper.net;
 h=from:subject:message-id; bh=zR3niyRBpiKpurs1dczTgt7o9pgCj8N5Cp38Sp6DFbg=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWTOO/Dlm4joA6XOiBMCgUaqj17He0rYbMpK+fjv/uf4P
 IsJ/VvXdUxkYRDjYrAUU2SZ+22J7VQjvlm7PDy+wsxhZQIZIi3SwAAELAx8uYl5pUY6Rnqm2oZ6
 hoY6xjpGDFycAjDVf8UZGea9qJj75Hojo9LpPdOXJxxdfU3J9etbK4nrHyzaPHo2dpsz/K/o3Pb
 P84o215PHEtV749pXnEqxMlrGrSy71fSqyIpDAQwA
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[flipper.net,quarantine];
	R_DKIM_ALLOW(-0.20)[flipper.net:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[flipper.net:+];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268235-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alchark@flipper.net,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-0.995];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,flipper.net:mid,flipper.net:dkim,flipper.net:email]
X-Rspamd-Queue-Id: 0BBEA195254
X-Rspamd-Action: no action

TI INA4230 is a 4-channel power monitor with I2C interface, similar in
operation to INA3221 (3-channel) and INA219 (single-channel) but with
a different register layout, different alerting mechanism and slightly
different support for directly reading calculated current/power/energy
values (pre-multiplied by the device itself and needing only to be scaled
by the driver depending on its selected LSB unit values).

In this initial implementation, the driver supports reading voltage,
current, power and energy values, but does not yet support alerts, which
can be added separately if needed. Also the overflows during hardware
calculations are not yet handled, nor is the support for the device's
internal 32-bit energy counter reset.

An example device tree using this binding and driver is available at [1]
(not currently upstreamed, as the device in question is in engineering
phase and not yet publicly available)

[1] https://github.com/flipperdevices/flipper-linux-kernel/blob/flipper-devel/arch/arm64/boot/dts/rockchip/rk3576-flipper-one-rev-f0b0c1.dts

Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
Alexey Charkov (2):
      dt-bindings: hwmon: Add DT schema for TI INA4230
      hwmon: Add support for TI INA4230 power monitor

 .../devicetree/bindings/hwmon/ti,ina4230.yaml      | 128 +++
 MAINTAINERS                                        |   6 +
 drivers/hwmon/Kconfig                              |  11 +
 drivers/hwmon/Makefile                             |   1 +
 drivers/hwmon/ina4230.c                            | 997 +++++++++++++++++++++
 5 files changed, 1143 insertions(+)
---
base-commit: 3ef088b0c5772a6f75634e54aa34f5fc0a2c041c
change-id: 20260219-ina4230-74a02409153d

Best regards,
-- 
Alexey Charkov <alchark@flipper.net>


