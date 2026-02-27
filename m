Return-Path: <devicetree+bounces-269355-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SJeGNdDLoWnbwQQAu9opvQ
	(envelope-from <devicetree+bounces-269355-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 17:52:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A3C91BB091
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 17:52:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 59AA63181BBB
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 16:47:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BAF134EEEC;
	Fri, 27 Feb 2026 16:47:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SOBloC6T"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C80C5347FEC
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 16:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.48
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772210855; cv=pass; b=sCLRqvAcAGaUuNm60FOiucHGsQwnQJgBh5VO6wQClhcVaAYaM33YBlxfIs78XDjEZ19JNUNcKgGGRr6uhaX/zu9JemAe2HQ/yG3cjvOp5oqBEfOPPOzQsXPLkHmAdmAeaAxjeP54quVIXdt+QKpceht8cxaYTiEREGfl/qL0LkY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772210855; c=relaxed/simple;
	bh=ZWqPJD4dtCJD2sUc3tRg4PY4l8nI5GuVuIvnfZjfnEo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bSvOFhuxwW2H1cnAh5whO1APyk1f5LXTFlPX3oPiSW9h/N2rPxyGD6bSD9Ba5xj2Qh+kZSv2+yjtaQ7kuddvmciEqgKAfQ5/2kXFQ8I1mp8K4oWkmZdBn+djakNBpBDZe/MC6WGzwH1/vfIILUHsqAAR9ey4Mu7yUFHSHeX3AEQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SOBloC6T; arc=pass smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-65c5a778923so3664250a12.2
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 08:47:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772210852; cv=none;
        d=google.com; s=arc-20240605;
        b=DXc+eh1nTPgDWSP/AWUuDFQ3wMXCVipbmey4WTX+R1jytDbw0jmXqQMfR9OEL9IXqX
         fSR53wX57JllC9T2WxvlcnQnIqEEpALllLhmy7Lus79wdTQJ0v4RV4akVzl2Fyv/MPCQ
         7Lxzc52cx1ptg7w5chwSwuf45u/vAQQ8xSL6u5r+ymdKP0iJeybQpJTdopzAt3sDxHMc
         VI5WoE151oIZDLNouJCX1qMdRiJ8Cbf+Nciqj0VjXkOwDKL1x7Jvn+6s257x3gvMwZ5t
         KN7S7bgVRaVHLEFoV0tWtX/cz1z6ZvauKbAdzoB28nH9H+hcHcZ1qumh8VhsK+FiUuX0
         bVog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=ZWqPJD4dtCJD2sUc3tRg4PY4l8nI5GuVuIvnfZjfnEo=;
        fh=bftAC4EHzt9sAAR0VE86wsipQia8/U+AeQmRhDN3ck8=;
        b=ao1ttXau4SeI78wxrdjXLveOFVKM01U7DBaecRwEatB1EBkqPJ+TECjt3Tw9sUqi+8
         Kt+IHIdlZBlJhUxu06y0ict5rOIk5Ja97/W6nG4a/wgiET8j6qgfVOc4fhCjAo7pWuH4
         MJUM5Z4c9pFUACqtFptEW7WnQx3+HFFhh72ASrPDoE+SfWZ/n2Qh3DcFM39TV5aDcv6/
         tyPmdY6lmVCSDhpQS03hGWauSLHhhMgri7OSx+KYHhsiCE0PjgYtI7rHQMK7d+JrKyLp
         m+FjbvcmMzoJdb7RoUYc6VMMuHNlT9mv+MQvO+3l97cot4ngHPXKvMsyRT6nwbrGMwAG
         0/rQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772210852; x=1772815652; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZWqPJD4dtCJD2sUc3tRg4PY4l8nI5GuVuIvnfZjfnEo=;
        b=SOBloC6ThKf32IB3RfiUQt7Q0R2p4oPO5JC7JtOdVcLkMWJaZQwhdsK4WOfORlrrCe
         Uxu/ueXyI4eMpoJ1nt4Sj+Lia9IG3Bmt0oDZY13Yfi/rl6gWeWU30o6p3ZmtTa0ZPwUM
         lU4DsZjrIFqB2EXmZTMXUPLaWRQdkpuR+mEouF31+pIpFPoM36FPeOkweGZI2F577177
         NvLBdm7NyuWxiQepoCF8LCPyb8rXQAEwbXzMRc+uxZdY3tMoum68kBkDRRLKM3or+TaY
         H54bYUIK2huuti5TMOG9xOs9a9hukZvVY+IX2PXnI3fEfhbE58hapo3x7Jn2+n+dQMN2
         vu+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772210852; x=1772815652;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ZWqPJD4dtCJD2sUc3tRg4PY4l8nI5GuVuIvnfZjfnEo=;
        b=XpRWbwF7Qm0/x4zCbrGvMEaT+eDHzwtslaKhdTtmKSRKqG2KNqwp0LAsdLs+Gvlg2O
         EQ5iOIBX4l7IxtfTXA1KVmsaCf857ceEJSF2sP+PLXaq90o+ZlBxOeQ3wTjzlrvI4eDv
         bPJY09aawmtR/4HD/hX+OzX3Di8bsSW4GskXGeYu25XJOOizUvEHnJJA3VGocZqqTFSy
         tOrTnLoe+l+QgBov+TDeL2xe/Yh8bPLGawbqqgrYnhUSUyX+8dia8CUbogQGB35qjDWT
         Jz3MQbKaYXtfhEccz6vS0ExXfU0XnieRdbh0JbX75vhO7ee4raMguUeLSqAcyq4+QLHa
         sXVg==
X-Forwarded-Encrypted: i=1; AJvYcCVlvo/XJ1HHoBAkKUacfJ9aNkprNLNeq2/EKT71tXB6iOeMkUUOc6AR92ULIBkDBDSsDWc9J0FkjvJH@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8sHv19PEqosSjlzeM9slVl+W/Arq2M5fs+Ze0+FYdmcpC6YG0
	Ms2diAE9In/ZYpkBV8ujiHZmCllLnGjKYNThBxMbQMV5eQEtLUYCWTHhHFvpyBCoBH7IVkxQ+HR
	pnDuA2CXPxAMQ5209Z6E4ZP/57cnTK2jhXg7y6qNbIg==
X-Gm-Gg: ATEYQzzu2ftsqW3CvdmXvXCOVu2OHX5/CTa0wUuoWuPuqddqfjSfQukJ6byV4ilYWlc
	Tm+V669YxMX4IyLNXIHy3J4NmWKM7fD6WEqRIp3SYHdXb99iqeUiHaTWEYJKxYzsETC5TitxrJZ
	y2N1E7+Qka7RCbt8fz8hNFxBWvcuvGjkLjex9PRqA1l1OIj4V2fuFPdAnZ82KamjVyScM1BstuF
	0kX57ymiG2fE1ENCALKx7CrLJ0HxlorsXWZjaT/KlQcZ6+/Dimk232nHyYypA3CJ9eBOnKxMm66
	foQafogBs+X3xk05wBUSUQ==
X-Received: by 2002:a05:6402:1456:b0:658:b837:7953 with SMTP id
 4fb4d7f45d1cf-65fdd6ef9f8mr2486945a12.12.1772210852025; Fri, 27 Feb 2026
 08:47:32 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260227-max77759-fg-v2-0-e50be5f191f0@linaro.org> <20260227-max77759-fg-v2-7-e50be5f191f0@linaro.org>
In-Reply-To: <20260227-max77759-fg-v2-7-e50be5f191f0@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Fri, 27 Feb 2026 16:47:19 +0000
X-Gm-Features: AaiRm537N-V30eF26zS-TiG5KL9R7J4CN3hLB0hASqzawD4ChaDSinIj6d4HiQM
Message-ID: <CADrjBPr2zOOCQtnMkwb1srq=SnpwcXcck0YTbmH3+3nbF4AXLQ@mail.gmail.com>
Subject: Re: [PATCH v2 07/11] power: supply: max17042: time to empty is
 meaningless when charging
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Hans de Goede <hansg@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, 
	Sebastian Krzyszkowiak <sebastian.krzyszkowiak@puri.sm>, Purism Kernel Team <kernel@puri.sm>, 
	Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Juan Yescas <jyescas@google.com>, 
	Amit Sunil Dhamne <amitsd@google.com>, kernel-team@android.com, linux-pm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269355-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[peter.griffin@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,linaro.org:dkim,mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3A3C91BB091
X-Rspamd-Action: no action

On Fri, 27 Feb 2026 at 07:15, Andr=C3=A9 Draszik <andre.draszik@linaro.org>=
 wrote:
>
> When charging, the fuel gauge reports U16_MAX as time to empty.
> Ignoring this special case (as this driver currently does), causes the
> remaining time to be reported as ~102hours, which is incorrect.
>
> Update the code to not return anything in this case.
>
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> ---

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>

