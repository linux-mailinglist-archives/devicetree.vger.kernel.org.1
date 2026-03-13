Return-Path: <devicetree+bounces-275405-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mMSVDVk1tGn4igAAu9opvQ
	(envelope-from <devicetree+bounces-275405-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:03:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F03B286979
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:03:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7E6833002531
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:00:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 538303B8931;
	Fri, 13 Mar 2026 16:00:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="r+uhas9o"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D57373B27C8
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 16:00:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773417644; cv=none; b=pMJE1nfHSFcXkNlz0EP/291nb3DPgZym4uUMk3L6ROaCEp9bVPSwRVtJSghn6+Idfm40H5WrcWLMXEiyytRJqVE+Z66LmII7htaS72rtsUxJ3YgQNOGwu3+N5KTxp6TW9IStq8O50y+ojm/3OalMCVVgNLx6BiJ3FVol1d5Cmxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773417644; c=relaxed/simple;
	bh=0lcl4kwg6xMYcX6I2qw/0Bb3kvOyEwVkS+hMsOdcTEM=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=RPgKymQ2XmKrkr76m7IF8OmOH+mEg5MaA27LtgQTtPJOeC/1y7W+c0rW3vc9Yt3q5iw2FaCli/3iWisXpWH1OK/MVxK+cEN3Ow+KvKXu4MkCIqn4qPyydqexaKAwJeOmzQAh+4yrCsUcYqJK+f1zKUZ3fsCS85Q5jFOweYeTV6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=r+uhas9o; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-661b16ac011so4169506a12.2
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 09:00:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1773417641; x=1774022441; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PHqknoZKE7fsrxy779b3139XeipLuzq0YFxuewlpd04=;
        b=r+uhas9oYeidnAhxYrZj9o0V/4zlIDxs1RnkrhJ23pshr1JBLUJNXCralaIRYPV44q
         4qbKm5GVgAK3HJD+FwATkWmJmvRy8LjByhYhPS35VGtenK9YstKycLXkCiw+80JWV7/f
         VWZ8QckRsNnwrVuBvjWXxuSzLT9MZ5NCT99KoODljUr3Zp2pKuwVTjj1BWZk4lTsHN47
         A3eccmsB4oIQ5nkkbwKQMGBI/yisZlCRabHTzbkQmdvdHkv3EQKiCYz24KVBnl51mL+m
         N1000uQgoaYGU0eEpp445w08IVmhiDVjdUCqChHyEGdQo1qk8Cl5mRSFL2D7iUB6xt3b
         8Pmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773417641; x=1774022441;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PHqknoZKE7fsrxy779b3139XeipLuzq0YFxuewlpd04=;
        b=UONrQpMizj4JJ03MRMUgZwP03dgaTqkb/fNhFEqk8hwuAL54O8hklxJ1ekQ93GmhY6
         oONTr60qHhbxlxb7YOLrz7KyYO18Xi7gDH8gS8hZg/EDE7yjcSDaEqF4DNu+RG6hXjtw
         TCsoQpiz61hbCE7nVVNmeroxLR3oDBZ120ZOmQVg2bBR7FPVcmsx93uEfsuiPXyzwMmM
         6v5x2SPj8Rhm8JR80BoHl7O8Fbhrw8WzEHJo3H5DP2LvgmETAyfk/KnYdr8Uri0v2VLx
         Gjsdqw/EQjrzaCI5ZxgS8ZzDmo4QqX6jW8qLZrCoPH0uy1wX8olM7frTh3K9v9qodKQX
         cVDw==
X-Forwarded-Encrypted: i=1; AJvYcCVkOdzb6ATXYXzMpuzpkQ76lIW9XLUzNgOTSuYpK10VR30ZqVo+RFR5NCuqOGjuBXjNN/i3U6iPCQ2D@vger.kernel.org
X-Gm-Message-State: AOJu0YwvakB33/XwsgrtypZX2Ck+wtbzY5f6q3ie14sw4nZzRjqFVNzl
	3iXvKMNNevQ59Iw6YeIiiQrhvHn1YiAHA46wOg7+NRMReeoaTkDAuNbLI5QCWhbCWSw=
X-Gm-Gg: ATEYQzw1KlJOQJV5bOs4mN/dtNVnY92Klbkx+NNYwpmvJZWIo/biXe0PBefAnnzCesE
	/wIKSQmFLuJ+ObexAE5VUOuL/Wv9ri/e6eeU6ezEwwfg9Zl3kAKz2dKgwO7pvj0A20WlZ1MpL8H
	G5klYBJh/LPETEqBTkai+8qDE2yUmZle6Em2QmjfykKqMY6Xbnfhnz7KXK3czBq2NnFO8jRvUuH
	5S3aBzNf+3TwzUSldysY+jlJ+LjbcrKJzy9UgPS0SB6Ki6+MpAT8oZUWOCIE7pwdT0d+UD7GCoQ
	dnGDLW76Zy5h67V4yXLEEe5sEETDMUV8vKycVNi7PO09EF71OEZP1+fjzM0Yr0pbPDfVHyBok5H
	CYpFEn6NLWjUy/2KadlQ3dXsiD2bxbVTPuR6rfUZgfcMNJLkKd56xj8aUniqgOm6ucSmvtfcyPA
	2vkXlor1B7ptuxaa6Io5IiHVxdGShuCe7dejVatBjWyigDANTf36RM5FpwjBALle2N64na/821p
	QbhZg==
X-Received: by 2002:a05:6402:3642:b0:660:a23d:4666 with SMTP id 4fb4d7f45d1cf-663babf0b28mr1753883a12.18.1773417641046;
        Fri, 13 Mar 2026 09:00:41 -0700 (PDT)
Received: from [172.16.240.100] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6634fbb94afsm1397100a12.4.2026.03.13.09.00.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 09:00:40 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH 0/3] Front camera enablement on Fairphone 5
Date: Fri, 13 Mar 2026 17:00:37 +0100
Message-Id: <20260313-fp5-s5kjn1-v1-0-fa4f1c727318@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yXMywqDMBCF4VcJs+6UXDAVX6W4SNOxnRajTqwI4
 rsb6vI7cP4NMglThkZtILRw5iEVmIuC+A7pRcjPYrDaeu2Mw26sMFffTzJY61B7H4isN1AOo1D
 H6z92b08LTb/SnM8RHiETxqHveW7UcrtqlOig3fcD97HygIgAAAA=
X-Change-ID: 20260313-fp5-s5kjn1-80a866aee261
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773417640; l=764;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=0lcl4kwg6xMYcX6I2qw/0Bb3kvOyEwVkS+hMsOdcTEM=;
 b=ovAVA3KQzaGRmmd4JKjyFPLw4kz43Y4QJcFmAvJQAJNw1pZ+a9dDk7n6jyOfMBVxb56N4zxoG
 lB9uuQn4m9cCsdZpKVScM5y/6iOHvRiz/fRgXLLPBJk3CWIlxcU3p2g
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[fairphone.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[fairphone.com:s=fair];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275405-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[fairphone.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.weiss@fairphone.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,fairphone.com:dkim,fairphone.com:email,fairphone.com:mid]
X-Rspamd-Queue-Id: 3F03B286979
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Since the Samsung S5KJN1 driver was upstreamed recently, we can enable
the camera upstream by adding a few bits to dts.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Luca Weiss (3):
      arm64: dts: qcom: qcm6490-fairphone-fp5: Sort pinctrl nodes by pins
      arm64: dts: qcom: qcm6490-fairphone-fp5: Add front camera support
      arm64: defconfig: Enable S5KJN1 camera sensor

 arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts | 128 +++++++++++++++------
 arch/arm64/configs/defconfig                       |   1 +
 2 files changed, 91 insertions(+), 38 deletions(-)
---
base-commit: 3daa4f5dc6cc1ac1ab2f95b5b4c16bc5fb87f48f
change-id: 20260313-fp5-s5kjn1-80a866aee261

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


