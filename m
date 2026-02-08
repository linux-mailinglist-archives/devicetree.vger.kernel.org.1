Return-Path: <devicetree+bounces-263758-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YKJrBYQPiWnG1wQAu9opvQ
	(envelope-from <devicetree+bounces-263758-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 08 Feb 2026 23:34:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3916C10A766
	for <lists+devicetree@lfdr.de>; Sun, 08 Feb 2026 23:34:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id AC993300159E
	for <lists+devicetree@lfdr.de>; Sun,  8 Feb 2026 22:34:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F46437B407;
	Sun,  8 Feb 2026 22:34:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="by2XrHI1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BBFA37B3FE
	for <devicetree@vger.kernel.org>; Sun,  8 Feb 2026 22:34:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.174
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770590078; cv=pass; b=Ho1MAPDFqTPNzLoaXiH3dgZjrlrkBPu2cKymyDmIqqT2A+W6O1icbSgKjWLWnQusk7rwDpem46jWMaTS1vMhLjF/8Dki1mlotAXWtoAyVhGJBUgyNkETopLXkFdlsTDHmLkfY9NnxT9rwFw9sAJkNRseN1eLj/oXeee/E3jBrNc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770590078; c=relaxed/simple;
	bh=HpI63RvsTKr7+Le0GRQxhDSvJP5EizNlxeBlFBd+wLA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=OXAjxl4kGYWZYJ5hyRoQ8pM4kPS0Tz7YadERx/bZRu8F81a3TKmZTJnFCyXOu53J67ZmyStjMmW3YWGdILZbX/dTSoORaoNQs4t/70OrhAodi3IWHzGsew3+ZqN4Zn5ATho2VMGZ2JfHiQlfh4TqvZKfZeVEXXiKs5DSxNoEMyY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=by2XrHI1; arc=pass smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-386714da2a2so17683741fa.1
        for <devicetree@vger.kernel.org>; Sun, 08 Feb 2026 14:34:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770590076; cv=none;
        d=google.com; s=arc-20240605;
        b=cmWgnPpcA4MMcLq+ixkmy9zmHBqNCnr4ixae8Gchq8YEJcdWDO5RjEl7ZNnKjSFKl9
         +cmmp2LXNd7kSQY+qrkZBiZPW1L6StzgJNOvJAlPKmGvGeYSHjrWecV7rzm+dn/AJQvt
         LmeAbwZarb/gCUNw2P+DPpAyBmq/UchnusGk8Oqr2ay36VDDpox/wowESgr7RofuraoB
         Z7EhbeXIvxImS9gSRma35VMWLk/95wVlwF+Vb2wZGun5HtUd+F3/zperIBMVkhZJTjZw
         GuHWT3nnPDvoHFvzVX6NHqOPsq3BF99YGSATL5oNLD94yBliZwENmmqzafnFGbpI3Qga
         sfng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=HpI63RvsTKr7+Le0GRQxhDSvJP5EizNlxeBlFBd+wLA=;
        fh=+Fg8zeMWHqfG/hbHM+rvjdVXbU22Okx2mi9YrVwKKK4=;
        b=hqshG5onS/P68pZoriaDZHLrOt+oid5VJWIZGw2kndakmLwxYOy/czD6/PASc5Umwz
         MiFwVhld5ET9hhG72+Cky8ejZFEcOYTsd/uBsxc32X9Un+QFeCrWC8mVqyWJfTKZ+f+L
         paTCFeJL3KPNsZIS1UOl7fmYYjRCyuzfCf1zqzpuggRrwR3VxiTe8JVzvCgObMt3AHXw
         kifVmHPoSArw01WB39yuOEjZGCAXfl94tW7wa2xn4asTpYHDjtaQxG4EptEEzsaDsbhT
         BYdekbw4E1/Uu24xvoFfpjViv+aJDDO/9S8NJLFdu8hiu28ozR05odlg6lhHnm2rkt+j
         61QA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770590076; x=1771194876; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HpI63RvsTKr7+Le0GRQxhDSvJP5EizNlxeBlFBd+wLA=;
        b=by2XrHI17Y0O6Gun1gqHHMBA33b2rEMjLGwv+drXAcXur2RfWhDfBupgkkpGjXLVfy
         dRwHqAJIqEbOp7M1Vn2/FyMS/QkJkiddbUu+8GnewsFfL4P2m/Jd5CKfpY6b8m9uXacs
         3nyYqJoxhbDABhpJiVc3a2lcX1kqlJcpVZB5ayXEBDJolWa1MgcMG86ncLrxanUNc9T4
         b7Js7ONWbZELgmbUO2c3zwJTaTopA2axzaUmUTFZhqytYejczTiVzvl4TxI2yXmCt/0n
         2TyTz6FesHmc2ocEN1IScPJeMvLEOVFUwlHAucxXKY8vChKu4rFwW/tFFDa4TZfWO38A
         rOxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770590076; x=1771194876;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=HpI63RvsTKr7+Le0GRQxhDSvJP5EizNlxeBlFBd+wLA=;
        b=Dl+XyoNKToDAk1Lim8+lPiVFzi36prtH6PE3e0usp5qFw0YUwPIumj60dDW2+slHPE
         +l/EtrnwxyM55VwkcEoWkJjvcU+EyASsU14c7UbXbJIPrtX0RU0ymzaW018Mv5m5raun
         ECFNDulGINBuORCPr4riN9QLVM/mdASZeLJng5PpnoJzfGLYRZG+lA4Y+EBAbovqgVon
         ca3086FwWfNe0GNuQ089N4t8hcV1Cml64gPmuPhGFccZvqWgJHQsBtZmcSfQJKErwpgH
         o2b64eQHucNwGZLxTHA37ZOxj2iCwzmSl1mg1xmw/TtzmeW8UOmuPlIyU/4uFoLpKUWj
         f+2Q==
X-Forwarded-Encrypted: i=1; AJvYcCXCCh8TWXnQ8PbqYXu0RL9QX8IyKAZatRf/7Dx5+HeXlp17HBicYByeihF/hCxr5iX0mdG1oRcPJO7+@vger.kernel.org
X-Gm-Message-State: AOJu0YzChidS8VwHEgaNsDMaphUtzcN8a8JbTXkjnyVJpmJ3HaDsY3Sf
	iaPJRyTq7IIi9iBgvLR7gZP2oi9zJI1lsBJwf/2URyvx8yVz5aa5xItwsjnHZKpN9grP474w9Oo
	cSEecmUO/ZjhOOqCR7+PLKOblWLm6Obw=
X-Gm-Gg: AZuq6aLUd17iVB2GaaH9mDd1sIOaU1v0Csb7oFG8y0t7EuZjBODJb8mlNFjuFRlRa+1
	LhFROjKC0daut234xOExdoGV2u/0cSoH5RK10MrGymO+cDPfO9bs0IyyQz8NBUp5nlxlLGMTSYQ
	1HVKUkImUutTj0PdgqabDcWy44NdACwTBFjA9MtXuuOix2B4fcDL21jhW11geEps1jiNf5tRA3m
	HcIr5dD+D4U5QTxm2xCHG9kAn+fTqosvc+LwYl5lNwVc8NdRy/LJvzI9BXr4+fiKbNmFUTkiACV
	sn2P41Gl8VwDDug7VttpuTFlhKY=
X-Received: by 2002:a2e:b88d:0:b0:333:e590:1bc9 with SMTP id
 38308e7fff4ca-386b50f9d0cmr29580661fa.24.1770590075494; Sun, 08 Feb 2026
 14:34:35 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260207131803.2834749-1-festevam@gmail.com> <20260207131803.2834749-4-festevam@gmail.com>
 <d41492a9-bb59-4999-8497-e28d03d3a13f@kwiboo.se> <CAOMZO5CmKzrcaVdp6Su+F+uT+nAueroaJcBkKtO3O8N0MWZt6A@mail.gmail.com>
In-Reply-To: <CAOMZO5CmKzrcaVdp6Su+F+uT+nAueroaJcBkKtO3O8N0MWZt6A@mail.gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Sun, 8 Feb 2026 19:34:24 -0300
X-Gm-Features: AZwV_QgSxOCFNJYNoGzR93g_6Vr5IQZIKS3xjaEKp5qzU_JlAOUnmsGAPuX2SpA
Message-ID: <CAOMZO5A8D=q7+6YFfCNk87LfY4k3XT-xKnB=2CbCjLaT6VCWag@mail.gmail.com>
Subject: Re: [PATCH v2 4/4] ARM: dts: rockchip: Add Onion RV1103B Omega4
To: Jonas Karlman <jonas@kwiboo.se>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, Fabio Estevam <festevam@nabladev.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263758-lists,devicetree=lfdr.de];
	URIBL_MULTI_FAIL(0.00)[sin.lore.kernel.org:server fail,mail.gmail.com:server fail,kwiboo.se:server fail];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.968];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	FREEMAIL_FROM(0.00)[gmail.com];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[kwiboo.se:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3916C10A766
X-Rspamd-Action: no action

Hi Jonas,

On Sun, Feb 8, 2026 at 7:20=E2=80=AFPM Fabio Estevam <festevam@gmail.com> w=
rote:
>
> Hi Jonas,
>
> On Sun, Feb 8, 2026 at 7:15=E2=80=AFPM Jonas Karlman <jonas@kwiboo.se> wr=
ote:
>
> > Am I correct in that this is the Omega-4 Evaluation Board (EVB) [1] and
> > that the Omega-4 is a System-on-Module?
>
> No SoM is used on the Omega4 board.

Ah, I thought it was a SiP, but documentation says SoM, so I wil do
the splt as you suggested.

Thanks,

Fabio Estevam

