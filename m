Return-Path: <devicetree+bounces-276376-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iEGqE4dguGlbdAEAu9opvQ
	(envelope-from <devicetree+bounces-276376-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 20:56:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AC99629FF49
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 20:56:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F29DA301DB95
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 19:55:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B2113ED131;
	Mon, 16 Mar 2026 19:55:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="m9PevT2p"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 514A73DC4AB
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 19:55:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.51
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773690936; cv=pass; b=RmgRnKVFE35OZeqGoaUz6M/3bcT2jjFkdfTIFztZMyUMjVkttlvErcoMumJqbHZiEE3HytO7GJkJY5V9+HPoPESp36YCzewLRYKLdOqtle97bfChfMnUPEQ4TLCasVzq4JiFCO+v/mOJEhv9Uemuaarb6HhI8VtOmBkle/gEuAo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773690936; c=relaxed/simple;
	bh=exR6/S1P6dU/MDkurSY6eHAE8/Y0Wvpc5icWr9EjFSA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=vENqEZqazfHKSYAt3e940BOjMp7UebABbGK9cn0OKQpp7VyalTwPtG3VTY/H1SFPf7pIj1xOz7huVmTpJausjhVGhhBRP5G044/E+RwrXzP5gbej/ph98OSRaljQ7s+bkHhrfIgnI+AF116jvxpDTjKqWlfatF8KmcdYx8ql6yY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=m9PevT2p; arc=pass smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-59e5aa4ca41so4573868e87.2
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 12:55:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773690933; cv=none;
        d=google.com; s=arc-20240605;
        b=KjxjfS7mAT2ngPFqiggpNBI3g57hQi38b8BKog2rItmwXjqbOpYH9auWqk18uw1qfK
         fHnrUvKU/DwiSDR4uHqoZjEJQXB0NT8xari20Bk4et4WuNxYVnfXFTw0WkMnDwzutC4o
         woQKWESKSH57n3YA4Aq4zxYWT70sqOxc7yZVz5HmjG4JiCG8ZMH92r/0+7QrMY8xNMPR
         AwpftT2zxuNc8n6uhtJqFUN/iyJR2Up1SXnbV1rZxwye0OnD4dsKDAsxsmLn+mOUHXKU
         0qfsB4BARwNqLlOJ2Zvz+1MuvdqucK+jthK84tVLLsaLRH5GhV0fu2wCdiHg44QAYrud
         RXBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=+GT6znZXieN+WJyWcGR1ayq9ux9lzHv14SdC47d9GmY=;
        fh=Cqq2RlW+Ko+Dk9ezqwDGpO4+Be/2oQ18KIwzj8L2gXo=;
        b=hOX/Qy+nUI3DxEvQg4YgNEMYhVYQqbao1ge6BwsDlFoC6MsJiIr7eHsg1sUt/IZBbz
         SatYVBSX0N5nl3sA8BfF9Ro9HrJoDwQPVfJm/WS+F5apNo451wsmRdxF1WszuvBEnETN
         qJBNMklTLCcPw8JOsYhvo74ocIT6p4XrGQ6+8APinxgU6fzDWEg0XWptjzOvuMzrnM3Z
         yIw1MEqDIVxTDeHKRFH89nlrWFdFYe+HNa2jYr1nTQViwdE8HBsBqtSKIL+JXERQOZLX
         Nasi5rvajihoUC7yXEmL4B/+Mx+SAAzoVZQ9ljqNhE0qledlgznmHvUiIXW8FnaOWAuV
         XUtw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773690933; x=1774295733; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+GT6znZXieN+WJyWcGR1ayq9ux9lzHv14SdC47d9GmY=;
        b=m9PevT2ps8K9uep0DRP66Fe0e5a3LPMdy9m2rrlDR89HHO0v3rA8ZRNTqVHcixiZ8p
         bTbVX9Cf0ezMW3fd2EF6jXOD9HeTwCP2//jaikV6Z1d31+KheVZLIqydqEIOiZRh5C+g
         qK/wPV+9tmvhdoW1sFT+/TP+ht/rfts31WZnBJ0DSZ97d3aQwBOZkIHJqHect6WV6Baz
         d3S92KJBW9EQsLwG0Suw5njkJP0JYz79imR4T0JTlYZgziXX0Vl6fZPJbiwBPFPkirLn
         H4zQuwvBctMOj88iG/tUqSHMr7M8js3c0b+O5MFENQaonnAR2xNUVyckH80D6Ms7GoE4
         L6Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773690933; x=1774295733;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+GT6znZXieN+WJyWcGR1ayq9ux9lzHv14SdC47d9GmY=;
        b=cJ40h9HnEw26D/ecxfKzx68qY+afhn33I1056nhua9Lg05/fUmbVLRzWXKjV8hMOCm
         Jk7x8E3Y/jsLu3GkKq1oAeR498EHMQjZn8teMf2fcjojlwBxKLSoDvjIM1r9rtC3hYDg
         hdjxUmyTtqyXGfjtk4HPpZbzJFAxJ6BoYs5qSADYUcYr+mjrupDvkk4rNhfQKHVvyeNE
         NPoJwUH+lebDu5mQYmZ/lzuMJZ65c4Tk3lgFLuVA3/QazrnZxFYQXB1YyqQC58xpWSyk
         4pBnytQfDHJSAy6uju0E+C+nb6eIkum0YNMkS2TUDXn+SesCRUDLd/LAKAlR+wuxYnZ3
         fCgw==
X-Forwarded-Encrypted: i=1; AJvYcCUVuNI0vc8VCDfNF1zMMDtnsis5YG7Lwd7euK/ujSGBDxoTqSXylgUe/k6ppx/RXC85QInBR9BojTVV@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+jSf/67HHSQK0I2kGgs5P4vSvXJZUVKYrj+ncrBl2D+dvEuIr
	f+pho4EJtfT1b5tpPGukH4bSK8PJ5IBajfobkntkyo8eCljwc45AehnA4ubhyHbSbgxVsIaJUzO
	fEEsIPJYxX2OBB2WyNEmZDj1WJ67dKtA=
X-Gm-Gg: ATEYQzxgzmjudA4e/BQgoxaRmbYNYFnhOM2KwHWWIpGj3YwWz18B3gPRlNrrhwqZct1
	FM1SLMCqdTCE5oyB328NdOMqQuyxqc4U2rqrt6DQQCJ30VvE6BMdH7PhV8gP9ZP3hsDSqhpRezp
	rz9E3ORxNVoz+1UOYd0SFkY3j8nplgj8HaXyWp9CGzsE8geenjZqjx5xNxNI2YcLz9YgWEkGQgg
	9umuzZ2dLgNfHoJ+z6Ycqp6VZQLqTVWTgK6KYM/lfxRfvZhUJ8Vn64N1QV5he2xiht6Wf1Smg23
	bEASl5+sKkG1VKCBMQnya2Vq0EKCtvxDJb/tAgXMZFqC8wunPrq+cd/+w+k3SOLKo0W2HTgK6w=
	=
X-Received: by 2002:a05:6512:63d6:10b0:5a0:4344:a519 with SMTP id
 2adb3069b0e04-5a162705a67mr3198343e87.4.1773690933118; Mon, 16 Mar 2026
 12:55:33 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260315215447.276886-1-piyushpatle228@gmail.com> <20260316-macho-vole-of-security-e549d9@quoll>
In-Reply-To: <20260316-macho-vole-of-security-e549d9@quoll>
From: Piyush Patle <piyushpatle228@gmail.com>
Date: Tue, 17 Mar 2026 01:24:55 +0530
X-Gm-Features: AaiRm52pgTqXpxNrSqYy20MhbWj6W5L2QOpsljgPgd5ge4Ij9NOJat0naNkkygk
Message-ID: <CAMB+xkbevtKHrg=93Wttp1-OQ-qh3UGpW8rxhNoQqQ65tvtBWw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: sound: adi,ssm2305: Convert to DT schema
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Lars-Peter Clausen <lars@metafoo.de>, =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, linux-sound@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276376-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[metafoo.de,analog.com,kernel.org,gmail.com,vger.kernel.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[piyushpatle228@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	FREEMAIL_FROM(0.00)[gmail.com];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: AC99629FF49
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> Please use subject prefixes matching the subsystem. You can get them for
> example with 'git log --oneline -- DIRECTORY_OR_FILE' on the directory
> your patch is touching. For bindings, the preferred subjects are
> explained here:
> https://www.kernel.org/doc/html/latest/devicetree/bindings/submitting-patches.html#i-for-patch-submitters
>
> With these fixed:
>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Thank you for the review!

I checked the subject prefix using 'git log --oneline --
Documentation/devicetree/bindings/sound/' and found that the correct
prefix should be:

    ASoC: dt-bindings: adi,ssm2305: Convert to DT schema

Should I send a v2 with this fix, or can the maintainer apply v1 with
the subject corrected?

Best regards,
Piyush

