Return-Path: <devicetree+bounces-269577-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KOiNJWb4omn18QQAu9opvQ
	(envelope-from <devicetree+bounces-269577-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 15:15:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F027F1C376C
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 15:15:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 778FD302FAA0
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 14:15:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E858340FDB7;
	Sat, 28 Feb 2026 14:14:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BRZoMRh8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f175.google.com (mail-vk1-f175.google.com [209.85.221.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C3732D1931
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 14:14:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.175
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772288099; cv=pass; b=HC64O2djBVYJA/it9ftgUekKyU+faw7GJvDeNmumeYWiGxdIaR2/nvVDTtctLsARknGwJKb5NZtyDhqdWzzpzK/fvnbybwXquzgQWzbEruyDXSk7LWnF20tVaSMSDjhYy3pznlmqk6Z9x4K4vREi0qkPre1nBrrSU702CSXB5WU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772288099; c=relaxed/simple;
	bh=tDN3Cme7vTQP/3ACecjLrjDroJOpD8UhxZvthgwpOlk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QhsRDueYameiPuYwvaCs0lxxulg9YzJxSC6gvyb9ntqDLWE0ers4wS1suaiPUs+Ep3za+AQs0prOhL1IvdTqHPlwXrO93RFls3UUTyLHno+5i1UZjEs4uTnATLwg0RfwPvv8TTg7pIB9b7xKxFqIYkonjc+I4xTLJT0iUj/LsXs=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BRZoMRh8; arc=pass smtp.client-ip=209.85.221.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f175.google.com with SMTP id 71dfb90a1353d-56aa0de09e0so917935e0c.2
        for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 06:14:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772288097; cv=none;
        d=google.com; s=arc-20240605;
        b=NPPuuAXxDxXAmZ3ih1wCyXXTAelBIkU7dUgzZNCc6gjep4w3FvG+YH9Up04veOA9H4
         trKnlum8WkuF9Ko3QS3kLzLWBDn+Lr0P4IzG61XkAjqZYqPYOoxMotRjk6tCa/x0khtN
         AKGfmxavTPTkr81XEWsxaXmnabVZgfZ2LrwlJZi7aUT2ASHdjlzc3hw43P2YUA7Cfjwm
         rOwxLR1a3CLSkSRXOhDiTrniK9kchJB+JXwfRgtlhV1SlwBLtgwuhNxPDarGAPl0ZtWJ
         6N35E8nRtteXkwLNSfGf8CNLYORM1SK73TQL92eGmqGEdlQFnk1Nf4AH342OufCSUl9I
         /Aww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=tDN3Cme7vTQP/3ACecjLrjDroJOpD8UhxZvthgwpOlk=;
        fh=QtEcMcbVbsQavC36sFy/kSZNN/r5LEIuwBb3KnyzgHg=;
        b=aayjBqjKot8iT00/rpQYNg0ytUNIEsGjtoWBj2g6t0VRr3G5RPNk79HB4NF3v0OPCW
         yMykkVLcyZTtKB7bmHDR5c7VnFfvxQ3BPKl0ETEAONyY5mzxI0di/TJIgyJObdwWOHA5
         2igBM10xuHap40GvUdJ22Apn6jGrPOhYdHIuro1oyvM3THTALDUOX2kuTf5EINaYoOiG
         PSIunmpznia1ZO67JwNU7G4bn62PzCxPFO9rUrgvKxmQ/Pcy58FeaYg+uGuZEHCJACDZ
         unMWc6OIgL3/HUafyV76penM+XsnbVDHFPZu91sxdstMvxXfe1Vxp+j2i/P9Yv0ffTqY
         Pbqw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772288097; x=1772892897; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tDN3Cme7vTQP/3ACecjLrjDroJOpD8UhxZvthgwpOlk=;
        b=BRZoMRh84Ww0/rSzjkKu/MVTYVcrXsDIzODDQKOOVhW0F1tq/gIZvRvU3Ajv3OjMm3
         owYqXyfKLUjDbcG1hgVQWwHGXHDfWLYo8b1RV3E71tyrCqUZd6YGsIYQtmuFOmGzbT52
         rD8pdw7BxiPA+2LYoye6/Vo85pGnzGSi7nFmExl7pSnJEHIuTw3gu7Rhp8xO8Dr//pXN
         CzbzX7wgrdy++Y4YqcE5Ob15rRL5xU5cCP6Ba6JUed5iMsGXzUAsZ+vLAmzj5950casU
         SwXT7jf1XTxYthuc6ghYuFr/yZzgf/vEawWWgnENk6f4mIqhZNfvLyk28e9o+Ij9//Mt
         D1lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772288097; x=1772892897;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tDN3Cme7vTQP/3ACecjLrjDroJOpD8UhxZvthgwpOlk=;
        b=Dk3zuf3IECQEbQegI20fFFolUn7DUnUqsmUyNTz5oReVLagbI1v5e7kSW7tMzLuWvz
         mFI1NWeb9iUyztVfWe+cOH1Bysv1yJDAKiHTe7/DsQcUcn+iVnnjXsyoLIFu/nbHwOxU
         KSDHJ+SxBTndo4rDvNbH0TmLD1Bafk0Js++t2TndLka2q2cfqnYVQsTit8qNCE3CH1/m
         Rbxrm3T4p0fqryS3nn756v9iAGu4fif+of1FcenkmdPTkoUzEYE09TqkvjJ5y+lcPJXQ
         En/cSH9g1IpeQC9UZnfWIjM+t844fLx7AYqQsaLlnupABgsQDPaF9r7FcI2NRVpvZwkr
         sP1Q==
X-Forwarded-Encrypted: i=1; AJvYcCXdQId0Oh93s9/UAd+5X5mILbp95Qg5igt9s6+tn7knvpJsZhQNoLgPO4mvmJQnzQTIvxIr/nSsaAXt@vger.kernel.org
X-Gm-Message-State: AOJu0YxHJk9Wlm6pbGMjrwL9H7fouITguoYJ+jZ3RUPLmZhDr1trKHxK
	VivK2D0WqpDENPY+HM8/L9OgNo+Y54jc+Jy9Ycb2PssyfbhqOl0qCkSd0PqA6FmIktdHxaSowih
	zvSNGF76p571SuRDIyAiI++Qx7jMNvuY=
X-Gm-Gg: ATEYQzxKmUFBB8AW8isZ2IdiQy5gHqC7vQrIj+U4DGV+oUM0tzx1Mdfmk1UPYYJvYgM
	mJyr7zHkJpeQVo+7D2TYKdj0PNLYFTyEvvXG9s+1vaAmrjUxf0cNaCE6PDgzxwLCHxsj/gIWJzK
	LqkZigjvs+s9wEEuY6Bg/Bm6zSj3BSzvIQXgCIjrMITNSq8GR0R1mc0SGcUaPSJnAOnBnzGSi98
	nZ6VcFYAEIKn1EHpLdXQnRxzmTA3Lr+MBfg9Ygo0ZN94L1pC5GemzOzGvRjrLoOeFGfdpQ+nA95
	/NI00Ls=
X-Received: by 2002:a05:6102:390b:b0:5ff:1a8a:7093 with SMTP id
 ada2fe7eead31-5ff32514574mr2805913137.30.1772288097469; Sat, 28 Feb 2026
 06:14:57 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260228125431.23098-1-mitltlatltl@gmail.com> <awrfjdwsf4gyyg2s6ppw4jfmpzp5s2aavosmspsp26oqccco7y@csij6bpnfpu7>
 <CAH2e8h75H5ZZ88pkFYTwr5xir_giW5DxV16Pvo1_DFQuqWGFKQ@mail.gmail.com> <7gba4xjc3rk36y6e7ztc22jortvteo4lsyywoxfxl3xa5qb6pp@mgm2mcczdrk5>
In-Reply-To: <7gba4xjc3rk36y6e7ztc22jortvteo4lsyywoxfxl3xa5qb6pp@mgm2mcczdrk5>
From: Pengyu Luo <mitltlatltl@gmail.com>
Date: Sat, 28 Feb 2026 22:14:40 +0800
X-Gm-Features: AaiRm53eO9eL4cvsCpyi6nHdrCVe-COFKP8PbIePx_MMgPU7ylDPNXWb9q7J7nI
Message-ID: <CAH2e8h5sRuTdb0dawiUfO4A3tCYN7omrPK74_UpyEmUmd6OKHA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sc8280xp: use refgen regulator for DSI
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-269577-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mitltlatltl@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email]
X-Rspamd-Queue-Id: F027F1C376C
X-Rspamd-Action: no action

On Sat, Feb 28, 2026 at 9:44=E2=80=AFPM Dmitry Baryshkov
<dmitry.baryshkov@oss.qualcomm.com> wrote:
>
> On Sat, Feb 28, 2026 at 09:38:43PM +0800, Pengyu Luo wrote:
> > On Sat, Feb 28, 2026 at 9:13=E2=80=AFPM Dmitry Baryshkov
> > <dmitry.baryshkov@oss.qualcomm.com> wrote:
> > >
> > > On Sat, Feb 28, 2026 at 08:54:30PM +0800, Pengyu Luo wrote:
> > > > Use it for the DSI controllers, since DSI nodes have been added.
> > > >
> > > > Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
> > > > ---
> > > > This patch depends on the below series:
> > > > https://lore.kernel.org/linux-arm-msm/20260228101907.18043-1-mitltl=
atltl@gmail.com/
> > >
> > > Why was it not squashed into that series? I'd assume that DSI nodes a=
re
> > > incomplete and are working "by luck" without the refgen supplies.
> > >
> >
> > I had completely forgotten about it until I found the patch when I was
> > sorting these old day unverified patches. At that time, I just sent
> > DSI patches. I will put it into DSI patches.
> >
> > Many platforms should work without refgen. Bootloder may have
> > initialized it and be untouched later? Once there was no refgen
> > regulator, my sdm845 phone worked.
>
> If there is no refgen driver, then the bootloader setup will continue to
> work since nobody touches it. If there is a refgen driver, then the
> kernel will shut it off during the bootup procedure.
>

Thanks for explaining this. I saw a similar thing on sm8750, I had to
reboot again and again to turn on the display once.

Best wishes,
Pengyu

