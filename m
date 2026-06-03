Return-Path: <devicetree+bounces-306284-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id R2YGJ343IGrNygAAu9opvQ
	(envelope-from <devicetree+bounces-306284-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 16:17:34 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 109EB63878F
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 16:17:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=cCzGHXlt;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306284-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306284-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 46371301C587
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 14:10:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F232D3AA4F2;
	Wed,  3 Jun 2026 14:10:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC54735F170
	for <devicetree@vger.kernel.org>; Wed,  3 Jun 2026 14:10:54 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780495857; cv=none; b=LdtBFDlpbe+06On7+0It+IhBf9y67qHFkM/wwbTFQkfENwhRsSzV5B1/qGdYxY861207W5jDwbDXwnfT6HWqWSr5YvxWTrnyx7vc6mlC5+i1WzqNPA7wFr+D3o+TOVQrwbpRj6J8V9+CtAObk9NFAQOTDHswlNkZUkVHW7Hg1FE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780495857; c=relaxed/simple;
	bh=X/4LDAMoKZkMh4PAm7f3Ytwubin99iyLxf77BzywFhc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=ikpTlGx5adOLYzS8vCqr93XxwQ71JvPDErBRQC/BySUvnEpamlzyJ58IL9mnnbaBDaUEYULkLlznouktY3ELIp3sSreS0wVai4qtO22qQqBaKuLc7VLdXXToQpCAJWIAoB/TRxHwBbp9sWuKCnsG4665CM3QcNFfwlKLQUjDA3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cCzGHXlt; arc=none smtp.client-ip=209.85.221.43
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-45eeba68948so4996632f8f.1
        for <devicetree@vger.kernel.org>; Wed, 03 Jun 2026 07:10:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780495853; x=1781100653; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=I6uE/yj6yBBMDcnhynVadW7yV5ZE49OrcbTpAkFxMBQ=;
        b=cCzGHXltWJofqlJrjzS4dqMoUCcdbCXPab9M4G+KJSnnLBQ0gahNaBps4Pz1zNFNCC
         a+u9B5gvLb6wzBQ8puonc8dTF8R19PPeoRLKL+U+gHldpN8XoZexH46AR1qtA8+6mU4j
         5A9pSFmekpc2xAZ+gpU/hM19ocMA8yPH9q/t1taIUJ0PuyJ6x8aj2twhTSofnhkDCWeK
         85WsA/WNfOHNhXIVggjAvzXcWigj6wwha43HQdOMpLLHN/3lVndm4snAb9KCApCGg9Y+
         letw/z0dVgOdIX8oCdcWfRz9ZVT4mOeJ+h2t5l7JjHFQlFXxAODTxbUSMtcFfGv52Azi
         HshQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780495853; x=1781100653;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I6uE/yj6yBBMDcnhynVadW7yV5ZE49OrcbTpAkFxMBQ=;
        b=hgsouOdg0WiYu7apUwpkhrFd8DAt9su98FW918ZSqn5vN6EdGPG27JD1sHprNh6r1g
         +f9aPJQA9BelmM6A1bOLjEcABIjfCwgZ4R6hKE1REqNvon1IYlcRKOMFQHbB+0CkS8xp
         T0zFQhkeC0Tzxyf9Un/LeG4vqlH+Ou2vPV9a4DiRF/hZ0jnL0fRZiZ+UpPKaXYfy+GfM
         MS7IdkOJimkNR/tD7HUrJ2kbeOdyWTLSwW/Hp+HW0tt3uyKFTHQq68akm8k27BcqtJqo
         OKdsYDs8OIf3M0+UszApIe2G2qq1qnW4fK0gk6BcyyBn/vgHZ+svy6mhBIHa+8Wcni5E
         Pq7w==
X-Forwarded-Encrypted: i=1; AFNElJ+wsyc+eHASzbB3CnQy8lyEC9sqQGEgRIE4b0AXmIm0g7HKG8L6hGB7dEuYuthoGixGsaKdfuL5K9Ts@vger.kernel.org
X-Gm-Message-State: AOJu0YyZv9w5kqv6ZfWjOljiLa01Ek9PnF2LmZJxIFKrSOOzesmmRIZV
	yVjYw38BHgjaWRyKNexK69w3p9mf3V0wfQtFMGUAXXFWmDH49BBLUfRQ
X-Gm-Gg: Acq92OHysgIESzgXtrwie5SciB8YUTycK5YzFl7ZT+X5zzTX+ETijVAYBL/IahvfmhB
	YrrqDKsAmpxP7CZ0HfLbcBSFK0yIVcYA+ZUV81m6aZcra0KyKH4PpBlLcC5HnqA4LzmF+XkThup
	gxkssAdom6GVQjG260DAbMdzSAglVUCPbj6xGfCi3zif9vZabbO7oi7gzyC+BJ1r5s3VhB1eyq5
	oKmn1WwD+76zqqHnvoWD9xnI/gTm1puPm4YCKDGv/Z/zjRz0MQiSpuzOZ2RZKgwDflctKUfqy3r
	/IKUYWMkW7XkZCR6xucBY6dtCdn1oxKgkYUe2o0Ku0NvhI/Oh+zP+5XZkxtd4RpDLfpq/9Zn3qr
	fAay4J/0cEoy0kj0IJHhQ7Kjnawc0e+j46qzS4zMvLkaW6LdxD2a0lPwQP1p1PKwYX+s3BPldcr
	rm4XgS0A8GBDT4zQqTsb1FY4xIvEX/UNyM9w==
X-Received: by 2002:adf:f403:0:b0:460:2477:2284 with SMTP id ffacd0b85a97d-460247723f2mr2137513f8f.39.1780495852755;
        Wed, 03 Jun 2026 07:10:52 -0700 (PDT)
Received: from xeon ([188.163.112.61])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4601f2dcb13sm7217131f8f.2.2026.06.03.07.10.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jun 2026 07:10:52 -0700 (PDT)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Jean Delvare <jdelvare@suse.com>,
	Guenter Roeck <linux@roeck-us.net>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Svyatoslav Ryhel <clamor95@gmail.com>
Cc: linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 0/3] hwmon: emc1403: Convert to use OF bindings
Date: Wed,  3 Jun 2026 17:10:30 +0300
Message-ID: <20260603141033.111300-1-clamor95@gmail.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-306284-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[suse.com,roeck-us.net,kernel.org,gmail.com];
	FORGED_SENDER(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jdelvare@suse.com,m:linux@roeck-us.net,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:clamor95@gmail.com,m:linux-hwmon@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 109EB63878F

Document and add OF support to this LM90 compatible thermal sensor
family.

Jonas Schwöbel (1):
  hwmon: (emc1403) Convert to use OF bindings

Svyatoslav Ryhel (2):
  dt-bindings: hwmon: lm90: Document SMSC EMC1402/1403/1404/1428
  hwmon: (emc1403) Add regulator support

 .../bindings/hwmon/national,lm90.yaml         | 109 +++++++++++++-----
 drivers/hwmon/emc1403.c                       |  25 +++-
 2 files changed, 100 insertions(+), 34 deletions(-)

-- 
2.53.0


