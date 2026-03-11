Return-Path: <devicetree+bounces-274343-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yEDkJtbfsWm2GgAAu9opvQ
	(envelope-from <devicetree+bounces-274343-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 22:34:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AFF326A73E
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 22:34:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9D83C3016BAD
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 21:34:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1595230DEBA;
	Wed, 11 Mar 2026 21:34:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="vhcInlkV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3698E2D97B9
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 21:34:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773264851; cv=none; b=TUcjpO1ebzhB/x2ARx6cx26oMRAGWW4Yo3enQH3fyN6LjfRq8JUW5p0t1GwNyNsm5gWqV6bVBP/TQ6nRXXRbi4pdr7Tx+P28eGOyXj98GBaotAXlXXc2tHAZtvSkgoa5wmu592J/WxLIkuEtkzd34iVEkwtotm46LxcSj329Igs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773264851; c=relaxed/simple;
	bh=MzEyGSpOEQTPXhyx29xRDaWjW9jMTuWE29zrMeXP5A0=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=KIxu4IIqZqou2J799MWOkGi0AXdY83y0WBpfjxpR5DkoE9CI4rEdOWl5P/wW5IHgkl6wHBnV8bfspC3jivVgu+Bs8iAwreN3hFsDG/tkiXVY6u1CCqTkIAqGGI6t47HUbYs/GwYRAqKFHo7eoUPy5fw3DysYdFzJgB8F5c8oP7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=vhcInlkV; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-82748257f5fso841998b3a.1
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 14:34:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1773264848; x=1773869648; darn=vger.kernel.org;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=7T6BzAyZ6zvZPDDyyrSv8iqVUUqxy8QrR8kmFoTvh3E=;
        b=vhcInlkVa42qc4szL3ZcFG87p3GQjuTTCjvr4AGT58FdxOZ5c2RCow045cr8qkbSUK
         YQYZi2JE7o7P6/FjVSGS02EcEIL+xseR45Nueuf8mJEliF1gaEgQdCU0WhEWFgM3QLY1
         DAUOX9RDbWXcvCZ7esYb7sk1yOoMfR2braWqO1WoeUC7eVJDn1kI17rlw70zc3RgqRA8
         vgBplWT1srEKc7fMbjD8+C8iAo+oh/zN38qqtQ6ezFW9N796Jy5e7H3rhsyR2S7fRx1w
         UeGJYtS+YDybJtJDd/OLoi7vREBBNodSs1OID735udGoQIHMX7hDFBmqpnFWNxmGq1xb
         UKdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773264848; x=1773869648;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7T6BzAyZ6zvZPDDyyrSv8iqVUUqxy8QrR8kmFoTvh3E=;
        b=pLPNu1zLGQ3KV0l3ReM77kM+zqeHqGALMcrTa3V9OVrqKSOeWYjtu0jnKuz6uTeznf
         hvUkW2GnFtTajWesMzk3cTlOZRFHDlGNlSSRoGfwZloGEvScL7YX4ZryY3FF1pxcPAT4
         AnUyLONzgAzT6jYSbLWL8mFigDNclApPFIa9dzvnRlvDOt5qj7jHJuEDY3VjR1rP3SRA
         I9ORrM5G1BHt3o59VWVK4Gz9a0u6Tybr/bBX8GKKKZ0w9S3D79EBpSRPW2yx2Mto7l7u
         vGCRB8zInKUlKX21U30oM+S11/e/vKxbCwx6/CABbZNhtkfBrauJD79rJNfdjMC7CMax
         fACg==
X-Forwarded-Encrypted: i=1; AJvYcCWQtIkUko1T8RrAPoORaSO31VR0FU3Ww6cpltahkGvVfwAI6gNoYNKHc2TS5AnGUMwLcP7vnY6721yg@vger.kernel.org
X-Gm-Message-State: AOJu0Ywm+HHSrX0y/suHq337dvWEpcErnBvHXthpN1XKZ4oRHsHGmE6V
	6w6rYQP8XD5uGBF5/8PvoRYwrOtylMwrxyKGESpYkyuG8V8Qey9zfAAyzq4uTueNA1bpJZsJtr8
	gFp4cqtA=
X-Gm-Gg: ATEYQzywmzWDmBkCdnhiMlF0djipEeHVBNI6zRdms+44jj3egHxNc2J5c3eUCcUdyrk
	1/czzl0xWNhfdCzQoVhEn4N7oM0G0nqtuyqLxM8sHK/dvaQxZC9tnUJWaPRda8ANxOoLHvU45WY
	c3UlYOoZOKkMxw3aILCyYhaEc4Y7FLsl8iXLY+eCs8P4Xx3o0PHkcaAFISGbrOzbGIDSAauTWAe
	cGW7aojrzJSTTMDETXsK8u6oY1IlyuVhnCiqbl7PcWsX7skO4DeHnItlnrXqW/XZuGukWL6JxyT
	q7Wi75P4UlX49hmUQJI/pndEhDlmcX9E+eM1EUlZqVNMuqPaX6d87sB1ZAa6FsUhLK1IUF/4hCb
	wkdQlAvSBhssHYLCkTbrkk1s3FhiJfLAazWWgF94pGDbzqhh/00m0C625+XxDijGG+c3aCgjOHw
	raDqPV4WFaSaNavc1pTMkfr4MCGOpj/0I=
X-Received: by 2002:a05:6a00:9501:b0:81f:be27:8d16 with SMTP id d2e1a72fcca58-82a0722304fmr941796b3a.21.1773264848531;
        Wed, 11 Mar 2026 14:34:08 -0700 (PDT)
Received: from localhost ([71.212.200.220])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82a0738422esm595730b3a.55.2026.03.11.14.34.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 14:34:07 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-pm@vger.kernel.org, Ulf Hansson <ulf.hansson@linaro.org>, Geert
 Uytterhoeven <geert@linux-m68k.org>, linux-kernel@vger.kernel.org,
 arm-scmi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: power: Add power-domains-child-ids
 property
In-Reply-To: <177319309976.1426147.15580608651927678828.robh@kernel.org>
References: <20260310-topic-lpm-pmdomain-child-ids-v1-0-5361687a18ff@baylibre.com>
 <20260310-topic-lpm-pmdomain-child-ids-v1-1-5361687a18ff@baylibre.com>
 <177319309976.1426147.15580608651927678828.robh@kernel.org>
Date: Wed, 11 Mar 2026 14:34:07 -0700
Message-ID: <7hms0eyrsg.fsf@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Spamd-Result: default: False [-1.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	DMARC_NA(0.00)[baylibre.com];
	TAGGED_FROM(0.00)[bounces-274343-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[khilman@baylibre.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree];
	RCPT_COUNT_SEVEN(0.00)[8];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.11:email,baylibre-com.20230601.gappssmtp.com:dkim]
X-Rspamd-Queue-Id: 3AFF326A73E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

"Rob Herring (Arm)" <robh@kernel.org> writes:

> On Tue, 10 Mar 2026 17:19:23 -0700, Kevin Hilman (TI) wrote:
>> Add binding documentation for the new power-domains-child-ids property,
>> which works in conjunction with the existing power-domains property to
>> establish parent-child relationships between a multi-domain power domain
>> provider and external parent domains.
>> 
>> Each element in the uint32 array identifies the child domain
>> ID (index) within the provider that should be made a child domain of
>> the corresponding phandle entry in power-domains. The two arrays must
>> have the same number of elements.
>> 
>> Signed-off-by: Kevin Hilman (TI) <khilman@baylibre.com>
>> ---
>>  Documentation/devicetree/bindings/power/power-domain.yaml | 35 +++++++++++++++++++++++++++++++++++
>>  1 file changed, 35 insertions(+)
>> 
>
> My bot found errors running 'make dt_binding_check' on your patch:
>
> yamllint warnings/errors:
>
> dtschema/dtc warnings/errors:
> Documentation/devicetree/bindings/power/power-domain.example.dts:136.13-26: Warning (reg_format): /example-3/protocol@11:reg: property has invalid length (4 bytes) (#address-cells == 1, #size-cells == 1)
> Documentation/devicetree/bindings/power/power-domain.example.dtb: Warning (pci_device_reg): Failed prerequisite 'reg_format'
> Documentation/devicetree/bindings/power/power-domain.example.dtb: Warning (pci_device_bus_num): Failed prerequisite 'reg_format'
> Documentation/devicetree/bindings/power/power-domain.example.dtb: Warning (simple_bus_reg): Failed prerequisite 'reg_format'
> Documentation/devicetree/bindings/power/power-domain.example.dtb: Warning (i2c_bus_reg): Failed prerequisite 'reg_format'
> Documentation/devicetree/bindings/power/power-domain.example.dtb: Warning (spi_bus_reg): Failed prerequisite 'reg_format'

Noted, and fix will be included in next rev.

Kevin

