Return-Path: <devicetree+bounces-271431-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MGqYIj1GqWl53gAAu9opvQ
	(envelope-from <devicetree+bounces-271431-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 10:00:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2509820DDB7
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 10:00:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 80FD730ACF16
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 08:57:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4AFF30F808;
	Thu,  5 Mar 2026 08:57:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ZvN0Twss"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C74E5373C1E
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 08:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772701031; cv=none; b=Ny2By1npksBm2jdODUwDOrsUnzfDfUUSPpPM2HyFOxCQGoGmoFa0946CZt79TXMkx6wCNIYBWGfSjeI+7KHRddOeKFjoS/PASd2u+qVdRtaaMMFeWNiJDhiDwuKJBiu3udvC6ODR1E8pbWECSQ1EGB/Z1Uz6hWf0rXPkkrnaSoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772701031; c=relaxed/simple;
	bh=IhuoGE8oRqe1Ym/GsN164uTGYIIELvzj/f6GldWcJdc=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=Fgctj5svHYGjMnJdnYrotz38I7VwEqh9iWYfqngd8AbgN6HuMjWlEdbgsBWj3qemkp3erfaOZLYyrvqW5h+vzK3AwgmmTgNqNITZnqbvROsk/zcZ7kaXisY+kPQyTJKszC0A3QSUsfpfZFwHIxXtTQ8xY+1ptZjXD4FVMb9tE6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ZvN0Twss; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-439ac15f35fso4636867f8f.0
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 00:57:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1772701028; x=1773305828; darn=vger.kernel.org;
        h=mime-version:message-id:date:user-agent:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ocIav81eGlA8J7gguvP8abYVPg8GbAkn/vs4f2boCyo=;
        b=ZvN0Twssfi3ZjkzPInduLpGLbE5kc2hxqZf7F3+qWPGAyWfKpqAe/1iJvtES1qJ6Xz
         fjCYa/s/GVJgZxqGBr6wXlv9rxOkH7GU+il1bjzluZMTciQ/bSl6NntoD1tzOeJ7I4Fb
         fBwiYS3E8onwBWzz+16yDwcN37t8PuPwx778OuHpY39/eFahU6tywIhAlPv222N+AUX0
         dGHUz3OARjQMHNAk1qrx+Z/tTLbwpJH8Zu99DO7E66+AFRNPVz4FnjXVj05w/f5zBkKO
         amklZsxK8iRP6l9i6Mwls9AmURL2TNjMa8HFWkOsSFbwY0uEyTYwlYNlMVas/urHxUCW
         8WtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772701028; x=1773305828;
        h=mime-version:message-id:date:user-agent:references:in-reply-to
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ocIav81eGlA8J7gguvP8abYVPg8GbAkn/vs4f2boCyo=;
        b=D1dn1H716ph2DvvJnDR07lfVvt8wEtHr5TVfSNJwx8bHkjedRiRJo3NyLNjcuXADci
         7MbUS7eP8uPkskLifDBD7LW63Ck1nTdLLWtd9v7zZap8OdCbkVanF4VH4K/ax855ng1g
         MD8dmj5nnmCsiK7Nj0TiI7XafB6E+vDcpCqC0uQHxHkl92XgC29a2xjO3sJjCisuCanb
         fAKTgMTVz13jfiKL5vupKUeMV1viSkg68zvdOl97fei5JR/m/nleVDuGSniiom0ULccF
         R3egE/1fVLgYA8vbsTnmiGd5pPJWEiNjQh/UAAH3z1Ke14Z2/zZWb3sJiLpyXT1cAXO7
         iQQQ==
X-Forwarded-Encrypted: i=1; AJvYcCU/xO622xMZ8FuiABcZLu4rHQxAUsgd0TicUBAV3gnV8nKNIC+8dah4p2/Fn6XaWRzISQnRcSaOeADy@vger.kernel.org
X-Gm-Message-State: AOJu0Yzzak2cYF8Lfqr1OyDaaTDh5RLD/831bO6/s3qB3FnC/B2MiNeq
	jAJtUY9WpSQjQuZ/mMDqxQWLDMfjbcsx/iIcy+lW+YS+52+0CdWLVZoRNHZ+n++Mb+Y=
X-Gm-Gg: ATEYQzxs8cUuC9R5KDPysxwf9KYM5NMemkBOcRCVK/UwpGFo8CgB0H6VAWgqPmY/u6r
	uq38sHfOKUJmRq/QooHgMaxlZ5INn9ecW38kr6sFaekoWLscqQs8sgmzGBHWlnXKEru2U+9Xu5W
	5Svo7DvXar+3r/3POkZjRP0z/cav8DRng63FOywFG7QKzuAVLxYMPT6hOzApFzVRfzCqy7fjzVZ
	wHkb0eZ+nQjE2Es69ekncPVODoKA/zpJJuzc/XJr/lGIxAkcPjtwR4qqd5wj4+vqH0VApvBHFWM
	NgwEDTmVUExYN7scj/WNVdxaFbhXvgD9pqaOEYtUFcxCSzkrJuzZxoZvA+U35gznwz7eiVFNuMC
	UZ/9prE0fmeK4ab1QVYBOdYUW6GbFjCDeoLJ9+4MDPAZn4ovbUsW6z6g2j1y10t24+wfp+Wf+DF
	cnWiaJwIRBrldawLz6iVhU
X-Received: by 2002:a05:600c:1d0c:b0:482:df17:bbbc with SMTP id 5b1f17b1804b1-48519874e2amr76440305e9.20.1772701028139;
        Thu, 05 Mar 2026 00:57:08 -0800 (PST)
Received: from localhost ([2a01:e0a:3c5:5fb1:5595:8450:af3:bbe3])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-439b485a0b6sm32442608f8f.39.2026.03.05.00.57.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 00:57:07 -0800 (PST)
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
Subject: Re: [PATCH 1/3] dt-bindings: clock: amlogic: Fix a typo
In-Reply-To: <20260305074328.639993-2-jian.hu@amlogic.com> (Jian Hu's message
	of "Thu, 5 Mar 2026 15:43:25 +0800")
References: <20260305074328.639993-1-jian.hu@amlogic.com>
	<20260305074328.639993-2-jian.hu@amlogic.com>
User-Agent: mu4e 1.12.9; emacs 30.1
Date: Thu, 05 Mar 2026 09:57:06 +0100
Message-ID: <1ja4wmbqn1.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Rspamd-Queue-Id: 2509820DDB7
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
	TAGGED_FROM(0.00)[bounces-271431-lists,devicetree=lfdr.de];
	TO_DN_ALL(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RSPAMD_URIBL_FAIL(0.00)[amlogic.com:query timed out];
	DMARC_NA(0.00)[baylibre.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,baylibre.com,googlemail.com,kernel.org,vger.kernel.org,lists.infradead.org,aliel.fr];
	RSPAMD_EMAILBL_FAIL(0.00)[jian.hu.amlogic.com:query timed out];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[jbrunet@baylibre.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,amlogic.com:email,baylibre-com.20230601.gappssmtp.com:dkim,starbuckisacylon.baylibre.com:mid]
X-Rspamd-Action: no action

On jeu. 05 mars 2026 at 15:43, Jian Hu <jian.hu@amlogic.com> wrote:

> Fix a typo for T7 gp1 pll.

Patch title is too vague

Credit is due to Ronald for finding and reporting the issue initially.
This can be viewed as a clean of his original patch so the change should
have his Signed-off-by IMO.

>
> Signed-off-by: Jian Hu <jian.hu@amlogic.com>
> ---
>  .../devicetree/bindings/clock/amlogic,t7-pll-clkc.yaml          | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/clock/amlogic,t7-pll-clkc.yaml b/Documentation/devicetree/bindings/clock/amlogic,t7-pll-clkc.yaml
> index 49c61f65deff..b488d92b7984 100644
> --- a/Documentation/devicetree/bindings/clock/amlogic,t7-pll-clkc.yaml
> +++ b/Documentation/devicetree/bindings/clock/amlogic,t7-pll-clkc.yaml
> @@ -72,7 +72,7 @@ allOf:
>            contains:
>              enum:
>                - amlogic,t7-gp0-pll
> -              - amlogic,t7-gp1--pll
> +              - amlogic,t7-gp1-pll
>                - amlogic,t7-hifi-pll
>                - amlogic,t7-pcie-pll
>                - amlogic,t7-mpll

-- 
Jerome

