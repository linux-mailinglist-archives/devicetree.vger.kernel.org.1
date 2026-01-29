Return-Path: <devicetree+bounces-260798-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2OoZHi8ue2mbCAIAu9opvQ
	(envelope-from <devicetree+bounces-260798-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 10:53:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CBB47AE48A
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 10:53:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7C251300A101
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 09:53:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D126E37FF70;
	Thu, 29 Jan 2026 09:53:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VVDln4t8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A7CF37F75A
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 09:53:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.214.172
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769680428; cv=pass; b=esYE3OXZ4ZotR8KWXRhkqIqbi8mGkrFe77X+YEJbPyxVejjf57W5caancJc4Nkj1O4g5o4quVGS3kcei445T9TObOttErtLO1iBsU9e757tLIvIbIMyxUX+FiQ9Pq+jUiyAEAIRD6OWoGO3qmZfL4d0Oa4Qo6rILM9ZjQ+NbYvs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769680428; c=relaxed/simple;
	bh=/7eUFYzBO0piSeiJwey3BFHh10mwh8sua4KhOGsFt8I=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FSHmAV+fHNNYdSnoKxpS1X65N/AaJmboqBn+sjMbLDn34EhHMUz86cOPQYO9Tkn9njcCMphe/OK/7SkXUZHEi26f2yvWWTzqnkKxyKpVa0ZPYSvHT6TuMADtJsDTOnrRbR0xhqpPlxTv+Kh39acEOwJo4ssuZEZqJgNlNWIcCVU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VVDln4t8; arc=pass smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-2a12ebe4b74so8940505ad.0
        for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 01:53:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769680427; cv=none;
        d=google.com; s=arc-20240605;
        b=BbyJjsX9vZR6x1RRnG51LMnYysG5AR7Oh/ZfjL+/TNCoqAwpPhhZ/yPqUjCErSDCRg
         s02c+4cPYHTPTOdJiDv4MQ2OJOt7JL9/M0MKIX3+3Iq2/51WJiTg2GC4COjnEve7Xoca
         GwrVoh6v9H2l7VnscPveFnNvNiuFNaQj1FinbyYFnM+VLq0EO9q+qYJ5wPutn/+R6Jw1
         rR94JLWB1eGYJjSPWCiIeA1dlxzaYSSADafIpc/LzlZmZLh8yh0QNIrhe7d9EdONWwOu
         QusUy7b9bEfnALgHT+QM6oDTNv8OfrKcqTsi55XWqjif92YJY0kO8ABFBMp4y0snuKX/
         NMbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=/7eUFYzBO0piSeiJwey3BFHh10mwh8sua4KhOGsFt8I=;
        fh=1U480w3M1zQzF9zXc6iiupL03L9sM0mGXRmIrMRcvpU=;
        b=NBTHwfqDHwWLwYUB9BVfIR+NAxQCeHguxlBp4fEy/7/MqyqiPfelTgfuyR/ZW21eaA
         o6gSqghhIpWVQrQMaTx1k600IkPvepbJmzXQMupk+Zg62+XV31d5L8ZCWECn8LNcrcjB
         I2qHHPLDzM26eQfDE9NRbXHlqS1+ChgQV+4nTk1TwYe3Pz+cP5wOF6yqmnBq+63ZPj0l
         QBwd9K7Rp+hneY7/shQ+03diRqAWMw7Max8FDZ50fBhx14QUcgNA6lUj9MYswCtwQ2Ng
         Ez5KJQmiX2l6meQworu9v16UWnqiihfL9dW3lfds4ZzLgV/vnyJaR4w1r6xui8m49A0U
         erhg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769680427; x=1770285227; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/7eUFYzBO0piSeiJwey3BFHh10mwh8sua4KhOGsFt8I=;
        b=VVDln4t8gSR78q9W8H7dhnzty/dnpOHAIh36ebaajTIOicGBqd1AmkCmfx4v5MMe9G
         yh9OszJ5gzmL4II+FWH0O4Lz8hqcXme54WcsJOu2ninUG4Zi415HI3pHOqprkqLGsnzR
         UHKTTz8NmaISq0pjFp5MstPyqjcWMTC1RSLOUzHUf4nsVS5aqO3j2FR3MQaFu4QTzD5F
         YqNyB3+m10i6s0KyuIKAz/XsuAzSuVhG4+4l8j0ErsC1FC2aqEkHcufY5cKm4xOQS+1Z
         AG9p6IIBEIi6gaHQHhYfy2ZNyn9yUmkrTfTg3ACoR+I7+u5vQWZjdjggg+DoftpN20HB
         nqlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769680427; x=1770285227;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=/7eUFYzBO0piSeiJwey3BFHh10mwh8sua4KhOGsFt8I=;
        b=BHg8uZCbyvk1udHWnTSgewK0kxbCmUn4GHRmfOIadmrJ3VpTC62lW4DBBAhiO+LWAK
         KA9BiSa2wHjuOpN9sCJvO4QFiyhXeD5fdV0Pwy3klSKks99CqFJb0JV/TinotXijY3n8
         H8nlcJRqOuitlw7gw50u1HL9Lek1JpKZu82YR0nqIddslecNnJMKNt66om6cCV5sZksi
         /PKWsVAJQkBVYNvyiyIHmQmzlZ9G1TIwQlWHana1waOY9bPEb4CNahTUFmxcIM+rWC/Y
         2QU9RRoLAhHT5czzCpITzB0EdfVRBxEOutbModb6vN+vtoVLVElhxxSwU1+3JRVcQzmC
         iU1Q==
X-Forwarded-Encrypted: i=1; AJvYcCXFFn2RJfowNPe+Kq+UaBcOST4tWRt64qLtcZQKIHghcTaQxNtbQbFL12LEO5Oof7909UgrwtCaii8+@vger.kernel.org
X-Gm-Message-State: AOJu0YwyS6E2lw+f1PAxH+EeHrgm9LbL3zQ62/GDYjII4UgjaJWr67GZ
	yTAmmZZTT3JG29Vc/TsmFM02HT07OHnCVXRa968KeDK9FYqto6s+lQOTeYZiPCq0MTP53sFr54r
	96qDvQDV7xZXzB0NENtmClvk+IevVpLc=
X-Gm-Gg: AZuq6aKsBaEUcqwIUxmxaHzxQl7IhPMZWzo6tEzIyzR4QZYGUEAyw1rFdFuAJypTfjB
	fduYsq3vUY5Csao45l89p4jZarUOz9DLA/UoF1ItHKWJTWvIUY19j/2FL++WDAUWB5w2I1xyPcI
	EH71zv9lfraHi1up+A6bEarmiFq79xPkCVZ+tfg336z7MZH9RlmS1ceTQ5Am4o1+4JdzMJvsLRe
	9PkroN0gP0w4IQviq4s2MdBXPbSEy9xD9Kq/QE3YzGdmtt+vaFNv3NxyIwOTmzoz3b8Tgk=
X-Received: by 2002:a17:903:40ca:b0:2a1:5d2:2e45 with SMTP id
 d9443c01a7336-2a870e7dbf0mr74134655ad.59.1769680426799; Thu, 29 Jan 2026
 01:53:46 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260128071853.2602784-1-shengjiu.wang@nxp.com>
 <20260128071853.2602784-3-shengjiu.wang@nxp.com> <36309f30-8b83-4eaa-842e-c663edd8a439@oss.nxp.com>
In-Reply-To: <36309f30-8b83-4eaa-842e-c663edd8a439@oss.nxp.com>
From: Shengjiu Wang <shengjiu.wang@gmail.com>
Date: Thu, 29 Jan 2026 17:53:34 +0800
X-Gm-Features: AZwV_QhJaxBDlnFwwTXJVH6oDtpo891knd-s55tPdoqjkrrPNspPNZy-5Dfzq3s
Message-ID: <CAA+D8AP==mteo7ucx=R4eyPw+DpBUtzC7H1++_iZBMN1kkPJsA@mail.gmail.com>
Subject: Re: [PATCH 2/3] ASoC: fsl_asrc: Add support for i.MX952 platform
To: Daniel Baluta <daniel.baluta@oss.nxp.com>
Cc: Shengjiu Wang <shengjiu.wang@nxp.com>, lgirdwood@gmail.com, broonie@kernel.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, shawnguo@kernel.org, 
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com, 
	linux-sound@vger.kernel.org, devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Xiubo.Lee@gmail.com, nicoleotsuka@gmail.com, perex@perex.cz, tiwai@suse.com, 
	linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260798-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[21];
	FREEMAIL_CC(0.00)[nxp.com,gmail.com,kernel.org,pengutronix.de,vger.kernel.org,lists.linux.dev,lists.infradead.org,perex.cz,suse.com,lists.ozlabs.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shengjiuwang@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,nxp.com:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: CBB47AE48A
X-Rspamd-Action: no action

On Thu, Jan 29, 2026 at 5:17=E2=80=AFPM Daniel Baluta <daniel.baluta@oss.nx=
p.com> wrote:
>
> On 1/28/26 09:18, Shengjiu Wang wrote:
>
> Add a compatible string and clock mapping table to support ASRC on the
> i.MX952 platform.
>
> There is a limitation on i.MX952 that dma request is not cleared at the
> end of conversion with dma slave mode. Which causes sample is dropped
> from the input fifo on the second time if dma is triggered before the
> client device and EDMA may copy wrong data from output fifo as the output
> fifo is not ready in the beginning.
>
> So need to trigger asrc before dma on i.MX952, and add delay to wait
> output data is generated then start the EDMA for output, otherwise the
> m2m function has noise issues.
>
> Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
>
> This patch does more than one logical change.
>
> I would split in two patches:
>
> - 1) introduce functionality to start ASRC before DMA.
>
> - 2) add imx952 support including clk_map and introduce fsl_asrc_imx952_d=
ata

Ok, will separate them.

best regards
Shengjiu Wang
>
> Thanks,
>
> Daniel.
>
>

