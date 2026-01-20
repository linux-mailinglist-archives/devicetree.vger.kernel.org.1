Return-Path: <devicetree+bounces-257545-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KFMzC4vZb2n8RwAAu9opvQ
	(envelope-from <devicetree+bounces-257545-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 20:37:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id E019A4A93F
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 20:37:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id C5D2A7E2413
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 18:02:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0DCA44BC91;
	Tue, 20 Jan 2026 18:01:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="U0cASmcr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5128A44B66A
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 18:01:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768932069; cv=none; b=OfQMMPp7Lue+yvb1vvLYV+WOj3FOBmXz410c+sZTQbERnDnGaUgq81EIHJFD1fc5hExFxo6eIrbryvkXAOJzTPk7be21fuswuVHGXDMi1RMWSziIZgTezDCEDSHSDmfdfL/IeYwQztuiKqewq878k0xSvFyOQrLJXJAjMM10lcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768932069; c=relaxed/simple;
	bh=BqjRxPVs+l2t/oY8bGs1vah2fh77A0JL6orMy0PIsSk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=o4KIARUw2YYnERtx+i1ApCda7Ud/ts2+CyBGQGwgx5xTpaY0Im7erDX9B96Smd+JKdsmAfxUMzE1orClBjendw4YIwibOJ+0kVU9ljmXjoLveq95Ie5siDxZZsALJJPhiNAtZ+a69f67TKOOju+8DgGRQCV5k4+c75uQgS9HbIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=U0cASmcr; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4801bc328easo48755985e9.3
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 10:01:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768932067; x=1769536867; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sJg1/gJNpsv5EBSUYHpgWGZjPp3ptT1XENeTbHp6DeQ=;
        b=U0cASmcr4/WN7JWgL8plQVHiwXScvdGQXkmLivz1UsmyJH6I5q2NM8Mm99rrYumJst
         WHxjNq0w11B/CHMaQCfUi5PbHib9RLSWankOt5ze4E+QTmq7Svcm3QTj+93wAQ9T8axW
         Iauj7b1lMHF97nPBQ++koj3K0AJUzG4pDJ2yZb9kpF25ZWGgVk6XOGbpyxB4jb0sBsZs
         9clHqQaie62kOuQCY2/RxlNmTTqKmC4ekiHvDIa4ropvz0obtJkPIah2cEYv3HUOmRAL
         uL9Dx/nDDMYMrcWdL16eVEsfufBapYD7SY94QAtFtq9jAbwzssOsw8eAPgGoSLBeJVGO
         W5HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768932067; x=1769536867;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=sJg1/gJNpsv5EBSUYHpgWGZjPp3ptT1XENeTbHp6DeQ=;
        b=b8aH1Y/6P9ioBqBbrAOiSy60LLEkVtNoJFrSGjZuuqBURlWCFojkneFM0sAdblUdn8
         ena8yNYExlFa8lbQIUExSNaIck8SvMAQZYu5C5D8RkptjB5mDLG4FtYqfJNgwKByW9oi
         Ibir4Cb8sWDb4iapeO2/8dQoiPNn/rexJwK1Ax7/piVwbfXNRMmtZA0L8Nno5gD9fT5p
         d66+wwfnaDGHsUWYKm99zjF61SHz2g2EYO/cSFR1gGR501uKqnOTOsvEcf5MGeLHrivP
         Ii9IjjjDql+VruZ/i8mUMdTE11GhrM2Kjq0vw2uOx+L1+EWy5LpEQZbtxZ8kxdODRK8p
         pkgA==
X-Forwarded-Encrypted: i=1; AJvYcCUnAVhun9vB4JOkA1JOUxW1B8pW/TIe1eKOPwFRp0MGwpX6a8TeTsd1prBMN2T3ftNJFXIfQCD6tM8I@vger.kernel.org
X-Gm-Message-State: AOJu0YxiP7uijTt3RfnahRmgHBVrsIzwcnOK1s4ReEkc0hX5OhwB7q2u
	wfmU9eGWeQyTJ/yye73RNLxKa/9OgTjUrzZ11o6s9NLitttd4/S3f6dz
X-Gm-Gg: AY/fxX4l9PKaW4Qsu+/Ht8kn1H0BeTFDE9jobYVBJcR8YhesWdDqW4nm0GEdot77xQB
	JdhhzpxU6cKfL7/cOvBCyfwkORhpt46z0XnUB65k9tU+FGkcnRfymHnDpJKoalqGEeB0HSi+C1F
	gC/y4GAQp4PWuvp3eODIcQJKq8vGD9qCyBc1r5O2uYjDqXKG9PJZ9k2UDVmXW5gFyspzyfNB2wG
	Dfmyw8O0tql88y/0S2TTJnfL7eWcWvA6KHJuwuk8Vha1Q9Ux/Kua7+stEwwp4uuHfa7FV+uzVrp
	RjQ7lNcKG+jFRb9ouxiponbdCPzjKCkNn5Akam4VTYSu52oRWRLoqxNpzd61pFgwErWqwjin1UR
	1P2+d3xSD+KR2SmQFDkK6t97dvK0cQU5Wmrd5yK3oH62tsB1QcVaDGsnWN2yh4lLxaD28pi+qZW
	wU3Wajs/wllrq41UCTZjd6
X-Received: by 2002:a05:600c:81c8:b0:47e:e807:a042 with SMTP id 5b1f17b1804b1-4801eac800amr192158215e9.15.1768932066407;
        Tue, 20 Jan 2026 10:01:06 -0800 (PST)
Received: from unknown.zextras.com ([78.208.157.140])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-47f429071a2sm312013015e9.11.2026.01.20.10.01.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 10:01:05 -0800 (PST)
From: Gianluca Boiano <morf3089@gmail.com>
To: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: andersson@kernel.org,
	konradybcio@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	robh@kernel.org,
	david@ixit.cz,
	Gianluca Boiano <morf3089@gmail.com>
Subject: [PATCH 1/7] dt-bindings: arm: qcom: add Xiaomi SDM636/SDM660 devices
Date: Tue, 20 Jan 2026 19:00:46 +0100
Message-ID: <20260120180052.1031231-2-morf3089@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260120180052.1031231-1-morf3089@gmail.com>
References: <20260120180052.1031231-1-morf3089@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [1.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-257545-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,ixit.cz,gmail.com];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[morf3089@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	PRECEDENCE_BULK(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: E019A4A93F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add device tree bindings for:
- Xiaomi Redmi Note 6 Pro (tulip) - SDM636
- Xiaomi Redmi Note 5 Pro (whyred) - SDM636
- Xiaomi Mi A2 (jasmine) - SDM660
- Xiaomi Mi 8 Lite (platina) - SDM660

These are Android-based smartphones that can boot mainline Linux
with simple-framebuffer and USB support.

Signed-off-by: Gianluca Boiano <morf3089@gmail.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index d84bd3bca201..87562ec0b170 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -819,11 +819,15 @@ properties:
       - items:
           - enum:
               - sony,mermaid-row
+              - xiaomi,tulip
+              - xiaomi,whyred
           - const: qcom,sdm636
 
       - items:
           - enum:
+              - xiaomi,jasmine
               - xiaomi,lavender
+              - xiaomi,platina
           - const: qcom,sdm660
 
       - items:
-- 
2.52.0


