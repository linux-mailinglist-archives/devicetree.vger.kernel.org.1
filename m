Return-Path: <devicetree+bounces-261099-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SHYALXFdfGkYMAIAu9opvQ
	(envelope-from <devicetree+bounces-261099-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 08:27:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E457CB7E86
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 08:27:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9B02F3011756
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 07:27:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E68E730EF6A;
	Fri, 30 Jan 2026 07:27:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lDEc1f/Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f171.google.com (mail-dy1-f171.google.com [74.125.82.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96E2530C373
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 07:27:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.82.171
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769758062; cv=pass; b=NbpG6gmwuejoyb6PngSz8dYWK8iQcXo3PjHW+KGbe1nzi6IUPei38Yjpkkm8sDGLlAVeUpDuKOCuJUjOjFnc+F/aQrKmlYPYvvz8NB8ZsclpRDh5TAWGeq0SsoNm4ArtGJJ+ItFnq7RKWGdkZwk2ScgE85h1mNZzMWre2E6nk/8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769758062; c=relaxed/simple;
	bh=phbd8D5r3XvJehy2gum6zA4CTU/Osysv5H5RyZZe9gQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TwLdzFKHCd/9S3+tKbhvCxWxx+QA72dzDVVbd0JbPl3VlPIc+8WHMqT/rB9u3O1JoPeGq2kHqMkhnUWiATOuyM2zVBYWc08eQDAjcyOSD64vmJCaqfsiKChRCKtjvqhV1GTB/2UbouoBNHxfyPOubA7Pwh808o3dkcwBLr14dHU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lDEc1f/Q; arc=pass smtp.client-ip=74.125.82.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f171.google.com with SMTP id 5a478bee46e88-2b714f30461so1672675eec.0
        for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 23:27:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769758061; cv=none;
        d=google.com; s=arc-20240605;
        b=d5CS6NNbBYy/uLReI8bkTP4mBx/0XA/N+kMnbszXifAJyN0zH8hrNqHsV425kSLrI6
         wMr/Lmx5OZJBjC4aj2TrB260L559mOWpWRXPLJWPhv5Z5H31Hqn6vsEyX5cMyWhUe8yA
         q7AERJA+7iSHtpGcDXfmqNCUaLw1GzxFzF172uMMLupBKa5GWFYf41qC4CFDsB/HmFkz
         dgNWv2e2i6sCmOEPyU4qseEuMkw1cKx4I0R5N98ns5rAsP0wNvpesdf/H6ehHo2ov9Et
         3Dr+Ef4l5nuRequB4Zw43m9ykVBGA0GEoPdf7sM5dOWlSAlihtcHWjSpfyfqNiyUMq1A
         HOMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=u1WR5ODyKHxb0v/kKAHtZd8QE/NKwhLOL+jqvJJiv/A=;
        fh=snxC9FLo08J1W0xtow9x0Kd6kFwih74DBdTrTvvVzHY=;
        b=L42mTJqVXKHhPDu4+BLmCflJ66Fc8KAtKEKrYeREuwBVtLTAbbVZpsMULwxLyvub1M
         oIIo6OMQpJaWoKzZ+FospmJ5ThzqVyJj5Ne7q3jWPJNqylz8p6suc/SRpLNTmZboJhY6
         koAm0iISKKw0rFpa2hwcoFdcYExiGPBKVniO0aIzsKor/NANAJgR5e+vR4LDDQYzjdV3
         eq2J+VX/KiXje2Rvgtq5TW9+24iK//TyET7GA9wHghq2+08thTXcisXlqJisnM133sJ1
         9P3aDxLaS7bkpAPS4sSa0unZLYVfSEZLtl5Xc8ELwtgT4WVZft48AeKjkpiDIl+NsWoT
         Aj1g==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769758061; x=1770362861; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u1WR5ODyKHxb0v/kKAHtZd8QE/NKwhLOL+jqvJJiv/A=;
        b=lDEc1f/QKXanzY/hYYKlneGIcYT9yFVOYQK0N3pwwa+JfbqtPj902GoeE/L2/AwqOI
         e5H85ELe1B5kCyJYNrwqItBjYIHV4693fLsh/hEdVBo330m6fWkoTQS5x90NPT7OYqnD
         xcPF2VH3w60lkkkrNgbQ8JmZTE2q+d/+7XZik3ut9kK7dCYZ2RKccvvf6CkYZKZsulz2
         9a2MFGIvKxH6ReQ376emjRcXRu0saVLxhbIA0ejE601Xg1qvQLQlj/0v9kC+dk28la8w
         8GfAAj8wPvpaF1ZTdD8W6vbRRmxxhlhY+E9L6hHF9zgxyf1DiPYxRRF2yhAh3ISMg88U
         KZkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769758061; x=1770362861;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=u1WR5ODyKHxb0v/kKAHtZd8QE/NKwhLOL+jqvJJiv/A=;
        b=FR3fsV6pz+stgNjtDMYWzYEG/A8WDQ3EVhATIP/5/CQAqQIfQNGfSLDofKG+CYhd1s
         qBwCTKa6CBZ5JPWGpyRG/31y/uGKuiSfxx0Viro4Gqa2KRYYFrRcpWt3KaGvlypiTGk3
         k1nrarohgxLxc0X8SQo82fTgdJAWug42xquT0oPQ4IbdQnPWS8pMcj0qSQlNrqQaaOkY
         QEvfmhvtakXcLtJDzZUnC9micr9FE15xWoarvLjADroGvc3MyOs4iQl3UK8Zd9XvFW69
         ShKMskR36KLR7o/jab4ZCsHj3nT04WbXWVRB+cwzSZNnlS7Fvz5qFKesz//ipLI3fk12
         MdTA==
X-Forwarded-Encrypted: i=1; AJvYcCVFLL9MPFMO0B+sFQyIBFdBfZeMHYTIlla6021XW2V8qz8IJ796gcj6NlnNKXJocAC/QIQISW2I409R@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2pmjLMS6PNK4upStcZDh7lPgca5Udm/GlZU2952POHgIwev1K
	UUADo+50TuirneVsBz5os3Z6N9MsIKfcrhveVV+a1Y1wtDY7u4mA1XkpELazQYbulbB3k1ab5R2
	B0cWLRielIff6acpT+H/pYBHLLWgZvM9brGGVABg=
X-Gm-Gg: AZuq6aJiMBhRwWRCyPkG75AKdhtxUyIKmH/aTJRvfzLaM0aAlMgygEg+WDnfWptN5q+
	tDmoqDClEM98T7u2xZ/PYnOY7Iw2FZVkTzk8hmGQ2JRHy1vWDEYQ9rVY9dxYIqPkDATjEDrdq3P
	qRBKnsjCXnfC5vMp2WfQ1HVxn8zaGUzh4of4MYoBW+J5tikn54fmkql6+cXA+Irr1RMEywz+M4F
	t2yjlMg2RpISlOllqG02EbtjPwdvLjfdzQNESVgawUvCERATXWxW3Gg+O5jiahCOtM5LLeR7NLA
	X5uroydp5BeG6J0Z1d1wj6Gj+bx/Wtx8RzSOSC9w3ar2k10g5B8Yk/Zqx4AfwKhz5ZdrynVl6/b
	V1KIDEfKg3Q2wxg==
X-Received: by 2002:a05:7301:5f8c:b0:2ae:5db9:f32c with SMTP id
 5a478bee46e88-2b7c88d96d3mr823727eec.26.1769758060694; Thu, 29 Jan 2026
 23:27:40 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260130054330.3462544-1-shengjiu.wang@nxp.com> <20260130054330.3462544-3-shengjiu.wang@nxp.com>
In-Reply-To: <20260130054330.3462544-3-shengjiu.wang@nxp.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Fri, 30 Jan 2026 09:27:28 +0200
X-Gm-Features: AZwV_Qgjn1kkHIU5h0wzpNnEdB_ncps3lPvcrbigVIp1umd_Brl0rdk5oiMuE6E
Message-ID: <CAEnQRZC_6xRRi6y2t0MGe8udTPYWg9XEBFrxhFCbKYBCCD=OeA@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] ASoC: fsl_asrc: Add support for i.MX952 platform
To: Shengjiu Wang <shengjiu.wang@nxp.com>
Cc: lgirdwood@gmail.com, broonie@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, shawnguo@kernel.org, 
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com, 
	linux-sound@vger.kernel.org, devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	shengjiu.wang@gmail.com, Xiubo.Lee@gmail.com, nicoleotsuka@gmail.com, 
	perex@perex.cz, tiwai@suse.com, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261099-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[21];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,pengutronix.de,vger.kernel.org,lists.linux.dev,lists.infradead.org,perex.cz,suse.com,lists.ozlabs.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[danielbaluta@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,nxp.com:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: E457CB7E86
X-Rspamd-Action: no action

On Fri, Jan 30, 2026 at 7:44=E2=80=AFAM Shengjiu Wang <shengjiu.wang@nxp.co=
m> wrote:
>
> Add a compatible string and clock mapping table to support ASRC on the
> i.MX952 platform.
>
> The clock mapping table is to map the clock sources on i.MX952 to the
> clock ids in the driver, the clock ids are for all the clock sources on
> all supported platforms.
>
> Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>

At this point imx952 has the issue with dma request not cleared you fix
in patch 3/4.

So in order to avoid this you need to swap patches 2 and 3.  And in the
newly patch 3 you will fill fsl_asrc_imx952_data with correct value
for start_before_dma.

Thus we also keep everything working for bisection.

