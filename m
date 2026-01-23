Return-Path: <devicetree+bounces-258943-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QNLSGsx3c2kfwAAAu9opvQ
	(envelope-from <devicetree+bounces-258943-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 14:29:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 7370076425
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 14:29:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B5E893004065
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 13:29:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E26773033C8;
	Fri, 23 Jan 2026 13:29:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com [209.85.222.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 988A529E11D
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 13:29:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769174982; cv=none; b=Uxo+Aa/claGhrXvNa+JyScjQmrroMCUUq487salGKAyf8rLl6mYnP2zCqG6PZKqyZPOVQZ95iqV+fnSPsVjwgR0SjWq2Vk9ACNoSGphFhXBVshJ90vruC0G3RVkKgkAAdWBzB30eiDH20q7khdMJdB2uzOlN63zwmlA3tCq8S+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769174982; c=relaxed/simple;
	bh=5NurO0R2/OhT6VhbIKg6bkeoRSQoLzY5e3peAIZO8zE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Z2G9Jd9ajaSnl/pXB/3NBJaP1Bb9gY6usbhnD+p9KiI8ONEZ6jV/C/dr8zffzvkiSismI5cyNCq4p+nJpqJN0py45rgMfS/uw9l4izcntgp3oxt8hpYvRnD5STJ+di4Ue16EUoUC8YkQDg8A44JrQNF25ReogH98wiAgS8RFTfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f50.google.com with SMTP id a1e0cc1a2514c-93f5910b06cso1473147241.0
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 05:29:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769174980; x=1769779780;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7uRZVas5P6xxkBpdwTHJQR+xs1A0EdTWP84ona+zohk=;
        b=DJsB+FxJ1rg/odpStWszfPsJYpKz5oy2zdklDXdHuTqB1dBkgQBZKPuV6EhGXJ6aDL
         BAVS7gPaTSE1p342zcF5rhgAkpV2gk/YZPzNY310kNkPmsM4oIfzVJzVInIVlkrLKh19
         hEJbtVSOsPn21w3ZJIWcgyCA9ERtvYqzGJ5djsENLZiXIp/VbW20ioEW4Vy4m0+Qm3JF
         +PFiW8hVDlBmzYwheUL8aCul0fTVwVRWJ3qgN3Qm5hUmnmnR2J8N50oS4LwHifjGF036
         JSfVDO/eFyaGqmYpoX1DLygxhmL6mRtgRJZzcePdUFIOw/X1HbdT9S+DFn3E17sa92uC
         i5DQ==
X-Forwarded-Encrypted: i=1; AJvYcCUSsUz4SE8/nsWam8RbvDjcia2Vx+elPDzFzagx1/8PcqFr3/2l5nnZPrTyVNIaZ7W1mIWE6gbNDx/2@vger.kernel.org
X-Gm-Message-State: AOJu0YwRaeDPsTxVIhstm1onneoppcrND9OyRfBjkBOpq9nu8xgqEZXY
	ycfDRMHtIntQrEDlXm33Apwpva5tlT9YuFQYLDdiqMKnLRYjwS8CPj/+eRaQ107y
X-Gm-Gg: AZuq6aKJvGqR8n6YtvhvxOJ/CJAzpzPSou2HwYfvw+P7jiIOuinjnL/HQpj9i0HHm+S
	sm1jtaqNCxX/GJA3sPgz5Igtl+glOWOCkZMKcJ/XJZJdk5HMOtcyo6gnquqrsdE4D59zdnq/awY
	9OC4SRRlk9iwl77jQNh+pdQoSNjYe+Ubbq6/sG+OLyHEQrofbH55Cad+pyJlY/UGQ9yV8Ll9uAW
	fSXU9E78Fyn5f5C2RQA1+nfBR9oYzzPFpA7gUi1ChE5nI4nEMQI8kliaImO4y234fwoUDUr+gGI
	I2Nbh0XBID6PzIR+t/6aFaI3IxOwGwHpd+4sWshy4ZzxFt/FD7jZ5KcPy2+GtStvtnK7TwJfQVs
	Vx9wFD9QH8j+N9FszIo+1HepYpI40AJSGA8eC9XLIs/CDbNmLEjnoC3ITcK/eVCBsQLm/210osZ
	4pFXEY8ocGufgXkzwayywqGv+3st69eEabnjszpgQVwsndCFg/2cyxgXx+pjk=
X-Received: by 2002:a05:6102:b09:b0:5ee:a2af:9da2 with SMTP id ada2fe7eead31-5f54ca30661mr885684137.6.1769174980483;
        Fri, 23 Jan 2026 05:29:40 -0800 (PST)
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com. [209.85.222.47])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5f54d66fa23sm498897137.13.2026.01.23.05.29.38
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Jan 2026 05:29:39 -0800 (PST)
Received: by mail-ua1-f47.google.com with SMTP id a1e0cc1a2514c-9480078b2fbso2245751241.1
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 05:29:38 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXhyEk0HXBkRY8Pl+tTrRwtGG77X7ipIxn/3ES3kAV2P98KG/WNfp3RCpE2B3/nIyb1Zqp4vIPkj6SY@vger.kernel.org
X-Received: by 2002:a05:6102:3752:b0:5ef:a3c1:86e1 with SMTP id
 ada2fe7eead31-5f532e93002mr1974929137.11.1769174978693; Fri, 23 Jan 2026
 05:29:38 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260118135038.8033-1-marek.vasut+renesas@mailbox.org> <20260118135038.8033-3-marek.vasut+renesas@mailbox.org>
In-Reply-To: <20260118135038.8033-3-marek.vasut+renesas@mailbox.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 23 Jan 2026 14:29:27 +0100
X-Gmail-Original-Message-ID: <CAMuHMdW9XAn1RfkFpof0yUeYhfmQOnZMSNBAA1rQFBNX_Z3TMQ@mail.gmail.com>
X-Gm-Features: AZwV_Qi8xIqx9SrRtjX9A1sHdg0UhI1C_69Cyb2P2OJhm9AIJr1Yv60yV3PReM0
Message-ID: <CAMuHMdW9XAn1RfkFpof0yUeYhfmQOnZMSNBAA1rQFBNX_Z3TMQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/9] arm64: dts: renesas: r8a77960: Describe PCIe root ports
To: Marek Vasut <marek.vasut+renesas@mailbox.org>
Cc: linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Magnus Damm <magnus.damm@gmail.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
	devicetree@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[lists.infradead.org,kernel.org,gmail.com,linaro.org,renesas.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-258943-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.989];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,mailbox.org:email,linux-m68k.org:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,glider.be:email]
X-Rspamd-Queue-Id: 7370076425
X-Rspamd-Action: no action

On Sun, 18 Jan 2026 at 14:51, Marek Vasut
<marek.vasut+renesas@mailbox.org> wrote:
> Add nodes which describe the root ports in the PCIe controller DT nodes.
> This can be used together with the pwrctrl driver to control clock and
> power supply to a PCIe slot.
>
> Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.21.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

