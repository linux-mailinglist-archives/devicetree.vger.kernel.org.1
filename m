Return-Path: <devicetree+bounces-262386-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IOz3CihBgmmORQMAu9opvQ
	(envelope-from <devicetree+bounces-262386-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 19:40:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F645DDB9C
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 19:40:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F087D301A72A
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 18:39:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E2AC1F471F;
	Tue,  3 Feb 2026 18:39:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nexthop.ai header.i=@nexthop.ai header.b="IdG09KtF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47AAA2F7ACA
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 18:39:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770143945; cv=none; b=Jka3IAdoI/KKmiZ0ZuvLyvUpoJ2qDkY9OKe+CdvTUDQQR136KHT0uw9kVIYJ2bGigcyYzw2JQXnJ5Au0ZgIYqVIYIsgVg8OGVgswSN0bc/erUaR/0TWGNNEPSprOkrC/Nhga5LjrpkgMvXsYa2/05KUzYfoqkRfa7XrqsW7q0Ic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770143945; c=relaxed/simple;
	bh=S7ZwS6nHEpnT2Ed8O6Wsq8QnI7o0iZGRuFsNLUgRsT8=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=ObNWCxp5LRXU+DvFx4evoIE9+6nVl50pKAwP4qGXCmVP4+1YQ4kYKAzrO2R90dIalIZlhbmajnWDptO9J4CCgwYZgHCMZN7NssMhiBv1mQ7PVy+Er3WuLfQ4lxhEHSDRP0eX8HVJjgd7WOY0gSRPArcvs+MkuLmzHBi0GKDZwVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nexthop.ai; spf=pass smtp.mailfrom=nexthop.ai; dkim=pass (2048-bit key) header.d=nexthop.ai header.i=@nexthop.ai header.b=IdG09KtF; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nexthop.ai
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nexthop.ai
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-8220bd582ddso3552384b3a.2
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 10:39:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nexthop.ai; s=google; t=1770143943; x=1770748743; darn=vger.kernel.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S7ZwS6nHEpnT2Ed8O6Wsq8QnI7o0iZGRuFsNLUgRsT8=;
        b=IdG09KtFcRQnjRTSJ9PzGTYmsZcuyq8t9eXORTya3ef+pFSv5lE6U3F+mfKM8ou1Ey
         kH8Eu5EBBqtxWmmA4nrlzmQXgW/1eCxbJpgi/bGxO8PT9nhL6osmOiTFZRqtpFqmnYKM
         J4M8VdSV1JkklKnTWYAtihIqFLF74HhAYt6QkMSWYyBHOloS4W+EwZVddu5tAReqJ9qV
         Jjvi82p5i3XDmIY60tI9W+KwGxpSaeUGnfL9h99j8hhKtun1+KfL7tFJkdNZbkn9/4u8
         zM2fIZa1S/9jdSoJLJBHr0tuFkLGL0y1I+vNJyrVImYT/kNXzZ8V3OInVsmLMXv+MS2G
         6flg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770143943; x=1770748743;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=S7ZwS6nHEpnT2Ed8O6Wsq8QnI7o0iZGRuFsNLUgRsT8=;
        b=n9hpALIyAGJYBEcV0835fNKo1NMKizmcjfBYqwfKC71L+hUkW2cEeW2QN46FEyjnJy
         MgcY/551pbCzWInTw7atxavTZVIpe4CFBp9Ftm2lepVG88qF3SVtqJCAnSl2e3Sbl2oD
         8KMwJ4HR4Ed9CDKzCRjakwai9S1FFdy2Xm8JmKt66RfuFwu21TCQFn2dome06t4wsEY+
         jc36wh8VC8YMmmYVRGn1xNrUNQrHrZ3I41mlpNt2RwC4X/c31oRtHGXHI5Jiul4K07TL
         BoHnJ/v0NeU/v7x99dOYz1+2G0CZMikveZE0rELmPeSYmfa1DwTWBYz+JY+Dofy1kkq5
         HUqA==
X-Forwarded-Encrypted: i=1; AJvYcCVCe+jIP1U0ssMET6LmJJetVYj6GY0/NvNUyA3xdJSXadj3i+S/Gq4xRNs705JHvg7YlkrWg3Ej+es1@vger.kernel.org
X-Gm-Message-State: AOJu0Ywu/+GGB2EhQHAqH2wVKgvirKBxHbgIhScbMZqdmGQCm8L0NElk
	574rBKC9tYaHD1SG7rFY5TEM6IldTfLBZaDln0lRK/RJs3feeir9zP4bLUF3tqO3SHc=
X-Gm-Gg: AZuq6aJ14dzgn2A9Eqh22i2TtpHh2C1l5Qnrphafa5RCrTqvVQ1soBZPw/e+WGyQxlE
	Ni/hZtGB7OAXW6vqR6fKaM8WelBvX8xvAjD8LA8BUAO3/mGpu26ZEBp+LKoVi68qb/trf/jIgtY
	AIPOkp+qU6B/5t3PCMnjZcmSD+RdTUcuxvoqSH9t4xrutmaovGyMzqHmnfJxuaHrT4Ps2ossq+o
	EudKG3hAfZdnwWZPt1Bug3tLEnbh8QljzkfUOYr/0aT9iQdf8TR+8I3P0y/wTErmwqr/OjI9nsb
	h18hc2HJavYGvy2L/hOP6DcPLzNgSsjQ6xRLrBYqV7OGE+YdZnBqDfMZyX7/67kD0QrgpR2vSQ/
	VsBLTRUbUhJ2k0W95F7XHtLNdCN6Al7hTh3adwBVdDvLRVd3LNrUm8j2FDpsKmQ3IJuXDXowGPv
	kjKAptZkv/TyNSWqkjmL1Qon5yUY91AMDJvxrr/JLZo45oeTegyRHM/qrO
X-Received: by 2002:a05:6a00:1148:b0:81f:9c39:14f3 with SMTP id d2e1a72fcca58-8241c5f6390mr296399b3a.42.1770143943444;
        Tue, 03 Feb 2026 10:39:03 -0800 (PST)
Received: from smtpclient.apple ([2601:602:8701:5361:2dd6:2d53:d593:7d46])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8241d47a418sm68996b3a.53.2026.02.03.10.39.01
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Feb 2026 10:39:02 -0800 (PST)
Content-Type: text/plain;
	charset=utf-8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.300.41.1.7\))
Subject: Re: [PATCH v9 7/7] i2c: xiic: skip input clock setup on non-OF
 systems
From: Abdurrahman Hussain <abdurrahman@nexthop.ai>
In-Reply-To: <aYIYUNejGCVdekx7@smile.fi.intel.com>
Date: Tue, 3 Feb 2026 10:38:51 -0800
Cc: Michal Simek <michal.simek@amd.com>,
 Andi Shyti <andi.shyti@kernel.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 linux-i2c@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
Content-Transfer-Encoding: quoted-printable
Message-Id: <9F7815FA-80D8-4C96-B61F-5CA6CB405F7A@nexthop.ai>
References: <20260202-i2c-xiic-v9-0-ce4695f5267d@nexthop.ai>
 <20260202-i2c-xiic-v9-7-ce4695f5267d@nexthop.ai>
 <aYIYUNejGCVdekx7@smile.fi.intel.com>
To: Andy Shevchenko <andriy.shevchenko@intel.com>
X-Mailer: Apple Mail (2.3864.300.41.1.7)
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[nexthop.ai:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[nexthop.ai:+];
	DMARC_NA(0.00)[nexthop.ai];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262386-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abdurrahman@nexthop.ai,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nexthop.ai:mid,nexthop.ai:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,intel.com:email]
X-Rspamd-Queue-Id: 7F645DDB9C
X-Rspamd-Action: no action



> On Feb 3, 2026, at 7:46=E2=80=AFAM, Andy Shevchenko =
<andriy.shevchenko@intel.com> wrote:
>=20
> On Mon, Feb 02, 2026 at 08:37:24PM +0000, Abdurrahman Hussain via B4 =
Relay wrote:
>=20
>> Currently Linux does not implement ACPI ClockInput to describe clock
>=20
> ClockInput() resource
>=20
>> resources, unlike DT. However the xiic driver is happy if something
>> magically enables the clock before the driver probes, and does not
>> turn it off again. The clock should always be considered optional for
>> ACPI.
>=20

I just used the wording provided earlier by Andrew verbatim. But can =
change
to the following if you insist:

Currently Linux does not implement ACPI ClockInput() resource to =
describe
clocks, unlike DT. However the xiic driver is happy if something
magically enables the clock before the driver probes, and does not
turn it off again. The clock should always be considered optional for
ACPI.

> ...
>=20
>> + if (is_of_node(dev_fwnode(dev))) {
>> + i2c->clk =3D devm_clk_get_enabled(dev, NULL);
>> + if (IS_ERR(i2c->clk))
>> + return dev_err_probe(&pdev->dev, PTR_ERR(i2c->clk),
>=20
> Haven't you seen my previous comments? Why 'pdev=E2=80=99?
>=20
Sorry, I missed it. Will fix in V10.

>> + "failed to enable input clock.\n");
>> + }
>=20
> --=20
> With Best Regards,
> Andy Shevchenko
>=20
>=20


