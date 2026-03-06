Return-Path: <devicetree+bounces-271802-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aP8RLE4+qmnGNwEAu9opvQ
	(envelope-from <devicetree+bounces-271802-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 03:39:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1803021AA66
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 03:39:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BCEFA3033507
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 02:39:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57A70352F9B;
	Fri,  6 Mar 2026 02:39:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="M0WnyHUM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06CDC33ADA7
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 02:39:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.49
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772764747; cv=pass; b=Ocnk+Ff5rGyC80JHWu/WA+0A2fCgLde6Xv9h9uVHerHzvGl7/4d2RYZ/BuvAv7W4JvH03wm4HcYJGBRGr/Jp3RCU38GBJY4qsurBe+4J3iVILHI65qhWJzM1bx5FbgVzd/CS8RvOqDEM4sU6H2BNcL6LqqguaVZstyZ3pIt3QvA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772764747; c=relaxed/simple;
	bh=ntNhpeJKHj9Gcz76mVeBjjXdVPDLd/l3flMVyUPRa+g=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GJSBfDVAdzgA4lmePnHJuWEQEnX3taWjvzd6SM+UmtkzYU2gLLJBJp0LK5UofMrpbLhMLatcwoN5HpswnKRz3132ounP6H18QPqvj+9/WUlF4EOUH3K3hRvIG3WOTsUBKulSyagqjJhs8CfmP4v7W3TaRtKsjz8zQtDpDjJixU0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=M0WnyHUM; arc=pass smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-59e4a04f059so3053439e87.2
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 18:39:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772764744; cv=none;
        d=google.com; s=arc-20240605;
        b=UryIBXTpU/DdRWHUIm8IluHkPprZ/xxGa0pjd06FfQTCEdiqQIDZ1vd6dCtq7QTIX9
         F8H55GqzF26Pto2ME3PsXhgSYTP0js4O4Mcz0Fbv2zhJHZ30xpesfI9jdtrjUHpqEGNH
         nDKzFWqM7nZKTxJRWjydKb6Ir46XNMsw7dulSqTQTgrZcRUK3cwZGIghEDh9XNo3aIJl
         HZFEsN3dafl8RfiCla1dvRqe2a2Ng+cFZLUU6mq6NTOVYl4fq5yurc0ICue72ycHa83M
         fkySnAcBzmBVJRYpkaTWtfoyuuH0geWem4R6ToAEuwfIS8peBDsDvimfKSUF4A7G9vIk
         ifAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=ycJdScU7VQZBgNX8C+iWhq//vtAo4EZ9U6PbAPueQDA=;
        fh=LMbDfyEw3OSBkyn5bMK3Qe7LuWMVjS4RFdmcSP0RzyI=;
        b=SDHVxltkO5e0WtfvTf8sWWbC4SkEzIgRzLPT1S3FN+Rtf9YNi4NaVq/4PEeP++Dygc
         dv3o47yzvswY739JrzmVrPqW9hGkOTWlv0A/JqV8k0bK1uBrOGeVKeQG2kFKhTz7gIta
         rWX4qp4jD5OnEoMTWxtktLn2OBCKAaKq2JdkNdoCd7R0YDsQp/gAlDJb+/SS4avTmCDl
         CZf/W9pZ1Tq2Bm0rMf3ZdOCPj3nRft6yWHA6KHnVUs5Tzy+F80DlW6YlRMooCx1y2K0h
         PuwMWJbJMAWvZzqd+xuCsPwvTwIbQ8BXoR/uIIUa06gv/bt+oLW7dOI0DUPvxFgIGAAt
         5fOQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772764744; x=1773369544; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ycJdScU7VQZBgNX8C+iWhq//vtAo4EZ9U6PbAPueQDA=;
        b=M0WnyHUMMaDt5lsk38jX6ASC8QdBxr/eDAckBJjn2P62s1fnWfTS2AeVTgjQT8Hxnu
         9u5riaPHF5Co2ynsFsF7kP9l9G+P8pOjvkqtvNjbz6FjZs/bY6FNgqwVi6kvdS3UQJ1y
         opgA1JQaW3qG1xRnDzHVy4vCb05jjg69HrNgkmdYVVf25XVhK7hQ63bO7kwwrecR9qMx
         nMq1qY1gWxR/M0YciIRSwO2+DD47BO1i5cEwc9pumvFX0Gl0oSVwCb3G2VoqgNuDx1uo
         8I8XWoWlOu7i2veweuZoustWDxQtdmzorBGc/TomL/fH1pONAWxNgLqra+qvfoSwbKHW
         Vsng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772764744; x=1773369544;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ycJdScU7VQZBgNX8C+iWhq//vtAo4EZ9U6PbAPueQDA=;
        b=kpkpGJOlHS3WprCpoDeBzL314wNs/2hbpOP2f6glJXaw0knGiPxjLhxkSAwXpjV+aL
         aK96XxzP++14DoWPw3SUpDMshJXPnCg1dkz0H71SMuIiZbcGVHIT/meLIRihxKXKSKq1
         zreUfnxwgLzQtQE56oiGbA1+MwBEGMHkx/34ai5jgiF5UPh0oohR6iDLngJN9o/+MfrE
         LlEBENj8PpltmEnssV0s+rR7BSOJFcWhNUTZSf879mRDt0luFh7Lf2u23cp9qzs8GM7a
         tbHh4rY8MnLzoAih2ZO8XR8/R6+yxZ8YwKACtT+cU1aQfIsiak6jUYgH1gZpj52I91m1
         w2pw==
X-Forwarded-Encrypted: i=1; AJvYcCU59KQtEpfkh63Ne7sRyLL7u6EfvkGdqXCYlVpxD/9T8lK5zqcglgRLr25wfgMqgI+jMN3H3Kuy5+r/@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6dxa1idaN7tKEdpJBFhRcj4iwTeTQIbf1KZ0SvMaH6GCMKSOi
	OhiO8PXwK6Y73/8s+87cff+CytZ4ZfQO/y/s1ZS20p094es5euh/gdVjJPTsi7t2hMWIjeoowHX
	/1CPT7FZCblsX5VU3OdoV0oKmbENHckw=
X-Gm-Gg: ATEYQzz1ZkHslqkL9yXRIpvB+YWcqkIQmNkSnL+aAZ93N89FNFDZ6ABVSYfd8ZJ7PuD
	8J33761NTldMDUqWtqcQ1FKpWb/Gh/fl4Wt8q5eUQXnF4lyMsZF/Pvxe8F++T4BrAv9As/kAu/m
	r1Mkm4BhXpcNAes6MUMyRVYDDBpyiz0P7WP2Gj0PKB3szI0B51yNsIrK9tY0P4yOP6Rb3YU1Shr
	5YiM26pgWsn58HaYPWPvTkxHcBtdrTfbdh2U7VgQqHWgMrc39S+5hr2PVWqHv9St8JmyRBX9utL
	+3IsB2d8bCEGye+XhxS/4mih0ZjcXjerRrGTzIVIam+bF1sdewNK7voiAV8pB0HzmO103/OE
X-Received: by 2002:a2e:be23:0:b0:385:c13b:5584 with SMTP id
 38308e7fff4ca-38a40d6e2a7mr1475161fa.36.1772764743976; Thu, 05 Mar 2026
 18:39:03 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260306022406.760-1-ming.qian@oss.nxp.com>
In-Reply-To: <20260306022406.760-1-ming.qian@oss.nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 5 Mar 2026 23:38:52 -0300
X-Gm-Features: AaiRm52GfF-aVTbn8TmD62YiOKnhcu-hzGhY6Qwg2C8seTj5WNPRzZ_mAb4wZdE
Message-ID: <CAOMZO5BP2aLD+a1r7hVd3F4Qvfovxb8PgQfzcVRKknBHWYBmtg@mail.gmail.com>
Subject: Re: [PATCH v3] media: verisilicon: Fix kernel panic due to
 __initconst misuse
To: ming.qian@oss.nxp.com
Cc: linux-media@vger.kernel.org, mchehab@kernel.org, hverkuil-cisco@xs4all.nl, 
	nicolas@ndufresne.ca, benjamin.gaignard@collabora.com, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, p.zabel@pengutronix.de, 
	sebastian.fricke@collabora.com, shawnguo@kernel.org, ulf.hansson@linaro.org, 
	s.hauer@pengutronix.de, kernel@pengutronix.de, m.felsch@pengutronix.de, 
	fra.schnyder@gmail.com, linux-imx@nxp.com, l.stach@pengutronix.de, 
	Frank.li@nxp.com, peng.fan@nxp.com, eagle.zhou@nxp.com, 
	devicetree@vger.kernel.org, imx@lists.linux.dev, linux-pm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 1803021AA66
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
	TAGGED_FROM(0.00)[bounces-271802-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,xs4all.nl,ndufresne.ca,collabora.com,pengutronix.de,linaro.org,gmail.com,nxp.com,lists.linux.dev,lists.infradead.org];
	RCPT_COUNT_TWELVE(0.00)[27];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,nxp.com:email]
X-Rspamd-Action: no action

On Thu, Mar 5, 2026 at 11:26=E2=80=AFPM <ming.qian@oss.nxp.com> wrote:

> -       { /* sentinel */ }
> +       { /* sentinel */ },

Drop this change. It is unrelated.

