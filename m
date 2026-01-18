Return-Path: <devicetree+bounces-256591-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B585D399D7
	for <lists+devicetree@lfdr.de>; Sun, 18 Jan 2026 21:52:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 4A0E230012F8
	for <lists+devicetree@lfdr.de>; Sun, 18 Jan 2026 20:52:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4280E30146C;
	Sun, 18 Jan 2026 20:52:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="No/IjQ7l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com [209.85.167.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C66D027E05A
	for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 20:52:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768769548; cv=none; b=LgS2uEsE2kJvtVPDX2UAEH15qhHCXhuV7XNcZk3Cu4lU7cta8Wq376MWbW+dfqj3fWX4NhMxe8jXhw/qB5zbXpewaZGw0dXPaCTsOYwc0ssGw+9gyb6cUAmECLs9bsJ1hzZQTvh73oQbWB3jZG9MmsIaA/ON328JOcbQD4n27jM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768769548; c=relaxed/simple;
	bh=oHUZejdHLFK35oLUjNmx8sVpI8yt5XnVUeWZ0XAaSBw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=o1iZ+eIbnKceam8sChRpcSVCDtECSc0a4OQ/6fldCseS15Y8X0FCRil79G37lcIV9ou2d0D80FN8YGhrNAUBRu7aS8zF5W4Bs4lrKaMAtUkU+cbu5NFvqrqliulE95wKZ029BtN6dD2d84ytTEY4JpDB14/dc1HDpwSaOIAcCtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=No/IjQ7l; arc=none smtp.client-ip=209.85.167.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f177.google.com with SMTP id 5614622812f47-45c7f3a9676so2091923b6e.1
        for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 12:52:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768769546; x=1769374346; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EajIiJxhEkxKB0h9nWZKAup7MbRjLr6FFm1MZS4wGdU=;
        b=No/IjQ7lC4kjWLiSC/jhmfcL9VraecQS5kagoMwtlTLTahU6g4WkEwv09BsHgJA/24
         pJMYGAvCjexQ7LRLdKZF9DGuR/B5svL6RkgokgesB0f9O+a10uSBNfvCaA9okfu/70p8
         iFP86iQEq1H1g4C0TLLBr+lVFYWpQkHs6naoLJnWfxfgyr8nqPrzvWQVORPQkFo2LKwn
         MBvUbBqOpRT/TKZ6c9wqFiQukTeRaxA3VztdE7wX03ev+j7xX1qVN0UsA8ui2unTT5cf
         Yyg6xXJZvP6dtk+u2ICFq0+xvrzDt5Ejx7En947CqfzZjFU9xbj++/Qiw6HTl0bIa4Of
         KC6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768769546; x=1769374346;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=EajIiJxhEkxKB0h9nWZKAup7MbRjLr6FFm1MZS4wGdU=;
        b=HMTRvRb/Q2TBud7aEJM5kGg7HlRHRYLf43lVaSJyK4rST9plK5z5yXXszBfVHF19gL
         uIb1EWCs2RU/Wy2gfkWUL/IG+h2pQqaUeDy4hUnLEIvFKyB5hNB6RCwgmDl7BaOFrP0s
         FeztC6Bk9AQHC/SJyJN6czNuGH1nJHDqstHDpdCn8B65QmBxwzk+rXM119ZI3tfjeKiD
         n8+JRvr0dSlCzWXpCYQMdd9lWP78S7ujFNBFmTn0H9RZDpD/j+SsacpCLiskUok6LdLU
         o27TH429rgPT7Msltn5PtZv/qv9teENOjSbTrxUY6ZscHsVAHwEzW2pXmOsRERcqIUnJ
         SR/w==
X-Forwarded-Encrypted: i=1; AJvYcCX+4N4wWe5RISSNG3tuTiLO9HjepeJjpU+/7inMwVEQk6eTxB5PUeKh4YhWBp/lIiPzJoaIKIG4ILNW@vger.kernel.org
X-Gm-Message-State: AOJu0YwpJT8pbY4q/A1YGjj6wRelZeBkyPoLcNHpmWSvL9huoDJeBAsV
	tPdqrb71kDT2TsYDnS234r7Vd0VnDqotrneLMd293ae/mMCv2ViPoYEyExr2UOlttW+6yNPawp2
	WZhiZ4myzMjKzTlAL6+fvochAuL4WXCQ=
X-Gm-Gg: AY/fxX6jbfh4ngdv/PcXWfJW4+suCoRPvgBpLE012s7VDZEE4mDEZA4WQlgFcwsD2Z4
	kJ4T7OgZHrQg09yoJgRrReLsz9DfvTl0dgLX+MRpEmxVCEQoAUbNZlek8y7NwoPv4omTqrLzsI7
	L++dqwRWao7G1DVl6EOeZ6lAuPjpHPLr1SwmOCSXDOyBPbG8DGZAkurQOL46dQYweYPgQ+SNU5H
	z9FNqeeSPyonYfvBGHwOCmtqFROSHNtqxk3UNWrZD3QfbHT4mhUUsL7l/mCjYB+fo0Elrda
X-Received: by 2002:a05:6808:10d6:b0:45c:85fa:5a3e with SMTP id
 5614622812f47-45c8814b233mr6088865b6e.25.1768769545677; Sun, 18 Jan 2026
 12:52:25 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260109062259.1769305-1-harini.t@amd.com>
In-Reply-To: <20260109062259.1769305-1-harini.t@amd.com>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Sun, 18 Jan 2026 14:52:14 -0600
X-Gm-Features: AZwV_QgjuMn_ufy7aRDqt1tKlvaYB4bfqPXnr_PsBemUcXovpa5jbfh10tMtGeY
Message-ID: <CABb+yY2sW57piKnUxMXjo9QStuLBe+v4jL4vB=_3Ygdf_e1o_w@mail.gmail.com>
Subject: Re: [PATCH V2] dt-bindings: mailbox: xlnx,zynqmp-ipi-mailbox:
 Document msg region requirement
To: Harini T <harini.t@amd.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	michal.simek@amd.com, shubhrajyoti.datta@amd.com, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, git@amd.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 9, 2026 at 12:23=E2=80=AFAM Harini T <harini.t@amd.com> wrote:
>
> Add description clarifying that for Versal IPI mailboxes, both host and
> remote agents must have the "msg" register region defined for successful
> message passing. Without both, only notification-based communication
> works.
>
> Signed-off-by: Harini T <harini.t@amd.com>
> ---
> Changes in V2:
> - The description regarding the "msg" register region requirement for Ver=
sal IPI
> mailboxes was moved from the conditional schema section to the main descr=
iption
> block at the top of the YAML file.
>
> V1 link: https://lore.kernel.org/all/20251222044653.1757886-1-harini.t@am=
d.com/
> ---
>  .../bindings/mailbox/xlnx,zynqmp-ipi-mailbox.yaml     | 11 +++++++++++
>  1 file changed, 11 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/mailbox/xlnx,zynqmp-ipi-ma=
ilbox.yaml b/Documentation/devicetree/bindings/mailbox/xlnx,zynqmp-ipi-mail=
box.yaml
> index 04d6473d666f..a5205ee5ad0f 100644
> --- a/Documentation/devicetree/bindings/mailbox/xlnx,zynqmp-ipi-mailbox.y=
aml
> +++ b/Documentation/devicetree/bindings/mailbox/xlnx,zynqmp-ipi-mailbox.y=
aml
> @@ -11,6 +11,17 @@ description: |
>    messaging between two Xilinx Zynq UltraScale+ MPSoC IPI agents. Each I=
PI
>    agent owns registers used for notification and buffers for message.
>
> +  For Versal devices, there are two types of IPI channels:
> +    - Buffered channels: Support message passing and require the "msg"
> +    register region to be present on both the host and remote IPI agents=
.
> +    - Buffer-less channels: Support notification only and do not require=
 the
> +    "msg" register region. For these channels, the "msg" region should b=
e
> +    omitted.
> +
> +  For message passing, both the host and remote IPI agents must define t=
he "msg"
> +  register region. If either agent omits the "msg" region, only notifica=
tion
> +  based communication is possible.
> +
>                 +-------------------------------------+
>                 | Xilinx ZynqMP IPI Controller        |
>                 +-------------------------------------+
> --
> 2.43.0
>
Applied to mailbox/for-next.
Thanks.

