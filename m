Return-Path: <devicetree+bounces-275724-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kLpTFhF9tWlf1AAAu9opvQ
	(envelope-from <devicetree+bounces-275724-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 16:21:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C56A828DA57
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 16:21:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 511A0302335B
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 15:21:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 553A926ED4F;
	Sat, 14 Mar 2026 15:21:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BmT9n7xJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 178DA23F431
	for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 15:21:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.160.169
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773501709; cv=pass; b=OqYdetlIkn3kZGT9/uCtwojlwpVPisdTYfx0WQcHZKCvqexhFBCnVVz6+bqp4i8PAVHLI3LSnmWCaXcoZn+7NAlBWb9cM1/4qmeF2dq9JakcqMeAwbMGvg/pVC0pdvUtdBx+4tJdBloiM0X3TFHHAwF2b6p7Be5DseioXPtMXSE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773501709; c=relaxed/simple;
	bh=79yloG2S6LSxDMg+2dBq+50iWkXEACUaWo+PxUDAKzk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=aku2P1AFd3HmqIo8GMykUabDS0PSmow4Hs91R/abFiAJTMfddQZocAqsWU2uv9N1/nNxCftSpm4R616oRceyEA3CPY83DdV4bdiZ01CoIMJ+uufqlSc7BWUhuaSTuzLk6Q93AWwMD1E+qJbHG7838rzsCWuP8TohGud6DsJsR0o=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BmT9n7xJ; arc=pass smtp.client-ip=209.85.160.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f169.google.com with SMTP id d75a77b69052e-50904a8f421so29505711cf.2
        for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 08:21:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773501707; cv=none;
        d=google.com; s=arc-20240605;
        b=B8KxyELfTVJK1Q+6DfXiSwfHODXnPGyRMtRVpZ0js7WNbqLLowTyIZ9Lg5nYcRgAWV
         pM6JqK495sadByhquV4GsadgDT6Q3kA9mXa0soFSfjznYi6Z51lb5yLZ2lbsv87kXeAj
         tVkEV+DH5etUrKfAkYKWWdg3iq+3otCz2bQj07Vxt8t9xjLbnF6TSIjmaUDY976mgc8V
         1t4ZMz7/+pULVHNaW/buD1uqO/84zrtaJbRaqFKwjxMVwg0wI7MxkdMUsoXxa6BaP3nA
         OnlMjz5dCCTPBB2RWzWBm4lruD6ktC7Howr1fJtpMG356mAmQmAYVduOEttGZ9pZsc6/
         ea0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=79yloG2S6LSxDMg+2dBq+50iWkXEACUaWo+PxUDAKzk=;
        fh=RZd/5hl6WyipU0tiPSoLMrZcz54N+vbwby8sVBGGUuA=;
        b=dCGiRsxfyKAMC6dENWkDvFjXG/Qs6GQtkhDYEs+m75ZVpnMH8SHChiP0sDdX9Mm/JQ
         GPky86eoWtlQicmOGmjSu/6bI63ksMjlwRkYx3ao2m5Fmy1QR2UTN6L0F/B/7m2h181B
         2aXKb+zt5eiQqKNLY/YWU2uw7R9+ty5Rd9a3JaNobA19iyzRYnEF5jG7tRQ+iVK4B3gT
         s+pg6lqZUxCNqfS72iMoBZYffffm86u9aUO9VvBvXNkhLyF/mZ3mKWRT8cfLb3NlYeKe
         9M7MkwzxZS0Hm9rNxo5+Ups6r3fYpxrM5SfsO0pmrX8Tg4E3kM3GHkW9VSWB3FsYZHq6
         nUVQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773501707; x=1774106507; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=79yloG2S6LSxDMg+2dBq+50iWkXEACUaWo+PxUDAKzk=;
        b=BmT9n7xJh99ZqVSXMzFaeID85omvM5ddeVjkJc5Eciy3oTCKSpGMjfqqaOjklumibm
         SKI8UENCzzahjbzX8freIGg/VQmeR+RH0q1Kw9DGMFk9Mbh4DrvP++MsOJwwF2vEIODu
         WLY3d23rkrGrtnPNUSzHiis5kv2lBmFuex4qdnDkzVhlqsu3xWC8rizXCikthU3QYPXy
         vWho4M5bq3KopruvaB6w1cz0JzOMvSaY2fJYRU9rU6I2VPgohB6ZbUwVHgU7VqT2SLg2
         0kaEkECDCVBEKCqOpe/EaBVWH+gJACal/7ptmYpKLG8n0kju6Ox1oTZGrRNERPfp0O5z
         5IoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773501707; x=1774106507;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=79yloG2S6LSxDMg+2dBq+50iWkXEACUaWo+PxUDAKzk=;
        b=OVq90Qb+AUGS0xxETESgIlhXuOiE+txmH+VZEbcwltrUgJ+fvQZ7uidSYNLhUg9fSc
         38jMebqO6yM1kELKMuubF9HJ2lZeDBwf6G4/qOJmIJBu/V2saRoE1yeap2SJRZOFZE0Y
         M8I1Cvj5ai2J5C/IHJeB+q1J5WPZ+ge5qEJ+cFqFWNQ4Qk8BhG5ZvkLy3qySoRl5pN/B
         A5jW9sTJLVlk1kH+A4h7JT9KXPfHUKjeJbsU/8VwbMwI3JUcQTp0nbRzB626/kdTDIx4
         xz0xLJj1O8BfbM6am/9BHrdpQA2NIEoHGYTMfC2iaQc7HE4eBKHIKSzpva/7iONRRHBF
         wm6g==
X-Forwarded-Encrypted: i=1; AJvYcCU+lr5gjmdBZa/MC6l5l+EAsx7+fnFERuHWPmxieTuW7KQoFBo6O05hY5rkMV49OLVe2iCsnuCvqCMs@vger.kernel.org
X-Gm-Message-State: AOJu0Yye8vhATRNGXD0qG52Oc7OAWMQxgkZjC+6qMbX10paaj5iS4Sih
	dDkGPX9FH2OM6fwdOI3Qyh02q5jBmF+tdJf7QQkm6LkFA9BelXrQ6gOHzBAW3b8qHC2/ztdeigV
	mqCFmyiGRJ3ebOas4iUyNZIdYD/LMrII=
X-Gm-Gg: ATEYQzyHKetXLFnBpskRPcDFdsrc1ogRQ4IjpzgoDSWvcdph0Hf6yoMRlzoygiyLphn
	rHmkDkVhvEPzSZIbHd9nM5ksVDHm9mFfpprwyijtIaV9BYlQJBNDfUTBEQFkVZ/tZuCWC6ntCrq
	Qh6bO7RrWv4k+fPawkaAARReBkXeQpCjcZHSaU/3gWCx3tTVb/NB0Z2C/BXl6ciQ/OucUTjENxw
	2QjTDMEqMiLWoHqf1UEmxLG4DqAAvt2vD3Ql96WLixudJIy0EfiLMdb9Zpv9Cg9I94p3Zk3VpTQ
	y6vng8M4
X-Received: by 2002:a05:622a:48f:b0:509:30b0:831e with SMTP id
 d75a77b69052e-50957cd8e8cmr91300511cf.21.1773501706958; Sat, 14 Mar 2026
 08:21:46 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260312041533.187553-1-akkun11.open@gmail.com>
 <20260312041533.187553-7-akkun11.open@gmail.com> <20260313-cunning-fresh-rattlesnake-ab8087@quoll>
In-Reply-To: <20260313-cunning-fresh-rattlesnake-ab8087@quoll>
From: Akari Tsuyukusa <akkun11.open@gmail.com>
Date: Sun, 15 Mar 2026 00:21:36 +0900
X-Gm-Features: AaiRm535EmprjKZQc-5oWppPCZE2tY_D2F_kXvT9geVdj9eW0363jXm8lhZ_OXM
Message-ID: <CAKr_iV4m9Jaxv3SCR1Rxg4ZmKPCkDteVaLZNCJo+tjqhX0=6sw@mail.gmail.com>
Subject: Re: [PATCH 6/6] dt-bindings: pinctrl: mediatek: mt8188: Fix include
 guard comment
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	matthias.bgg@gmail.com, angelogioacchino.delregno@collabora.com, 
	sean.wang@kernel.org, linusw@kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, linux-gpio@vger.kernel.org, 
	hui.liu@mediatek.com, nfraprado@collabora.com, linus.walleij@linaro.org, 
	mars.cheng@mediatek.com, andy.teng@mediatek.com, hanks.chen@mediatek.com, 
	sam.shih@mediatek.com, rafal@milecki.pl, ben.ho@mediatek.com, 
	erin.lo@mediatek.com, zhiyong.tao@mediatek.com, Jason-ch.Chen@mediatek.com, 
	amergnat@baylibre.com, seiya.wang@mediatek.com, tinghan.shen@mediatek.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275724-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[28];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,collabora.com,vger.kernel.org,lists.infradead.org,mediatek.com,linaro.org,milecki.pl,baylibre.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akkun11open@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C56A828DA57
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 13, 2026 at 10:39=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.o=
rg> wrote:
> No bug here, otherwise explain user-visible issues.

Ok, I'll be careful in the future.

> No, just a churn. This has no benefit, because it is obvious which if/end=
if
> this corresponds to.

I understand your point.
Certainly these patches do not affect the compiled kernel.
However, I found that there are over 400 instances of mismatched include
guard comments across the kernel. While it doesn't cause bugs, I thought
this discrepancy should be addressed for consistency and readability.

Anyway, I withdraw patch 4, 5, 6.

Best regards,
Akari

