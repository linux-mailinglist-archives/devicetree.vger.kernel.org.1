Return-Path: <devicetree+bounces-314934-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id hCR6Jf7GOmqgGggAu9opvQ
	(envelope-from <devicetree+bounces-314934-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 19:48:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 960546B93B0
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 19:48:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b="P/HWPRaB";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314934-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314934-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id DE8DF303585A
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 17:46:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7470D38D402;
	Tue, 23 Jun 2026 17:46:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6C3131A045
	for <devicetree@vger.kernel.org>; Tue, 23 Jun 2026 17:46:05 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782236767; cv=none; b=MrR0gGLHJ+YeI5p6NkidQpSQpDGR6EzmdblBU05X6chxna1bfLT/sw7ttXcrOXSTkSdUsYiX2WUt9qo7GYj+b1kZtiNe8KzkuONX6bsLuIzprDpKMuJr0b7afmrLRsEq23Fd7kMfqEP+AEejevI8t7wKpNmc10ZWXpna7MJjquU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782236767; c=relaxed/simple;
	bh=sukjri55wrG3E+ufMA/rcm4a1WNGsJyJAc9J8ENXGGU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=RJHbJQ4k5BQG3ePaqCGBpJk/s/8ZqYxsnTgv3oAMXm6A1YtH1U2Lqt7NutZ2lxFa4/TLH2fpljbLLepXS07tX2WmrAildKGz+uBhEQKipDs7Vta7cuJN6gDwdH6MnvIVfC2V5A95RtOakguqNkxZKP6jGTYUjT8yTT0s5y36jDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=P/HWPRaB; arc=none smtp.client-ip=209.85.167.49
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-5ad58351784so79769e87.1
        for <devicetree@vger.kernel.org>; Tue, 23 Jun 2026 10:46:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782236764; x=1782841564; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ashQPfCGiqIse4wQBkOHZlZl8A78BpelospgsPbRCuw=;
        b=P/HWPRaBiwh0CwZn2Cy1BobnmxTodW3XLBKu2XJhHPFAHp/GpfEs8/2OjcmzCIFskW
         Yvu8FC7yZb77NiTHmq6bRDH3UxeExLAjwIFHpbtSho3rZv0rWng25Wb7exrr69DlIApm
         dSG3fDdtS6wJXqN5yWjNTchWYwGbdRNCszp3foDT8rvpycX2Rc8K4IcLAduDjUARhWDu
         91hhPktaUkha9ERZ4nnii2goqOgTRR82Iu5INppGPp9rmfu/ehyuFOqtvgEWVxAsuckU
         ro4w6Ibx4jfrQMYxMHkCSFQ8h8wt9QOKmJ/22RbSAKRm+x6pAaNzigYbvYNEjW9lOvbN
         vM9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782236764; x=1782841564;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ashQPfCGiqIse4wQBkOHZlZl8A78BpelospgsPbRCuw=;
        b=LAnsInssRILmqn2XKuub3ECQQ9EGcRLnAScP+SObjIELgQSV7thAMyMW3ErRG0/aOY
         J87v6BhnERXKoyIhZnNIdHtG62aFgcuSeAzT184SbYbAbCYtGhowhhCV9QtaTnPHauaa
         SID4DauvbvfBHiYg2Y7asofkbE/c3qc/gaV13Re1SKodQzp6ZmEtDoSP7sm4yjpCq0WJ
         e2zmXSoGxQ1nyU8LVNf2UwPLioKSE8cWYU9VCwy8ziC+eCusSsxox71cCFYwQDd8ikxF
         yRxulpEVqtqFXUK7t9yuWy11B2NQRHx1Af4Xn9HxP5llLYBsI8v+vqS+PWC5cWekt425
         DQfQ==
X-Forwarded-Encrypted: i=1; AFNElJ/wuDvixTh3ITVGw6L0R83AAtG+Czd3Gwmm22IuHhxexDw+13rSziYSwveNOBeqKhxEmwcexlB8kle8@vger.kernel.org
X-Gm-Message-State: AOJu0YxNN2xvZzypauYRfELHIvXPa9OCmn0QPEAt0dOusAA+0YXsKP8W
	11Y4cxrLA+tzYyCIyVcq+0uceaHSB4fhrVZ0y++JwqVeFaal+cZqldYl
X-Gm-Gg: AfdE7ck82mVAhtvUvsh5hrbD8y2REaZ+i4ka8+cpeY4LDHey1VPg0IhsfSDQIiKe51V
	Pe89ySp3uB+bcuLbjImJ+/2p0yf3M1LVSp7KgX24k42VXL3Vrrl3QxIQLUG0TfurXLrPLjzTiTp
	V7x9DMeNdpbuINEq0dpaOr5sbxL2H5+XNvS2GWDuJwELaxHDsKQIYLXdGEFEGsZqlwbdzJsSweq
	iPctsWjuIsxWjGQW6MJr7AsncGVFfOHbBb0DnVCxx31NtmW7A3L/Ni5un3uu0OUUx/IYKwUH2rK
	xKk+bttMC/djFQDtFGuGk5Ru7O6FWF+MeTOpbEMZmZW9DTsw57J26WL0H9KI4Bc94rdsMyAFqS2
	4CtUNqXhJfXuMJGMWLgDyWgu8OKVvFCq/TfdTYUqguwgCZkivZ/EwNB/4C31/RmWeEqN0AeFVd6
	cwA5a+dLHIyIYNUto4hu67x/YQLAENhmXP/txHgr4SekdE/g==
X-Received: by 2002:a05:6512:ac3:b0:5aa:63c2:2cbb with SMTP id 2adb3069b0e04-5addb8161f0mr1182005e87.9.1782236764024;
        Tue, 23 Jun 2026 10:46:04 -0700 (PDT)
Received: from Shofiq.home (87-92-251-137.rev.dnainternet.fi. [87.92.251.137])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3999afc7005sm27198651fa.13.2026.06.23.10.46.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jun 2026 10:46:02 -0700 (PDT)
From: Md Shofiqul Islam <shofiqtest@gmail.com>
To: linux-iio@vger.kernel.org
Cc: jic23@kernel.org,
	dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	lars@metafoo.de,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Md Shofiqul Islam <shofiqtest@gmail.com>
Subject: [PATCH v4 0/3] iio: health: add MAX86150 ECG and PPG biosensor driver
Date: Tue, 23 Jun 2026 20:45:57 +0300
Message-ID: <20260623174600.17100-1-shofiqtest@gmail.com>
X-Mailer: git-send-email 2.51.1
In-Reply-To: <20260623155556.13701-1-shofiqtest@gmail.com>
References: <20260623155556.13701-1-shofiqtest@gmail.com>
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
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-314934-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[shofiqtest@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,metafoo.de,vger.kernel.org,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linux-iio@vger.kernel.org,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:lars@metafoo.de,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:shofiqtest@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shofiqtest@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 960546B93B0

Changes in v4 (addressing Sashiko review of v3):

- [High] Fix optional regulator probe failure: treat -ENODEV from
  devm_regulator_get_enable_optional() as success (supply absent,
  not an error).

- [High] Align fifo_raw to ARCH_DMA_MINALIGN to satisfy DMA mapping
  requirements of I2C host controllers that use DMA for burst transfers.

- [High] Disambiguate FIFO empty vs exactly-full: when wr_ptr == rd_ptr
  with OVF_COUNTER == 0, consult the A_FULL interrupt status bit to
  determine whether the FIFO pointer wrapped to full or is truly empty.

- [High] Remove iio_trigger_get() in probe: the incremented refcount
  leaks on the error path when devm_iio_device_register() fails because
  iio_device_unregister() (and its paired iio_trigger_put()) never runs.
  Users set the trigger via the current_trigger sysfs attribute as normal.

- [High] Assert SYS_SHDN in chip_init() so the LED drivers draw no
  current while capture is inactive.  set_trigger_state() clears SHDN
  when the buffer is enabled and re-asserts it when disabled.
  read_raw() wakes and sleeps the device around each single-shot read.

- [Medium] Replace IRQF_TRIGGER_FALLING with irq_get_trigger_type() to
  honour the interrupt trigger type from the device tree; falls back to
  falling-edge if the DT does not specify one.

- [Medium] Add .validate_trigger = iio_trigger_validate_own_device to
  prevent incompatible external triggers from being attached.

- [Medium] Fix per-sample timestamp jitter: anchor timestamps to the
  A_FULL IRQ capture time.  The sample at index (A_FULL_SAMPLES - 1)
  corresponds to pf->timestamp; samples accumulated between the IRQ and
  handler execution receive future timestamps, eliminating scheduling-
  latency-dependent jitter in multi-sample drains.

Link: https://lore.kernel.org/linux-iio/20260623155556.13701-1-shofiqtest@gmail.com/
  v3 cover letter

Md Shofiqul Islam (3):
  dt-bindings: iio: health: add maxim,max86150
  iio: health: add MAX86150 ECG and PPG biosensor driver
  MAINTAINERS: add entry for MAX86150 IIO health driver

-- 
2.49.0

