Return-Path: <devicetree+bounces-274623-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MCmlM+TPsmnrPwAAu9opvQ
	(envelope-from <devicetree+bounces-274623-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 15:38:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8623A2737EA
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 15:38:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6F51730B3ECA
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 14:31:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5741372664;
	Thu, 12 Mar 2026 14:31:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wKrOOuO1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24BA936B071
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 14:31:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.45
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773325887; cv=pass; b=qcOiUdExEnebEL2Ggnt6O0H2Rp949xprzgUuV9DMtmMIPA1rYIu1W62gZmRCbRBFtg3Ck/kyiTMeBaTjjO0y8SXtzBfMdgcmZtW5FxuU9Y2GBM2SoI/+7UvsCqG4OKWaSOywyGRidhopsvBOTc2G2iYFsUgCk4lsypmC8z3iBnY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773325887; c=relaxed/simple;
	bh=O5wzUHBR+3e64aFZg08UiCLbrD6OQHF1JiFe9rzU+xI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=nnp13X0pJG9BfdeA6oPKxQUHewpsZhFeCPiCmEGiko2mn3ThRsL74QgHGpN27xg7i4MWoFFTl5uhJqfpFCMXW12oxggZhiuU8JZ0GmIddNGrAhgW+a34SISAujijiJJk4PrTdF4TMO5nHazDHEP7G7DRhQx0nPnlZCnU2xomgqU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wKrOOuO1; arc=pass smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-482f454be5bso23283935e9.0
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 07:31:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773325883; cv=none;
        d=google.com; s=arc-20240605;
        b=f1e+OlCcbXZzSGeehxpTDo+9ThpwXezqzrG3cwDaQBMugBtdWP6mfvx37KjMDq/Q7R
         harDTQcwm2wRVByk+IV/JgvGyfdgnhlXDDkDH8B/fcSxBqm6twYAv8VhYtH7mhE9/+vQ
         hg0ITHDPCR6hEWUxCt0hSxZVuY9fxo7X2dWHYWi8gtS3PYa3nUwNZ8kgXqyylzoT8oV0
         7wt1PAYL5gTFXASgeNo6s8K4Qvfhyber+MfkGC/+doaVZ3O/NBeKlgMQPXsGfGgDcgf8
         AJU2b/eX+M8pQPaTj8kip2EQQbDtfUpM17bkWJ/W9x4QG9IYOwvOAbXf2Y08YJC204cx
         U7GQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=O5wzUHBR+3e64aFZg08UiCLbrD6OQHF1JiFe9rzU+xI=;
        fh=QlVY274UT9cKJjmlvED2vvqlw+/gP9S9CmUeziowB+s=;
        b=QaZIijzDWqhyN7EnpI1oYljKyIfI8yiVJOqoO3wcnu1SKsTCFKR9ip7QHm7D1pHWwq
         xzdGv8IDBo0+jxg13EskIZoUFujN/6HTq+LziaexWsQpi6Am9H4e/32JKikwNClRLqyf
         OJXOSeB7rcs9xvkiMthuCmkM9L4RPHSmsHUzXVNpEtDEA4mflAtPL2rTN9aC1N2d36vD
         LuE0TictfJ2P+1zqKFeTutfyp065YkYVpvTCq3ZS7WSqfzxrdO+589cMjNAAJuprwXXk
         fTVJ0YixGZ5Q3feug2OFm78psirVc2PEmPxE43yPUVcoeuexaf4/Ys+Ciffy1XRKWGet
         X/kA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773325883; x=1773930683; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=O5wzUHBR+3e64aFZg08UiCLbrD6OQHF1JiFe9rzU+xI=;
        b=wKrOOuO1mG55INSNJPYkYuHSsUGO+pAgNx6NLMzQnEoLCqDeGmQ6YWEIE0YOqT60Yk
         HgqpJK9QUhHsQb6ZonNG8NYzAI4n5/nbw04MkMogArpM0RP8oj/0Ar2hylK32lZ93Q31
         U1Qp7Zf0zXoDPeszQh3YrgQowP7d77FgggYutXh/OqtmTJ0WmsObrq1LYbp/0NJZfKD+
         u9MvqVvMSJnHyG4LaiBg9ULrQxJlgyMHzjRS1iczjGjsmcMCOuEbUuJnNu7Sz19WRQPt
         3xbCZsPjcOcal48OaMbAHCCfbZvn2+rNFy47uQyV8R8lJLAiV3cpmZVkUqV/rraJOvjA
         ucBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773325883; x=1773930683;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O5wzUHBR+3e64aFZg08UiCLbrD6OQHF1JiFe9rzU+xI=;
        b=szMO+GMk+czMzafFYi11d6CkmqOOsVrNVa5oU2vWDmQi0XINq0e+I52012JQnYug98
         5FbjZP0AsW1P7hh4mvfdnTHlpbxjW/AiJp9Q2ITZfzzDiND2BTr8fsk0Z8aaww1TaASU
         2DY1HkwD+1GaCRzZJVDhrVZ0A4r4KJ3iNWGQPKMSznKV2SNKZQVIx9CXLziB2tbmQPZN
         I2jNyFPCO1TWxg1OnCx3ytT05KDWkK4y7+h1yZoah3CfDPNCcuMWfm2ZPFZ4RI7/+5vZ
         GPHjtxhL/DMKlY4dkByC9mu5n1lRuuBYNBwt5FwKeLfvwmJkePwRuH601CXh1kFI9+Wv
         afew==
X-Forwarded-Encrypted: i=1; AJvYcCUWdVf0qEoPCzVGryx61+4KMZdlkNRkaETQHLke6QGSnnT9wTwrCNjhNC4Rd+s1yyLusWjdAlFFdSVR@vger.kernel.org
X-Gm-Message-State: AOJu0YykYwZVNSHlAJYvPa5Kx3dqwiMcSjoM2yVk6mqlpCztHFzRqdGD
	aOmVvOdeGjD8ARc8quFr34Q8ENTSsX2tjo9xPxwy0XYr9seJOLBpuDyfWO52bEAra1dkxMyerLH
	wb3G93kYtxDooeHHKBOmF9mwoQsW5pBTU2X6XCYBKGC8zsQJWuCYtOJs=
X-Gm-Gg: ATEYQzyWbufEYRRTUZ2/RTdFjmBqEoV/fmauRPbEzkWD7Bjq2dPFr+O42ViHtnT13ZB
	IP9790JXwBr2m2igwDcmwHPZrqsZ3pidhf/XjuKJZ1trr4LblZ6lAiU8Epd1by51G07Kc0FbuUk
	9EvN4itEjBfZ3H+W9vk8jYhwjLnm9/tFoC9/C32jtl7XGvJXRKESU+/UC9DU1+bYIBH+ExaO4A5
	NtuvEXx88JhB1Q9dATBv7VOvBzN1qQ12i4gKV3jySH3ynhhO/vJh3g6Rx0AijD9OWPk1DMzeJ+k
	FZdLv6h7QA==
X-Received: by 2002:a05:600c:699b:b0:485:3b4a:f707 with SMTP id
 5b1f17b1804b1-4854f58ab9dmr57263335e9.10.1773325883251; Thu, 12 Mar 2026
 07:31:23 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260312-dm816x_dt-v1-1-ed3370b20799@linaro.org>
In-Reply-To: <20260312-dm816x_dt-v1-1-ed3370b20799@linaro.org>
From: Christopher Obbard <christopher.obbard@linaro.org>
Date: Thu, 12 Mar 2026 14:31:11 +0000
X-Gm-Features: AaiRm50OisYRLOPDejDC5cFdFmSwOUMKBVpwbng_4BfDEKjcXerkyFxKATsAcAE
Message-ID: <CACr-zFD6jiDJH4i6m0fdEimT84ZPJYi-=ENUzAsavqE9gkpQxQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: omap: dm816x: Correct pinctrl register
To: Andrew Goodbody <andrew.goodbody@linaro.org>
Cc: Aaro Koskinen <aaro.koskinen@iki.fi>, Andreas Kemnade <andreas@kemnade.info>, 
	Kevin Hilman <khilman@baylibre.com>, Roger Quadros <rogerq@kernel.org>, 
	Tony Lindgren <tony@atomide.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-omap@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274623-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christopher.obbard@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:dkim,linaro.org:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 8623A2737EA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Andrew,

On Thu, 12 Mar 2026 at 14:17, Andrew Goodbody
<andrew.goodbody@linaro.org> wrote:
>
> The delcaration in the pinmux device for the pinctrl registers is not
> correct. These registers are actually 32 bits wide, not 16. Also the
> mask for functional bits is also wrong. Functional bits are 0-4, not
> 0-3. So the mask needs to changed to 0x1f.
>
> This information is taken from the TMS320DM816x DaVinci
> Digital Media Processors Technical Reference Manual.
> SPRUGX8C March 2015
>
> Signed-off-by: Andrew Goodbody <andrew.goodbody@linaro.org>

Reviewed-by: Christopher Obbard <christopher.obbard@linaro.org>
Tested-by: Christopher Obbard <christopher.obbard@linaro.org>


Cheers!

Chris

