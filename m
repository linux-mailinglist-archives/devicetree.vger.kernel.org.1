Return-Path: <devicetree+bounces-291004-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cPY9ASCF8GlwUQEAu9opvQ
	(envelope-from <devicetree+bounces-291004-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 28 Apr 2026 12:00:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ADCD4820EA
	for <lists+devicetree@lfdr.de>; Tue, 28 Apr 2026 11:59:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C87EC313B123
	for <lists+devicetree@lfdr.de>; Tue, 28 Apr 2026 09:39:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC8C73D6666;
	Tue, 28 Apr 2026 09:39:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J5dFk8g+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7C973D0939
	for <devicetree@vger.kernel.org>; Tue, 28 Apr 2026 09:39:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777369140; cv=none; b=b+9nTnV+QHnAm7yaQExeVfw7aIs0s0VuGfmU3Kf6QRRmn9lzCcly2FEk7cWSFVz34F8ThOpCOfF04X6FkMh6qmpb0NZuSRUZjMDRFEj18LRz7O1pgX2gic0rSq76Q/6F0Un0Cv5S8RjT1AHPu5Z3u2vqQd0hpPKfOpvg/TU/1KU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777369140; c=relaxed/simple;
	bh=+4YL/olK50byyyjr40dkaaexqybkeq9S6GxlYo6h2Qs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Xz+Mq4wpVEk4SXRfem3i9EOph72rGWvngGRKG+gKemNSfA2N89uAuxwM/tp/Opi/cFGYlphwpUHSWV7YQY3rZNVqu9jOIgkqfhev1XflmaDlBWXIj7ylgpk4ZW1SMyJBYyaLFFN38n4sX1p8l5J2bzDoeSsXDiw7ioZBlpODbbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J5dFk8g+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7BD77C2BCC7
	for <devicetree@vger.kernel.org>; Tue, 28 Apr 2026 09:39:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777369140;
	bh=+4YL/olK50byyyjr40dkaaexqybkeq9S6GxlYo6h2Qs=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=J5dFk8g+0LRCHySgu4xjJ+qJN3tWUVDnxeZhQGC4i6jW2wNuqAccBBvQ+dZ3VUzvp
	 OZINipvqTHhFqwl/2EWD/8G8kEoNXnv2FaXVOAyXdMDjnhxbWVCwkxuy0QE0K8kGzK
	 rm5bHIKWdlHJOpS8wBT8hxD96khwmW2KqYwti8wEHFpo0MfN7CrMTE+Xwyw7DtxlZ2
	 yUKTmW3qY2psOx8rLfKqIUVymKlsh0tVXUNzS25mOfVNnFUpiZwn/wibvIroggz5qN
	 VpkejHEQ2kvjavAgYtzeO2OxdbjXwf4TKk7deeycXyeVq5CaX4AunyGrETHOfTEpXg
	 LD0mUvredLYDw==
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-59e4a04f059so13715212e87.2
        for <devicetree@vger.kernel.org>; Tue, 28 Apr 2026 02:39:00 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ9cC+iuQwXtW184Sav06pWqqqOH/ghehGcw9rRtyy7EUimonU8C3b1zvBWLRxZlIHNvN4B7kfphmQsK@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5cn+ZUM10XUw0+dFp25oqt9cxfB5UbKZzZ/iG87YJnCqcASpe
	n3vkmbl1tmMwhZ3OqgA46Bvb3zzmJoYV7zskgJiBaMFvmb08hdEs4koKz2ye9LqBI5CVRq+2QiJ
	QpjJ/riSIB9PdCrtiU01hOgedjMvTs2Y=
X-Received: by 2002:a05:6512:693:b0:5a3:ffed:8443 with SMTP id
 2adb3069b0e04-5a74662348fmr1043615e87.23.1777369139087; Tue, 28 Apr 2026
 02:38:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260423-fix-eliza-pinctrl-v3-0-68b24893ae63@pm.me>
In-Reply-To: <20260423-fix-eliza-pinctrl-v3-0-68b24893ae63@pm.me>
From: Linus Walleij <linusw@kernel.org>
Date: Tue, 28 Apr 2026 11:38:47 +0200
X-Gmail-Original-Message-ID: <CAD++jLnVb+Jvpa=SUtO-ACGtvK-D21MoTreqr=2vZcxaFEWhyA@mail.gmail.com>
X-Gm-Features: AVHnY4JgkEr1cDJ8BC_flcAS-_y3mnwWo8uXAoMUVd5ELXLSyeqs5hCHFvSG7ZU
Message-ID: <CAD++jLnVb+Jvpa=SUtO-ACGtvK-D21MoTreqr=2vZcxaFEWhyA@mail.gmail.com>
Subject: Re: [PATCH v3 0/4] pinctrl: qcom: eliza: Split up some QUP function groups
To: Alexander Koskovich <akoskovich@pm.me>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Abel Vesa <abel.vesa@oss.qualcomm.com>, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
	linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 0ADCD4820EA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-291004-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,mail.gmail.com:mid,pm.me:email]

On Thu, Apr 23, 2026 at 6:43=E2=80=AFAM Alexander Koskovich <akoskovich@pm.=
me> wrote:

> Problem with previous representation of some QUP functions in pingroups
> was that if they had the same name as another function on multiple
> slots on a pin, the latter one was effectively unselectable.
>
> This series splits them up and allows boards to specify exact routing.
>
> Signed-off-by: Alexander Koskovich <akoskovich@pm.me>
> ---
> Changes in v3

All patches applied for v7.2!

Yours,
Linus Walleij

