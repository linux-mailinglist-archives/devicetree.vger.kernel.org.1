Return-Path: <devicetree+bounces-264151-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id B0pqCthcimkWJwAAu9opvQ
	(envelope-from <devicetree+bounces-264151-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 23:16:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 85495115013
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 23:16:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6652F3018C21
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 22:16:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 245B630E0F1;
	Mon,  9 Feb 2026 22:16:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b="gPJT5lg/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 113112EB847
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 22:16:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.214.170
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770675413; cv=pass; b=Xk5Q+dK7RrnfHKQ/h8APWzUwEMW8brKEcTFK0rHvBkb7WXoUsPk5vHdHZwEtKn9XYqG9V0vtFwkLWwdJBJWQvQ0faTLxfT3Z+hR1gmKFES/Mj6PfqRTvf9dIvxCwHOB4sOecBPtBzy3BZ2byN/wH5T/gFYSgolYpXrDgM89J8AM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770675413; c=relaxed/simple;
	bh=vZNWuHTz1b4dbqUo0JhBGtJ3efYqVaRB651Yqhx+M9I=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=nnUTzP3F3mZug37WeWc+u//eRZKiCAC6JyX6Omt+SZmecrBtP+587HbB06AGmbIkHI+5gIvyJ0Pq6gxBbVc+nuLirsZLiWPNyO/43du3dARoW2DJKYnlZjN374F7UbHIhAxsrYJ2C4ZrWYa0p9uOQvJK+f/Y1Rd2I3taCex61Jk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com; spf=pass smtp.mailfrom=googlemail.com; dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b=gPJT5lg/; arc=pass smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=googlemail.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-2a871daa98fso24309225ad.1
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 14:16:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770675411; cv=none;
        d=google.com; s=arc-20240605;
        b=VidU85BKFjKXUpQZiGKuD5HUuRX0ML82/0j18vWloZtPJR8uxDMsLSAqfUxEUSb6P5
         Eae2PuaVWRWojWHyE3YaGd8XNUB7xW7j5YxHnGqqWasiz+YWHUKIGmh3hZkO5yeTcvCl
         L8ePw5p1EUvoQkzEElYes/qpFzbHlb2pZwWC86K8wexbNV6is6w7YyKJxLlPpXgm/Fqd
         xlKDFuoTN7LJakw1iJmhDv/deljA6Y4ew+IlQS83KUQdESa02b1Zl4taotpswS8YZNyU
         uvu0v1nQ01CkoIKkkmvzt7UnAVh/CckkVjJV1xo8mkIaZ8OJCM7OHHaW3vAi49OTCXfn
         lxOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=vZNWuHTz1b4dbqUo0JhBGtJ3efYqVaRB651Yqhx+M9I=;
        fh=c760m8K9yghQogcYq5FEO6wwToaODOuH+SvlAynUL2k=;
        b=QaNVywk52Vunyt48MC9B3ixOTe4KIegGEAj48DoIBATVIwzWraMYkwFOwx9OcLC3VN
         mx6Ni088YV2KEqzXiPGuW+yG9SGmtUOfi7zvGGb2kcBT2qLp6nouyZaJVu3+1m7ijksw
         fW6wReIn3tqKQRuHY1nAVvBKwh6mFvNA7JBBPDRsK8CFMpyet8jW/tNhgkDyOXacdqcY
         nhFYGj4mJhBIo4cwqYpoZ/DRkQH3O2v9+YKEiMlMsphTSxe+gtt4nvEIPa+YUeuOt9CQ
         bQgefXzlZbHaVYOMeDu6x8c+iHTvTHV/rua0IS2OA6lBzOznM0j1QHQG1ngyMNVffRZ0
         NoVA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1770675411; x=1771280211; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vZNWuHTz1b4dbqUo0JhBGtJ3efYqVaRB651Yqhx+M9I=;
        b=gPJT5lg/k/GgXqvbN/qi+RX5OOjcMA+VCgtygBw82eKVaSIpWAfJGXOWVJ7GncXmxn
         kq+l5Z2j7f7riXjt9V3L1Rsw7cud0FM8sJ0sQP286AXObKhPTWxs2Jf2PFZc6vZvhsbI
         N+hggCvYzH2zigd8LcbusLV2kR25e5m9RI1KfKDzTzpdX2ajym2X5/PcqU6DvNJtUV2Q
         7LmZOuUsoyd3zC01ZlakA+zNYwTMhgLCpnwgy88nwtmFTA6ciP5PI6Pq9ib//zn961AX
         2F40/yEauf5XoO02X5u6hlM8ZvmsvG6shG+WFCJjvEWucCSk85WILPHKjwFaSoPqn0ub
         gNMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770675411; x=1771280211;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=vZNWuHTz1b4dbqUo0JhBGtJ3efYqVaRB651Yqhx+M9I=;
        b=JWUDSP1JZ4csG6UoH3SsXcRQwHrzyQaqylIr1+4FSmv23E3/wnrYvC4OsMk/fOcZht
         8KmvanXtfCwgeCIjM00NoRc6N9Ia1sp1Rzyipe7FsstYhqq6rcIunyHTwcWNNb509FFu
         PUrFnjlnYLS71G5II1jzAxFZSOtOZAmi4lpk1XG3jGzmGs2XG10o/xzLgrvZLZiYhe+a
         Dgrjs5RmH0LBPmTaS9KPlmkHsC4m1UEdRXDQQkiFACMf0VsqRnYL/BjZjGqvFCDJmuvQ
         TgjTJtuoBf44hBmKwTLCKja/mJMNcnKrSUm2OAdS4nZSM9r2f/cd3uAZ1/UCIqSYgR5a
         yhqw==
X-Forwarded-Encrypted: i=1; AJvYcCWUhLrFk9ElmadD3D/8SoIuh4lpaF9WMmM9xdYgtlS2lEqyEA3yu2KJSqay/QyFmQcaHzt6djrUhNRO@vger.kernel.org
X-Gm-Message-State: AOJu0YyB8y5DhbDqN3M9nyb+p/2v+93EC/SUvQXIasDPrjIxjfLImhJA
	6w7Qx36bMWY+jiF+JBy3l/pwagXiSpRbUQQIQ97UgH2tJS/L5KcRx4zJOaLrAbAVvzMFOeZEgzK
	1nl157p/XrljBe2kYVu39K9ZBDJ3H2GU=
X-Gm-Gg: AZuq6aLotWR6GQ3M39WquxoxDsSpNeWD8+oa12yTdcjr9n/PoaypkvsBqgii7OdmuKh
	j6k4jbDGeFWubNm7SxpFykJnTyCkQYR7M6WhY3Q1zNHCWkg7HlXBZAsMBkslZTOS/sJyIXFaEvK
	f8+pkm5LFn/KQifp4gaq3G+dTVIIaHMpUC4QEF0+cc6MC00zXFn2uNb5XBblUqu3uTKFM7bytK1
	lrQwBKXOZ/rReuK+c1aoJEQ73RMsGdys7zVxQ9A3INT+MmZL9WUdz+ecreNlQusw/L8dz289st1
	f7RNubmN/S9iAt0zbaPxd6/jUlIS
X-Received: by 2002:a17:903:1b24:b0:2a9:62ce:1c12 with SMTP id
 d9443c01a7336-2a962ce2047mr97146675ad.53.1770675411337; Mon, 09 Feb 2026
 14:16:51 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260205-a9-baisc-dts-v1-0-1212b46f95a7@amlogic.com> <20260205-a9-baisc-dts-v1-1-1212b46f95a7@amlogic.com>
In-Reply-To: <20260205-a9-baisc-dts-v1-1-1212b46f95a7@amlogic.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 9 Feb 2026 23:16:40 +0100
X-Gm-Features: AZwV_QhquR0hlfJ-1NnFo_9al9F-KxCRrVsi-UMsb1efCpkm7v4Q1O8T8O58qzI
Message-ID: <CAFBinCBMQNrFdAdhoxPCfJi-SU1kdhovmaJ6K9WwEQuiMfhQ-g@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: arm: amlogic: add A311Y3 support
To: xianwei.zhao@amlogic.com
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Jerome Brunet <jbrunet@baylibre.com>, Kevin Hilman <khilman@baylibre.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby <jirislaby@kernel.org>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-serial@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.06 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	R_DKIM_ALLOW(-0.20)[googlemail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[googlemail.com];
	TAGGED_FROM(0.00)[bounces-264151-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[martinblumenstingl@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[googlemail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,mail.gmail.com:mid,googlemail.com:dkim]
X-Rspamd-Queue-Id: 85495115013
X-Rspamd-Action: no action

On Thu, Feb 5, 2026 at 7:04=E2=80=AFAM Xianwei Zhao via B4 Relay
<devnull+xianwei.zhao.amlogic.com@kernel.org> wrote:
>
> From: Xianwei Zhao <xianwei.zhao@amlogic.com>
>
> Add bindings for the Amlogic BY401 board, using A311Y3 Soc from
> Amlogic A9 family chip.
>
> Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

