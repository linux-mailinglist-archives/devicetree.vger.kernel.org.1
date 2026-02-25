Return-Path: <devicetree+bounces-268395-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0C16NwoDn2mZYgQAu9opvQ
	(envelope-from <devicetree+bounces-268395-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 15:11:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 39A3D198870
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 15:11:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B854B302529E
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 14:11:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 646B93D3331;
	Wed, 25 Feb 2026 14:11:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="difn57Yk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0D5E3D331B
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 14:11:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.54
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772028679; cv=pass; b=Ke6BoMb7W2FissI6E5lUkYDXSFFNN/4nz9GC6HdwM420N77fVAsXrKso7ro4bGaZlCsS7yZzBpMd5grp4b0oyHMdXFOA1r7P1SPBHi/UxYEPOxznCaRxdOhSnI9371hPNz0ZIAs/x6Z7BIykwqGN+f8t/gDwffG7OpALAg99m0M=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772028679; c=relaxed/simple;
	bh=2SvE1O/725PaxO+/90i2OQ4t8qF/9TIMdRbXJPJvpkA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=EAieIvjs2aGSwoQpiBbYCk2rIX/4TeSM+/Qa3aJCW065cuybJyCYUF3Mzv4qFCQCJqiPGfcXT8xfaTcEH9AgXoap8XuS7mEE+lhvvjw8VqUPTrHHk0Ufa1FCBnyrdDRBPAAlM6HHRyInvS6y8FJl3NORGzhMzxWYH2QV8VXfuW4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=difn57Yk; arc=pass smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-65be78011c8so9399875a12.3
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 06:11:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772028676; cv=none;
        d=google.com; s=arc-20240605;
        b=TE6efi/FKvwU3yf27vAa7G6pX9ckU3m2iwrewgeEUSDpnyw2yucKWW0T9HudqFRVL7
         qCzhycgt3nTml0AIl/cPdfI0mw/shBlwl4Txp2N6W/hEdeRRZpnaN4LGMYEs3O4aKDuC
         l6fWFqbVkVGnMjPbrxXYeJw9I0pUL4dWXILd9vpmWkpHhc5pFwHCYrw8BKWCObqpl6WK
         DDqMPCH7sG/AUn6BDnt8PJeJYTYsvz9I0Gce7QFDKyvyfVdP8lD/Nsrbo5JA+7lNnKW+
         jIDpyJb4WYBkBSWGazPPGyN1LJW4KjRGoNZvWMXXH/D771QcvioT/DUVMnBMlaOLht4h
         vO5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=L9jg3LVlUdrt/5saKoO+nhMQWQOQ3FaMpJSoPoujSvM=;
        fh=9j/D0g2geAigbaIkjk6yk13CxdwtqFDZ59y4KTcqueo=;
        b=Gex7fQsUPPvcSiQdicU3rzp+kda+WnEaLrrfacxLhlUg0Iu6zM1i0NhZzicen7+Pln
         yW5KJGOPnC7JJT448bqVCdSu8TseuXdkzJtEokgf7W5OyERj5U+jp2JooHGNPu19rdcV
         5MsNZ+DGf8IBrBJTfsRp+Y8J3SjyD/Ktv7ckg14ZY9vHbvVMS4XRyhAzWhsYemZm4hEU
         et/MMRNMM7Ssm5b5QgMnuEJ67Jt+PNe6T+Bk95hLZMXuDQdtwXk9y+koqgGsV46cWNFc
         KGgXl6pzJXDwdqZKo8k3XT0h1I0KYhNjWpTb+OXSpUT1+Ek4CqZNQi/fo58w4JsgVTge
         AEkw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772028676; x=1772633476; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=L9jg3LVlUdrt/5saKoO+nhMQWQOQ3FaMpJSoPoujSvM=;
        b=difn57Yk9TPU4x/2S7XBGw0DAneRY1+95VkdotoEFLho/gHUUmAFmucJyeIWKPWDLB
         d/ph9ZfD5FTKSHog3uhhMN+TFoXJ5F8F/L4WrKtlqnAmagBoV0UFa96LmP101tVrflSo
         qNRnEebX9GlANEy6KGdxu4NjDLA2ymotWLbsJLZR8fE8CcyCOQ6Pe3yRs1f2ywAjBq2y
         9hOyaWpMjoGYRzD13Mo6ylh3E0qxAQjZuYbc1YiYyACLFUFHYn7WkFa/Yam7sMMrDY6p
         YuRkN2GWTQ/oZ3KO2YH7zIutMobjI85FJdrJ/Yl1XkNqcMA+aUHJqEebu7YA9Agg9wIo
         cXaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772028676; x=1772633476;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L9jg3LVlUdrt/5saKoO+nhMQWQOQ3FaMpJSoPoujSvM=;
        b=sclK9EDTg1cDOQQsC7hw6DgbUDtns8l4DJJ6sxpKQKIJLbdScGiY3iJgbwMfsInO2e
         xgJqKJoJ6UAy2NKrLFSekytlJNfCui0z8gTej+HDO4EDNlQ8R8ExoEDzgPLVwPbCEkEA
         Os9pKrOQz1bFghpkK8SWfh4ZCobyNkEq1hsfbMmWJ133xbl+gIMFqaaeN/3bjHhFcGT8
         cKLrPmOLcf+3Tv8gBLXR/yeVsXbSfbUDp4M24p6Xa9EHyl6eChaEbnW9tNKb12CPOKnE
         +D7d44O3KHIKusedRyO8m7fxfiiK4QX15EzhaAf/EDTKyTeloq7ODfbJzPZaJIhSCzR/
         aHag==
X-Forwarded-Encrypted: i=1; AJvYcCUbsUaeyHFebHJAILM0FP0i6jsb50qjCrWFLuAeexsJnoPwklO0PG4ZfW6DjPqFKnoWre5SdDeIr/lh@vger.kernel.org
X-Gm-Message-State: AOJu0YzCBD6AvJhwMRv47MbPP6rAi/Gg20rFcH9Nso0sI6zG/QwF/J4/
	EJgSnrutLMoHx5bd/3+tmN9hbDNNMDtsdoqSv0Mr+n3iKnGfQbgFowZ0U/a1KYp7bIBMpcrRN+6
	4suuFy+xw4Q36l9lzsl9cKbRtCd24WdM=
X-Gm-Gg: ATEYQzyB5CpiKU18iEavAxdwgv7rS4ZkIuBEpIdQIViQo1nH/qJThs0XxT9kYmv/VNe
	n7t4xbsNcjE//mnLQDU3fZYjcxNy2NLzqdNN1C/LtWNoq/LYwo6SILswdIpKpSTkcFyUgnZpNRB
	bVnL/pxDW40PTsvSHYwPyqLbw72eDB1HD8Qsk/9S7486YmDhxkN2jSS4Eee16N+JPZbQymHkVH+
	FfbcoaSKiyLmH0i3KcghsjG8EyHHYV6vWKWvA5xpcN5jLzLJYSuLZPZXffdYI+QpJGPqZB2ZSvZ
	56tdA9M=
X-Received: by 2002:a17:907:1b1c:b0:b8e:d260:cb20 with SMTP id
 a640c23a62f3a-b9081a09c97mr1077231966b.18.1772028675957; Wed, 25 Feb 2026
 06:11:15 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260129022910.3942028-1-onlywig@gmail.com> <20260129022910.3942028-2-onlywig@gmail.com>
 <aXsdyzZEUaVzC34W@shlinux89> <CAPStFe7ASmYxJdDorJ0KAerfTH51ioZ=89F8fRcs6fBVqqhdUw@mail.gmail.com>
 <aZ4HrSNp32lbnVT-@lizhi-Precision-Tower-5810>
In-Reply-To: <aZ4HrSNp32lbnVT-@lizhi-Precision-Tower-5810>
From: Wig Cheng <onlywig@gmail.com>
Date: Wed, 25 Feb 2026 22:11:02 +0800
X-Gm-Features: AaiRm503W-bxJ6qYfmScp36dL07me8fXiI8oeeybDFZb9ZdLCMZhOZ9palVel14
Message-ID: <CAPStFe6sFCo2-+9ataPBy9pvEUo_uZ5G7XNA_8jH+sF6=FNOpw@mail.gmail.com>
Subject: Re: [PATCH v4 1/1] arm64: dts: freescale: add pixpaper display
 overlay for i.MX93 FRDM
To: Frank Li <Frank.li@nxp.com>
Cc: Peng Fan <peng.fan@oss.nxp.com>, shawnguo@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, s.hauer@pengutronix.de, 
	kernel@pengutronix.de, festevam@gmail.com, devicetree@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, zaq14760@gmail.com
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-268395-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[oss.nxp.com,kernel.org,pengutronix.de,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.0:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[onlywig@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,devicetree.org:url,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 39A3D198870
X-Rspamd-Action: no action

>
> arch/arm64/boot/dts/freescale/imx93-11x11-frdm-pixpaper.dtb: display@0 (mayqueen,pixpaper): spi-max-frequency: 5000000 is greater than the maximum of 1000000
>         from schema $id: http://devicetree.org/schemas/display/mayqueen,pixpaper.yaml
>
> Does 1000000 work for spi-max-frequency? or need update binding doc?
>

Both 1MHz and 5MHz work on i.MX93. I chose 5MHz for better refresh
performance, which is within the LPSPI3 controller's capabilities.
The 1MHz limit in the binding is a conservative generic value I think.

Thanks,
Wig

