Return-Path: <devicetree+bounces-314998-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id aPJoFkLxOmqxMQgAu9opvQ
	(envelope-from <devicetree+bounces-314998-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 22:49:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A8F986BA1E3
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 22:49:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=AN3vUgK8;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314998-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-314998-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4A24E3072556
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 20:48:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D93B3ACF10;
	Tue, 23 Jun 2026 20:48:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD94E331230
	for <devicetree@vger.kernel.org>; Tue, 23 Jun 2026 20:48:38 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782247721; cv=none; b=nU7dPf9C3SutLIDK+qcM0sSU3mnwNK6ULHL975oPQ+7ikJvarUh9i8I+6r8M0ndwdHLVXMh1uFDTcvYyasVITT1pJwo6SzXm7oRDZWMfUwjW6iUrAdPO8ZKhqcbGONGJGPdjoM5Zur3V22AVmq/u/Nx90yRvzhYcrIizxL4cFvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782247721; c=relaxed/simple;
	bh=7BGgOMqfp64HcLM4LgYBtFJU9OxxhoCE6bY2vD84luI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=OQY7ofe5SXV84UcuPBL3fAhQy/mRu/BkxMAuXrnoUbRyQU5+V7wIv9G0xLG+/zjS+LkrCf6eo/kHkwr8iwNWHjDpmenskIcNV/1TUeP2JPFdpFds98Lu4v1QsPFDdP/hoSrNUU8ZTraKEwzw4g//BoriK0seEEMyLVUN2mWwLew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AN3vUgK8; arc=none smtp.client-ip=209.85.221.45
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-4624c1409c9so260793f8f.3
        for <devicetree@vger.kernel.org>; Tue, 23 Jun 2026 13:48:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782247717; x=1782852517; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L+McTmOMLIPUuLLM47k3fHqRzuLTPsVSB+P6EOYjRpc=;
        b=AN3vUgK8b7ANbm0PxEd/GyjCIDGx99Zw1fAGYnU59KerdPm1tI7QVLLCkShdZ3hH4q
         nDrynTjctef+/G9wNuOW++uPOKtRev8kfeftpAG84la49fFUolRnkNAzL4pXtF8xuYS7
         lSUknrQo+HkkqHDE+kGFykB58S7mkajeVY8RGy2qByWO7jHwTxMPg/++/ewkzlOEsMfI
         Y/TRgbLSm9MghR3uwtRN3jC5WVD67mEmc6146V4yd0p2wsYJSsipZyd6id+bWlZkUkr3
         t9bqlb9Kpe/+ILLYa6SAqbTQ5hWOAUMtQ3upSIa5Lg7frgUgMW5i/rj++uBLcx6C5umk
         LESg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782247717; x=1782852517;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=L+McTmOMLIPUuLLM47k3fHqRzuLTPsVSB+P6EOYjRpc=;
        b=PVXBAIdp/W5hi9VmBM/Z+l69nNsOVWPKpAmvzQ9Lcmf86dYXB1YnZ27qdvkWSJ8rcI
         WJjodyhgP4HclJVWQr81Dy4JPH1UHreKNCwwvq0564DNZcre9zOlNlcvffRR08qbC3wS
         Q5Ic/knFeOVtE9YqfeZ6JmGOvXNuWveH7/LRMBDgZ75ORF3WlYAfdA8uoweUgxgB6ZBn
         r2pisAVqMqpSI9GMGuIYLQqagB+h1du30ChfEuPxVkiGnugFM2n9T6Hd0gJuVtbLXonF
         tW/XGLnX3Zu1buPcclDFEw0sbPoKZzI83YUDGFumSzo3xCRmQ3iFzXy5J2dCW5xEm/tv
         C4lQ==
X-Forwarded-Encrypted: i=1; AHgh+RrodcQ/XrOB9FEXhtVGTPP0Jc9BqYCLH2eDifuey0DVPQWN9W3LOLi+MbqQRk+9VYjXuw91MI3q0EK8@vger.kernel.org
X-Gm-Message-State: AOJu0YxikRwqqAU1zFQy+/Jq/ZUYI8zAPncIYu6E2mey9hGm2F6xYxCT
	HW50FLK9IehdnoNXfXkPlS7dJPFTKxaBej9/8xG9qbfZBLJTylopl/9/
X-Gm-Gg: AfdE7cmt/H4D6wzxhUEY0O7R/yH37eEpzrCAOM4/68f8DlUpq5QFkpc4wS/b+hKp98B
	kplctM9xE9UK7grNF4LaW4zGkXVCqZQO6nsWOJzT0r00NMarlM0dUWEtOqkIiDEAnsMrOydfVQk
	hZfzmSk7bIurwUo5Yn3Plt7PyHwYp1oi5rHbcCqrPGKuDt4l11LyHsgrnZBRXwfApAmZ3VALP8a
	UEgFcPJ5Xo8AgPxg69cYy2QbGcaghNvKzEcPWyy2KTvenrYg8Vl921U7qBbYC8/DHcBav3lJYZs
	lw0+nkzcu9/L6Boi1hJZXP6KJ1gK6OfUdpJVddmW0DAQeYlKL7hq1HUEvAD1WU3KPFuq8mXqKf/
	hUM7++nm4rjyJnJxwJYwrUaf+A0clGdyJg8y1hUkIyUkxZvhcIhC6UF4/UkYC9HA/WJnGnNdUFU
	Yj2K3mWwygl+e96Z+boCmon9y0ELYUlyLq/cCgPsREbA==
X-Received: by 2002:a05:6000:40e1:b0:460:3233:beee with SMTP id ffacd0b85a97d-4666358161amr26055694f8f.42.1782247717200;
        Tue, 23 Jun 2026 13:48:37 -0700 (PDT)
Received: from localhost.localdomain ([2a02:1210:8642:2b00:82ee:73ff:feb8:99e3])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-46c1e840f80sm351996f8f.6.2026.06.23.13.48.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jun 2026 13:48:36 -0700 (PDT)
From: Alexander Sverdlin <alexander.sverdlin@gmail.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev
Cc: Alexander Sverdlin <alexander.sverdlin@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@kernel.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Hans de Goede <hansg@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Andre Przywara <andre.przywara@arm.com>,
	Jun Yan <jerrysteve1101@gmail.com>,
	Lukas Schmid <lukas.schmid@netcube.li>,
	=?UTF-8?q?J=2E=20Neusch=C3=A4fer?= <j.ne@posteo.net>,
	Eric Biggers <ebiggers@kernel.org>,
	Michal Simek <michal.simek@amd.com>,
	Luca Weiss <luca@lucaweiss.eu>,
	Sven Peter <sven@kernel.org>,
	Maxime Ripard <mripard@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-input@vger.kernel.org
Subject: [PATCH v5 1/6] arm64: defconfig: Enable Allwinner LRADC input driver
Date: Tue, 23 Jun 2026 22:48:13 +0200
Message-ID: <20260623204824.691832-2-alexander.sverdlin@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260623204824.691832-1-alexander.sverdlin@gmail.com>
References: <20260623204824.691832-1-alexander.sverdlin@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-314998-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[23];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linux-arm-kernel@lists.infradead.org,m:linux-sunxi@lists.linux.dev,m:alexander.sverdlin@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:wens@kernel.org,m:jernej.skrabec@gmail.com,m:samuel@sholland.org,m:hansg@kernel.org,m:dmitry.torokhov@gmail.com,m:andre.przywara@arm.com,m:jerrysteve1101@gmail.com,m:lukas.schmid@netcube.li,m:j.ne@posteo.net,m:ebiggers@kernel.org,m:michal.simek@amd.com,m:luca@lucaweiss.eu,m:sven@kernel.org,m:mripard@kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-input@vger.kernel.org,m:alexandersverdlin@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:jernejskrabec@gmail.com,m:dmitrytorokhov@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[alexandersverdlin@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,sholland.org,arm.com,netcube.li,posteo.net,amd.com,lucaweiss.eu,vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexandersverdlin@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A8F986BA1E3

Enable Allwinner LRADC input driver as module to support buttons on Baijie
HelperBoard A133.

Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>
Signed-off-by: Alexander Sverdlin <alexander.sverdlin@gmail.com>
---
Changelog:
v4-v5:
- no changes
v3:
- new patch

 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 654a102cb5bc..c267f0906460 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -527,6 +527,7 @@ CONFIG_KEYBOARD_GPIO=y
 CONFIG_KEYBOARD_GPIO_POLLED=m
 CONFIG_KEYBOARD_SNVS_PWRKEY=m
 CONFIG_KEYBOARD_IMX_SC_KEY=m
+CONFIG_KEYBOARD_SUN4I_LRADC=m
 CONFIG_KEYBOARD_CROS_EC=y
 CONFIG_KEYBOARD_MTK_PMIC=m
 CONFIG_MOUSE_ELAN_I2C=m
-- 
2.54.0


