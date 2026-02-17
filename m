Return-Path: <devicetree+bounces-266026-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id RX2DJ+cllGkPAQIAu9opvQ
	(envelope-from <devicetree+bounces-266026-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 09:25:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B9D4149E87
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 09:25:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C3FFB3009B1E
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 08:25:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0A252E2286;
	Tue, 17 Feb 2026 08:25:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ApT5PcLO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78AA22DF707
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 08:25:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.45
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771316708; cv=pass; b=o2WCz79g4ogrm5wYpB251BOuq1KQHS8SockR2xafiarTSfTfd0yWXpEve0TXCGGwfuvfKYnldbk8yQr7pH06Kj+mcrGS0wOrZayeiKFtWqxP1ON41QO1jT0EYUq3DZqMNjg+UHIgxDyiviv52n3Yz0zZECYcSZvTvbxAq8rCrHU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771316708; c=relaxed/simple;
	bh=R5yBcvxIrh+AganNsnz5aAt3GgBlzlqjXADG+Zo+KvI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=nXqb5E2z3CW1aPKvl972pNfBYIotmyPOHO0tymwz5zGm14llGm5SgKSKwirHzcSCthlfqDwiW85MilYiQY2xLnPKyFEvSJSViqN8EelzDP5PZd17H9FxSSANNHvBEeIYNaoHCV8rSBtPOvLJHO/bm1Z7fZx5Tr70wAOf8KPy5Rg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ApT5PcLO; arc=pass smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-48334ee0aeaso31091645e9.1
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 00:25:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771316706; cv=none;
        d=google.com; s=arc-20240605;
        b=DoSuv+qAzv+6tpnnqWTFLD7EBrLxeCyanEjW28rFqrKCb3KcTXRaCnTiTY5daMqddM
         xSApSHbC2S0QaCj5Zzf+MLcxEeAOmy8YdE9ZJKEzHDySJhCDCxW3JfNH5Ln+jnWL4iTT
         bPoMvcMBT3Sk6IaqlrQbsaUpsEWJ8RoY2B5/+8oeQoFtde+amkpLmaYgC7NVaUVg3fMQ
         hv3xA+f09oIfVmfJO/slmMCMBJvD1N18aij9tBth6JbHl0RuIRxEtAmW7qHVE96dqjwU
         45YsfHwM7JiV+GmUYcAg7DZWu62y4JJT/Kmyl4QVEHP2pG4y2h1lRn+sTTvgwjMiLBLT
         rRAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Cevn5ys0yghHtKfwsnvO75Auk5yCz7+jT5T4iN5tYpE=;
        fh=J/rot2sDyQ269fS60FkHThJehKMAe3DMFJvZcKDqM04=;
        b=UgM2zSxuuX8pRmIccjUZadzdSBW5AvHql4jnQbEusnKvmAbuUwOYYjbl4ZWJw+m84B
         UPn/Ss6L5A/GJL8Jd01V9TuFFDVDYRNkrAIIOtUC3tbqd387Dip+JBHG/wZeYWEvmz97
         sEBKRIOrn2Tfh8V9F2DhkqdMlvyKKoomlnEnVtsZoGpwA8yoFz2f3dL9mWK6S9ojcOwj
         UOFKpppEMCAymMZ9pxVKg65XNq8h9MQ7WdZNuNDGAfEp6jLzhu5tdmpre0lS0G7Wx/xP
         5N3n1y5bu5c77dVk+eyCncCKkM/AOwCsy274TWjYl0cBcqvTHxAPKxN/PkIMIDWR+Ue3
         lJrA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771316706; x=1771921506; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Cevn5ys0yghHtKfwsnvO75Auk5yCz7+jT5T4iN5tYpE=;
        b=ApT5PcLOY3hqMRWU42pJJbfgEDtoAQTB4YdpISld/LZBxV4eyVnf0ZIFc9ZT8hfrFZ
         /BCSbW8kN3H19g2uTqkh9tKInBy9ErpXLLXlxqNPIJcXt0O6gvfSy5ukw7Fhm6lcRa94
         r5XLSD7KogQVTO0pvL1c2XgK5TAj5lKNgFw52STx3und3Y+VQIqrMqrb5BbPLTGtRSvM
         UgC3MgCxvfR/AYg95ARMMz5i2RLt6zHGepHp5CIVIaGU4DPPETjfhL9WXpX9LIghKpgz
         5Cdr9KwHzRks/zoiIYSdp5mcKa06KclMS845gUMw6fCpAlFP2weNCfcACdRXls8+eTd9
         uDPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771316706; x=1771921506;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Cevn5ys0yghHtKfwsnvO75Auk5yCz7+jT5T4iN5tYpE=;
        b=azvTqwV1uG0f13nWvTjQvuGLSlcA2XeJudYrG/N7zCc2tqO8lBanxsclbjS1+9itLC
         660FAAKDnHGRCsrRnuo5vBxPfu1oEjJ4Cr4+W6pjqJ9lXLsxbivzpDZPoTV41WakdRlC
         4agjkoBOMkUzjMjEePVYfLIiY4RurOahM/D2wUvk58D/MV4pqiyU32D1Q5zkjU5Lqf+1
         MKR8k/lVA2wX7Q/d2KihH1abQmc6C9HxhMeOQlVQuwaVzu+I7PTqeqFe81lol27186WR
         zbtQS3djL/k3YacMz05RfV/lViq0cbBcC1BBypFf7hJ2xTq7jZu6Z8xdtSzDzMth/DCB
         g2xQ==
X-Forwarded-Encrypted: i=1; AJvYcCWdNzH16l7bswFOcRyuf32WEeUAR7LCpcJ7rjWSLyrxUazGOlsWq4U1H8ronn4XQUjU3uKCgGrP+GFf@vger.kernel.org
X-Gm-Message-State: AOJu0YxGGmjMuab1YRHrkR6+9X+e7mmReDzJLf3hxhkBvsThuTnneMzd
	J95m/HIrm3VwrcsAeNSaJDxwpgr3tXGNYvIUiUbbXoIUmQhMim2Mgacapv62CDpXwfZFSVxngT2
	ug5SlgShFD79c5hxmFextfk9tAFCPHMU=
X-Gm-Gg: AZuq6aKKcN9ztNMnef8DqhNwEBIoHdJKGmS6GVEt3jBl8W3ngXHq9APJV7/UadIFHzL
	1OJ3/4KG6FdBI8Mchagbf2JZC5DRcJzF7DBh3cAkvygpGSzqg/oNZ7EW8kJ94ay7ek7qCPQtyRZ
	7UxMEAxYmo8QluDs+E0F/W1hqMZjtLz1E3/wGGGuk6M6L7ZUwhXwtrbicDH7gmbZRJG/tJhl9Yx
	4DClnBSvW/ZTUekHvPAlSPW4WtZnPmAGeSPr4qGZFQbgHvlBeVDIqDHJcHbYfJNffnIfx9ykxjK
	eGdFha2p
X-Received: by 2002:a05:600c:4704:b0:483:3380:ca11 with SMTP id
 5b1f17b1804b1-48373a74dccmr223433515e9.33.1771316705738; Tue, 17 Feb 2026
 00:25:05 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260126190755.78475-1-clamor95@gmail.com> <20260126190755.78475-4-clamor95@gmail.com>
 <54043284-141e-421a-a54d-a018c884b324@kernel.org> <CAPVz0n3OEN2M=wj7cq_-qrYi5VkMUP4RcUB7=sQxnLaGGivKVQ@mail.gmail.com>
 <b7de1799-d113-402d-82ab-06492216ebd8@kernel.org>
In-Reply-To: <b7de1799-d113-402d-82ab-06492216ebd8@kernel.org>
From: Svyatoslav Ryhel <clamor95@gmail.com>
Date: Tue, 17 Feb 2026 10:24:54 +0200
X-Gm-Features: AaiRm53FZaqGUOY_PWvCB8PtV2UhbTkwgvj_a_drtkP5x53M8MQ3fjtQjWUpUuE
Message-ID: <CAPVz0n2qNebbfoq4tnpH42gjiV-XQTQQ5hiXmXddepxMs9F0+A@mail.gmail.com>
Subject: Re: [PATCH v1 3/5] dt-bindings: memory: Add Tegra114 memory client IDs
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thierry Reding <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Mikko Perttunen <mperttunen@nvidia.com>, Sumit Gupta <sumitg@nvidia.com>, 
	Dmitry Osipenko <digetx@gmail.com>, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-tegra@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266026-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,nvidia.com,vger.kernel.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,nvidia.com:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 1B9D4149E87
X-Rspamd-Action: no action

=D0=B2=D1=82, 17 =D0=BB=D1=8E=D1=82. 2026=E2=80=AF=D1=80. =D0=BE 10:15 Krzy=
sztof Kozlowski <krzk@kernel.org> =D0=BF=D0=B8=D1=88=D0=B5:
>
> On 17/02/2026 09:02, Svyatoslav Ryhel wrote:
> > =D0=B2=D1=82, 17 =D0=BB=D1=8E=D1=82. 2026=E2=80=AF=D1=80. =D0=BE 09:22 =
Krzysztof Kozlowski <krzk@kernel.org> =D0=BF=D0=B8=D1=88=D0=B5:
> >>
> >> On 26/01/2026 20:07, Svyatoslav Ryhel wrote:
> >>> Each memory client has unique hardware ID, add these IDs.
> >>>
> >>> Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> >>> Acked-by: Rob Herring (Arm) <robh@kernel.org>
> >>> Reviewed-by: Mikko Perttunen <mperttunen@nvidia.com>
> >>> ---
> >>>  include/dt-bindings/memory/tegra114-mc.h | 67 ++++++++++++++++++++++=
++
> >>
> >> This is never a separate commit. Squash with the binding.
> >>
> >
> > Always was and now it suddenly is not? Maybe you should consider
>
> It never was, by the rules. I give this review all the time.
>

https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/=
include/dt-bindings/memory?h=3Dnext-20260216&id=3D96b0239bbd6153b70c14c8066=
4ebb43cd2ddacd9
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/=
include/dt-bindings/memory?h=3Dnext-20260216&id=3D825c7f4aa2866b77c0238855e=
2f58d56d2f13eae
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/=
include/dt-bindings/memory?h=3Dnext-20260216&id=3Df25696bce9604dbfd8d956da6=
023d18a05ec8ed3
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/=
include/dt-bindings/memory?h=3Dnext-20260216&id=3D24a7eaea0a941c9e5e243ffb4=
0073dcafecd3c11

I don't see any of these are squashed with any binding, but ok, whatever.

> > fixing checkpatch since it complains that binding and header must be 2
> > separate commits.
>
> I considered, I guess many considered... but the problem is:
>
> IT DOES NOT SAY THAT. There is no checkpatch warning, at least on recent
> tree.
>

Interesting, it is not now, but it definitely was. Acknowledged.

> Best regards,
> Krzysztof

