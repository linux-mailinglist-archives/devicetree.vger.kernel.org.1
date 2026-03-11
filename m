Return-Path: <devicetree+bounces-274019-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wCHrGadLsWlCtAIAu9opvQ
	(envelope-from <devicetree+bounces-274019-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 12:01:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C3298262AFC
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 12:01:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 45B5C3010509
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 10:58:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72FB93CD8B1;
	Wed, 11 Mar 2026 10:58:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AB7IXRQ8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16C162DECBF
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 10:58:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773226701; cv=none; b=R8UEjUWeweY0bGD/SNQRUgYjnsd/YAwcCfTL37P4deCJCmu2vcB8/HoYizqnUJMkMJ4ISq4uYjkIiE4TE+JIHOr2ZJA3qBmMupRln6cLIKbcMiT49GY3O3tLAi5aGTQFEk7Njt4qfzVAS/Qb8yS61M3F6xcgYxJMtts3PwrGp7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773226701; c=relaxed/simple;
	bh=XaFRrpC75uoy87p8CJS4Vk3yU15qassWo8itQbCwycg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Hu48t6V6GYUTQOCNXlZEXEqXlXVysgzgIIyLqlVVegnEpbUjlg7pFL+r3/EfxouccJAxdxQmP3XAZ25XQxjPC4w+tlro4k7QpJIoS0CzrDE9fXZOyQLTNVOyt3I5LIvuEd/sf3MHEd378ieZNemIQCQpBmwRmXdwJ3KuOS5NY/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AB7IXRQ8; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-439d8df7620so3696493f8f.0
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 03:58:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773226698; x=1773831498; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=pYouneEcVkE2tqHKMaEKrSmeP84OOUsZh09T+ow9nVM=;
        b=AB7IXRQ80OD0cHJ1VCY94GKzzBbwAamIj8IPeasa4uZlJlqelT5M9pSuqcfAAvrmcM
         T9NFAst99fRetrBx67c/WTA0SNkA3O0IZMDARNDCVX4hIXB1zuZBCZqtAwxOoXEKztlf
         d5xhEAKahnAmUoTl2SOaQRJIp+dHCli+yMJ8KwS3wLtfnnn2p/zNlzWgnt4o+C5HA9GT
         dNABE0NMRhnwb/3hHRqidlrAuRGFTyMBpZrxRfIQU5q/sX8SLoP7r361nPqwTDFFBnS7
         jFpr3fKE/caLFL2ueh04eteKorGIgjiSoci5syBy23UefEro5wCRrsqfj4iz/xTXj5cv
         sI3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773226698; x=1773831498;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pYouneEcVkE2tqHKMaEKrSmeP84OOUsZh09T+ow9nVM=;
        b=jOHyva18pfz6NXZf/gniJ3gft7ZmPo6rVFv4nZdCjYfDwrDStqCRPk5bu7nSbVUmnY
         p1v/1kHN5i+H0LfZTxhyzPy4k2QWqaT7AWUtPfD7YL4rI6O0alGTWw4nrVh/N368Pj5r
         z0sHOjh+3Gz+iHtOgWY/m8LgvrxTYMdO7HpgTpjE6CeDJVIJauIPEFBqt7ycPn7ElehJ
         h1cXMz+AFnJGcSGW+IOn5WOfU6Z1DzFEd8oVkTvMNVPOL3GTmOuT2OiNnhsas8hXQvoX
         kQv6UH8xE3hCXJtPrnG3BgV5rw3lbcoU8jyjIOlylkohO/1lnht6eis6YQPBcv5aiwG7
         BZQw==
X-Forwarded-Encrypted: i=1; AJvYcCWQY11tpL5oTw+DHhDk2N188U6kACUHcpumvnwC0srYI18devnO4TGjAsCq5V2adg6jr2jBg2XUfP44@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0+dsPhnOcrrJfR+/vl32/o17aggt1z1X3e9LDyIjkL+wvYjn9
	gRn/MxJKs0wYFzPUTB1HU6qao+mKXLZ0nQ0z6AkVEM1EV0jjPUNmTA5U
X-Gm-Gg: ATEYQzxhXoWMfq8VeDe3ojfTP8CQq4kNWjhnFnFF0bkNvybuNfd3hR3iUoq0MPK7JFD
	gv9qsdN0851rDba9R+FweWIlWezNhatsNYTrijCRC0u9iBxgVeT7LFxqdku5/UG8HZ1IFZSumhv
	YX5iWe6/IsoSCcIfg8FS9aXyIq7nTEZNx/wDOQBziCH6uxfbJK89SW+UCuLNipTNYShTK1LpX3Z
	X42zX9UtD2Jrn6xn7aLf/mHJHTWJ/iaR7Jagsf2CMAEivWEoaeSNa7NOygxu94hvmfPfndXC0bn
	lvUBLwjHkL2dms/BHGO+4mG7TUhpPo43aBGWGoTu8HdNZugxUB01NWft+ge4ATL3UkVSmT58a4x
	VHsEpdv9lN4DWCpicq92aoRbL83oQbnxdv2FZ38UivEyryhV8zCwH/NkkeoXJAAQWm5YQB7tzt1
	etvB7qti0ujvGqRWR7s/3kVcR4GH1TfYS1PW4HVA6+hkf3Um6bzmof3eEHPO2VE+FzysMhJWec
X-Received: by 2002:a05:6000:40de:b0:439:ca7b:f4b with SMTP id ffacd0b85a97d-439f8414530mr3913841f8f.50.1773226698312;
        Wed, 11 Mar 2026 03:58:18 -0700 (PDT)
Received: from flaviu-Aspire-E5-572G.. ([5.15.232.50])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439fc0ba972sm592347f8f.24.2026.03.11.03.58.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 03:58:17 -0700 (PDT)
From: Flaviu Nistor <flaviu.nistor@gmail.com>
To: Jean Delvare <jdelvare@suse.com>,
	Guenter Roeck <linux@roeck-us.net>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Flaviu Nistor <flaviu.nistor@gmail.com>
Subject: [PATCH 1/2] dt-bindings: hwmon: lm75: Add label property
Date: Wed, 11 Mar 2026 12:58:07 +0200
Message-ID: <20260311105809.107357-1-flaviu.nistor@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: C3298262AFC
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-274019-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[flaviunistor@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

Add support for an optional label property similar to other hwmon devices.
This allows, in case of boards with multiple LM75 sensors, to assign
distinct names to each instance.

Signed-off-by: Flaviu Nistor <flaviu.nistor@gmail.com>
---
 Documentation/devicetree/bindings/hwmon/lm75.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/hwmon/lm75.yaml b/Documentation/devicetree/bindings/hwmon/lm75.yaml
index 0b9fda81e3ec..cde6299c9b4f 100644
--- a/Documentation/devicetree/bindings/hwmon/lm75.yaml
+++ b/Documentation/devicetree/bindings/hwmon/lm75.yaml
@@ -87,6 +87,7 @@ examples:
         compatible = "st,stlm75";
         reg = <0x48>;
         vs-supply = <&vs>;
+        label = "somelabel";
       };
     };
   - |
@@ -101,5 +102,6 @@ examples:
         vs-supply = <&vs>;
         interrupt-parent = <&gpio1>;
         interrupts = <17 IRQ_TYPE_EDGE_BOTH>;
+        label = "somelabel";
       };
     };
-- 
2.43.0


