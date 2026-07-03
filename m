Return-Path: <devicetree+bounces-319907-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id /n7pF0d4R2r+YgAAu9opvQ
	(envelope-from <devicetree+bounces-319907-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 10:52:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B185D7004AE
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 10:52:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=l77CDoVi;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319907-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319907-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D8645301E95E
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 08:33:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB93D3403E1;
	Fri,  3 Jul 2026 08:33:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B8A833CEB0
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 08:33:26 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783067607; cv=none; b=SONiw0f1wHHdqCnkkH/Gdxrpaz1cHBHdzYwCFvWKIuh9MZQO84sN000vZSP3x/PCnltgASxMbljTTZneC3aKveOzpmJYisVsO10xedUsefyvDdx+WwjYA8FPVpyIQah9/8u8tMme+EuubL1kphHYlUfFa4/VDMQk0OO7e8pkPyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783067607; c=relaxed/simple;
	bh=CPeHWVKQaBYEElBX0g0QRy6Vj/Qst736Zlo1/X2BtdQ=;
	h=From:In-Reply-To:MIME-Version:References:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jR0k9aINcP+53FX5z9/mne3y69r6LO44G0uEqQwONKABWt7hSnzM2y0QFQ8jU8gl/GRFpyKafRVpC15/DbS2FSbaXXru+PRF1TChdu13pm9eUfEhcW9DyhNrv25mf2EiTdq1fnD2+Yh6maPUEEMK6cbPpVahgwiTPt6XsjG7uh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l77CDoVi; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 07A971F00ADE
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 08:33:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783067606;
	bh=BuHOPCYtm8jRcWC4IRKKtDvQPRYY12Dv6Etighlt/fc=;
	h=From:In-Reply-To:References:Date:Subject:To:Cc;
	b=l77CDoViULZZkYkqPasfptYuXogPe4KrhyHzUaeJYioQQh6plUAecVexNXTu75j2Y
	 td8YD7++QlkmWRy0EbJETwzKWQ+wJBoFT2My6wbB+3I50gzUPYhz56n2cEdKjg4rRd
	 Qh+bu7iZeFZIQ74s0ftB90ZAlASfCY+yXk55mR25ALkefs3QQ1nDg0liPPpMd3JxyD
	 NW4WjVihu5J8Tsi7WkihiX2EdfjV+uA1wk/+NDqY+98qMtjQAj6uDihr2PsA9LfObu
	 HAVjNVhrIfwP16VkrgkgbJfxLnvLqj1aKKk8Y2YAzkLExJKEGja4LL1OndbqwPKQsj
	 A6FTDV3LSUieA==
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-39b1f588471so2934391fa.0
        for <devicetree@vger.kernel.org>; Fri, 03 Jul 2026 01:33:25 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+RoQTpAqNYJkJpDMleid8cgEN/woNlKH6iOggcSGIqIgx1HUZ4JjRtfeUoX9DFHYbj2+8fjPkKIsNqRS@vger.kernel.org
X-Gm-Message-State: AOJu0YxddGCmSPgm1U+dCXdQ6XCVtHSvq+3C/giw6SxFRM9bwTkVRiWu
	lNqaVZaDjtqfH8AdcIEPvWMj/UNQRp6eaenOAfZYGwYEh47+Vefw42atR7zASk8TbLI/xAx4ZDW
	ZJp5AiKGgJqmIRr1Smb0hv9X67c6nk0emrSRK+oVV9Q==
X-Received: by 2002:a2e:a907:0:b0:39b:100e:a582 with SMTP id
 38308e7fff4ca-39b34102a63mr18832421fa.38.1783067604615; Fri, 03 Jul 2026
 01:33:24 -0700 (PDT)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 3 Jul 2026 03:33:23 -0500
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 3 Jul 2026 03:33:23 -0500
From: Bartosz Golaszewski <brgl@kernel.org>
In-Reply-To: <20260703-ipq5018-bluetooth-v3-6-62da72818ab3@outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260703-ipq5018-bluetooth-v3-0-62da72818ab3@outlook.com> <20260703-ipq5018-bluetooth-v3-6-62da72818ab3@outlook.com>
Date: Fri, 3 Jul 2026 03:33:23 -0500
X-Gmail-Original-Message-ID: <CAMRc=Mej5MtZuZATjKNtzHB0YYRJR5EBpcqzZUqs5=8jQELA8w@mail.gmail.com>
X-Gm-Features: AVVi8Cfz8fxokF08uKqFvZaKM_8PpWqL9iATWbe1q-OjIVsquKGm6K1w9Q2wkBc
Message-ID: <CAMRc=Mej5MtZuZATjKNtzHB0YYRJR5EBpcqzZUqs5=8jQELA8w@mail.gmail.com>
Subject: Re: [PATCH v3 6/6] MAINTAINERS: Add entry for Qualcomm IPQ5018
 Bluetooth driver
To: george.moussalem@outlook.com
Cc: Bartosz Golaszewski <brgl@kernel.org>, Marcel Holtmann <marcel@holtmann.org>, 
	Luiz Augusto von Dentz <luiz.dentz@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, 
	George Moussalem via B4 Relay <devnull+george.moussalem.outlook.com@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-bluetooth@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-319907-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:george.moussalem@outlook.com,m:brgl@kernel.org,m:marcel@holtmann.org,m:luiz.dentz@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:andersson@kernel.org,m:konradybcio@kernel.org,m:p.zabel@pengutronix.de,m:devnull+george.moussalem.outlook.com@kernel.org,m:linux-arm-msm@vger.kernel.org,m:linux-bluetooth@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:luizdentz@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:devnull@kernel.org,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,mail.gmail.com:mid,outlook.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email];
	FORGED_SENDER(0.00)[brgl@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_TO(0.00)[outlook.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,holtmann.org,gmail.com,pengutronix.de,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[brgl@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,george.moussalem.outlook.com];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B185D7004AE

On Fri, 3 Jul 2026 07:01:54 +0200, George Moussalem via B4 Relay
<devnull+george.moussalem.outlook.com@kernel.org> said:
> From: George Moussalem <george.moussalem@outlook.com>
>
> Add maintainers entry for Qualcomm IPQ5018 Bluetooth driver.
>
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---
>  MAINTAINERS | 7 +++++++
>  1 file changed, 7 insertions(+)
>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 0b9d7c8276ac..60f7251d1a16 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -22289,6 +22289,13 @@ S:	Maintained
>  F:	Documentation/devicetree/bindings/regulator/vqmmc-ipq4019-regulator.yaml
>  F:	drivers/regulator/vqmmc-ipq4019-regulator.c
>
> +QUALCOMM IPQ5018 BLUETOOTH DRIVER
> +M:	George Moussalem <george.moussalem@outlook.com>
> +L:	linux-bluetooth@vger.kernel.org
> +S:	Maintained
> +F:	Documentation/devicetree/bindings/net/bluetooth/qcom,ipq5018-bt.yaml
> +F:	drivers/bluetooth/btqcomipc.c
> +
>  QUALCOMM IRIS VIDEO ACCELERATOR DRIVER
>  M:	Vikash Garodia <vikash.garodia@oss.qualcomm.com>
>  M:	Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>
>
> --
> 2.53.0
>
>
>

Acked-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

