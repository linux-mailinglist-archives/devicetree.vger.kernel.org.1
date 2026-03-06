Return-Path: <devicetree+bounces-271836-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sEAsKVJ7qmkqSQEAu9opvQ
	(envelope-from <devicetree+bounces-271836-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 07:59:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B57721C388
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 07:59:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BDF8F3037D62
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 06:59:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DED21371D1A;
	Fri,  6 Mar 2026 06:59:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sUP2PwYE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91DD926FD9A
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 06:59:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772780366; cv=none; b=YcgDl/oLUR11nnpz6qnEjlBczc8MZIzMCzZ/RqYnEagd9vxv02JqIxZCdvqKolSackPlP4r6YaAt9alKqxUZ7GeNPraTCVZXdf0OrwJToAbotUzvMxskZUrbX5DD0TKyvChJZUjWxGktV1FHGgE7pJoie4phzzbs07zMUyhdFJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772780366; c=relaxed/simple;
	bh=o6UzmXKeeCe44GvgiQXGEXz7ViU57Sx4ETdclGODk5U=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=C0pU67bfGulyqcfO8N4DuaAjsQoqmcuJaHP+1raboLG4sH8ThvpHStuJQ9eFH2KvPE5KZdy1t9VvC1nWRw9FFqazpNPDqo4c61R8SDIF6uPwSITOlO+8kSxL2sT2DKzNH7pyKJiapYaVVgQiyygS3Sgp32lK0E8py0CaRek6D8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sUP2PwYE; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-439aeed8a5bso5955957f8f.3
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 22:59:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772780364; x=1773385164; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=o6UzmXKeeCe44GvgiQXGEXz7ViU57Sx4ETdclGODk5U=;
        b=sUP2PwYEm4Ugy/4/P9CvSY3k9J1msgHnFtT9fftQbsls/rTV9lBIu2WL+/nEZsvUSk
         j9DsMxYwVIjPe5XNsRiZe9ntR1XbDdbOUPrqbIMPCUgobxcnvVT3lTmlsKdzsSCk3b6J
         eDn0EjDqYm0D+vu9tPoq9NLD7CSQLSmpnj34ND7oS+XiUfBbL1ZnE8DFZwR6Swgz7hk3
         cI0bZC+eU3K8KIGgjtAJugPvnwUCu2Hc3o5F7pCxwChVPHdTaxopj/UQ1mb+roYkPwTs
         Zfvy+SvETGsniA9rwQ+Az7TwfqOfyz+RralV3YSwjJQOUDmBwhwYTRpZK0FkOPBvD/Vd
         9m5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772780364; x=1773385164;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=o6UzmXKeeCe44GvgiQXGEXz7ViU57Sx4ETdclGODk5U=;
        b=KoJ7/Rbve9I8Qbm0bVns6EfgAmEZu/FP+nrkRg745lgwkl5zb+BtFnCDWZM2jXPkRC
         i2IqhcqMxhoJvpMWMoUG/La0w57pr7nXzfbCevpKJwBGQwUwDHNarmo0EqGBIHLPCtTU
         PikW94K0MHmLVBwTcBnESc4KEUj/kplshsI//n1yfsK6hZZg4su5NsFrZyDTvESspqV+
         Gvotj1xi9XY+dV6vcczmVA4+jEOKWOBkzhZIu0wTjl/F/jbeIUsa0JXc6wm75i4ydDZ+
         2iKh46Q+mr5MAgpKPYdzBSEeeOLJnt4txMb41jci8y0tC7dHw/3olUmlE9ue2iTi31LP
         VsrQ==
X-Forwarded-Encrypted: i=1; AJvYcCU03LVHnCvq458hq9/INVn/jreTYcWPLMfUVsUx6y9NCIi0Lg0ZPtwVKmyUJl6GuZL0S2WflthwX14z@vger.kernel.org
X-Gm-Message-State: AOJu0YxLpHK8okt+eSyaYu332BWpCk9GekU7yiRq5U+1lMtaserRpNHW
	1A50e1YF0Oeonw6l6oL573cTGxTZkn4eQlE76JR+ilXC5WOUH4uq48DrYyLOMuZHlNk=
X-Gm-Gg: ATEYQzy47R/WWy1vLuaXla1kc6YBCRB3LKZOWu4CvdwK1KkjZewN69TJmhpKUkYY3h5
	OeSCQznNyN6IFd2UgGPso+iPpuaCQu0ijwP05S23cozhIGfYka/Kcx7tUhsJRN2EsXa0y4w6MzL
	aOfLE9tXHAadW/OCeBg+Gp0MHvvwlRcJ/6gg3S+jBDnvP1aZMgFfvJzCUJEq705yRhW1S37EEXI
	rn8yMH98Tg5UARVxTS4L32tV/QzUosZDcQqnFv0IPj82PePl9A5P4Jx1IKoUjS1FSUThgvdp9dF
	EplQo/2qa36UDJ4x1Slpt6ry+Cfl+yUx02PGUJumJ46Zp4s2IpNWKiH5TxnBuBRSBKy7HJ9BJZs
	tIzS6J6EKF3eYXVq/HexlovmIBs3HBmL45mOOVQECGovkYcsEp0j1XXgYw64QjZ5e8IxqnN5lDT
	LqAqjj486E9qDz7F71T8F4Exh3qOEG1YPt2YjsmQM=
X-Received: by 2002:a05:6000:4009:b0:439:c8a3:45f3 with SMTP id ffacd0b85a97d-439da555695mr1568221f8f.6.1772780363666;
        Thu, 05 Mar 2026 22:59:23 -0800 (PST)
Received: from draszik.lan ([212.129.78.78])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439dae2ba06sm1701166f8f.24.2026.03.05.22.59.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 22:59:23 -0800 (PST)
Message-ID: <c323298f8a16d62aae47fdbd24d28d3d3c302d46.camel@linaro.org>
Subject: Re: [PATCH v2] arm64: dts: exynos: gs101-pixel-common: add Maxim
 MAX77759 fuel gauge
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, Tudor Ambarus	
 <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski	 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Alim
 Akhtar	 <alim.akhtar@samsung.com>
Cc: Juan Yescas <jyescas@google.com>, Amit Sunil Dhamne <amitsd@google.com>,
 	kernel-team@android.com, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Date: Fri, 06 Mar 2026 07:00:45 +0000
In-Reply-To: <20260302-max77759-fg-dts-v2-1-12f1109a6fee@linaro.org>
References: <20260302-max77759-fg-dts-v2-1-12f1109a6fee@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2+build4 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Rspamd-Queue-Id: 0B57721C388
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271836-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:dkim,linaro.org:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Mon, 2026-03-02 at 12:35 +0000, Andr=C3=A9 Draszik wrote:
> For DT validation purposes, this patch depends on the binding updates
> from https://lore.kernel.org/r/20260226-max77759-fg-v1-0-ff0a08a70a9f@lin=
aro.org
> They have been ACKed, but not merged yet.

Just FYI, that series (including binding updates) has been merged and is av=
ailable
in linux-next.

Cheers,
Andre'

