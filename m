Return-Path: <devicetree+bounces-264379-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qM+qLfwYi2ljPgAAu9opvQ
	(envelope-from <devicetree+bounces-264379-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 12:39:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BF9D11A53E
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 12:39:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 435523044A55
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 11:38:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B289F31A576;
	Tue, 10 Feb 2026 11:38:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="E/Oojgho"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com [209.85.221.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58BD7319859
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 11:38:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770723486; cv=none; b=oNbWsSI3aw2fmE8sVISuoI0mehUd934gr+EZ1lOPoDjOYIr64wG9CIS+xcSpzYie0knUpdrLe/koAj0+lNKqKsrjXGbwc080EB9bApsgpD8EgmR5sDQ4Xj3nC6jghNch2jQdtW5oAe8XuO9QOE7yAgclylBaKONkMh/p6xjz1Mo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770723486; c=relaxed/simple;
	bh=yOsY5RhKxrMXDB96hjVUQrxZWPvwUKm+B3xs2xyK+ao=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=qXB6i2MOih5r3XaSHy6xqOn4DEyB8nR7NGe8vQDkO2fV/uYXtvKUVlYTzNrOA/KPwoG5MEdzccG2pLFqkN6KNVO1BU4d5nqN0cqGPXEZF96QvEFj+5XREPFkFhdBEqIpRiOFY4wW4hme8TioYEHRx3d3dbYU0VEyyFr9NODnoxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=E/Oojgho; arc=none smtp.client-ip=209.85.221.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f65.google.com with SMTP id ffacd0b85a97d-4376de3f128so1387441f8f.0
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 03:38:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1770723484; x=1771328284; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=iJ/WctdqigD32PqEqv3ebe0jqlT5BVVf/tJqU8VMdkg=;
        b=E/Oojgho7GgZHJHFQI7kE462dD7lqqBvWZNuRWutlLNIB3UaCOY+Fxt0EWTwhQN2vd
         vpPRH0vc12gpGMegMZyCtHMby6j/MhuwDIB5PcXqJ6higOxA4af2+mZDye8QU18Q8WNx
         k8w263EowS8FLJqVWR8JlGdSR2aotpB5rHHiJXuBncTBAwKatmWbYUGkAmEHILhQFIIW
         dicCJbqJ329nTAOaS1DmeNF7wfpHr3NhlWVvPYTBbFy0MFul/Y5h9NYlhJv40PYzbRP8
         WApazNRVB2QzqrE61+AoolGBMhSxCul/8OyeqU8cvjz4GAFh9mzhNPCybxIPeubmkWO+
         Fnqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770723484; x=1771328284;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iJ/WctdqigD32PqEqv3ebe0jqlT5BVVf/tJqU8VMdkg=;
        b=k/RHesvjBI6tyxmRHu9sIYvl/rqCo+58cJ9ceshKQm3kZ75m10XCPdrrXghksvu5JZ
         wGrCak1unDKgX9enJAWLoaflG7eoe5cjr9udw0tWRqVdsvcr4BYaEjP7htNB0vx30Wjd
         fQpFmCJpw1jO/YKXdzZTzfK2zU2fj0hek63kqVpwEdS1TSYuqKCIbHzneo5lGuiRAvoC
         cuT/ieoDkbGaluKMPYPxhUjBPeQ7axbvSPI46S4ujOyQpXMq852wjLppRG0lZYgQNDHF
         JmVllnhhlT0Gh85zG0EwUEv7fdmQ68MvTeXDL63URhm5GHAA0REd6i5+KMWRxnCO6QtA
         nx4Q==
X-Forwarded-Encrypted: i=1; AJvYcCWvJ648Jk1I4BJFYmS5J8dRRWDTspNIxU3XfCLabJejFIT2sICdq/1JIyRSqiUHR8Vao947Ea+3KDMT@vger.kernel.org
X-Gm-Message-State: AOJu0YxpEYYRg6u0chC4ncQvt15lFGR6m3TDHkXd3N6xjBzzYRL3/eom
	JW14l4VzbYKKMQ1VpzdwmmW8fU7yo0Pys38ryTRPNhIiiK4jir/D55cggORqatc4USE=
X-Gm-Gg: AZuq6aI0RlG6oPP8VrPjNWFMh8QYKKMYa1CJj3xTekm9aDwR22xzzbkD+f2uENGnB+D
	24dGrGJ6eQAxBZiP8miPIQ7j60BofmuZ48uKRbUYLqc7ED2Hkq6HKAIaobhCO41hV+4Lt/o9CkY
	rI5mvxSCUf6BNFIDxh64aic98nKxAkpdE+ZLpJ6pull+NlcFxIax4Fo1Qw0Zd2WGmfGNKSlNT30
	v17u+lzwVdLyq7+CMtzT8D6vOFL7XGOIK81hp2OwgDMqbcX3w2gv6Vn6MOkK6hPaV6TG5vJ0hLC
	Bb+tdEn6HMfvQXpDuhuuGLAYJw3KV3KZJ0h19l3QtY8CotjD5zI/gOcI7UNdtlethGdRqtsdSlw
	PMZYGP7lYc1w5hj8Dt74WeSHrS6ErOWgmKIbd7S83S28K5ao7vileKdyS2DIw8gXP9nSJFqb4M6
	05L8sLoCdYSRI6zYr9BNShPVnAm2sABOF7jlVBC038
X-Received: by 2002:a05:6000:2601:b0:435:d859:5cf with SMTP id ffacd0b85a97d-4362938a761mr23774127f8f.54.1770723483638;
        Tue, 10 Feb 2026 03:38:03 -0800 (PST)
Received: from draszik.lan ([212.129.79.225])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43631c8d378sm27426330f8f.21.2026.02.10.03.38.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 03:38:03 -0800 (PST)
Message-ID: <cf4073c76c2db84fd8fac3e1c2a63918bf9d45da.camel@linaro.org>
Subject: Re: [PATCH v2] arm64: dts: exynos: gs101-pixel: add all S2MPG1x
 regulators
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, Tudor Ambarus	
 <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski	 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Alim
 Akhtar	 <alim.akhtar@samsung.com>
Cc: Juan Yescas <jyescas@google.com>, kernel-team@android.com, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Tue, 10 Feb 2026 11:38:30 +0000
In-Reply-To: <20260210-s2mpg1x-regulators-dts-v2-1-68783c9e0a32@linaro.org>
References: <20260210-s2mpg1x-regulators-dts-v2-1-68783c9e0a32@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2+build4 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264379-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linaro.org:mid,linaro.org:dkim,linaro.org:email]
X-Rspamd-Queue-Id: 1BF9D11A53E
X-Rspamd-Action: no action

On Tue, 2026-02-10 at 11:30 +0000, Andr=C3=A9 Draszik wrote:
> Most rails are the same between Pixel 6 and Pro, with the following
> differences:
> =C2=A0=C2=A0=C2=A0 * only Pro has UWB
> =C2=A0=C2=A0=C2=A0 * Pro uses l2m, not l14m, for TCXO
> =C2=A0=C2=A0=C2=A0 * Pro uses bucka, not l31m, for NFC
>=20
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> ---
> Changes in v2:
> - add comments for board-specific and unused rails (Krzysztof)
> - link simple-framebuffer to display regulators
> - Link to v1: https://lore.kernel.org/r/20251113-s2mpg1x-regulators-dts-v=
1-1-80a70ef42be1@linaro.org
> ---
> Please note that this patch depends on the bindings updates for S2MPG1x
> from
> https://lore.kernel.org/all/20260122-s2mpg1x-regulators-v7-0-3b1f9831fffd=
@linaro.org/
> for validation to succeed. Almost all of them are in linux-next, but
> patch 1 from that series is still to be applied.

  ^^^^^^^
patch 7

