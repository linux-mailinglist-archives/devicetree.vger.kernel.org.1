Return-Path: <devicetree+bounces-268188-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IHhwAcKunmlxWwQAu9opvQ
	(envelope-from <devicetree+bounces-268188-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 09:11:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DA73193F31
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 09:11:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B78A130342A2
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 08:11:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0529D3101B1;
	Wed, 25 Feb 2026 08:11:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YYc/RItt"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D61DF2FD1B6
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 08:11:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772007090; cv=none; b=sDCUEGT9Nx6gqDuWTa9ybECtofG1ZQC8nzXiV/bjxRA7X/Z9sUTQ475oNOA79FGJxdMr87xVq4u1cGtv4rU+VkCdICkRc9UmZYMupyOxyYnOxcmXngH6JEsb3Vn0RHukst9yB62PFuWrWxnTLGkDArRcQILSL5Y7OYT7CbdXY94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772007090; c=relaxed/simple;
	bh=usaysjS0gpHIFyZHKJqEeInHs9jknMQNaMJew5h1pqg=;
	h=From:In-Reply-To:MIME-Version:References:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CX+lRL6yB+5zZvPYdYGWzZ6eqoJVVLWPq/7uUhCtfAsnszUu3iUR2QWNpwX0+x6SVNpLbBMKMHJVMp14OgleV6yiKgr5/cZTQB1LH+Z745ctZ4I7TvU7SD2fL7WFbQkdy9jJHDIGIfC1yQTMekWilJF9fSsvIzTazXjAY8p9Zg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YYc/RItt; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A1AE5C2BCB6
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 08:11:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772007090;
	bh=usaysjS0gpHIFyZHKJqEeInHs9jknMQNaMJew5h1pqg=;
	h=From:In-Reply-To:References:Date:Subject:To:Cc:From;
	b=YYc/RIttJOjCfXUewXc0JG8muvoFbg2hfl3g2yQ9Ch/KYy+WqwclhcPEbkZgrYv/J
	 LCuzuzOCSgB1psAFoEHbVuOCsmQ+j686d/ofMNUVUKWqE9YhiFuX3b/ez1TLeJwpDJ
	 FQOpMeSxcDM1tTIQfNG+FkzE1MIgHOoK8ZNdlkI5PwZdbvxY6b+WO9a6Hgjy8XP+/J
	 /djEwSr6Kk6YMHA/jUDEYzomg72N3j0XmY4WDsWp9yGt+VvRXCdNjwfZMrrY8G8srz
	 As0q4z4TITTCTLtw8GONuAgTQQcZms3oQsVn2fvW1kSspwmA/YBk5CpS9M3gKceSXF
	 HaozfnjBTLfMA==
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-385d9fb297dso65946211fa.2
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 00:11:30 -0800 (PST)
X-Gm-Message-State: AOJu0YzZr1pB/x58w3GCVBmt3B/F29+Mlouv9+UqZMWnfcHhttFL+e4a
	/uSSMoRLa8IBP6Pz4qcusHHiIcqCZ57EOaeZzcpk+dqDwpjVKnOImnfoAQ40YlPMN4dBHHgzXQX
	l06ETfxyHsS6011NAN1zTRvt89C+VfZXaZxdo4uR3Bw==
X-Received: by 2002:a2e:bccb:0:b0:383:246a:74ec with SMTP id
 38308e7fff4ca-389a5cddb2amr51858551fa.18.1772007089247; Wed, 25 Feb 2026
 00:11:29 -0800 (PST)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 25 Feb 2026 00:11:28 -0800
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 25 Feb 2026 00:11:28 -0800
From: Bartosz Golaszewski <brgl@kernel.org>
In-Reply-To: <20260225072225.3345307-2-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260225072225.3345307-1-wenst@chromium.org> <20260225072225.3345307-2-wenst@chromium.org>
Date: Wed, 25 Feb 2026 00:11:28 -0800
X-Gmail-Original-Message-ID: <CAMRc=Mc79ex9Sbz1ThVf62JEO3G-KY6LRS0EyBGvvJwxrzSqww@mail.gmail.com>
X-Gm-Features: AaiRm53FAfXDI6zI7HqJU4aTyz7YrJdL0-41-67eGZ5k3Q4aiUw3d0tcyRAeQOs
Message-ID: <CAMRc=Mc79ex9Sbz1ThVf62JEO3G-KY6LRS0EyBGvvJwxrzSqww@mail.gmail.com>
Subject: Re: [PATCH 1/7] PCI: mediatek-gen3: Clean up mtk_pcie_parse_port()
 with dev_err_probe()
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	Bartosz Golaszewski <brgl@bgdev.pl>, linux-pci@vger.kernel.org, 
	linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Ryder Lee <ryder.lee@mediatek.com>, Jianjun Wang <jianjun.wang@mediatek.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-268188-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,bgdev.pl,gmail.com,collabora.com,mediatek.com,kernel.org,google.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 5DA73193F31
X-Rspamd-Action: no action

On Wed, 25 Feb 2026 08:22:18 +0100, Chen-Yu Tsai <wenst@chromium.org> said:
> mtk_pcie_parse_port() in the pcie-mediatek-gen driver has a bunch of
>
>     if (err) {
>     	dev_err(dev, "error message\n");
> 	return err; # or goto
>     }
>
> patterns.
>
> Simplify these with dev_err_probe(). The system also gains proper
> deferred probe messages that can be seen in
>
>     /sys/kernel/debug/devices_deferred
>
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> ---

Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

