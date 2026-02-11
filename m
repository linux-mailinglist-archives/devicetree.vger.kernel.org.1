Return-Path: <devicetree+bounces-264775-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CCMWD7t8jGkcpgAAu9opvQ
	(envelope-from <devicetree+bounces-264775-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 13:57:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B44F8124976
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 13:57:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0EB953067A1B
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 12:55:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2F2E36B040;
	Wed, 11 Feb 2026 12:55:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bsW3xJVx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4733036A03F
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 12:55:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.215.179
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770814545; cv=pass; b=mIS4kmb0p+iEdVrq+5MrDqCenzEy53ZcbUkXyJfpnm/z5apZzbPOLGOl75XteBWe63Ji28j4kkQk4JPC9K7emb+hV7kFlIl5mJW4FBMo6zjV0J6ge8ksfk3rx2aK7kCVWo9LuOvsjEPRnyzTfSS0IfkU5aLEIyTx/8g9BDwjBWA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770814545; c=relaxed/simple;
	bh=TQPLyNUOsT853JeRVxd4vRCseL2vBGqTHc+YT/1DnmI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LdcLvu/+MCFqGyv7VN+0Y8gfR6Drym3QrNSlGp+nkwsDlXzbWbevu8MEb4v5UqrOdJ3UIEpHDrW0w9h2UXEvfPTy/YEEsbhcpx7ice9Vi6V2nlpQ1TEx+NkPDfI1sB47xeXaTwWypkLHbpGVpk0ip32QMNvQvaHZtlsvixS0FiA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bsW3xJVx; arc=pass smtp.client-ip=209.85.215.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f179.google.com with SMTP id 41be03b00d2f7-c6e1a67d4b8so357642a12.0
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 04:55:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770814543; cv=none;
        d=google.com; s=arc-20240605;
        b=diXFCqO0tCrt334NfJ4+kxa84AlEec1JyNPVK27H2wgY/CgXxiMBipQxk/TORmyunU
         Hwj1MyTx9aGxfOZmyY0VxDaXPvVE32tvwtmHrIuAUrjX/lTFW5t71tr1+XcN6EUoiVG9
         JkWT2+b2Gb5dQscdfuwGdxTvbdPvkP3AIxPuN82jomELcCnDllz0CGQaX3COoAyh6vGl
         dxgxIxbCSaBVXCMY8b1eZs4dv9Jcv6AWDEOgWJJuC3CGgmX7iYWZhMVEV/xicKT35Lmb
         7CM3JZ074lIMdSirmHKXcWGuSl9Cu/vId1dnQx7UbbQeH3wldi0P0lQsIWwhXEL4tuor
         tvqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=JDIByRHWTJu+F1u757ei4DkwCvzO+Ps6ZysiTaCKLsI=;
        fh=1uBUnW2RlWugeoYsUI/+7Yp4HNx5z6M2rfnzQPISRwg=;
        b=Z0b8YYPMJMONjhqlVUzMQlbFkDcB47NtbXtHg7BP25YIBOqQ5EjyKzP0ukPFxb8rUM
         ahR+Hrq6f/f/mv2AbDgPlCXBP5D5XiNvuiPIdmWnq4xJjrHQ59ge2+t2asTFybco3MH2
         ArtwlHvQgMacipP+q0/fBzScmeQ+4BpsPKtEwdYwfRxdCojcEg/bCkRzZuCkCtnrH7eM
         lNwaQLZr9QN7ki2VK54JbbrJenueb8vUFQYTXYq434bCR+K3e5dpEvitb2PVA0+2ocBY
         uiWumAgehZzxeuOatEGUktHREIm/G/JMdPIgIggYs6H0tMUzm0p6p/0O/gaWTnP3keUD
         K+2Q==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770814543; x=1771419343; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JDIByRHWTJu+F1u757ei4DkwCvzO+Ps6ZysiTaCKLsI=;
        b=bsW3xJVx2AN3kQbVQirjWMupqyEA346ONkkcgCXHQFU+bWZVqv6NFm+sm1SfvbLnzb
         2oeGvgdQH3stzn8iU0XKJV545ykgvYLYz6pUNTa4D9Bdw9Dn8iOWlAlm+OIE+hySnDIW
         ZqC2++W78aT5ABtWCf49FVyxG28/qW+l6CjBeZsWM9OpI/zjQzm4mMS4ebHcD446UDrn
         t59ga3rMdL+7LFurS0OZyZiXOkY1Qx7VNvEwt+xw6fvS6xeyHy7kyB7RZDdu6EHRguM6
         la1lEJ2kfzeWS3EgRS4mE3hfMRUiC9my4E/zJFLi6hbw9Z/cGH97cxMnE997Qjy7jKqy
         xzFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770814543; x=1771419343;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=JDIByRHWTJu+F1u757ei4DkwCvzO+Ps6ZysiTaCKLsI=;
        b=T0YvlyK1TtK56TqkzQhGWDfeEc0BU1bRAQZJYgyiGn2Bb7+Hr+kXGJzVtXLg6hzhun
         C1bK/ho9zIaKmbv+e74rudIhu+m7MSnDhWmFK3ikwjtarvyT9pkD4B09HrPoZ1uTgzll
         1rPMzPkkLd/s0QyfSL05xY6OvX7CXYhEF5aV0xOf3chwSd24VWLMfCOwW00RVQDKCt0Y
         wWB4LlMEMqQiyCVRZasqmoEmjrFUYxFgn9rp/oH3CKyPQfADONiQNIT5w6OyBf4UhEtt
         c3wGHczwjJ7d95pTRXBUtFkOeLhVcEEZZyyNTh3Y/YOwBXxcchQehHncLPAwwedomTiJ
         Q/4Q==
X-Forwarded-Encrypted: i=1; AJvYcCWsNpEjlSIV1cdeB9koTqxY5wqvTkEf0ZBI53U20P8D1p80zA4sCvM7cJ1/eKoUklvEU5YkujEcwlaG@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5hmO9OIE8fjYfzv7/5EYUi8tF90kYMzSYRLowtyn/zZ8m4NTV
	A85juWa5NNeHar4ZgkbeyV5MlYlLvQzzpzoiscwt7gA7p7LArjmuNu4p/sFw3oQknda8GJMDL27
	HYzYjSZlmGeS5z0PR7gEIYh6STggAgNN/TbeF
X-Gm-Gg: AZuq6aJm7YtH+6J4XibTvwr6MzqzPgLEPwnXvdAl+kVN3G9IeoKrNYVpFaOh32mtYuk
	7J527qnF46hwxuBlU3mdt1XtyN2p7kzrp/0Q1DMojN2aiS/zhx7ST7WEakkqzUE/aSsI0a6vJFD
	vsXZqGcXGudXLCBnzw8RDiRQSfzxT1SmRSHn+FZDeriAYRHvEv8HlLhFiPH2NLes3bjBV/9Vp7e
	qTN4wm+0hcWXnAI6iFUeLN6UhRRmgsi2IlvgPbI6SwVae8iXyjvXpiC0MlwDWQwAfdVwjiKWSRT
	xZ2aOq21
X-Received: by 2002:a17:90b:2883:b0:354:a662:47ff with SMTP id
 98e67ed59e1d1-354b3e648b7mr16011029a91.35.1770814543492; Wed, 11 Feb 2026
 04:55:43 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260211093527.2892297-1-shengjiu.wang@nxp.com>
In-Reply-To: <20260211093527.2892297-1-shengjiu.wang@nxp.com>
From: Shengjiu Wang <shengjiu.wang@gmail.com>
Date: Wed, 11 Feb 2026 20:55:29 +0800
X-Gm-Features: AZwV_Qg3zVlSb2OtUw50o9EccUdHn6MB5auH8_NcMuGj10Ru5NS97QaC1VqXYZY
Message-ID: <CAA+D8AM-HH+=kY+ytziDcuvfwyGkcJeooM58-6nxPdYb3M4F9A@mail.gmail.com>
Subject: Re: [PATCH 0/3] ASoC: codec: fixes for ak4458 and ak5558 codecs
To: Shengjiu Wang <shengjiu.wang@nxp.com>
Cc: lgirdwood@gmail.com, broonie@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-sound@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, perex@perex.cz, 
	tiwai@suse.com, ckeepax@opensource.cirrus.com, 
	andriy.shevchenko@linux.intel.com, nichen@iscas.ac.cn, 
	kuninori.morimoto.gx@renesas.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264775-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shengjiuwang@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org,perex.cz,suse.com,opensource.cirrus.com,linux.intel.com,iscas.ac.cn,renesas.com];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: B44F8124976
X-Rspamd-Action: no action

On Wed, Feb 11, 2026 at 5:34=E2=80=AFPM Shengjiu Wang <shengjiu.wang@nxp.co=
m> wrote:
>
> Fix the binding document of ak4458
> Fix the supply name of ak4458 and ak5558

I will send v2 to fix the patch 2/3 and 3/3, to fix the binding doc instead=
.
Thanks.

Best regards
Shengjiu Wang
>
> Shengjiu Wang (3):
>   ASoC: dt-bindings: asahi-kasei,ak4458: set unevaluatedProperties:false
>   ASoC: ak4458: Fix the supply names
>   ASoC: ak5558: Fix the supply names
>
>  .../devicetree/bindings/sound/asahi-kasei,ak4458.yaml         | 2 +-
>  sound/soc/codecs/ak4458.c                                     | 4 ++--
>  sound/soc/codecs/ak5558.c                                     | 4 ++--
>  3 files changed, 5 insertions(+), 5 deletions(-)
>
> --
> 2.34.1
>
>

