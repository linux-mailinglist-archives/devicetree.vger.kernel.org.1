Return-Path: <devicetree+bounces-305932-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id AeH/LDW3H2rQowAAu9opvQ
	(envelope-from <devicetree+bounces-305932-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 07:10:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 04D1D63437A
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 07:10:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=reznichenko.net header.s=google header.b=Hk0sOMjO;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-305932-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-305932-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9B76E30414AA
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 05:10:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B315A3382EC;
	Wed,  3 Jun 2026 05:10:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1021E374E57
	for <devicetree@vger.kernel.org>; Wed,  3 Jun 2026 05:10:07 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780463410; cv=none; b=eFWAjYIsJCjjHvrMThvm9Nq/JkG6FkiWaNTlnGm9WTIccEHklWG1u8Mbv3vpc+BWuWQqW9bIiwTyNTnjLffvvaLAjL19dIL9bWpu3kfQcdnoVpcPOSAKQPP8MJ2VxuRxun/J6+CrdfEG5Lu7MkiTNWR0kvAXKt8+EnjAt4emIu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780463410; c=relaxed/simple;
	bh=8C8Kr1c5n4k9/G9k1O7ehVgZ0Lqnya4nKrjO6O0cnmI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Xo2iYytzbwcRk7CsPs+lcUwCqpT+9Td/jVKftQSVuv9UhRxqxuAunutL8ReWk8KDVGflo1uQwq05Ky+ucUZD4j9G7Y5lZcr1ZpMZZ4zTk8F0rrWtls0jLj5VQBOG30gzaPIr8a80Anp9BSlVek4PHJ4t2DtUybVVPChboI4NBec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=reznichenko.net; spf=none smtp.mailfrom=dpplabs.com; dkim=pass (2048-bit key) header.d=reznichenko.net header.i=@reznichenko.net header.b=Hk0sOMjO; arc=none smtp.client-ip=209.85.210.176
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-8423f52af13so2175564b3a.2
        for <devicetree@vger.kernel.org>; Tue, 02 Jun 2026 22:10:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=reznichenko.net; s=google; t=1780463407; x=1781068207; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w9qoccg3WggHKPK13rB0vOib/4Yp0f9YAq4w6iNluRA=;
        b=Hk0sOMjOmG1ZF/BmgaJufZTPKbRcs75mtEwaPwhxQW4e9Efyr7NpnlutDz+DE9gjYP
         VAg24Tja+8qxJ5B44EqMDPHuruyjzuwjcwYT5JCHXmnincKoyemt36p9qf1WUAA5ku4P
         ewE/0HEapvaBWh9X14oSt8cbxRMcQaVBVpoVbwRCT58chfEf+5edJ4/OMqTf9PbCMH7i
         QE/QsQ5w5wI8+PlXe65xi2kCyM867pnwM5Dlk5/QIU5Nbcx0GAT2b4xXjKlANphmEm3p
         G5mvNxI4xwau6tkyZVw2ybw8h+4br+YHPl9sP9BJ0pkndzScMXCv75d+7RBOdyJ8+xwo
         o6qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780463407; x=1781068207;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=w9qoccg3WggHKPK13rB0vOib/4Yp0f9YAq4w6iNluRA=;
        b=EYtPU1iU8LyPUoHmoG2t07zlSME+Ojl62j9zNr1ZhNNGeXcYPUzTzdU+ZKxDMPovxV
         oam4njwtihFaix/SjcT4IXeLyWrqAWKIk4TYpwXuE5hKcyU0xPFEd1HL86flOgHYRMYA
         gjrF7Ee1rG6R+hBI6O6ifT+WfjJapygm9pLbp2XcKr9vKPn+M9FgDC5HRjKmImWoY6X2
         28HXmqtG1CMsriUz3fAy3+SI/w2fAaCXjIsyOoIVXBrF8v2d+4HVVf8KvPsjNOYiP+aQ
         vVdLOSHceFtqRGwm7vzEbV3r7jeGBV14SDRJTRKaE5Kl9MiyZf3iAfU78uirrNdfiOWq
         paag==
X-Forwarded-Encrypted: i=1; AFNElJ9TEa18cXdspts9xz+oVCDnmkzsR+wq2/o5rb8mzV23V7SPPsWHiTwsPHg9fwD+NpEeJrkKqj9EMkkJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yzm31bEamlWBq3+3nc+CxFUK1ZN+t79k41ARHymw6SGA1LgtcHm
	MlS1Dq0ViAN1hssWDjl2D4dz0jhU1a4+fSNl+9Vw4s0LNLjLNX/+59FdXMkW1rSmo3Y=
X-Gm-Gg: Acq92OFXBzLW/CMQcMnXClSyrg2Ank+yXQjm313vDZQHJHyVG+gZG0ZyLnC/A90pX29
	DOfqodp7F9Ys/3rQqmZSI9jh3S7RugSJ2QWjWY6BJXwMD4Ia6bnS5oW+AeVpsme+1nWj4BpqBVv
	5AewWTvPNxYywFQuuUQIxybPfqAz56LC/jCEPGqtTlN1dfjzbjKA9ej5akixV/hIwIULu2HrHUP
	sdtF3MUJSr/IbDmJb81blQ0uGiqYbfyH/sIvS2qpu4Ed+J06H53tblO4cPEtWCoJTJ5Z/texS/E
	OgM149pPz/DaF9rJiD1p/9C36+X+XHUdVwtG3X1doOqV2KWVOMj2UQZFf6xt4q0TLw4ZTNt0WX6
	trleicJCu1UxW0ffRKlEGpcvwJgN8xRYC/IU49n4azRAgHm+jMRDcL08DsdRsa678SOUB0OSCRG
	yKKsCbrwiww2cH5NbwSEFdNNzJsQ==
X-Received: by 2002:a05:6a00:1488:b0:842:6a97:52fb with SMTP id d2e1a72fcca58-84284dc0488mr1957197b3a.18.1780463406843;
        Tue, 02 Jun 2026 22:10:06 -0700 (PDT)
Received: from z440.. ([24.21.231.36])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84282372502sm1685430b3a.16.2026.06.02.22.10.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jun 2026 22:10:06 -0700 (PDT)
From: Igor Reznichenko <igor@reznichenko.net>
To: sashiko-bot@kernel.org
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	robh@kernel.org,
	sashiko-reviews@lists.linux.dev
Subject: Re: [PATCH v5 2/2] drm/panel: Add Ilitek ILI9488 controller driver
Date: Tue,  2 Jun 2026 22:10:05 -0700
Message-ID: <20260603051005.233094-1-igor@reznichenko.net>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260529065909.A01291F00893@smtp.kernel.org>
References: <20260529065909.A01291F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[reznichenko.net:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:sashiko-bot@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:sashiko-reviews@lists.linux.dev,m:conor@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-305932-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER(0.00)[igor@reznichenko.net,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[reznichenko.net];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[igor@reznichenko.net,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[reznichenko.net:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 04D1D63437A

>> +static int ili9488_dsi_probe(struct mipi_dsi_device *dsi)
>> +{
>> +	struct device *dev = &dsi->dev;
>> +	struct ili9488 *ili;
>> +	int i, ret;
>> +
>> +	ili = devm_drm_panel_alloc(dev, struct ili9488, panel, &ili9488_funcs,
>> +				   DRM_MODE_CONNECTOR_DSI);
>> +	if (IS_ERR(ili))
>> +		return PTR_ERR(ili);
>> +
>> +	ili->desc = device_get_match_data(dev);
>> +	ili->dsi = dsi;
>> +
>> +	dsi->mode_flags = ili->desc->mode_flags;
>
>[Severity: High]
>Is it possible for device_get_match_data() to return NULL here?
>
>If the device is instantiated without matching device tree data (for example,
>via a manual sysfs driver bind to a DSI device created without an OF node),
>device_get_match_data() will return NULL because the driver lacks an id_table
>and only provides an of_match_table. 
>
>Dereferencing ili->desc immediately after might lead to a NULL pointer 
>dereference in these cases.

This driver is DT-only in normal use and gets here through the OF compatible match. 
sysfs bind still goes through the DSI bus match path, 
so this is not an arbitrary bind-to-any-device case. 
The only NULL path I see is a non-DT DSI device whose DSI device name matches 
this driver, which is not a supported instantiation path for this panel.

That said, I can add a small check and return -ENODEV if reviewers prefer it, 
but I do not think this is a kernel-panic issue for the supported DT path.

>> +	ret = drm_panel_of_backlight(&ili->panel);
>> +	if (ret)
>> +		return dev_err_probe(dev, ret, "failed to get backlight\n");
>> +
>> +	ili->panel.prepare_prev_first = true;
>> +
>> +	ret = devm_drm_panel_add(dev, &ili->panel);
>
>[Severity: Low]
>Does devm_drm_panel_add() exist in the DRM subsystem?
>
>Looking at the DRM panel API, while there is devm_drm_panel_alloc() and
>drm_panel_add(), there does not appear to be a devm-managed version of
>drm_panel_add(). Will this cause a build failure when compiling the driver?

This looks like a false positive for this series. v5 is based on drm-misc-next, 
where e43a8e3ad8fa3 ("drm/panel: add devm_drm_panel_add() helper") 
adds and exports that helper.

