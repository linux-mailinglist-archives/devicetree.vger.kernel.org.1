Return-Path: <devicetree+bounces-261969-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uGSTJ9c7gWk8FAMAu9opvQ
	(envelope-from <devicetree+bounces-261969-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 01:05:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0642ED2D3E
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 01:05:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7E252301724B
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 00:05:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9750E6FC5;
	Tue,  3 Feb 2026 00:05:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BFnNi+Zv"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73B633FFD
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 00:05:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770077134; cv=none; b=AC2bRlvw+bA1mcgWpRznW+qHktHC44MVp3Hcz2/bP5I2dmq5ZA2IQe3miBhWDKhFtSW7ogUzDpSK0admBRptiHcTfKGwD//oxBSmf8Jt1O3H145UBtpPv/kvU9AW4dsyD/zq0PdsdXpFU0xV6ZU3+wFz+hdixHTIU+9ZQbtOp2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770077134; c=relaxed/simple;
	bh=kKdeou5Pe7UeE6Ix+YqLXbuufCdY2z3T0wxGDQhiRmE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=u+RynOE/oNo0ql+0hHmjD42ls9F51r/LP5LlfWeNsVEXqi1Ki7pZe0GTDTyZ0wuLaLyyKZEFJBP7PwRWfuvcIrx5BzKBUK8R2ZkFPntKKMDeJldcOMF97iiWp2gfcTuhkJqWmdUC+AUxaVedCvJz9m2y7/IuCo6KV1qG+00zQ+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BFnNi+Zv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2F8FFC2BCB0
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 00:05:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770077134;
	bh=kKdeou5Pe7UeE6Ix+YqLXbuufCdY2z3T0wxGDQhiRmE=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=BFnNi+Zv2dDy+uisnj62bhZmOx+Uo1c9U+Shqx5+M+Q41ftZ8Ifk/eOO8xYo4huRR
	 YPlMfNNCepNr+JIRQqPG2w2vjDnss3R0hIv4JhvSWyjyxC7PNQ4K/3KU5YS/NgidbI
	 CJNwwXfZ875JGiPaqCLo9lyonoSjbZNTJtkRpggtzfCM+Zl3thRgdOWiOqElJ58I5n
	 AhhWLprnJG7Druc1mYPMQ+aOXhJ0kgbQIPccu/fsQnWWpa8l2+o15K4QMvtclt4Qj/
	 pQ4vb8ODVBZIZpqdgZrTWzDTOttVLJiWiVht7YjVJgWoDj7t8NoBsWBAaKih6+GINJ
	 vG9TqvTQjfWdw==
Received: by mail-yx1-f46.google.com with SMTP id 956f58d0204a3-6495d592b58so4677214d50.2
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 16:05:34 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCV1a8URk0dbA6IyNF3e4XUpRqxtdm/LRgGonzw399BrAw6ypvX2aPY3wlu0yCGgEWAFzEISpv0y3bEX@vger.kernel.org
X-Gm-Message-State: AOJu0Yyye5UK5UubYVM7EwRBTFi6KpGWlSdD/uMavq+r+97Ooo7Oxb3+
	tchMcLfV1yC9mPbnnThn64ghjd4g5QluAeodEaLU91aNB3byqlKKARKIAF8bn4lgqZnJaDBM+dR
	Uv51e1tfT7eDJN09PrHdnVMNslVSRFu4=
X-Received: by 2002:a05:690e:124a:b0:644:51a4:4f16 with SMTP id
 956f58d0204a3-649a847327dmr10877144d50.45.1770077133463; Mon, 02 Feb 2026
 16:05:33 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260130-k3-pinctrl-io-drv-fix-v1-1-077aec3ba7ae@kernel.org>
In-Reply-To: <20260130-k3-pinctrl-io-drv-fix-v1-1-077aec3ba7ae@kernel.org>
From: Linus Walleij <linusw@kernel.org>
Date: Tue, 3 Feb 2026 01:05:22 +0100
X-Gmail-Original-Message-ID: <CAD++jLmMRcgo9-sMOh6+y+Hg73HjmXPG_ur=mPUEQ-hhuWCtfg@mail.gmail.com>
X-Gm-Features: AZwV_QjYr-Xcsc5cz_CTbglqWcpBs2gdc2w-EI4ETCV9es47TMb_bMpE3EZUcaA
Message-ID: <CAD++jLmMRcgo9-sMOh6+y+Hg73HjmXPG_ur=mPUEQ-hhuWCtfg@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: pinctrl: spacemit: fix drive-strength check warning
To: Yixun Lan <dlan@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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
	TAGGED_FROM(0.00)[bounces-261969-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 0642ED2D3E
X-Rspamd-Action: no action

On Fri, Jan 30, 2026 at 12:22=E2=80=AFPM Yixun Lan <dlan@kernel.org> wrote:

> The problem is that one value from drive-strength may match to more than
> two different enum groups which lead to DT complaint, switch to use 'anyO=
f'
> to fix this kind warning.
>
> Fixes: c3efac0592f8 ("dt-bindings: pinctrl: spacemit: convert drive stren=
gth to schema format")
> Signed-off-by: Yixun Lan <dlan@kernel.org>

Patch applied!

Yours,
Linus Walleij

