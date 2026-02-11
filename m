Return-Path: <devicetree+bounces-264666-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4GsUNoBFjGlxkQAAu9opvQ
	(envelope-from <devicetree+bounces-264666-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 10:01:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E96A3122805
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 10:01:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C1F19300D61E
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 09:01:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 993E932E696;
	Wed, 11 Feb 2026 09:01:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="LFvReyfy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD543382CF
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 09:01:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.48
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770800501; cv=pass; b=jVxXOSFwPb88wWeydk+EBK03t2a4xrQUf6sQSic4khkVVCSHgt9kLVtPQ6R+iNMZE+Udq6p9XzK6R8VXYUjrW/ezYZtUlRplI4YtokiBQQDvTY9ZPR2FbKwkLKO9VQBsrxqRmIZFS0q+zcP3LeyFw7AvAKPyv1Oeint47uxG3yM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770800501; c=relaxed/simple;
	bh=IlqKUyiN0U3VYCZSh5wBhgPjVtteYN5T3q7z1E8Zpjg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GjZpJCAyneaICjPd9DTxi85ULHFmLvuGE4wANVXkoRMPFq6WMJn52KL4Si3VTqQz9+kKLOnoplWU9ARB8EzilhFk0rHMuiDL96yYv8LezlsNuQnuIzdmGtKzcah/YzLPfItHPox7R/fkJTwGpMmgPI48FF33XSxTDTogOW6DVIg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=LFvReyfy; arc=pass smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-59dd3e979ceso5726341e87.1
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 01:01:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770800498; cv=none;
        d=google.com; s=arc-20240605;
        b=KjpYdWvGffunQ5FUg6s8IPj8jxrf78iZ7X5abk2c/PlI/vozqdwc+mwzNZjmtUJcA2
         7vfDJd6gLQQ/SW/B2azw4TlKh9VXFkIH5qdubs7qj55cDc/FD0k8OvfII6WsmJ4nbIde
         2LoHYQLUyUUs5cJeoZR6IHbQt0u3DTKAhAQ/4UTh6/GyJ+4HigFJrVMlAiBKrxe+2tsf
         Fz72uT5fja9LkdYisW28u1l1d/qjh8lF8kFBUmDhehifymbIs7K/W98awDWaXmiW8MaS
         QIkfC/dipqntW7asaWbhNugFKhc6gwxmO4kzWAYNg+OTdamkd4txScS+ZAoL2mtTM1Y5
         14Gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=IlqKUyiN0U3VYCZSh5wBhgPjVtteYN5T3q7z1E8Zpjg=;
        fh=pa7Zrnn0N3/5KrOs3fPY0yl3Ag3z+pIB9PqWTI7P5D8=;
        b=S9/RsbL1VeFTuTmuQ/thkJ1eUqky/RVx6WZIKZdNRrbsXQJ3LIDtqr94aQ6VjGn2dd
         TUzc/xiPvVC2ozhIfubN0zWPG62/h929VxHkoHw9JsVQUZ7s6DL4O3HhClDP6sxOYbFO
         rUh4DHihnVbnmVbT7udZM/Nm+TyOubWssNmeNNfD6IRByTT3GEMgSM6Af7XXNfevwm3t
         ED4Q2a7TalfeOPwQBX+d39FKdedZUuVO0VUCNeq+/Mu/4dbYagFr1r5IKiVPJZP1C1Ra
         IpV3JVX2LK9EvGKo0IN7bqG8VfSf7J2w6XtogJ1pdCFWZQp53ICEb1x3Q6qAMfiTVIku
         HCfQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1770800498; x=1771405298; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IlqKUyiN0U3VYCZSh5wBhgPjVtteYN5T3q7z1E8Zpjg=;
        b=LFvReyfybb5gXmVd44pWqdRVhjd+HEfNL0yVWph4vnQwsTzsud37yJgjRPy0Ub8600
         0qvANCIQhLp19N3zhImUixJGLzONCSgi1rEf0YrG5oaxlE5cxUS93JZdjE47r0vtIhh6
         Dj2mXFHy97aK4U8a+TS4j3gXzx4usOtERmHy8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770800498; x=1771405298;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=IlqKUyiN0U3VYCZSh5wBhgPjVtteYN5T3q7z1E8Zpjg=;
        b=uJeK3Qt1rDc9Y53akN53SqQxdka1u2r1kzS61DS0kD85wRFMll13voSiZ/QQ5EbR2J
         ozWv9haS7oS7ioVSF9Vap3InZmaCsst5N5vXjCI5/Mj5s5CRSreTlOccZbAvqZLEkAa+
         0kRFZeUlkc67tmtZIOR/RlaZcgPfeOsDWJh1YqCHVx/BTXKRLooznS2Sb7hZql3SxvYR
         0x7zZG8GSxtDFvD83IE4HPW3ysfg3vuPFF4LQz1GsHKwacxS/7spMsr7x7YCjs8PFKcI
         YkOLxD4E11npTVSZijki2KcGQ6wSG/W4mVk03CmiuNmPuxlijmaSMSq/Vw7aTzq/RBJ3
         Snsg==
X-Forwarded-Encrypted: i=1; AJvYcCVW2zHija6mrQx1MouAFydCxt0RfnnhfLfBapKOg/eKnnV6wjfCF3X7+JSWpejB4YwjLGaeTf9lisc9@vger.kernel.org
X-Gm-Message-State: AOJu0Yzd0/aGg9CsOwUG6Wwr8fHDIoQE9rdS0xlQVOSJzYXiw6OGPKgz
	esOvs69TSKeCOhMejeCbbw0n/SLW8nS9f289NeX8xaLeYZ3W7+sVDs3I1Qko2JLlIi2GvjrYQy8
	qNcWkT2cDgL04c+KYBh7pbxktXKfVEwE1oG3Rb1JRLPueK9q0YOo=
X-Gm-Gg: AZuq6aKdMka9Heige3PmwjsLp6kDCwr7e/EjO4XKWNLTZVrcThb1QhWv6HiCzRFQkRA
	EaAvv7Shjtaf2vqATXj4JBNmBAHVDhIYh022CVveKEfzmO09LKSSuWvSP3W3dk/XwVBt5J34v4b
	uituE07ga8iIb5VXIkB4f3e9LHFk85ogQ6LDqwPxdHgfKbwwdEu+vD5+/Mgm4ubdug5jToCbjf0
	qrDtwMBMgv4vC9rGgTl/l2ngoZDxRwgPbaH4eN98MrYh9W+isEvzaQf4aqo1o/WC0OSoJu/vVv4
	zzsXl4gWhRi67xc/eUSlo8In+FhTEYmI8C9N
X-Received: by 2002:a05:6512:12ca:b0:59e:1954:1d3f with SMTP id
 2adb3069b0e04-59e5c3f0c07mr635102e87.44.1770800498017; Wed, 11 Feb 2026
 01:01:38 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <8fa8ec500b3d4de7b1966c6887f1dfbe5c46a54c.1770746444.git.ryder.lee@mediatek.com>
 <69521aebefef405bad5117d4d5d5fef4a5dfb7e8.1770746444.git.ryder.lee@mediatek.com>
 <20260211-miniature-chital-of-plenty-1a71df@quoll> <bd4da0a8522db2991ec0844233efe068323c2578.camel@mediatek.com>
 <b00c8c18-930b-4cb9-975d-b15118bfc854@kernel.org> <0dceffe2e1344830c12bc1f6516d13c7bb488b99.camel@mediatek.com>
 <23561f00-9f3f-4d4d-81ae-aab9958bd797@kernel.org>
In-Reply-To: <23561f00-9f3f-4d4d-81ae-aab9958bd797@kernel.org>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Wed, 11 Feb 2026 17:01:26 +0800
X-Gm-Features: AZwV_QglW35gBJXxqkqDaU4LG31ARe_Nwoft0XmJRDrq9pj3jspIahr0OV8U4wA
Message-ID: <CAGXv+5EY=8Xta4OdnS9Skjx3Ls3ZnW7oNS38cK1Ch=wL6JJJ0g@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] dt-bindings: net: wireless: mt76: clarify backoff
 limit format
To: Ryder Lee <ryder.lee@mediatek.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, "robh@kernel.org" <robh@kernel.org>, "nbd@nbd.name" <nbd@nbd.name>, 
	"linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, =?UTF-8?B?QWxsZW4gWWUgKOiRieiKt+WLsyk=?= <Allen.Ye@mediatek.com>, 
	"linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264666-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[chromium.org:+];
	RSPAMD_EMAILBL_FAIL(0.00)[krzk.kernel.org:query timed out];
	FORGED_SENDER_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wenst@chromium.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E96A3122805
X-Rspamd-Action: no action

On Wed, Feb 11, 2026 at 4:41=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On 11/02/2026 09:33, Ryder Lee wrote:
> >>>> Why this cannot be a schema?
> >>>>
> >>>>
> >>> Well, actually, it's already a schema. This is just an expanded
> >>
> >> Where exactly?
> >>
> >
> > How 1T1ss is used across different generations is what my example above
> > was talking about.
>
> Where exactly it is already a schema? Please point me line encoding this.

I think what Krzysztof is asking is why can't you have different compatible
strings for each generation (connac, connac2, connac3), and then have
conditionals in this document to describe in proper DT schema, not text,
the length requirements of each property for each generation.


ChenYu

> >
> >> But if it is, then this patch is redundant. Don't repeat constraints
> >> in
> >> free form text.
> >>
> >
> > Alright then, let=E2=80=99s drop this change. Felix, please ignore this=
 one.
>
>
>
> Best regards,
> Krzysztof
>

