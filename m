Return-Path: <devicetree+bounces-274080-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UFjYGg5psWnsugIAu9opvQ
	(envelope-from <devicetree+bounces-274080-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 14:07:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 012C8264229
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 14:07:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A9261321DA84
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 13:01:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1407D2FC004;
	Wed, 11 Mar 2026 13:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NI7ClO74"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E53B72EC0A6
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 13:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773234114; cv=none; b=jgxigdXKB7XJCZUpAF5BiS15lN0lpk6nglY8bh47h7ZPL0egLgfcSXOpnFlslH7LkmJ9afnS6PRin/+Q5Mw0pZT0LHo5MKx5EOaP4d6XcxfotIZNkxHTjZbxPESG1zP/DkRkv6cdIrWL/ZKvg+CDwZOiGvc3GkHY1qch88QxazE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773234114; c=relaxed/simple;
	bh=cOdofdA9uxeFswZkahSYK7BRxl91B+cEYHK/tWphMDY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=sLAKZQwXYcEDcMwaKUp0tlf1MQNJY7jP8BnM2gWjwze3pOlcemKwI3ETGEvpkho9bJoKhbxgrZrbsNkpF3X16g29bWOnjPJCdILq6+HXHo8D7JNMkfV5kqQpMff1JMAizQAydF+8C5d9ukhbvKN7Sh3ekwfwa3cFOggu6kkU9es=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NI7ClO74; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BF12AC2BCB3
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 13:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773234113;
	bh=cOdofdA9uxeFswZkahSYK7BRxl91B+cEYHK/tWphMDY=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=NI7ClO74gRHvMrgk0qQ4jwb/kGCbUcNcMdDsTteav/31BBCZe9qNwBbqG0jWe+0x8
	 jcE+9JIf9sELxodZwKmvA5z6GBEi8kfgF5vwmW85qbznDrAPvycK0Q6AYVwLIPPmWA
	 cZvGCwvlicAO2ZYwRhP+KwZhjaHbPzJYHxu+jZsnNhddSvNI42IJHwnzR93+bJAlLr
	 PxiYQU5Azl3LtCzbQyxvm2vHk/ud+eE1afc0tQ65lL35Ek2qDwSh0JyzFLBPzDwzpK
	 muuB2D8r8P5ntTAXPtb+rH7mEjNrtj6++UYtPRm1SaxtJkH1TsO1qIfTmkRxOVyrex
	 v49wPLTvKoWtw==
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-79801df3e42so13121437b3.0
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 06:01:53 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXBi1NuCTxX3xX30A3hUBq01tPWJ65csuyDRkRWGL2yqwxeHg0fC61s3jm9vCt01fqQZ8R1u+7ffM0C@vger.kernel.org
X-Gm-Message-State: AOJu0YytlZwlzpD49sE3yD1XqwJrMrXjdVm2bkeswg+7a8t1WoGphqv0
	mxNg/5ru9qq9sMsq3PrWhhL1ciipIHg0CRBSdcHlNXk8kZ5XyyLWrkZZLhwpZfjIZqJTybnDzMD
	pNLmpuk+wej/rWfH2oEg0BI4vw3W4D4M=
X-Received: by 2002:a05:690c:6f02:b0:796:37bb:9eb1 with SMTP id
 00721157ae682-7990a8ce666mr69440887b3.29.1773234112878; Wed, 11 Mar 2026
 06:01:52 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260311-ipq5210_boot_to_shell-v1-0-fe857d68d698@oss.qualcomm.com>
In-Reply-To: <20260311-ipq5210_boot_to_shell-v1-0-fe857d68d698@oss.qualcomm.com>
From: Linus Walleij <linusw@kernel.org>
Date: Wed, 11 Mar 2026 14:01:41 +0100
X-Gmail-Original-Message-ID: <CAD++jL=P+0nY3yVM9MCrRfG5xLtg=R6Xgpi1xrbzzLPD-Y8KKQ@mail.gmail.com>
X-Gm-Features: AaiRm53di8hZ7D-oR6Q7wA5Pyxd8PUFmpi5mGlcqDizSLxmOe_2ndnsU2oyjceM
Message-ID: <CAD++jL=P+0nY3yVM9MCrRfG5xLtg=R6Xgpi1xrbzzLPD-Y8KKQ@mail.gmail.com>
Subject: Re: [PATCH 0/9] Add minimal boot support for Qualcomm IPQ5210
To: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Konrad Dybcio <konradybcio@kernel.org>, 
	Ulf Hansson <ulf.hansson@linaro.org>, Robert Marko <robimarko@gmail.com>, 
	Guru Das Srinagesh <linux@gurudas.dev>, linux-arm-msm@vger.kernel.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-mmc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 012C8264229
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
	TAGGED_FROM(0.00)[bounces-274080-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,pengutronix.de,linaro.org,gmail.com,gurudas.dev,vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:email,mail.gmail.com:mid]
X-Rspamd-Action: no action

Hi Kathiravan,

thanks for your patches!

On Wed, Mar 11, 2026 at 10:45=E2=80=AFAM Kathiravan Thirumoorthy
<kathiravan.thirumoorthy@oss.qualcomm.com> wrote:

>       dt-bindings: pinctrl: qcom: add IPQ5210 pinctrl
>       pinctrl: qcom: Introduce IPQ5210 TLMM driver

Can you send these two separately?

It seems I can just apply them to the pinctrl tree after review,
no dependency on the other patches, right?

Yours,
Linus Walleij

