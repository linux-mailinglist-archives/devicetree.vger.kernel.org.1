Return-Path: <devicetree+bounces-300211-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OMtoNLeLDGr0iwUAu9opvQ
	(envelope-from <devicetree+bounces-300211-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 18:11:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id D38B85820A2
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 18:11:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D8CE730226F4
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 15:55:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4BD73EA946;
	Tue, 19 May 2026 15:55:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CXjEC3RU"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A21933EA942
	for <devicetree@vger.kernel.org>; Tue, 19 May 2026 15:55:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779206135; cv=none; b=s8tlU0Bveha57LUUUb7L/uaKuhxUlCX8jRMuDejysrmtP7EZEs2qO0o7PudCtcqaoC1n8fl/TAXhBqJhdtHMKlCc2yMM0BZ0Q3V3BqpRnfmtJ1Da6nBKSjTOywN9rTZ4doPyeyZmRc+qsHvDYXeUc98+2xM5DoNsLoMV3/juci4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779206135; c=relaxed/simple;
	bh=TU186bkJS+0q/wiN0iWka77F9yWFWMnZwRrCzCJxqok=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=IKqRkcF/mz6pNCxk9v5nVZmN7zeR+Fkgb6jiKOlUTuTs57YvSqko/eHfAfgoiyqR22AP+5gfnnnZ4bREuiXLXvM0GQBFM+xVzyYDyfFv0evlgSNHMpw47ARcpvFl05Qwg30IjyVP0FixPwBnHFw1X4GClbIjXFTsC90X/GIYlgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CXjEC3RU; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BF179C2BCB3;
	Tue, 19 May 2026 15:55:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779206135;
	bh=TU186bkJS+0q/wiN0iWka77F9yWFWMnZwRrCzCJxqok=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=CXjEC3RUZB1yYZRdcbnTKOOsKiW5F16ImU+AyMgMlTVx11/LzKYnA7IGGjc4wy26I
	 vamxdNy/cfgVzzif80ocqhqlaoGU+aJM8VVky5YxSZoNuTl6NruBrwwGyfUR9W67nd
	 EsGaGNA+DYX3VC59HGQYIaqeEW0di+Cs0ZRLzICcg6/O6LK+tw/2Y+4diuZg0DGNlv
	 bGRErJG+/E0AG5wLxxwnit3OEDKl7dUk6ynfmoKt89zGFXktuVp+h85daa+swiXBHA
	 NXxDRSe2FG9JEwQ9SkmcFtkWOdPBgWl2vWcgvtHtSkYLJQQlym87CvoGhl9NbWMRV1
	 jAN9JyprUdvpQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 1/2] dt-bindings: iio: dac: Add AD5529R
Reply-To: sashiko-reviews@lists.linux.dev
To: "Janani Sunil" <janani.sunil@analog.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260519-ad5529r-driver-v3-1-267c0731aa68@analog.com>
References: <20260519-ad5529r-driver-v3-1-267c0731aa68@analog.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 19 May 2026 15:55:34 +0000
Message-Id: <20260519155534.BF179C2BCB3@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-300211-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,smtp.kernel.org:mid,sashiko.dev:url,a:email,0.0.0.10:email,analog.com:email,lists.linux.dev:replyto]
X-Rspamd-Queue-Id: D38B85820A2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The `patternProperties` regex for child channel nodes incorrectl=
y expects decimal unit addresses instead of hexadecimal, causing valid devi=
ce tree nodes to fail validation.
--

commit 137584b720b9b8966a6cb2fb8c6b4d98d2bf3d55
Author: Janani Sunil <janani.sunil@analog.com>

dt-bindings: iio: dac: Add AD5529R

This commit adds devicetree bindings for the AD5529R 16-channel 12/16-bit
high voltage DAC. It defines properties for programmable output ranges, SPI
communication, and GPIO pins.

> diff --git a/Documentation/devicetree/bindings/iio/dac/adi,ad5529r.yaml b=
/Documentation/devicetree/bindings/iio/dac/adi,ad5529r.yaml
> new file mode 100644
> index 0000000000000..eb66f6ca063dc
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/dac/adi,ad5529r.yaml
[ ... ]
> +patternProperties:
> +  "^channel@([0-9]|1[0-5])$":
[Severity: Medium]
Does this pattern incorrectly expect decimal unit addresses instead of
hexadecimal?

According to the Devicetree specification, node unit addresses must be
written in lower-case hexadecimal without a "0x" prefix. Since the AD5529R
has 16 channels, valid reg values of 0 through 15 correspond to unit
addresses 0 through f (e.g., channel@a).

This regex expects decimal strings 10 through 15 for values 10-15. If a
user correctly writes channel@a for channel 10, it will fail to match this
regex.

Because the schema enforces unevaluatedProperties: false at the top level,
these nodes will be rejected by validation tools. Alternatively, if the
user incorrectly names the node channel@10 to pass schema validation, dtc
will produce a unit address format mismatch warning since "10" is evaluated
as hex 16.

Could the regex be updated to match single-character hexadecimal values
(e.g., "^channel@[0-9a-f]$")?

> +    type: object
> +    description: Child nodes for individual channel configuration

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260519-ad5529r-dr=
iver-v3-0-267c0731aa68@analog.com?part=3D1

