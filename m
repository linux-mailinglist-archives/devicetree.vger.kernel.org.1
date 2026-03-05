Return-Path: <devicetree+bounces-271649-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iJC+Cn+8qWnNDQEAu9opvQ
	(envelope-from <devicetree+bounces-271649-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 18:25:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FC1021625C
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 18:25:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 99AF630EB6FE
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 17:19:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA9AC3E122A;
	Thu,  5 Mar 2026 17:19:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ApNI+R58"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B30333DBD6D
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 17:19:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.160.169
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772731168; cv=pass; b=X9JB+purDUatH7g8T1QWbxaHLJtJDSeugkxIg5x2m0UQTkvN/A2m99ni1FsiiRX/VHAHa8u3vhepW1TLTbMxywnsxC1zScLyWK35ROz8KfLQCQCxDUTcVOS06Fyp2l2bcW0cqe4IqG9M0rX1w10GvC5ni0tFCAoFeAn2XYKv1xU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772731168; c=relaxed/simple;
	bh=6/v7sICsM5F4xpYz64Tnfvw3weq5zyAxTy0YM7/lebk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GkXxHKL2lQtMHpDdDHxGvvzui2cZyJTo0tEl9dp+q71GEG+tCbpwI3HjGhYh8UH/kS3lvADkzSATk5UqYsDYQhineZjz8CCfQp9k1HlZ0lUUtF6O1n/ajKmC0IjykGlMb+ukHFJfQp4OAtrk262ozjqncpxV5z/EKd9AlSj9P3s=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ApNI+R58; arc=pass smtp.client-ip=209.85.160.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f169.google.com with SMTP id d75a77b69052e-506a3400f30so70553191cf.1
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 09:19:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772731167; cv=none;
        d=google.com; s=arc-20240605;
        b=Y3KYp3KmwK+4nnWfLUHO4HiX6/EzOCeGut7vgZu+klOCkJq9MjMby4NA4ZeaCK2mjq
         lW3pPLDE6Ud0y8/3prSwCyuwI8b3BUblj3rHAJJxh2LBTY9pZRCF1QMYc3DGTjI6qq4h
         bEIfKG4Ja6k5AZtkft/f5DHq+4zgsx5A+CoPQHcu1AtrR8e2vnzYsXmTw+2Hsd6kYFBQ
         M9CV2Q/rmZiWYUQAN5KigZ70SsFb0blN0gfCUe5Fj/a6d/o0aIhRbGhQLOPI4kp5N7CP
         kQP3NPQyoDzT6+e44eA+lcRm9y9PaCpbkDHPXUw0O/PHi8GzPqKsQQeKsbVduSjvoO92
         ohEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=6/v7sICsM5F4xpYz64Tnfvw3weq5zyAxTy0YM7/lebk=;
        fh=ho0MUT8CduZheVOO/7kw2UTvdzpAM6CyEkY5AvY+LaQ=;
        b=TjX95pOHOwedgpPduGIytGH7/iGTvb+bBmXuSU44WY/LY2yRdg/OO+VI58lKmGklYG
         07vv7XG1f2WT9K3SRGVqisRnE3U1ozF7Q+ysqUnOEw6CI3r8QCE+WpbrrIEur6Fsd0A0
         kVRXJhXV/v105uik1uPjEWnTb5gJk9nihuGUBG4jf/81UOr1N9O940ap+LJ6GhSfyfbr
         50cpYfIww79t88LdN4WT/yCG4amOHfugnEfRn7rCJoD1bzwGA9HDmQfpRGWyvmx0kKzl
         F5l6RCkPRE6BJctQ32F7/mV7vYQvMTyMvknbi2KMe7K3QhXYbCbi9HxTmJXpaiPKnUye
         AQmg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772731167; x=1773335967; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6/v7sICsM5F4xpYz64Tnfvw3weq5zyAxTy0YM7/lebk=;
        b=ApNI+R586rYY2ta9aytpzKACNLAlRrq/I23Z90KKMCYSNjL41UfuX6ny0cjftVoFiJ
         JDS7yZp+VGlWIL+usX451sK0ZhqLBGDaZMr/8jm2A9xlgijWOZTm1PJD2YImHkhZSgTm
         PtMGbOThGlhmhH644mtAIN0ChGm+OudJPDPJjBN9XZU4U+1zyPqGUBKjmvNeu44tyvH4
         jWzwzOnccnKFVa5f5XDcRHdRwuWzl/WPn/r4DXzaVhHVhgkCRlb86WayBa9iY7lGpoWa
         z2tU8/kYFPWv5kgYo+OyV+144kBnKj6ovTV5idqIjeGI4rmXO+gMjErthq7oeA9cNFgq
         KJqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772731167; x=1773335967;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6/v7sICsM5F4xpYz64Tnfvw3weq5zyAxTy0YM7/lebk=;
        b=i5SC/iTME+xvNlwle6F4YlJkgdND6/C4XodymhUgpX1Il+3yHc3dP0UbxSpS6RApvm
         leytm9hRE8ZK3RzjtqS8xW1PQY5SWss1ovfTJEDERZ9a+ZnvgyNjeQqf7Pd0LGL3XWHW
         nx85OtmuGgw1wI3t5kdaXVXd9qqiMhQ8A5aCsGcZYV6TAJbNRwuiThDlTvxGx1yDDf/C
         B7Avc4RrKcdfhgfY76st5uUIHSvgBPxUhb7XhxlB39ZzYRZZB6jnc/UzFSRiTZIjHzSz
         GqatI3dZ9iTOu+/gso49/g021LqRKsmlJXY/b2MGXQ0jxejkz0EJQKnE7oebir5vLc+7
         mkvg==
X-Forwarded-Encrypted: i=1; AJvYcCWjFZtv2YzHOhK4o/OPCZhKqBo3MH16+hu/j+Rkc2qR9oL+mkBRDSvkc+SA5wTS2Ux9tYhCXM2wlexm@vger.kernel.org
X-Gm-Message-State: AOJu0YyIOsQpxGQkV+aRKBShjGtD4AJF826coGGs96KvCKIkOu9l2O7o
	RtPVO/NfpAm7MF+aIMmj2RkBi64P+hNcTkd5RtjD7c39XwxzSiSg7CWFlpb4/tPVLJPdfTWXjTC
	ytK3/VKBJtP/D35yLQXHGlOX3Ougy1Do=
X-Gm-Gg: ATEYQzxXX7Nb5bmjOh3+s+NcSv+ESQwMvy67Y7MbjGe5RX0GoSSHt+sE5Q8xp3WayDs
	yPxCTcDOGfdwRE+mTw7hhhVzAQ/AZ7A8eStHh4BzxDvnuUO5vwgBlr6f29canudw5/xpqc5ymbB
	M+5Z1FKaaNeMJTVdniWUtx0mZTuKHzYNTcS6qMAUq9x4VyxOoonwTV02K3VtOBUe8dq5bzM51Xm
	0skTUxfCwhFj2sH846S5PyilDaQrTFaNMpub2PngA2boEaExD+jCk0w3C2GetG2jTWnOYaogMWk
	rFpHkkPATAagApI/qkZcS98LUg==
X-Received: by 2002:ac8:5f91:0:b0:4ee:26e9:98ac with SMTP id
 d75a77b69052e-508e689f8f4mr36540041cf.16.1772731166518; Thu, 05 Mar 2026
 09:19:26 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260304192417.818211-1-akkun11.open@gmail.com>
 <20260304192417.818211-2-akkun11.open@gmail.com> <e8c587e8-61af-4ef7-b7dd-7d8da7b9aeff@collabora.com>
In-Reply-To: <e8c587e8-61af-4ef7-b7dd-7d8da7b9aeff@collabora.com>
From: Akari Tsuyukusa <akkun11.open@gmail.com>
Date: Fri, 6 Mar 2026 02:19:15 +0900
X-Gm-Features: AaiRm51aWSWGaLr6s7woc0EGoF8GjUlJU07ZiwNqeQX-qHV6fBA6LMgRCpFcnX0
Message-ID: <CAKr_iV5j4fWSUCV_1M3E+cejXp0P5H8F2ah19=kOd+s=XFDCBA@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: mediatek: Add Lenovo YOGA Tablet 8/10
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	matthias.bgg@gmail.com, sean.wang@mediatek.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 9FC1021625C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,mediatek.com,vger.kernel.org,lists.infradead.org];
	TAGGED_FROM(0.00)[bounces-271649-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akkun11open@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com]
X-Rspamd-Action: no action

On Thu, Mar 5, 2026 at 6:49=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
> Did you really test this with dtbs_check?
>
> test with `make dtbs_check` before sending a v2 :-)

I think I did it, but I may have missed warnings or errors.
(I was sleepy so I don't remember much, lack of sleep is very bad...)
I must check dtbs_check before sending v2.

> ...also, is the "lenovo,blade" really used for anything (bootloader)?
>
> You can either fix that or just remove the lenovo,blade compatible... but=
 please,

There is no user of it, I'll remove in v2.

Thank you for the guidance.
Best regards,
Akari

