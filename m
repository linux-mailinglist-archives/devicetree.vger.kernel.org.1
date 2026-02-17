Return-Path: <devicetree+bounces-266009-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ALkrDL8glGmKAAIAu9opvQ
	(envelope-from <devicetree+bounces-266009-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 09:03:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 43D4E149851
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 09:03:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B20403002F40
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 08:03:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DA592DAFB5;
	Tue, 17 Feb 2026 08:03:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="L3a+zUmU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D5B2D8393
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 08:03:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.47
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771315384; cv=pass; b=rChitMsUF5B8mfq7PZuBP+jc4G8mV8bSso/aWIiW5WG+cndNXVm3pLHyP2YqUTR/OWdKxhgB3GwjRvfzY7kiR05lgSHWV+S53LBbZ9V5TnAoy4/KsEqtHvHP9taGV3RY//OuuOaz0ZVZLh/8PpPr/19P8lNrNL6wt29frS4zT7M=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771315384; c=relaxed/simple;
	bh=d6M6Apqz2BPqq2uuJdTJPs4qAtC3dU3FCX2IhxX7PJA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qPHS+Zp5UJsvukiogLhIQYfBMbdv/elPWApp+irBatnLgFr0vY4Er2N22jzqdTMaRp4etqrPvCVKzm7u5Rqz2FK9aeUfc4uybdbdo0XgPq2L1Un3CFMC81cTqhSC7auotZrAkmCpG71zmUMzG1eNCk1VgOIdm557Dhxy9RvJAC8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=L3a+zUmU; arc=pass smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-4377174e1ebso2922663f8f.3
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 00:03:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771315381; cv=none;
        d=google.com; s=arc-20240605;
        b=HRUvx/+CgouMKCpcbpkXgDOc1GWqUuT4aYMn1PvGJei1sDx3FWvO83qS6146PY3qnc
         /udci9nw8qILZVcxO4JKD2+yF5AkxmCTFq2JOl81HeVVaKBTjqRP6rJOm7vjk6FhKZ2e
         PTNSUsldq1YlKUtyFnWC1njuM0XUs/mFuT79bV7gW3y7S/9f23iohVP7xmtEPYycPPs5
         kwpPIZS40z934lFz/Bcz/0hmbKAun4nlu2m2a5Dvb91nWNHBreq3FNpHAzikLJdR6SOu
         g08sbw7yC3IyDo8TH0LqHQXKo9Oe1IokRJ9Mf6Y5rx3Dv9ffBpi1AxQa3XcJQK76fuOE
         gXkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=vSmgW0cdIABiL/o92NBnxbcVSmBcTIIknb+79kdQRek=;
        fh=gnSb4izAngedL82FxwkZQ/+AknJf4kieHWHNF9wtPSw=;
        b=HdOS/UhY1arWUAc1YI73OnD6h7szleiHZLzxWlEwtDDwVe+Ui3XIk1lbYIyIcyyW55
         tbO3pHWluDaj0bNffUYNXfRTdG8IQb8slrqzQ/XCW0fQtFOAU8JMF6n4M904CUZO3EZy
         xlevwdYXG1JkPCahCyFklPa2CcYBz8fCZ/A2NtsIEisDNtH+uZ9q9Afuu02glZh4RI9z
         SsC5Hyry1YtW/ecZGXlLmrNv/idvdGhC6x3HVlRMUBdtg7TSBwGdHeOEvnBG3ZA74jLu
         9wc1ebbN5rrcpRKofMFuSmuJ4nGwALt5vgfbJNICzvSLKo/XjPwihuO43x0mvb1HI8L6
         dlGQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771315381; x=1771920181; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vSmgW0cdIABiL/o92NBnxbcVSmBcTIIknb+79kdQRek=;
        b=L3a+zUmU45JDtfYHnFo4mHZcX0QIeHplx9GWQERACJBhFoEtcLkHmU/5tJxdw7DW9q
         b1GQtEk71nSQyiE/rab9mzY8+M7nmaANpwocFlXZoAmRZ5Ta6yu9ZiemqHPFpNcu8DsR
         c/XNcIxiCN/EAvGPy5QnRRobfkFXZ7jtqIO/uYWMC7VFNuD5r8yjJ1xSFlsVoLo7oaP/
         6OiDNcxYSlenoypD43RN7nShCKgmJHuApWrr0ysUSYi8xUEl1BXM5cRc2ck+AZ7wD/RI
         55+WzWQMiP7HmTqElVqaFMIK7EDMA7uI51cqnMiSnj5notR1TFPYgKxcaZCLbsp/92LV
         eLWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771315381; x=1771920181;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=vSmgW0cdIABiL/o92NBnxbcVSmBcTIIknb+79kdQRek=;
        b=LkylBZVWbcVS5/jMqMkG2COtU7259n6U/0yS73jyN1VCyYKMljI49T8Wzo+W4sL8pI
         9k6J9YkwqG6buR09dDK1jFjom1Fz6inhHX02izruaoUR7qIvPhxQfjiVvvhUiOs2/eCz
         mM2C47HQSYLt2M9v6M6odmeSegUkrDsfg3toIGXUNl/buyorO/vzeWbR5t3qQ8GTWt7B
         Scf4Bx/odoPnBxctRONkQCbAgrySHiaqiDpEbBcWESd21owgqlmolQASLXydfDyDX0QQ
         XRW3a8ofpK5Ajl3wwfKdTPZgyAPtbN65hc/V99bX9Tz2BkLjZFbcUR4xA4OnMSH+pkU1
         QhOA==
X-Forwarded-Encrypted: i=1; AJvYcCW+2sGmfxQGPjqQvKs2MXrD/D9zl0CxYbBELmKBCKuNJ1GM/qzaQ8OhHDu+ItgCNayYCXWRt+5+ZAoF@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9Mo1XJgAjDBnUEbvlGZt7Tznut38BiIpvpYJHSbKAhCP9+a0J
	nIKIyrFrlXoObiQ3k/wVt42raRQhYCGYAeRtjuTBcjkNddeDyzg9wLCz0rM3b/7GwFlegxphyl1
	811GvsXHBU3LUejcEnrwgQKKyqyC6Y0c=
X-Gm-Gg: AZuq6aIJLTSzzbb767YB4DukZmgdRwsFKcUO1kXZw8kbWAeNVmf4bHK0Vvk+6Guy3WB
	IpKIEkoqTCubDkRTr4462haRf4Qk1Q1ULOSet18SkxuhBTR7ag4eCm0+apBQhml5DZCkTs6G1IQ
	fRuCRjBTqMB/2PX8ocMg/c1m2aWq7Dys/i4elW/wbWQ9I8jDPClfT2w6ZtycQnImAKH32sTMiiV
	x3nteVLnwnP0mvsWNUtLiyz2pspB8nQgrnyNVUGHrf6twlP1In5V8XQboWN+3wWQBsEO7qnUeux
	JyGKvV+3
X-Received: by 2002:a05:6000:186b:b0:437:895d:2026 with SMTP id
 ffacd0b85a97d-4379790e995mr28443792f8f.38.1771315381077; Tue, 17 Feb 2026
 00:03:01 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260126190755.78475-1-clamor95@gmail.com> <20260126190755.78475-4-clamor95@gmail.com>
 <54043284-141e-421a-a54d-a018c884b324@kernel.org>
In-Reply-To: <54043284-141e-421a-a54d-a018c884b324@kernel.org>
From: Svyatoslav Ryhel <clamor95@gmail.com>
Date: Tue, 17 Feb 2026 10:02:49 +0200
X-Gm-Features: AaiRm53ZCyfWugOQKe4kY-vuDcONKKXG67PXhOfZLL9jhVLQi4IP8rUlD4WkPfg
Message-ID: <CAPVz0n3OEN2M=wj7cq_-qrYi5VkMUP4RcUB7=sQxnLaGGivKVQ@mail.gmail.com>
Subject: Re: [PATCH v1 3/5] dt-bindings: memory: Add Tegra114 memory client IDs
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thierry Reding <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Mikko Perttunen <mperttunen@nvidia.com>, Sumit Gupta <sumitg@nvidia.com>, 
	Dmitry Osipenko <digetx@gmail.com>, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-tegra@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266009-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,nvidia.com,vger.kernel.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,nvidia.com:email]
X-Rspamd-Queue-Id: 43D4E149851
X-Rspamd-Action: no action

=D0=B2=D1=82, 17 =D0=BB=D1=8E=D1=82. 2026=E2=80=AF=D1=80. =D0=BE 09:22 Krzy=
sztof Kozlowski <krzk@kernel.org> =D0=BF=D0=B8=D1=88=D0=B5:
>
> On 26/01/2026 20:07, Svyatoslav Ryhel wrote:
> > Each memory client has unique hardware ID, add these IDs.
> >
> > Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> > Acked-by: Rob Herring (Arm) <robh@kernel.org>
> > Reviewed-by: Mikko Perttunen <mperttunen@nvidia.com>
> > ---
> >  include/dt-bindings/memory/tegra114-mc.h | 67 ++++++++++++++++++++++++
>
> This is never a separate commit. Squash with the binding.
>

Always was and now it suddenly is not? Maybe you should consider
fixing checkpatch since it complains that binding and header must be 2
separate commits.

> Best regards,
> Krzysztof

