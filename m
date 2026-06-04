Return-Path: <devicetree+bounces-306641-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9cVHOboiIWoL/gAAu9opvQ
	(envelope-from <devicetree+bounces-306641-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 09:01:14 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A0B4C63D720
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 09:01:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=cjGOpfXe;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306641-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306641-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 33D3B3046724
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 06:57:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5DDB3E0080;
	Thu,  4 Jun 2026 06:56:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DC6B3DE42B
	for <devicetree@vger.kernel.org>; Thu,  4 Jun 2026 06:56:26 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780556188; cv=none; b=Wy398VfP5qnLl0WF9eTsncgDhQCV6pnFZq7E0XlBwS3L5DYkkRotup5xzN/KkyxZAdRRHsATi9/JQM9gq4ULAX4QRMFUimjR96lRdnYC8g46jhIc3CDI1ZbQvvoQXeU1M5IvRUSYARirEossk0RBvH0nZKevjPGGFONI+eyR5y0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780556188; c=relaxed/simple;
	bh=mfMhw8X6rqSkNtHrkXfGwY4WQE9ume16xTTOiihtOCs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=X0owNZOHGsmrzAT4BqIyVGz/lGUPsOA9lAQ852Ci9NkUeECw9CZAP8IsaSUhSr4p95gJehAuSKZwlwg6K2bpj47rx7GBMSTFv+94IO4NQA5U79ThbmnH5XEagYOaqkEpJ9D7KPv90Sw8bvarPfrILHN3kq+C9ZMQXZsh8NX4uDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cjGOpfXe; arc=none smtp.client-ip=209.85.208.41
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-68bd167797dso481129a12.0
        for <devicetree@vger.kernel.org>; Wed, 03 Jun 2026 23:56:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780556185; x=1781160985; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XUjdA7Q98BNOHlYv37Q+eVdFjAnQXSNmLGsjPptNwdk=;
        b=cjGOpfXemYwxnRHxTPQLsSrl4rfNP4BhYCP/sfSrilr7Swjy28UX2MJbL1Hw1EANBi
         O2XSi3sZUXb+diEdQo0Fg8o9dKi6qh8DVXsH6nc8hCjcpnQ3KbqVkEI8wDzUBBmusSZ3
         tCNZDQJWCqhUU5cFHJ0c0fm+om2Qsxb9EuF5Q9z0j0t1uitmnpu1A/lMwbLwMDy6x2Mq
         JEoz2vk8Y/dQW5jM7ngGu8qaDJ8PA4BRt9NRIbDBdF3qWhdO9GRSyWOLG1GtoJW56Ci1
         TcPj8mlLWHmcv//iuD6XnuN3ofQq+1uoBkt435QrTU7p3Qj5vbR4AIJpMrUK9TAdZJ5q
         XOBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780556185; x=1781160985;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=XUjdA7Q98BNOHlYv37Q+eVdFjAnQXSNmLGsjPptNwdk=;
        b=H8b8oW+S5xQQl2cqs4gidQuXgmRYqpY1VjRfjrF+lTthAOwPQZI12AxjSjEEgPqfYa
         Tc2bxWxrFvIE8u2i19yiakrjKG8BYfw8ITj91jH6cFQWPRpVxyrLGmWCORA24bXJ1Rln
         CRNyWzNc8cti8xLPqXchshfnVwO7HxFA/8y85EA0LBd8dAqmGjwe8RcdLtFi+nb/JtXV
         Env8zZnaVSfcxcCXJmRfwzW69swQul8FCUnSLxbU0qAxe6c2hqRknHa8xHrLbh/mC/OP
         fWBUKiPJT9oarfY0PIEL1Ys3juf9Hl6nIS+aCHxqDDCwwbOCUFuugFkqz8OCj5XF+lkk
         +QEg==
X-Gm-Message-State: AOJu0Yy9FpDWT3Q9IdJFgV8i0I0GEAgpxxGPSN9UaT7fcDsSidPljPK4
	X2JY9nbJR0C6ajPCb0n3t97xM3LAGyKpInuLIKVu82/MuEBlSIgD8nCd
X-Gm-Gg: Acq92OHG17JUAv93/+B0VjFKC6LDZ7gjTk5V/w/sPcNReipuUWY1i4oa3GVJYHR4oEm
	hISfnOJO68EIeJ/GEyZ8nEA3DKCUvrM0BhlzsUt9R1VwQxaywn+Ru2l8MQCIT9ULeZ2ofvvG3GC
	sbizcw4aA/41iLf9KOvb/wxY2sd75QowdiIAkla/orTBpZb1vVdlmCzJ0YJ+l8hgX+IjDoofFFt
	916NR5WbmESr66uyhdaDxp/TFTswsAqGMpVJ1vqS80usyDQrAic79jt/gk9WaNAldP70XR2VWB6
	/zMLPIkP8YrNd0pr1bx+EjjoLMlIxCSFMPftZ0aK5hDiBuOSLgZanCVNWXQLqr8QA3cb8X6aY5y
	ePV7HcUnub65DrAlhaJ6Afw3Ga500XMbDjkMl67cC+lIhHexSjDRp3nADew9vJUZKKXds0AUg8W
	gYLIjZUVbUzUYiksbQ0U7cxOU=
X-Received: by 2002:a17:907:9629:b0:bed:f7d3:6211 with SMTP id a640c23a62f3a-bf0af9f6ed1mr314039666b.45.1780556184392;
        Wed, 03 Jun 2026 23:56:24 -0700 (PDT)
Received: from xeon ([188.163.112.61])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-bf051c83c93sm264113866b.16.2026.06.03.23.56.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jun 2026 23:56:23 -0700 (PDT)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@kernel.org>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Svyatoslav Ryhel <clamor95@gmail.com>
Cc: devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 09/10] ARM: tegra: tf701t: Configure UART-B line used for GPS
Date: Thu,  4 Jun 2026 09:55:55 +0300
Message-ID: <20260604065556.137614-10-clamor95@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260604065556.137614-1-clamor95@gmail.com>
References: <20260604065556.137614-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-306641-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,nvidia.com,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:thierry.reding@kernel.org,m:jonathanh@nvidia.com,m:clamor95@gmail.com,m:devicetree@vger.kernel.org,m:linux-tegra@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A0B4C63D720

Set UART-B line to use hsuart since it has GPS device linked to it.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 arch/arm/boot/dts/nvidia/tegra114-asus-tf701t.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/boot/dts/nvidia/tegra114-asus-tf701t.dts b/arch/arm/boot/dts/nvidia/tegra114-asus-tf701t.dts
index df4ccb332301..fa4e3def9ec8 100644
--- a/arch/arm/boot/dts/nvidia/tegra114-asus-tf701t.dts
+++ b/arch/arm/boot/dts/nvidia/tegra114-asus-tf701t.dts
@@ -1283,6 +1283,11 @@ drive-gma {
 	};
 
 	serial@70006040 {
+		compatible = "nvidia,tegra114-hsuart", "nvidia,tegra30-hsuart";
+		reset-names = "serial";
+		/delete-property/ reg-shift;
+		status = "okay";
+
 		/* GPS */
 	};
 
-- 
2.53.0


