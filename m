Return-Path: <devicetree+bounces-309930-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3JX3FGOMKWrkZAMAu9opvQ
	(envelope-from <devicetree+bounces-309930-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 18:10:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A7C1666B342
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 18:10:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=IFFqzryz;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309930-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-309930-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E89CC33DD151
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 15:55:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77EEA4611C5;
	Wed, 10 Jun 2026 15:49:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49A4446AF0A
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 15:49:20 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781106562; cv=pass; b=sUNYvfFpV7A18uQ+ngnpbeBcOQs28hCwxAZs1Mnyx30CHTccEFf1UIIvXgs8lADul8PBY4E43oxffivBF4TOZUxc8APhdx483GWurj2F8HSE4QL0dsh52yGgHDvvzSp9/+IYnajnqSI6dl7pvUS3dwZ5FoVVTEN2/d8iY4MKw4s=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781106562; c=relaxed/simple;
	bh=YeyBR2elHrxfkycuzA5dct2lwgZEFs3Dlxw2M2FOFRM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=exqS0//EG/KrnHZXyJPWpjpCRtkxL3oaplif8+H1+kvad1stTzR0EcSIQn9TUTuzKdbO07+SKlvM69jLqs0zmMUQDoO/fnFuKyHxArZPO83M/VU7OiDwpPqiQkFeJ8A0q+rUGLTqrS9AuRhskWut74lfW/OvV0OKtYuUZWpddE0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IFFqzryz; arc=pass smtp.client-ip=209.85.210.177
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-8421f0e9c5bso3211297b3a.3
        for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 08:49:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1781106559; cv=none;
        d=google.com; s=arc-20240605;
        b=REc4cK0XIvkwlCjBOwLKa2dw2EcyGZ3P7152lrTYajvL+rfHQJvnKEXzUDsVnIewlI
         ew4olVCInY+DooZo1y0xa2HkL4S5UteORrHZZ7piSwC8lv+Ob5Ep7cmFC5kCfsaFSsL4
         gSM+VZRgaKmRelnHpyyfjD0G45nlQk0DN2BsZwAGHxyDP3753yVrOW+7iJzxn8f0fc6c
         tXbgyBqFopiwD2rLr1I02vZr0Al3kyndsvo6bpP/bXhNYwj8ix/Ql13ZOhUsQFQ0moGf
         Gj6kvv3BlgkjHu//2Rk9Fg0wHN4OvrAriivS4DvWalOv2cAwIkBaNDa/ypnNQ9e/UXgt
         Zk7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=OxVkltXdFaXumR8w2ItYv5evLNP9u8ZBM73veR6/lmg=;
        fh=55UxN60C3eJMGnvZowgBlIDTFrghYhokD7W7KCDw2qE=;
        b=bu7sjvFDgzuAICJr/77EIAnVvo4mRYBfDSM2HMSLmIz2yIFQ+2w/JgKl51xaN9acb9
         TXKaHx2dnwkYx478SbnOpmXkrl4i9fbJ7iA+Jvs7sZDqM1wjJoEO8usEnQ+MWFKzyGyx
         m1vdiKgobY6XTs3CD/KWYLuFSg+lBdBnUcpPVHqVw2VD5gCWAqFs+O6wDJR6JAKyR7va
         WUm5j1GhIF9aec8o7q3IXAcXizQMwwyh/yRDvNCN6L+cHfTAiUK3n0Dgc80nJo3JK7Bm
         1eTDkAHAFWThhl4lmJQUYnGwPsSOVqZilS6zeiFRJURMkt3VZK7nmKwCEVkH1lAc+Ro8
         8adA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781106559; x=1781711359; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=OxVkltXdFaXumR8w2ItYv5evLNP9u8ZBM73veR6/lmg=;
        b=IFFqzryz7NLZ/+Pjq9GqTLHwW0lDmfxRJCMIZCDqEKwCaucxlKSbVMZRXkcvg0iZuA
         h1fBVoXf0DSVGd5l0f5vtZSJe9TzHH5PdCH1d8mro72tLt7nb4LWLesqz1ExPCYqcb6l
         V+GPf5r/TRBHsx2djqxWgeusU6555TK7ff12/hMb9oZ4hqcbzZ+XCrDCoNHdpsOhh62g
         qAg/TvSRJzJlSCoFhD1+2eWaa9bEIFbUrpRBGWEqul/Macg6BLn9DDelWLYIEh8ziBkj
         C6QN9iEiel3cJRYCHAKbVf/eNKeZpFgAAtyrbmWLEm57u6trCo77HFrDh7ILE7Ky2Lvk
         5ohg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781106559; x=1781711359;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OxVkltXdFaXumR8w2ItYv5evLNP9u8ZBM73veR6/lmg=;
        b=YyC9VIyc46WVkflJAHphhaAShoOAVTzWORmvbky3UwFInarUs+4NM0B7TNCIBZ9XfR
         i6Lamc7ib+czon39+evPXLo4WosWomv33U6t1s6TOyg5TQ8R9Sj6RxluIA+e4I+EMxri
         outViPLGno7Z4H6JCIoH6zLoax26ZnQ4FBXqIUnZUjiefUBuR2BQn9dDgSZIp5V6nwHU
         VkWeKjhtYj7IJk7i/cz6inYu+/WAKZVmUQWJy+bQ0d78WPCPtl7qS812KaKYscuoVx1z
         bj9Won/E6q92bq+d7QZNirWX0rlIceFB1xnyNC3Odobtlxv+pmI184fOdPlzMQCbw4bw
         b12g==
X-Forwarded-Encrypted: i=1; AFNElJ8JUKiD9LyJd5GwlPM7u3fslNRkKnYVnUyG72wXhfK2iygQKwIqbvHe+zs8XnqHmvthJdK75n5PLnEC@vger.kernel.org
X-Gm-Message-State: AOJu0YzXxXsTwQqn1AEb1d2yUIK3zKHmv3aWS+0TSycupdPbe+eOb2Fn
	NZBqkrCbnRqo8InyYUFUMwRj72pI/8/4/lf+kGmSszI/iRXhk19calsgMFzdiy3UrwAEI04zD3F
	luTk8UsCrdNJ0WP2Q1C29Kl4m9+3UCzMl/Tep
X-Gm-Gg: Acq92OHc9aQzZswyBqMd2aTTzAmezANqHe39lrpDrFMaKCKkAXF6fhU4zL0TUZApPge
	Ozgv4PYkrPL25RU+o4r/1Mq3NamY0e1IwTglzeGLVXcaBqMQ+mNRc3m1xoyK9ENH4+wWjF8As4E
	SnfpzvaZlSYkyX3jQ1B+aDOpQrCcul7Qlt78kQqZofZpua0uz3O7RmGuvq1c+2o6oRHu2ULJ2ry
	FQ9i9PvuAASyFCYdOLC9gBSjsA2YfUy41/N4hTt0DaA8MuwdxuhpRISALtpwyI4iST/QaymUIkD
	HlG/kqSWed33TRgK/I6QUg5Rh3IGANIfOmXKouft2SzTkExLQDRePQQDXXAPu02Ad8Wpx6HhJ/x
	ZF9bM4G8=
X-Received: by 2002:a05:6a00:2d07:b0:842:4bf8:cfdb with SMTP id
 d2e1a72fcca58-842b0f83825mr27414215b3a.32.1781106559343; Wed, 10 Jun 2026
 08:49:19 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260609113836.45079-1-phucduc.bui@gmail.com> <178104804456.232889.7203992010119048881.b4-ty@b4>
In-Reply-To: <178104804456.232889.7203992010119048881.b4-ty@b4>
From: Bui Duc Phuc <phucduc.bui@gmail.com>
Date: Wed, 10 Jun 2026 22:49:07 +0700
X-Gm-Features: AVVi8CfnuLEls0gWL-kPL7vOI8Ak1h2Sin-pMsKBpL2ilAbWUniKUhlFxfreSBM
Message-ID: <CAABR9nEhomppec0TnkE5YnjzfO91K3JHKY38tYe0FQ5-OdsQKw@mail.gmail.com>
Subject: Re: [PATCH v6 00/11] ASoC: renesas: fsi: Fix system hang by adding
 SPU clock
To: Mark Brown <broonie@kernel.org>
Cc: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Liam Girdwood <lgirdwood@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
	linux-sound@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:broonie@kernel.org,m:kuninori.morimoto.gx@renesas.com,m:geert+renesas@glider.be,m:lgirdwood@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:magnus.damm@gmail.com,m:perex@perex.cz,m:tiwai@suse.com,m:linux-sound@vger.kernel.org,m:linux-renesas-soc@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:geert@glider.be,m:krzk@kernel.org,m:conor@kernel.org,m:magnusdamm@gmail.com,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-309930-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[phucducbui@gmail.com,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phucducbui@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[renesas.com,glider.be,gmail.com,kernel.org,perex.cz,suse.com,vger.kernel.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A7C1666B342

Hi Mark,

> Applied to
>
>    https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-7.2
>

Thank you for your review and for applying the patch.

Best regards,
Phuc

