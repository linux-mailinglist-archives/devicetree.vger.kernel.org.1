Return-Path: <devicetree+bounces-261605-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8DM1Bun4f2mW0wIAu9opvQ
	(envelope-from <devicetree+bounces-261605-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 02:07:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id C79D4C7B94
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 02:07:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id BCDE630022E5
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 01:07:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA1801DED63;
	Mon,  2 Feb 2026 01:07:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="e4spZP/j"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com [209.85.167.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38EACBA3D
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 01:07:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.174
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769994465; cv=pass; b=KzQ5NS7txAIikW+v9H++rM6RZdZaX0A3Otv1Zxbbnon3lacxFoxvRC16kmVfhRTpyXXfR+VtScngQZ/jDQa+6CKfrOgvrtjt/r1J3ytmeJz9fLPQsHPzVVpLAoXD9hIGDt7O31bPHJvKbqcCiUIWjgU1tSpi2iYDVePn+IOABOY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769994465; c=relaxed/simple;
	bh=k9vs0X0qEpmHwV55bmADbvuvpFPnFmHyyz8j1maU4ck=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NUA8sWb2tJF9uHcoF3OklQuUktNNwSzdqHSWJvh5O7BlsKJCA1yP16Fanx+QjSAsmf1xwF8a7BgPwC2LGz7sT7EJwnDy2A8PlzjOniSAZQwbTKZDQeFVDxynG5OlAoEGzNjkuUhnTRccbVFAIsf2v6+OFABugqpvcDCLr+7lXxw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=e4spZP/j; arc=pass smtp.client-ip=209.85.167.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f174.google.com with SMTP id 5614622812f47-45f10d7eb81so1620666b6e.3
        for <devicetree@vger.kernel.org>; Sun, 01 Feb 2026 17:07:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769994462; cv=none;
        d=google.com; s=arc-20240605;
        b=Qkxni60D7GwORhuADz+38htaVFwS4qRRzGODx9I6t0zbnvl5+PMykLQtHngGDEt+AQ
         Ax1ABp66goXuqkoq43/VnRI3L1SUVMcCJ/JZYGZDnBLDLz5nnD+j/6YGtp4sk2KFYq7Z
         Aj9RzxIB7IcTfwuw54lOYjX4z4wStJ4BeEQ1FkszvSo+CiCp+CWXe54yjI6zXzo0Q12e
         qBaZMgYv+H0TM3xLoM8NxQsA0larDrjZU8UmNQF/YQH6AdP2Z/kzcu6VW+d9bSbS972F
         IUPksPwYMWaE9Ggilth9snO/MdOLNAXR0+ZVfA1dzYyGPlLDnmhsIv9mr0THhPwkKMWc
         WE0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=41qa/2vbjDiiZ+HXTO4+a/vWjmVn/vuB0smr4cbU+H8=;
        fh=4CLaj9c6axcd64Tg8MNVroWgPGGC8bzEjmc0OBKW+ok=;
        b=EPgFMEyB0R4ir1cmZ6CdjlS9UXu4zBiBQ6nksV3T6qUvuioRTwnsgrh4UK7X+/zzre
         UJuUcZ0cWtackHxFlYBJC/7hXFFfKvdNr/TOAf+/Y4ULmjq5n7Pfl+S4ptGgISGxozeS
         n150Fg0M1Rtbnf7uPiZDY404CUzGo53EyQ2Vm2V2APoulXwtQE5eorL7kqAFiwnm6nDF
         /RYMatWJFgS+B8/4Q9WwasW5fS0DNmuaqeUSjJb3qdZbacKlUkdbaNZMwVf1vaJnhOWb
         dRInppqtI96WSiMnhYR2z7YwNzADKUavIqiWp8z3QAjFKJ2xJm6cbo7TgZKOYVfaA0nX
         30EQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769994462; x=1770599262; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=41qa/2vbjDiiZ+HXTO4+a/vWjmVn/vuB0smr4cbU+H8=;
        b=e4spZP/jUovYBW/nWwBXBMGyTYboQ6Cqn0YSzcZjBWX9duGrO9XooebAacZyj4+cib
         vsVyKktgW2cYG/d4p/c8x8P5mlnDx11XrS7GJ3fjUQ7j7XGwV9T86PsbRruVDo1MWtjL
         Xso6Q+sdTBhX5DAD4W4kSmVVGGDsLXl65brCe0NPXPtLvV9O6Yyt2fhEWrNFXMtRUFKc
         d0WDEZpGZ4+BJiZy01AxSKHS4O0cgpbB2KBJnAo+RdGTqpkVjuyFKf65QYy/ZEI+vDve
         ZUWdvJ1vd3hWP9Wqo+LD4bfaU5uVT+Axnw/P8Kz/kyxSX07rqb9ZirRrqhL81t6BQjUm
         LExg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769994462; x=1770599262;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=41qa/2vbjDiiZ+HXTO4+a/vWjmVn/vuB0smr4cbU+H8=;
        b=ICnnzhNcYagCZLD5g5SXkaX165I7G8MVqXBjSi2O2zz72mPL9m6m8aBBiMrJxvS7c2
         FC/cXKeYWw2Iu6JC8aPfjC+6kN5K/DODKLDHsgkpTsJP53JRtXpsyy7LNadFiZx4kz27
         3jbx0AhVtwE5JTzg0cozAm0ZGI/RbT6oQfZ7I++2xX9rdIXjFNKokOvA9Vmy+yt8N1WD
         MFvOxXKJhanJayw8Ol2p/CNGmF/bbenPEhhKRcRegTcWMt3l9fMEJEdhMH08O6JzglK/
         PWhtjrX1KgdMOEHQeGeKdPzSO2f0l/lDYN11OEHxOF84xmAH2riPSUzkd3N2tF8lCx79
         JTyw==
X-Forwarded-Encrypted: i=1; AJvYcCXrWT8mmkbheufFDkSoD7jBD23L1IMRwOh7DXi2JkoxYlt2NOFzo93bTFlRsGbAJDlWvC1e6uU0PARN@vger.kernel.org
X-Gm-Message-State: AOJu0YwzOiNaZ+2vIP4aT8ikQW+ZUCy/ZNiaUibVk75PgPH11F0WXkJi
	7a3W3oJS8uDNmB+9QIs2+sFQt+cw+i0dcR/V5L69nvCv+CY44QOvXyZj6lhl1IzkmNDB2WZ7i1I
	nxqZnC5TWqrEMiNeUne04Br7iGZCILEw=
X-Gm-Gg: AZuq6aLNku29/5A2/uxbOfZFioySYYNMmDJoQhHi1x5wBO7o0cHs/h7PaVgpOo01vqK
	Rfxo2mL6A39LJHum58NNStpFDARs/tM6JORGhp7jB3tFEw/wNpIUcoCbj+Eirub/JsUlB99wnhl
	9LeP0tPvw2E7r8CUwhfk1IxpKgCMt8sX/T77kDnGF46gT6qAWqnYFKdUY4FyMehWcM++pQSGscv
	9sJob1A8+MUuJrR8M7Y4mUqv8iIWf++Lc9Ggf4ZEy7on5NfH0vOEbxFN8ngs6qQ2O+3tfM2
X-Received: by 2002:a05:6808:4f25:b0:45f:f8a:1886 with SMTP id
 5614622812f47-45f34cd1e2bmr6183605b6e.35.1769994462000; Sun, 01 Feb 2026
 17:07:42 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260110-ums9230-mailbox-v1-0-5941cab4f4e5@abscue.de>
In-Reply-To: <20260110-ums9230-mailbox-v1-0-5941cab4f4e5@abscue.de>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Sun, 1 Feb 2026 19:07:30 -0600
X-Gm-Features: AZwV_QgLANhoG-osEXT1gIRlF53wLPVLEX7f0Wucku-bGrT4FvLqkGrgEmTyojY
Message-ID: <CABb+yY2snfBxoiTqCwHxXvDaif0M5-gxojr2d_C=H111KP+TYQ@mail.gmail.com>
Subject: Re: [PATCH 0/4] mailbox: sprd: add UMS9230 support and fix interrupt handling
To: =?UTF-8?Q?Otto_Pfl=C3=BCger?= <otto.pflueger@abscue.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Orson Zhai <orsonzhai@gmail.com>, 
	Baolin Wang <baolin.wang@linux.alibaba.com>, Chunyan Zhang <zhang.lyra@gmail.com>, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261605-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,linux.alibaba.com,vger.kernel.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jassisinghbrar@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	FREEMAIL_FROM(0.00)[gmail.com];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,abscue.de:email]
X-Rspamd-Queue-Id: C79D4C7B94
X-Rspamd-Action: no action

On Sat, Jan 10, 2026 at 9:44=E2=80=AFAM Otto Pfl=C3=BCger <otto.pflueger@ab=
scue.de> wrote:
>
> Add support for the new mailbox revision in UMS9230 and fix issues with
> interrupt handling that were observed on this SoC.
>
> Signed-off-by: Otto Pfl=C3=BCger <otto.pflueger@abscue.de>
> ---
> Otto Pfl=C3=BCger (4):
>       dt-bindings: mailbox: sprd: add compatible for UMS9230
>       mailbox: sprd: clear delivery flag before handling TX done
>       mailbox: sprd: add support for mailbox revision 2
>       mailbox: sprd: mask interrupts that are not handled
>
>  .../devicetree/bindings/mailbox/sprd-mailbox.yaml  |   1 +
>  drivers/mailbox/sprd-mailbox.c                     | 117 +++++++++++++++=
+-----
>  2 files changed, 89 insertions(+), 29 deletions(-)
> ---
> base-commit: f417b7ffcbef7d76b0d8860518f50dae0e7e5eda
> change-id: 20250926-ums9230-mailbox-6a6e50486032
>
Applied to mailbox/for-next
Thanks
Jassi

