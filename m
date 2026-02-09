Return-Path: <devicetree+bounces-264149-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id x1gZB/FWimmVJgAAu9opvQ
	(envelope-from <devicetree+bounces-264149-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 22:51:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EE3D114EED
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 22:51:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 482E6301F141
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 21:51:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47E4D30DD3C;
	Mon,  9 Feb 2026 21:51:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b="FN5hYilV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 302C72FFDDC
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 21:51:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.214.180
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770673901; cv=pass; b=dEehCKdzvTzJqQdPYJzH8O+W7YI6PfhKrk8GOIS0F/aT84Sbl9N4J161TmaV+WgKDYTRW++/isR0E9M8oH8kuN94VeAD1tyVAbN1pgPylTzziGqJ5uOwT7i/MlnX8TRA1KXX9RWNCMlMRtCjJztdnkWwdPVQ4nVV0fw5qLSVMuE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770673901; c=relaxed/simple;
	bh=2VewdTH/a8Z+NvKzA/QEa4w6GhyGSwY/rOP4kQab/KM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=V8pR0JrPXvoKMlyq/LMGCt0Z2k9GaluGkCXrJROFdoewI6mr/GIB+yDzklTjV4g0f/iHdN4dfXGR0/GvbeWNs9T4klVp9OC1Thw9ZyggBwtxk/b3cwe329RcVl7HAVMBJyxpTcm4yz8PvVI3vU13iP9bV8L1ClCjvFnmDwp6yyg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com; spf=pass smtp.mailfrom=googlemail.com; dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b=FN5hYilV; arc=pass smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=googlemail.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-2a77c1d5c3bso650275ad.0
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 13:51:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770673899; cv=none;
        d=google.com; s=arc-20240605;
        b=dhACJebz9w0+gKuErPOdTRd16hES9BRrExIKRHL1ppU3O/KzhYDqlJie/+3eimMqw9
         kWCB7yQ0LpKwNItnqiFnghMJDVLVbkekM+jTCLDhktMJmtTDn0U1ZPDZqKFx23IRXzT7
         p2kNlTznmg+m/HnwGjjoBfY2+b9Id5Dp+OvPMExzem9X+qwosOXxDfU3WVUAQnk8erK6
         343gMtzUesAuNAn7y1mAFPnRNxSJtRR7ZNpFXQKTpwFOZuNwslxEkwUyvWVR5Q5xr+HQ
         e7gTX1hRML4RgZv5Q5/HT3sq1vTELMWw119656ZdsRp8124/C9uPPXHV+sZt9bWgfclI
         X/xA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=LNSmgkK/Xeb7EzbHB5/P9zJvOA3viMToQ8rWOpp8IyY=;
        fh=fcj2ETq4aTgIMPIkSwDA2UNNPl2AtPfIiccuHgvMsRg=;
        b=iq+4pgzorBsE4NsLSLSDFIQANdxF7LqNzEEwLjCMSJh3yj/20dKKI79f8y2K44sl48
         t8Bbp3fgI/Gd1WyNr5kESNMPJ6xXRs9XHVUmVpfeoS8N0SwbI5v41U+9WVB1oUkcidZ3
         pyar3XqXx3ESFVSlLJSmmkNtX0kdaDauh4FTc6D/VccR+TmdTpRBI74pAryGJkY8CKp7
         tRqt6jPNlTA/an3Gv4UM9s3c7RzXXXtGDiH6LbIg0ctHpu9z+oN8pnElQBQjTCEKfCSx
         6/sVcJxeY5lp9pz8MuOdUoDFk8q/+eaOCCYCXEP+/xUBqr1oe8jLzXSIy9ncEBcdUwEg
         HhsQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1770673899; x=1771278699; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LNSmgkK/Xeb7EzbHB5/P9zJvOA3viMToQ8rWOpp8IyY=;
        b=FN5hYilVI5tUrbOwnb1WCTzvPYF7pI/p3juqbaZTNEbLcpmB7pdxF9I6OQdLokEvfs
         Wd9hNb/UQ3Ytho4cZy/3R3RHkZIgvX3GmMJS8UCBGLacRAX90mGeFg95yBdmQSMKHPtF
         0RemVYohGVgYkvkDuKzdNI3SAIx18mYOC/YfjJPLKAsWGQlzYopfV+Fm/F2j7fsuoSXb
         GzGxexE16GZcyLoZbbGZse+uz46Z420x1gjegorYy0Y8+VucxlyglrJrn0mB5m6K69tS
         yuUvk87qqr/J1RweBa/mSN9Oybop/8CcTQY6DZp/H3JgzCrroPKlejzD5bOZKK7ZxyxI
         c98g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770673899; x=1771278699;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=LNSmgkK/Xeb7EzbHB5/P9zJvOA3viMToQ8rWOpp8IyY=;
        b=VTifgmFBAiu/AXbvXY4qd+6Eyf43z9JVSOTfzvb4jZitp2yfcm66lNxwhEifMMJ+Yd
         wjtrx+5TflgfMiypo/9dBh9MwuUFIhra5ht4HIrh4HXBQfOF0Cwv3DKjp6bO2KjjEMgm
         y3O8Ok2QvGaxW6M2l51NUOd9kmJu4AV4Teaw+b1xS+bVo8/NlnNuqEnduq9F12ticT2d
         hpHDLnejx3t+j92ECqwfEhWj6S5BfxJWPAyQfI8f/2Jg/+MvZGR3GRgFIaetvP4DyYtN
         YDUFSU58n6TN9XdQUAruHJE4vjJ4jSTTewlwl2jqFjtIurFv9QGr6xHtlqCK8ApXYC4T
         JEBg==
X-Forwarded-Encrypted: i=1; AJvYcCWV3V1lrWuRA34qAwmWzNzu3u/jAoyGRy+1km2qIrTFGRwfijOmIv8JYCEV9O8fcGsnAvgeiq13555H@vger.kernel.org
X-Gm-Message-State: AOJu0YxRaeWRdxguHOT3yA0e9NREKec/Ok74SZSWyWoYc14BVeoelQh0
	T3gD8wh/wTR/epOApWlApt8RltMbyWsUU/jVoi2KhwCIrrkiPid1mdXyo+sUrE4vMvMH0Mujvwz
	8zEnpAsJ1RwjmSjRlHa7FkfCQ8jzvd+k=
X-Gm-Gg: AZuq6aLMuf6TDQORiRDzDya/q5jX/dPPheX8WMjcYSql7+T+96gCvTWcQn2YLq2j4qC
	Q5Y2HV71Llus1gL3InkgkE/8my3sguX/m4/kkce+vGPvReSXGxJWQxiBV8ULkz4t7gP6YEhZIM8
	KP8YUun0rYoJyE4Xitl4LVKrp9/fBrzMWnjlP3q6vouvMWazJMc61RWi+s0W1hnmt/G5+AW5YcT
	sZRykxfq2SlUOp+Ja1gYUWR8i8gNEVeP3zeO/n1o70bTO3HGHFC0GKDkJaGPMXjqTixeFUnWrSk
	BQco3baQM42BlMW2LEdKeCy+pA08
X-Received: by 2002:a17:902:ce91:b0:2a3:1d78:7505 with SMTP id
 d9443c01a7336-2a951924f55mr125670905ad.56.1770673899458; Mon, 09 Feb 2026
 13:51:39 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260209-a9_clock_driver-v1-0-a9198dc03d2a@amlogic.com> <20260209-a9_clock_driver-v1-6-a9198dc03d2a@amlogic.com>
In-Reply-To: <20260209-a9_clock_driver-v1-6-a9198dc03d2a@amlogic.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 9 Feb 2026 22:51:28 +0100
X-Gm-Features: AZwV_Qg1HJR4QgLW0r7lzrQg8qpKm_1pOVerBt-Qr4quSkD9eqYUhMC2xIzMLWk
Message-ID: <CAFBinCBXFxefUkNj3sqUdnTz7vf72jV_FkCP6gd2veTtLHWnBg@mail.gmail.com>
Subject: Re: [PATCH 06/13] clk: amlogic: Add noglitch clock driver
To: chuan.liu@amlogic.com
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.06 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[googlemail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-264149-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[martinblumenstingl@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[googlemail.com:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[googlemail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[googlemail.com:dkim,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 7EE3D114EED
X-Rspamd-Action: no action

Hi Chuan Liu,

On Mon, Feb 9, 2026 at 6:49=E2=80=AFAM Chuan Liu via B4 Relay
<devnull+chuan.liu.amlogic.com@kernel.org> wrote:
[...]
> + * To prevent glitches from propagating to clk_out and affecting the nor=
mal
> + * operation of glitch-sensitive modules, the no-glitch clock must be co=
nfigured
> + * following the specified sequence:
> + *   - When the clock gate is disabled: configure it as a normal composi=
te clock
> + *     (any glitches generated will be blocked by the gate and will not
> + *     propagate to clk_out).
This part is easy and makes sense.

> + *   - When the clock gate is enabled: configure it according to the fol=
lowing
> + *     sequence to suppress glitches:
> + *       - Configure and enable the idle composite clock path of the
> + *         noglitch_mux with the target frequency/parent clock.
> + *       - Switch the noglitch_mux to the channel prepared in the previo=
us step.
> + *       - Disable the clock of the original noglitch_mux channel.
> + */
From a previous discussion it seems that in reality things need to be
handled more carefully as you previously mentioned that
CLK_SET_RATE_GATE is not good enough (the description above is what
CLK_SET_RATE_GATE already achieves).
For the more careful handling Jerome suggested using the clock
protection logic: [0]
You wanted to try it out at some point: [1]
Is the verdict that Jerome's suggestion did not work? Can you please
share some details as to why it doesn't work.


Best regards,
Martin


[0] https://lore.kernel.org/linux-amlogic/1j1pnp5sg7.fsf@starbuckisacylon.b=
aylibre.com/
[1] https://lore.kernel.org/linux-amlogic/1639bb9d-9cb7-409f-bbf8-bfe4a5d1b=
8bc@amlogic.com/

