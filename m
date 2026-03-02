Return-Path: <devicetree+bounces-269956-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wLrUI7l6pWm6CAYAu9opvQ
	(envelope-from <devicetree+bounces-269956-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 12:55:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 26C711D7ED4
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 12:55:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D665A30817EB
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 11:49:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5ACE83630BF;
	Mon,  2 Mar 2026 11:49:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b="EIlbLkgh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43C1D3630AB
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 11:49:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.214.173
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772452183; cv=pass; b=puj+PuEU1eDyz1L1Y76slsiTFNsOm1yNeqYk6zh1ZzBr50eLfo89L/OMlWIs8CRehzElclzrE4mBkMrblJFAPzY5CNwMNG/COrKcLyoBhpLj74tGy3jmAYB1otWLxhCZGwJRMzNLKGgEcDcASjybxet72T+es25nkn0U0Lbk9p0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772452183; c=relaxed/simple;
	bh=uIzeWSS2d7D55M9xJSTRKzQMZy+TBoWrazPcmwvzxPk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hgsejP0GZ3smyEn+85Y4uy1kVjLsE6LR1E0nvARhJ6c7ch1vTa2rvaPpgd8GSWbI4KR6bfrzHo5aQIsoYB3gDjLyS/33vMsfqJsHYu4fNyZMu8ntR5eV8Cw2imUw2B/viU+qq1B3r7IwkBIsLpOSTMrSFdoHWJ2UC+VgaI2vwC0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com; spf=pass smtp.mailfrom=googlemail.com; dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b=EIlbLkgh; arc=pass smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=googlemail.com
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-2aaf5d53eaaso29801355ad.0
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 03:49:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772452180; cv=none;
        d=google.com; s=arc-20240605;
        b=hVhEnls3DvqJNvicr7d6HLJi6J0B9TRUfV5sGhxC6BBjUCSQJv3AdXpfBZu3wqteUh
         OLBwkoPZIVQ3+9nKipj3jZHju6AaD2szv6SG+ZGX8lTPb59n49yuEI1Kga9g34euoNOr
         av7tAb56/VPiBj0pJTxTa+dYhJkmqBGYftmBgCQp4jfrZFcIhiRKnEZ1vDP/yGdBI7kw
         UyeSPtVsRni56N7FKzukuAfeKhazbIiJ/2bpiHOKCJYdwSwmYLZb3eKYO5zrXGq9Ygq/
         UiuosxljCSYp/Ob2CEEjaSk1t+Z9djxC97IcdUUkhnLv9G8Umdg14tG/5dHiEAb2jNYs
         aU0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=uIzeWSS2d7D55M9xJSTRKzQMZy+TBoWrazPcmwvzxPk=;
        fh=bvHSouIHA6CluESPQAt62X6Elws9Ib600GLNID98rAY=;
        b=PTItgx0Q4PxMOd9TLEK2fJBxl1wCNcP+wz4S58MKKpBrqKcrFELG9pvsT9fL9Xu1hu
         gYyjpOuBPCCXiVnfCVoNSWLcLP49Twxlccz3ZxDa7quBUg499QguFHLIOWyHCwEgqmbq
         hVwocYNuLjQktPu72L2sqOXDKpOjAed/1FBxHZ7oKam07Z9OYo8bwJQJMzCBWTZbDn45
         +v+m9g2OIw6/yZuFKIurWftCRpF9NplIAhb8lOHRu3yR0s28DK2EfCGTpjWIc/aFkzXU
         dSUzUvtQdhosDjmWKZeiZtXcXkBvVH/IhSqZeiWBBr32iIztoIEdVg6bYWIbYJNBSrg7
         9nCg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1772452180; x=1773056980; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uIzeWSS2d7D55M9xJSTRKzQMZy+TBoWrazPcmwvzxPk=;
        b=EIlbLkghQYTIbzcqgkYMlTCch5Udz422MGGWQWXJxs/gDffYpQ/lCFUc4fHeTaaWBI
         JSC0deUezEIIHHBzBQjYWncRY4NsuJHQ8gwPDMu3nwNepiocrxYA9Qvm2K4r0vVW6Lbf
         QQ2yM2OK7B6BcgkBjoNWurzLJbMKojHxXoC7dp78QK6hj0KOuoJ51/IqKlkaGJGGF2Xe
         rHBzs2jSdsx1WCJsBxzQf6CzgkC8ipDgvdaTtWKPeS6W9jfd3l7Q1/BIWNra7s0Cy8oL
         1kwxy+5VX2HcPVxh92hujkQtPQpRZ9sBQjnp83gjjKx3Ij5MF33546wxXGAsOi+xeI84
         rABw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772452180; x=1773056980;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=uIzeWSS2d7D55M9xJSTRKzQMZy+TBoWrazPcmwvzxPk=;
        b=g9AgBooADxmAHMGA/AtAlHwjARv8vOgegfpqArio7tkr3Ejwo2jH5U4hfP8kMk0Mdt
         24xo2i3q+Ndpw9aZ4NBQGqYeZCJmeTwjgoClMbcv6W6QJodeTjZkJblbDcdMNt0/DnL+
         JPVW+7DtRALlk9yQ23V0cjJmJ9NMF/sskTX5WEjI5b9RI4p0kl5bddbaGSkvDEyj0hsM
         p1nhmbRmn2o4JHEkWa1Ffs6RwKY9dytXqqXO9XUTsM02WAXcDzSnTlZiOaGD2kQ4OQKa
         9CHlKx/sNUKLn/isN42Bs4XIQvO9cZc81ckR/W1LfLF2lO1J78H0mUPTXn3RRazPVBvg
         0uRw==
X-Forwarded-Encrypted: i=1; AJvYcCVojIJvAo8vbAGNqGXMceCxxzzJBPU7c30SxeUY13646P1gC6EtL1sdQyOnhUgoGL3Nm/c14nFy1mCG@vger.kernel.org
X-Gm-Message-State: AOJu0YzDpmwsFciB4DQ3N4r5/N7eyl6kuMeSVUc6ptODZF3vRHEBaFlC
	hrydgo4L3prRbYat3v5zmWw2DJce+NugkQtZi+U3sHzy8U4Vtv2gafq/2PcV8c3r4NzHdPivJKq
	rq0cYi4C/TRfmOsMAFl5USt4AuHxkfg8=
X-Gm-Gg: ATEYQzwzSG28oZx+Zy6oQs24BpUCgBAXcrENnxL1z5QcsHIjHtFvsQhnkR8rSY4J4kT
	vLUDBGf/j6lbOEA+v3EnrcyRhnAldOzBDF6GGmy+6aDrWWasf/7goGuwK/0bS2TQOsqPRZhLOUR
	6Ra2Hi21YPGcGnDobZFA/NAM1wjZkol065UUGU6nucVadbQUXn2qPt8lUbWSzNQcAjMuy2FGhZ5
	tJcNGX+D7iNk+5WQiSs/QjQntI/yc3pKwomXbF09pTX4TZ94lVfgQ3unxUNe4q5WEPkMI4UG/CL
	dbQ7CWe1uXoGZxzfqSudI76sK33nqfyWpeZOYbLG
X-Received: by 2002:a17:902:d48d:b0:2ae:3e43:4673 with SMTP id
 d9443c01a7336-2ae3e434cc0mr72292735ad.1.1772452180549; Mon, 02 Mar 2026
 03:49:40 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260228063750.701887-1-nick@khadas.com> <20260228063750.701887-2-nick@khadas.com>
In-Reply-To: <20260228063750.701887-2-nick@khadas.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 2 Mar 2026 12:49:29 +0100
X-Gm-Features: AaiRm512qnGuhMk_kVkiofPglNgQBsBrV9Icn_fbpH3P2ZQt1NNOt_MmTM6m1d4
Message-ID: <CAFBinCAKwF2q7oE+MAvWGO6_Wx20_PVUKVQ=FnjMdZmDBYkJ5Q@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] arm64: dts: amlogic: meson-s4: add UART_A node
To: Nick Xie <nick@khadas.com>
Cc: neil.armstrong@linaro.org, khilman@baylibre.com, jbrunet@baylibre.com, 
	krzk+dt@kernel.org, robh@kernel.org, conor+dt@kernel.org, 
	linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.06 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	R_DKIM_ALLOW(-0.20)[googlemail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269956-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[googlemail.com:+];
	MISSING_XM_UA(0.00)[];
	FREEMAIL_FROM(0.00)[googlemail.com];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[martinblumenstingl@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[khadas.com:email,mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,googlemail.com:dkim]
X-Rspamd-Queue-Id: 26C711D7ED4
X-Rspamd-Action: no action

On Sat, Feb 28, 2026 at 7:38=E2=80=AFAM Nick Xie <nick@khadas.com> wrote:
>
> Add the UART_A node and its related pinctrl definitions to the
> Meson S4 SoC dtsi.
>
> The pinctrl groups are split into basic tx/rx and flow control (cts/rts)
> to allow board-level flexibility.
>
> This interface is typically used for Bluetooth communication on
> boards like the Khadas VIM1S.
>
> Signed-off-by: Nick Xie <nick@khadas.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

