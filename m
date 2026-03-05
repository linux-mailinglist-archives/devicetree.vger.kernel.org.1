Return-Path: <devicetree+bounces-271436-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WDQPI/dHqWnw3gAAu9opvQ
	(envelope-from <devicetree+bounces-271436-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 10:08:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 33DA020E02D
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 10:08:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DD187301AA40
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 09:03:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9AB7A366806;
	Thu,  5 Mar 2026 09:03:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="3UhppmL1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC4FD359A65
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 09:03:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772701419; cv=none; b=QfCgHCHqLYi67cqYgZ6jshT+t9jrz5DUgawqSKdX7OMt/EhvvtbBI8H6LYPaDO6EwaUFJc4B9qVAiZKT46FdbKp8AElHVVPD48WNDentTP7HwMTYr/42kq/sd6Se4llqy0Qhc91g2ogbdpCrgDwd0YR56JjuT5fyfn3EStGSlI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772701419; c=relaxed/simple;
	bh=kxnI1kq3blq/G6aSx3FDq3CCB9uCXKLhW/uT2AuKJOA=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=u4Ll0ckGAF4Ox5YetJmdFS0TsfR9Ohz287dqEsNkophcs/ZINDLnPBHnrmm4ZeX1spg6/52VO71i57l3/qPBizjyoVXm6tg77sojTx7hnPWa65TFnNLWOBzIDEjfYybwYVbzeW3+RHaw+Dht82ndQanF/AvNCpqgR27YITSrxRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=3UhppmL1; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-48371119eacso92794595e9.2
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 01:03:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1772701415; x=1773306215; darn=vger.kernel.org;
        h=mime-version:message-id:date:user-agent:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=WAQoJ+BsCX38jr9SNjCgtieBrTo3xV4mFgoDVHJVgRk=;
        b=3UhppmL1ubtCdtjhllLgzD5hrVfzI2bvNG7OP6VbqCcyQOzOzZLZEOVOl6oDDnNCnW
         cOUgZyfp4vzXkrdPXgnXvlnoxyiDo4oINv9KG5Cc5CNepWf4B1SIs9O6rgC0VC5HVyUr
         0kwgSI/aGFmJ0tcpXxKAMAlrjRNA//plBNi+c/HlfS1E/Eo1nx0jHqpaMBL2DfG1Tog/
         Uy6f7dj2v3chQ0MegY5Sp94hdyWoAKJ8HR5h5wEmhavkKn5TX5bTV0c5yvrsrh45Lbvb
         EPOZU0JxGIvCuNJ7YKSMGhuEzpBZlEiQ8caA7jdVDVWdoA/GouPBxdJqW/TIVOLXAeo5
         mYXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772701415; x=1773306215;
        h=mime-version:message-id:date:user-agent:references:in-reply-to
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=WAQoJ+BsCX38jr9SNjCgtieBrTo3xV4mFgoDVHJVgRk=;
        b=STzzOJpks5dgOm7U4kwdt1oNuR93wg03jicHCqzt0z3v9M5q1ku/bACMJ9iRRSAYcW
         yWwGEdQ/ZsbvSGkTtRrgQKxARbBlB1eEcR15n7Ba86jQD3ZHHkSsX/c5yHx0/iY53woM
         ll/6sNEO3e6LOYyuTXjnCApEGpZ8JXMYqSIXdw6B1l5+smRvqucMaqfoPm80UyjPCVXn
         BzWavZzAZDJA0mq8m09XxmZIJ8zAipcAL0SCC1NPxsSKxUvxuQ7v0sH3/LdMXtnjJAvk
         pyYil6rMKGds7KDDpeyfqpVTgBRQEQlOidL9QYueuGjLzKHUG6bFvZaaUmtDhwft+EkM
         YCTA==
X-Forwarded-Encrypted: i=1; AJvYcCVIRIDg43acwOzbAWnAWc3vsl7taa75IfFyZN2PNOo64VoP8LHMVNDUevaMxrA7prhslHFTOBFppyj/@vger.kernel.org
X-Gm-Message-State: AOJu0Yzp2VEa8JhNcluYyMqNP1H2J2XK9S5M+1h4AqDYrD6mdqqEL+tt
	PUw5WWeTAY7bNjZiU/AtINNQdZfrEr5UA5Pgm9bE9aBoOai98eWeX+oP54GPAY1aC2Y=
X-Gm-Gg: ATEYQzyvct9GTGP+JpP9inWnARLw46sxZrnhVV85lHmMGZ6hynicnhHiz74S6/e5Non
	By6GaNpBMTaKyhMmdxsA4F7w/wvD+9mD6t6GPkbIXcoQwCgFjQ74mRjg9xtljUzNfpi+esHDzEK
	uuMM0kvICrXzk2OjajWyY34KETb/Avq9j0dkyO2foRmaccth8vzgam/UIFRFZlZnRusA7G256jc
	4W5JWeKJ4paYVWDZTJvmsYcnMo+WzaI9ibepzTMNPP+FOC3opApN8ugCjuPK8UTYn3YREX5iGiF
	9PN40rfpWhe0Ubk/6PZFbINj0CiAEix3fHvfqm2ARrvBpm85DFxy6KJg88Ip/Zf5mB6bz3LWlJK
	/j+PoMx82IH8PHB5lMhe6QCxn3ZJxlW7UuXJh409QF+CJwM1loqUIYyII0X3S0Jd/LBeJCsuV44
	ePbDVK/85tSNO0JY7uOi2W
X-Received: by 2002:a05:600c:1f85:b0:47e:e712:aa88 with SMTP id 5b1f17b1804b1-4851989f765mr93346545e9.31.1772701415004;
        Thu, 05 Mar 2026 01:03:35 -0800 (PST)
Received: from localhost ([2a01:e0a:3c5:5fb1:5595:8450:af3:bbe3])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-4851fad2812sm41178955e9.1.2026.03.05.01.03.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 01:03:34 -0800 (PST)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Jian Hu <jian.hu@amlogic.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,  Kevin Hilman
 <khilman@baylibre.com>,  "Martin Blumenstingl"
 <martin.blumenstingl@googlemail.com>,  Stephen Boyd <sboyd@kernel.org>,
  Michael Turquette <mturquette@baylibre.com>,  robh+dt
 <robh+dt@kernel.org>,  Rob Herring <robh@kernel.org>,  Krzysztof Kozlowski
 <krzk+dt@kernel.org>,  Conor Dooley <conor+dt@kernel.org>,  devicetree
 <devicetree@vger.kernel.org>,  linux-clk <linux-clk@vger.kernel.org>,
  linux-amlogic <linux-amlogic@lists.infradead.org>,  linux-kernel
 <linux-kernel@vger.kernel.org>,  linux-arm-kernel
 <linux-arm-kernel@lists.infradead.org>,  Ronald Claveau
 <linux-kernel-dev@aliel.fr>
Subject: Re: [PATCH 2/3] dt-bindings: clock: amlogic: t7: Add missing mpll3
 parent clock
In-Reply-To: <20260305074328.639993-3-jian.hu@amlogic.com> (Jian Hu's message
	of "Thu, 5 Mar 2026 15:43:26 +0800")
References: <20260305074328.639993-1-jian.hu@amlogic.com>
	<20260305074328.639993-3-jian.hu@amlogic.com>
User-Agent: mu4e 1.12.9; emacs 30.1
Date: Thu, 05 Mar 2026 10:03:32 +0100
Message-ID: <1j4imubqcb.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Rspamd-Queue-Id: 33DA020E02D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271436-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	TO_DN_ALL(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,baylibre.com,googlemail.com,kernel.org,vger.kernel.org,lists.infradead.org,aliel.fr];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jbrunet@baylibre.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_TWELVE(0.00)[16];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,baylibre-com.20230601.gappssmtp.com:dkim,amlogic.com:email,starbuckisacylon.baylibre.com:mid]
X-Rspamd-Action: no action

On jeu. 05 mars 2026 at 15:43, Jian Hu <jian.hu@amlogic.com> wrote:

> The mpll3 clock is a valid parent clock for sd_emmc and mipi_isp on
> the Amlogic T7 SoC, but was missing from t7-peripherals-clkc.yaml.
> Add it to enable proper clock parent configuration for these peripherals.

... but this changes the index of the clocks after this mpll3, and those
index are supposed to be stable if I'm not mistaken.

It is indeed more convenient to have the optional clocks at the end
as it avoids writing multiple <0> in DT when we do not have them.

At the very least, your commit description should say that this change
will not break any existing DT because these bindings are not used yet.

I leave it to the DT folks to say if the change is OK in such case.

>
> Signed-off-by: Jian Hu <jian.hu@amlogic.com>
> ---
>  .../bindings/clock/amlogic,t7-peripherals-clkc.yaml       | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/clock/amlogic,t7-peripherals-clkc.yaml b/Documentation/devicetree/bindings/clock/amlogic,t7-peripherals-clkc.yaml
> index 55bb73707d58..27cc1f331587 100644
> --- a/Documentation/devicetree/bindings/clock/amlogic,t7-peripherals-clkc.yaml
> +++ b/Documentation/devicetree/bindings/clock/amlogic,t7-peripherals-clkc.yaml
> @@ -24,7 +24,7 @@ properties:
>      const: 1
>  
>    clocks:
> -    minItems: 14
> +    minItems: 15
>      items:
>        - description: input oscillator
>        - description: input sys clk
> @@ -40,12 +40,13 @@ properties:
>        - description: input gp1 pll
>        - description: input mpll1
>        - description: input mpll2
> +      - description: input mpll3
>        - description: external input rmii oscillator (optional)
>        - description: input video pll0 (optional)
>        - description: external pad input for rtc (optional)
>  
>    clock-names:
> -    minItems: 14
> +    minItems: 15
>      items:
>        - const: xtal
>        - const: sys
> @@ -61,6 +62,7 @@ properties:
>        - const: gp1
>        - const: mpll1
>        - const: mpll2
> +      - const: mpll3
>        - const: ext_rmii
>        - const: vid_pll0
>        - const: ext_rtc
> @@ -98,6 +100,7 @@ examples:
>                       <&gp1 1>,
>                       <&mpll 4>,
>                       <&mpll 6>;
> +                     <&mpll 8>;
>              clock-names = "xtal",
>                            "sys",
>                            "fix",
> @@ -112,5 +115,6 @@ examples:
>                            "gp1",
>                            "mpll1",
>                            "mpll2";
> +                          "mpll3";
>          };
>      };

-- 
Jerome

