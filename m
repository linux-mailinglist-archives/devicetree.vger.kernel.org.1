Return-Path: <devicetree+bounces-268189-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CJHgDVuvnmlxWwQAu9opvQ
	(envelope-from <devicetree+bounces-268189-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 09:14:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B0E46193F79
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 09:14:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9306B3037EE7
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 08:13:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 154C63101C0;
	Wed, 25 Feb 2026 08:13:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a1KW1w1N"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E69383101B1
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 08:13:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772007229; cv=none; b=Yphg+58Pnss1WnQ28VUuNFOQuShoGu7rHlnvKMlSEUmJojcgkofzPmWqhSi6LFiKifVbydjnIHkgJKEDNVq+7aUO/JrigvNRopc19HuIriP8wIopCFdI9wxAiRx16L+N7TxL1x38UcC42wzA5kYxiFD4csWdZScaS3cs/rZbzDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772007229; c=relaxed/simple;
	bh=yUGoA5Mdlzfvkphr1VZ4u6c5zcEyJv1/BZWrrk27NlQ=;
	h=From:In-Reply-To:MIME-Version:References:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=sXzujMFPpiq7jNtMzFVFwVJlQQQD0lMQUQcae3vcrljpuNAog5NM+v3pyZ1Nnjz5RQRFJHowAtP/cSTsigzfqPgclwuCBeRntk+JtezNDoaAfF9gW1DGN4VfXBLeaiMkKn1ZYkNvyIQXTUq2KYR61NSVXas4mu3chGfgLVed4Tw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a1KW1w1N; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ACE1CC2BCB1
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 08:13:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772007228;
	bh=yUGoA5Mdlzfvkphr1VZ4u6c5zcEyJv1/BZWrrk27NlQ=;
	h=From:In-Reply-To:References:Date:Subject:To:Cc:From;
	b=a1KW1w1NP0SkuWG0/jC6/7GF6KsOUR1Jc9ooB1NefXY+vLKECYAtkuw/lpJC1kBLr
	 qWxlsEiZ6K/7HM4e3ba/q9fc3PZUw66mBnkKFiyc+gGc5sSExWeJn2JYWO5mEwM0p1
	 2kxoJHO8KuKScsV1zlm4CWaB2w98Dj4tjt5f7gxEtRebBvi7k96l+HKCa1DNOiDVOB
	 H2U2gQu9yrg42zKjkFMr35ODOv7oYVk+v0azDNLAfQf75g9AmJmW9D2Ry0vrVVxKbg
	 xpF+Ear+zia6bwdUAxT2XTjULZDAXj0GRRGhlFDc+DSPpMzCfLJ9jBPaRJB00CIVd/
	 pvONpBxcBy2pw==
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-59de8155501so6689101e87.3
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 00:13:48 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUUnYNqqM4o36YMjfM4syV43HFcDnizMWfar8h+q/LWVQn3WnZ7gHN50wjuGE3F76omadEEy2CELuqy@vger.kernel.org
X-Gm-Message-State: AOJu0YwtyTw06rcydskQFL6hqf+TWGSqLGBON79VgUA//Qr29zH2GU/j
	oiMZ+MHDNGh2ZVFQT7bMgOge/nhhvloPFRZhgkpMYnCsQRKMS8hg0NfvQUGtCF6ivHlVEQZrPjZ
	hPzL0R4qzgNnG5R04Hkb6UBZRl+MAFQlXUSUQlp2iMw==
X-Received: by 2002:a05:6512:4010:b0:59b:6d12:6bd7 with SMTP id
 2adb3069b0e04-5a0ed99fae0mr4879974e87.40.1772007227325; Wed, 25 Feb 2026
 00:13:47 -0800 (PST)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 25 Feb 2026 00:13:46 -0800
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 25 Feb 2026 00:13:46 -0800
From: Bartosz Golaszewski <brgl@kernel.org>
In-Reply-To: <20260225072225.3345307-4-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260225072225.3345307-1-wenst@chromium.org> <20260225072225.3345307-4-wenst@chromium.org>
Date: Wed, 25 Feb 2026 00:13:46 -0800
X-Gmail-Original-Message-ID: <CAMRc=MdH0_JVRLXtc8fWkdr1qMBERCc-kjp58nbyzhVuMnCgrQ@mail.gmail.com>
X-Gm-Features: AaiRm52AQF02eEDkSj7XKJdKxnJmEy0P3IRZQuLjGUKE0XqIuxZJ88cZvI40wzQ
Message-ID: <CAMRc=MdH0_JVRLXtc8fWkdr1qMBERCc-kjp58nbyzhVuMnCgrQ@mail.gmail.com>
Subject: Re: [PATCH 3/7] PCI: mediatek-gen3: Split out device power helpers
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Ryder Lee <ryder.lee@mediatek.com>, Jianjun Wang <jianjun.wang@mediatek.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	Bartosz Golaszewski <brgl@bgdev.pl>, linux-pci@vger.kernel.org, 
	linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-268189-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,collabora.com,mediatek.com,kernel.org,google.com,vger.kernel.org,lists.infradead.org,bgdev.pl];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[brgl@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B0E46193F79
X-Rspamd-Action: no action

On Wed, 25 Feb 2026 08:22:20 +0100, Chen-Yu Tsai <wenst@chromium.org> said:
> Split out existing code that deals with device power sequencing into
> into helpers to allow cleaning up the error paths and integrating the
> new PCI pwrctrl API,
>
> This change is purely code movement.
>
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> ---

Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

