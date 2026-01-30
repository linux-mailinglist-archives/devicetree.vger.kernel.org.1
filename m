Return-Path: <devicetree+bounces-261098-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0HplJ7VbfGkYMAIAu9opvQ
	(envelope-from <devicetree+bounces-261098-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 08:20:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D813B7D8C
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 08:20:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id DEC9330059B8
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 07:20:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2CD9530AAB0;
	Fri, 30 Jan 2026 07:20:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="j/ILPWEx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f46.google.com (mail-dl1-f46.google.com [74.125.82.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A47012FC024
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 07:20:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.82.46
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769757616; cv=pass; b=YflJoExG2B0G82xOwvZgbrKO0Kvicq6vWQWZ1kr3ePKVuYbYbgOQA0xN4PK9LlctcCeWFat2qDWl4bjAbJrji1QuEs2tCWCXNnrFABO0kk+m2mCe07EfiZCCbNiS7vTY+gcLDiVYPsFe/gjPnSXBuKTruf4KyJJmFoaCSQP2B3A=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769757616; c=relaxed/simple;
	bh=yiCInPBw07YvtBtb/8UPQ6O9jfSpvmf7nJNZXF9oh5Q=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pTu8GBGMORycflW3lnRbD914kPMwHvjPY9vTCMwPFMWSM4VqVjO++jlAPQbHA80PTLe++aADct3Zo4Nqog5e0fvBvJbqa57WhVGCC4cyHGbPWydgYlZc/IZRjlChKyILA0F0q7dYFR2ODIP5Y3iIayaFs7aB6PW4yh4l3hG1Djk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=j/ILPWEx; arc=pass smtp.client-ip=74.125.82.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f46.google.com with SMTP id a92af1059eb24-124afd03fd1so2789266c88.0
        for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 23:20:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769757614; cv=none;
        d=google.com; s=arc-20240605;
        b=NNgbF2zQjwdhxrYD+dTIsfYt4CjFJVlrJz53iFor/bJqR+4C7y3yd9tQ/MGsSSKTLd
         mlnlX59nqDt9oG23Ksq/rwKuDzxAXvGUKbh4vUs6VmbTbXPbYqwg5moFCYILBbO1ck2q
         KApgbQvdBXMIJs/sH98bn/pqno5jjR1PNcNI2su437+QPpIs/JddIJZI1W7ReePzZF8Z
         nyKtU2Q59FgOCCokCky9lf1uY6Pjbr//V7rfFYZ2Dys5EPbnqmtOtWw19qSs9FkJCEuS
         ZBXtuIN61zOQ/5hmRq7aNt/7OQWuogQb5ZAOEpbftYYMmEo9JRHMAws2awurHS6mH68Q
         VzTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=yiCInPBw07YvtBtb/8UPQ6O9jfSpvmf7nJNZXF9oh5Q=;
        fh=4x1IzO9jyFccnRya/NDPfin0ucSUwUdjWgPChWfplEw=;
        b=RWBzPKXtab9wmCp/XJecANgLdaQ1POFqpKnAU6w+mJ7XTK9Rt8DKhBC+chdCMgSCHF
         m98p+JCNceYcrNqOlx93e860HpSgheCBYF4Yel9OhHI2SI8vPJYCkpwow2M5nGqZGWWF
         OInc7/+I7uH83KbIJEI2Mm1I/L7u/2RRFYJ6GvxF4T7pfXZv4keBPxBD2eyKdf84ZC0i
         63g5ZOG6yvrOgG2iAVGqFwYL4907lp0FLaNR1+RHUoXtFpUudt8z3gdcUeDjjvwr/5qq
         bvAqbZmcauRdTE8U7Nr7LAiscqG78fx6GgrwvI7dsLNLR2mV8nDqJAkXdkz+9uhV+zFi
         1kng==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769757614; x=1770362414; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yiCInPBw07YvtBtb/8UPQ6O9jfSpvmf7nJNZXF9oh5Q=;
        b=j/ILPWExDCSQ/1WKGvUTA9iQzXyFaibJIRP1S2yZ9gj3THGJp3IwVMNgYrOpXyIJZA
         5Q8riQEbliX10DFS+F5sLSkoGNoRlNhds0AX/tnJQ9Kc64kKqZZnYClXLhf6VCZh/7Cr
         yhHubY95wfsQpOglJV8IIXUPPpnInGYRe+CGpLeKQ/Yj66SJE1KQwV41gwdfTVAjO3+C
         89o0h7/wqpMohEywXTTubLZogYKAp/ER1YeSjGST0U0Ui8Lq9pgvBmOiM6YhNFQiYu4B
         JKR7XhUizIHWWEOu/+DN4sSqhBb9QzSRP+D0CedtZrUl2MZvK9SYHN2DyqNu8UyjrlRJ
         AurQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769757614; x=1770362414;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=yiCInPBw07YvtBtb/8UPQ6O9jfSpvmf7nJNZXF9oh5Q=;
        b=HWQUeus9LbMy3tfTj2GudC06wG6Z0Z+dMalaPWBPiJ207nYbWO4apMERL21TJbq6uu
         +U5Sae5i4gjXBD2XzfYiiw6iiA1zlAG5SRcWGd4jprdv0IPu7HcKM7NLsPBU9s85Lk36
         2nnFok5DHWXXeM1xx2uP9WVy4oUYuD4ld8mURk8ua/apx3Bz+mQIhyYoReizlI4Rd3ji
         k8o5QtXr36WoODezQDBdviWukn75fWxWtI7A2OZphn2G52BR5qdk4elIklGKDcGzTpAC
         MpK4QAZ/t99ZWyjVNm36wiGjwBR4vamsc0pm+Eh7WxJ3mijJxImRFWcH1uwwZ9Jr5PGX
         WwLg==
X-Forwarded-Encrypted: i=1; AJvYcCXkn4hlK7WU4HhWqyqEF8SqzfzvfLUYiq3PF8rLDkvOI4e0vzkclN+a0WfAaIcvBVOtOqOiL+P5nSBZ@vger.kernel.org
X-Gm-Message-State: AOJu0YxZU5otyrD3TSXbFQwzkBkvd6cQ01lRcW44l6RjKZ7YX1MgBNGp
	rh1+G9F0WtzAL0NcGZyIHrkvZubQIxLIyoXUOTR/OdEeHYAYd+jgf32HWA9aFbj3MEsbDoYuL9x
	f9aUiFvQ+16+X9cNmy+UBPOy8Kw+BWzLMEXEe
X-Gm-Gg: AZuq6aIaYVH/UhBNsMIkfPtn9uTIsMghzwbqRARGhYWKV51xO14DH+UU0sQndQHlYA2
	AucZsBwEcpE4Cyok0mMLiKkh+sSwI67pMHJL7V24yLQIlWzfNDoWOMPsdvoZNfX1ipdl471FcIv
	6iLD3RiTj6atvqQIAN5Cw48SYea+8+kE4+80qnwrtooIVBUV2lNY5EiwqPeegqNwOXDJzBVe/Um
	nhgm52UOhydYFOISf8T32dZh3+QqVoLaozWfX368Z4VPcxwjQP/oydYgw2c6OtqxjsNCx18FsVK
	1h1az76XjwmDe8SlTkdkTCDkzpHVCXDagPUCn2kgN1iBXnGKpgsbHl0bH2Y03XED9XZ0h1R1PwA
	/zTj0BOUMFnBWVg==
X-Received: by 2002:a05:7022:207:b0:123:35a4:e8be with SMTP id
 a92af1059eb24-125c0f8d01fmr955848c88.13.1769757613717; Thu, 29 Jan 2026
 23:20:13 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260130054330.3462544-1-shengjiu.wang@nxp.com> <20260130054330.3462544-2-shengjiu.wang@nxp.com>
In-Reply-To: <20260130054330.3462544-2-shengjiu.wang@nxp.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Fri, 30 Jan 2026 09:20:01 +0200
X-Gm-Features: AZwV_QhrTfQ-UYZ4PfDVoCm6fliDdKe2PvVXhTLbJKtRrXqH5MmZHe0lNlu_Efo
Message-ID: <CAEnQRZC5umZYoxemGO_yc5xT328uQxUG8Sg8yZvgDowhLP6UPg@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] ASoC: dt-bindings: fsl,imx-asrc: Add support for
 i.MX952 platform
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261098-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,nxp.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3D813B7D8C
X-Rspamd-Action: no action

On Fri, Jan 30, 2026 at 7:44=E2=80=AFAM Shengjiu Wang <shengjiu.wang@nxp.co=
m> wrote:
>
> Add new compatible string 'fsl,imx952-asrc' for i.MX952 platform,
> below are the differences that make this ASRC not fallback compatible
> with other platforms.
>
> 1) There is a power domain on i.MX952 for the wakeupmix system where
> ASRC is in. But it is enabled by default, ASRC device don't need
> to enable it, so it is optional for i.MX952.
> 2) The clock sources of ASRC are different on i.MX952.
> 3) There is a limitation on i.MX952 that DMA request is not cleared at th=
e
> end of conversion with dma slave mode. Which causes sample is dropped fro=
m
> the input fifo on the second time if DMA is triggered before the client
> device and DMA may copy wrong data from output fifo as the output fifo is
> not ready in the beginning. So there is specially handling in the driver.
>
> Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>

Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>

