Return-Path: <devicetree+bounces-308450-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id WXBkIOQFJ2oLqQIAu9opvQ
	(envelope-from <devicetree+bounces-308450-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 20:11:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D6AB965991B
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 20:11:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linaro.org header.s=google header.b=bJNtrGri;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308450-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-308450-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=linaro.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 33C3E3040956
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 17:33:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EA2830D405;
	Mon,  8 Jun 2026 17:33:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45C5731F995
	for <devicetree@vger.kernel.org>; Mon,  8 Jun 2026 17:33:45 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780940026; cv=pass; b=CoXhoIcqFldN8oK3dTZSUqSoIR88fb7BjIkn1nedA2ZT/CoZksMv+wh+4FjC6EKkwongA9mzMLNgahPeTXGePv2Hq+Dp7mYLX7HtdloUMcz4oO+yPdJgA3K5IZ7XFqe2xmKWw7VsedOKNJgUjSh+ZF5+MK+amHS68LXD7lEbmD4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780940026; c=relaxed/simple;
	bh=FxmIEvYMFiKht1WQY00uEYuxrUvnYaCMiFzMz9XnZpI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Xj1wxv9LOx/sUSR5dDxn1zhY6x9jaDaHB+9R8UhNW2A8UwKc5g6sE4Ze5liX57tQP5zR5R7PW5SWzSy2HSggoxFq54krxjL5xOK31IYTgr9KP8XVhLAUwJwfsQGfHlfeuHx2FqVff8uZb7SVjgqC1fs8dBLG0AdhFFcv2qbs7bQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bJNtrGri; arc=pass smtp.client-ip=209.85.221.44
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-4602e2a0372so3253393f8f.3
        for <devicetree@vger.kernel.org>; Mon, 08 Jun 2026 10:33:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1780940024; cv=none;
        d=google.com; s=arc-20240605;
        b=czhOBH+8sDmFkM9tUw4I9/04DFgFeZZjKDFVoc2Ons6dy6/f5RxoMCGQTefp2VzwVi
         qz4esiB68mZnq2OW5aBpOd/+vVV2h2k44wRTffa+VXE4IIgNmUdAHacUDy4Ypc/VDfdD
         Evp48mU7s5nKXexUlxWXWJixHSX91OO/okWENaIAg/syPjQDPHJeWAWE5YzRdX2haytR
         zadsrI7bW3yLctYSH5fOo3iX0lK/qK5BtPDxp5mcwnZD9+PaBOfrbCjvMH+zduKv3P5q
         DF9PgK5Lx239RyIXkIfmsQSKvu/M9gF2cVpJriCQyzvzQ9BxP6wnvK2hy0hw38DtJ5p4
         IbYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=FxmIEvYMFiKht1WQY00uEYuxrUvnYaCMiFzMz9XnZpI=;
        fh=3+ECrvvH5CEpa/9/ocy1DEjGxTihqVeKjYfByxaIztM=;
        b=hziXM3h166UelgLtNmT0vhxauelDg5NE+/NKDLWCXEc6aToggv/VAmGudjxgfiJJyx
         qhZdjDYDKsHV5MZ8Q68TGOZ+66zMZh90JWl+LbnO28eLxEVZIYmsFRiNtZsjnyNxIzps
         Ah/MF4wPJe6B3fsD7LspQp9Wup9h5zN8N1sWqV2H/5jpyvOKJgO38FZzj5Ja8bfdFWDm
         fu9AgNncPCw2Yue1gP2BMzYMDxRCWL7m4edVwE43hbNOvZ2HjvxWrTqrZ42eUn3octLk
         EAEvIflQRTGzvWNVh7L6SYo0cqH6Ee9jaCfA6KtHs3QJKDjleZH7Zxpw04EJtl8w1U7q
         1xog==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1780940024; x=1781544824; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=FxmIEvYMFiKht1WQY00uEYuxrUvnYaCMiFzMz9XnZpI=;
        b=bJNtrGri4UPKGK83uJThs6H99DTEBAghTzew6/yeulD34I307+Fwg7s3rxtaQHyd/N
         ZJwOe0aAxPjLDmR5HlThvsFJ7Cew0jZzTgiDVqYo/JfbCSHE15lfzVKk8nQzhJDnzSO7
         A5hNODMaF0jlzG5NWdjcVQMiy7LYO6c49vbc3IVkGd5CW/1FXxgwpADaekjrbGn0m958
         awz3l+cGLs/FKE72R0PHmhaSY3LGAjRzysPHgHNrM8rZ/r3MKrxVSAmIAZevRcrkAxZS
         T3aaEerUycbOfBc1ApjFq2mbx4CFcKo7BBgNwDPxOHeiljySOfnpXbKemp35hY+yaFiR
         /r9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780940024; x=1781544824;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FxmIEvYMFiKht1WQY00uEYuxrUvnYaCMiFzMz9XnZpI=;
        b=cD+YlkOfDG8DjVqzgxPrXP8ZzHCLEMk1xcy+cjO341JKK4tlRElUk+p2OzFpQo2P6h
         VOjoZczmQ2tD133yJEpHc02LHoAfgQfE/Hfjtbn9rot+3YOyh5cswlH2DGc2sMxRMe6d
         +PYnkyj4yYGTshrtP+txjAkZVs7eQkvmOgoSEdrZp6nDSsp2fqhL+5veLYQtIe+dA1Wc
         j2FzevSYWN3UHZYZdtYBBhPGNa2/tN2JvzAyj+6Vylh45k5japXt6F7EJc+Vh1viyT/F
         TC9lm+AYWm/cdqH0fYo5CCPbQ+HA4I83Lv5aDFaGNMTgRfSyJ+W01VDOnBAX/SmeFZm+
         PEgQ==
X-Forwarded-Encrypted: i=1; AFNElJ9JlOKIDr5At6ioxeOuetqcNx3rX0cpJjmUeIO9tsHUPb4r+wC0Pz6RNkEHFzoTuOA1hqHQrmPkilgs@vger.kernel.org
X-Gm-Message-State: AOJu0Ywo45ocyjoWypXT6JEwz/Lm5u9fMAOdZG1NddUNy/QlSqnztvVb
	YVVMBEg82hA3orCrujxu8CMPfmNg7O58W7WmjWXkvP52/KOjRhwwNWpBbI/xYwFjNbW6KBZBZoJ
	0ii4LQ9uOXf3mYQ8qtzmTiDYisQHKAdM72o9qgu5tyQ==
X-Gm-Gg: Acq92OH28p2mjEaeuVI3yKxubinLulIS0FB9cAV7iMBEbuQo3D2vBRUT4mzEEKhLMov
	HrPG+5PhjHT5tb3rEVVusEN/vKldsPkPMuARTRp15pVuMsrNGi7xMOPe+7iVjzsiDe2bV1ncr5n
	c4eVN+h4WzunAh5jjasD9D+4rfuJt1LHG1abBQEIdQX4nijwfUtTCq5FmNWx4WUTI0d/FX8O034
	dwHs4tYLJkM7xgb4s/1Y3WFgV/9xDRuCnAaCKxv//m2NM7m0xBDBCOS1KaAU7GvFUsVTJepIa+W
	dG01v1MsOKR4B31b
X-Received: by 2002:a05:6000:46d9:b0:45e:df08:b02 with SMTP id
 ffacd0b85a97d-4603065d18dmr16264914f8f.28.1780940023601; Mon, 08 Jun 2026
 10:33:43 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260508-wip-obbardc-msm8996-blsp2_spi4-v2-1-8b81a95b1ed7@linaro.org>
 <1e855b70-cc2e-47f8-a820-877622620016@oss.qualcomm.com>
In-Reply-To: <1e855b70-cc2e-47f8-a820-877622620016@oss.qualcomm.com>
From: Christopher Obbard <christopher.obbard@linaro.org>
Date: Mon, 8 Jun 2026 18:33:29 +0100
X-Gm-Features: AVVi8Ces1BlsHomoRYetwp-12g5BTdj-x__0BBdgHY3i0bEes8xlKKD_-3BzVCY
Message-ID: <CACr-zFDc8KCDEe1kj_iO12UDX+1QY=E--z777gjbQ8G_b6TNbA@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: qcom: msm8996: add blsp2_spi5 node
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-308450-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:konrad.dybcio@oss.qualcomm.com,m:andersson@kernel.org,m:konradybcio@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-arm-msm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[christopher.obbard@linaro.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christopher.obbard@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,mail.gmail.com:mid,vger.kernel.org:from_smtp,linaro.org:dkim,linaro.org:email,linaro.org:from_mime,qualcomm.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D6AB965991B

Hi Bjorn,

On Fri, 8 May 2026 at 10:56, Konrad Dybcio
<konrad.dybcio@oss.qualcomm.com> wrote:
>
> On 5/8/26 4:30 AM, Christopher Obbard wrote:
> > Add the blsp2_spi5 SPI controller node together with its default and sleep
> > pinctrl states.
> >
> > Signed-off-by: Christopher Obbard <christopher.obbard@linaro.org>
> > ---
>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>
> Konrad

Gentle check on the status of this one, did it slip through the net?


Cheers!

Chris

